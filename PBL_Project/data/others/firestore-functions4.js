// Firestore SDKのインポート
import { doc, updateDoc, increment, setDoc } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";
import { getDoc } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";
import { db } from "./firebase-config.js";

// Firestoreのenemyを初期値0にリセットする関数
window.resetEnemyToZero = async function () {
    const ganDocRef = doc(db, "pbl", "gan"); // コレクション名とドキュメントIDを指定
    try {
        await setDoc(ganDocRef, { enemy: 0 }, { merge: true }); // merge: true で他のフィールドは維持
        console.log("enemyを初期値0にリセットしました！");
    } catch (e) {
        console.error("Firestoreのリセットエラー:", e);
    }
};

// enemyフィールドを増減し、結果をティラノスクリプトに表示する関数
window.updateEnemy = async function (changeValue) {
    const ganDocRef = doc(db, "pbl", "gan");

    try {
        // enemyフィールドの増減
        await updateDoc(ganDocRef, {
            enemy: increment(changeValue)
        });

        // 結果メッセージの生成
        const result = `enemyを${changeValue > 0 ? "増加" : "減少"}しました！`;
        console.log(result);

        // ティラノスクリプトに結果を表示
        tyrano.plugin.kag.ftag.startTag('text', { text: result });
    } catch (e) {
        console.error("Firestoreエラー:", e);

        // エラー発生時のメッセージを表示
        const errorMessage = "エラーが発生しました。";
        tyrano.plugin.kag.ftag.startTag('text', { text: errorMessage });
    }
};


// Firestoreからenemyを取得し、tf.enemyに格納するカスタムタグ
tyrano.plugin.kag.tag.set_enemy = {
    async start(pm) {
        const ganDocRef = doc(db, "pbl", "gan");
        try {
            // Firestoreからドキュメントを取得
            const docSnap = await getDoc(ganDocRef);
            if (docSnap.exists()) {
                // enemyをtf変数に格納
                tyrano.plugin.kag.variable.tf.enemy = docSnap.data().enemy;
                console.log(`enemyを取得しました: ${docSnap.data().enemy}`);
            } else {
                console.warn("Firestore: ドキュメントが存在しません。");
                tyrano.plugin.kag.variable.tf.enemy = null; // 初期化
            }
        } catch (e) {
            console.error("Firestoreエラー:", e);
            tyrano.plugin.kag.variable.tf.enemy = null; // 初期化
        }
        this.kag.ftag.nextOrder(); // 次の命令へ移行
    },
};


/*
初期値０に戻すやつ
[eval exp="resetEnemyToZero()"]

数値を増減する奴（減らしたいときは-つけてください）
[eval exp="updateenemy(1)"]

現在値を取得して表示するやつ
宣言
@set_enemy
表示
[tf.enemy]
*/