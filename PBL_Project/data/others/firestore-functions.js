// Firestore SDKのインポート
import { doc, updateDoc, increment, setDoc } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";
import { getDoc } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";
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
        tyrano.plugin.kag.tag.startTag('text', { text: result });
    } catch (e) {
        console.error("Firestoreエラー:", e);

        // エラー発生時のメッセージを表示
        const errorMessage = "エラーが発生しました。";
        tyrano.plugin.kag.ftag.startTag('text', { text: errorMessage });
    }
};

// Firestoreからdpointを取得し、tf.dpointに格納するカスタムタグ
tyrano.plugin.kag.tag.set_dpoint = {
    async start(pm) {
        const ganDocRef = doc(db, "pbl", "gan");
        try {
            // Firestoreからドキュメントを取得
            const docSnap = await getDoc(ganDocRef);
            if (docSnap.exists()) {
                // dpointをtf変数に格納
                tyrano.plugin.kag.variable.tf.dpoint = docSnap.data().dpoint;
                console.log(`dpointを取得しました: ${docSnap.data().dpoint}`);
            } else {
                console.warn("Firestore: ドキュメントが存在しません。");
                tyrano.plugin.kag.variable.tf.dpoint = null; // 初期化
            }
        } catch (e) {
            console.error("Firestoreエラー:", e);
            tyrano.plugin.kag.variable.tf.dpoint = null; // 初期化
        }
        this.kag.ftag.nextOrder(); // 次の命令へ移行
    },
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
        tyrano.plugin.kag.tag.startTag('text', { text: result });
    } catch (e) {
        console.error("Firestoreエラー:", e);

        // エラー発生時のメッセージを表示
        const errorMessage = "エラーが発生しました。";
        tyrano.plugin.kag.ftag.startTag('text', { text: errorMessage });
    }
};

// Firestoreからmygoldを取得し、tf.mygoldに格納するカスタムタグ
tyrano.plugin.kag.tag.set_mygold = {
    async start(pm) {
        const ganDocRef = doc(db, "pbl", "gan");
        try {
            // Firestoreからドキュメントを取得
            const docSnap = await getDoc(ganDocRef);
            if (docSnap.exists()) {
                // dpointをtf変数に格納
                tyrano.plugin.kag.variable.tf.mygold = docSnap.data().mygold;
                console.log(`mygoldを取得しました: ${docSnap.data().mygold}`);
            } else {
                console.warn("Firestore: ドキュメントが存在しません。");
                tyrano.plugin.kag.variable.tf.mygold = null; // 初期化
            }
        } catch (e) {
            console.error("Firestoreエラー:", e);
            tyrano.plugin.kag.variable.tf.mygold = null; // 初期化
        }
        this.kag.ftag.nextOrder(); // 次の命令へ移行
    },
};

// Firestoreのtutorialを初期値0にリセットする関数
window.resettutorialToZero = async function () {
    const ganDocRef = doc(db, "pbl", "gan"); // コレクション名とドキュメントIDを指定
    try {
        await setDoc(ganDocRef, { tutorial: 0 }, { merge: true }); // merge: true で他のフィールドは維持
        console.log("tutorialを初期値0にリセットしました！");
    } catch (e) {
        console.error("Firestoreのリセットエラー:", e);
    }
};

// tutorialフィールドを増減し、結果をティラノスクリプトに表示する関数
window.updatetutorial = async function (changeValue) {
    const ganDocRef = doc(db, "pbl", "gan");

    try {
        // tutorialフィールドの増減
        await updateDoc(ganDocRef, {
            tutorial: increment(changeValue)
        });

        // 結果メッセージの生成
        const result = `tutorialを${changeValue > 0 ? "増加" : "減少"}しました！`;
        console.log(result);

        // ティラノスクリプトに結果を表示
        tyrano.plugin.kag.tag.startTag('text', { text: result });
    } catch (e) {
        console.error("Firestoreエラー:", e);

        // エラー発生時のメッセージを表示
        const errorMessage = "エラーが発生しました。";
        tyrano.plugin.kag.ftag.startTag('text', { text: errorMessage });
    }
};

