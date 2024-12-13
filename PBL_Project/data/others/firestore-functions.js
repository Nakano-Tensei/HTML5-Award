// Firestore SDKのインポート
import { doc, updateDoc, increment, setDoc } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";
import { db } from "./firebase-config.js";

// Firestoreのdpointを初期値0にリセットする関数
window.resetDpointToZero = async function () {
    const ganDocRef = doc(db, "pbl", "gan"); // コレクション名とドキュメントIDを指定
    try {
        await setDoc(ganDocRef, { dpoint: 0 }, { merge: true }); // merge: true で他のフィールドは維持
        console.log("dpointを初期値0にリセットしました！");
    } catch (e) {
        console.error("Firestoreのリセットエラー:", e);
    }
};

// dpointフィールドを増減し、結果をティラノスクリプトに表示する関数
window.updateDpoint = async function (changeValue) {
    const ganDocRef = doc(db, "pbl", "gan");

    try {
        // dpointフィールドの増減
        await updateDoc(ganDocRef, {
            dpoint: increment(changeValue)
        });

        // 結果メッセージの生成
        const result = `dpointを${changeValue > 0 ? "増加" : "減少"}しました！`;
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

// dpointの現在値を取得する関数
import { getDoc } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";

// Firestoreからdpoint値を取得し、結果を返す
window.getDpointValue = async function () {
    const ganDocRef = doc(db, "pbl", "gan");
    try {
        const docSnap = await getDoc(ganDocRef);
        if (docSnap.exists()) {
            return docSnap.data().dpoint; // dpointの値を返す
        } else {
            return null; // ドキュメントが存在しない場合
        }
    } catch (e) {
        console.error("Firestoreエラー:", e);
        return null; // エラーの場合
    }
};

// Firestoreのmygoldを初期値0にリセットする関数
window.resetMygoldToZero = async function () {
    const ganDocRef = doc(db, "pbl", "gan"); // コレクション名とドキュメントIDを指定
    try {
        await setDoc(ganDocRef, { mygold: 0 }, { merge: true }); // merge: true で他のフィールドは維持
        console.log("mygoldを初期値0にリセットしました！");
    } catch (e) {
        console.error("Firestoreのリセットエラー:", e);
    }
};

// mygoldフィールドを増減し、結果をティラノスクリプトに表示する関数
window.updateMygold = async function (changeValue) {
    const ganDocRef = doc(db, "pbl", "gan");

    try {
        // mygoldフィールドの増減
        await updateDoc(ganDocRef, {
            mygold: increment(changeValue)
        });

        // 結果メッセージの生成
        const result = `mygoldを${changeValue > 0 ? "増加" : "減少"}しました！`;
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

// Firestoreからmygold値を取得し、結果を返す
window.getMygoldValue = async function () {
    const ganDocRef = doc(db, "pbl", "gan");
    try {
        const docSnap = await getDoc(ganDocRef);
        if (docSnap.exists()) {
            return docSnap.data().mygold; // dpointの値を返す
        } else {
            return null; // ドキュメントが存在しない場合
        }
    } catch (e) {
        console.error("Firestoreエラー:", e);
        return null; // エラーの場合
    }
};