// Firestoreからtutorialを取得し、tf.tutorialに格納するカスタムタグ
tyrano.plugin.kag.tag.set_tutorial = {
    async start(pm) {
        const ganDocRef = doc(db, "pbl", "gan");
        try {
            // Firestoreからドキュメントを取得
            const docSnap = await getDoc(ganDocRef);
            if (docSnap.exists()) {
                // dpointをtf変数に格納
                tyrano.plugin.kag.variable.tf.tutorial = docSnap.data().tutorial;
                console.log(`tutorialを取得しました: ${docSnap.data().tutorial}`);
            } else {
                console.warn("Firestore: ドキュメントが存在しません。");
                tyrano.plugin.kag.variable.tf.tutorial = null; // 初期化
            }
        } catch (e) {
            console.error("Firestoreエラー:", e);
            tyrano.plugin.kag.variable.tf.tutorial = null; // 初期化
        }
        this.kag.ftag.nextOrder(); // 次の命令へ移行
    },
};

// Firestoreのtpointを初期値0にリセットする関数
window.resettpointToZero = async function () {
    const ganDocRef = doc(db, "pbl", "gan"); // コレクション名とドキュメントIDを指定
    try {
        await setDoc(ganDocRef, { tpoint: 0 }, { merge: true }); // merge: true で他のフィールドは維持
        console.log("tpointを初期値0にリセットしました！");
    } catch (e) {
        console.error("Firestoreのリセットエラー:", e);
    }
};

// tpointフィールドを増減し、結果をティラノスクリプトに表示する関数
window.updatetpoint = async function (changeValue) {
    const ganDocRef = doc(db, "pbl", "gan");

    try {
        // Firestoreトランザクションを使用してtpointの増減を安全に実行
        await runTransaction(db, async (transaction) => {
            const ganDoc = await transaction.get(ganDocRef);
            if (!ganDoc.exists()) {
                throw new Error("ドキュメントが存在しません。");
            }

            const currentTpoint = ganDoc.data().tpoint || 0; // tpointの現在値を取得
            const newTpoint = currentTpoint + changeValue;
            transaction.update(ganDocRef, { tpoint: newTpoint });
        });

        // 結果メッセージの生成
        const result = `tpointを${changeValue > 0 ? "増加" : "減少"}しました！ (変化値: ${changeValue})`;
        console.log(result);

        // ティラノスクリプトに結果を表示
        tyrano.plugin.kag.tag.startTag('text', { text: result });
    } catch (e) {
        console.error("Firestoreエラー:", e);

        // エラー発生時のメッセージを表示
        const errorMessage = "エラーが発生しました。";
        tyrano.plugin.kag.tag.startTag('text', { text: errorMessage });
    }
};

// Firestoreからtpointを取得し、tf.tpointに格納するカスタムタグ
tyrano.plugin.kag.tag.set_tpoint = {
    async start(pm) {
        const ganDocRef = doc(db, "pbl", "gan");
        try {
            // Firestoreからドキュメントを取得
            const docSnap = await getDoc(ganDocRef);
            if (docSnap.exists()) {
                // tpointをtf変数に格納
                tyrano.plugin.kag.variable.tf.tpoint = docSnap.data().tpoint;
                console.log(`tpointを取得しました: ${docSnap.data().tpoint}`);
            } else {
                console.warn("Firestore: ドキュメントが存在しません。");
                tyrano.plugin.kag.variable.tf.tpoint = 0; // 初期値0に設定
            }
        } catch (e) {
            console.error("Firestoreエラー:", e);
            tyrano.plugin.kag.variable.tf.tpoint = 0; // 初期値0に設定
        }
        this.kag.ftag.nextOrder(); // 次の命令へ移行
    },
};
