// Firestore SDKのインポート
import { doc, updateDoc, increment } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";
import { db } from "./firebase-config.js";


// dpointフィールドを増減する関数
async function updateDpoint(changeValue) {
    const ganDocRef = doc(db, "pbl", "gan");

    try {
        await updateDoc(ganDocRef, {
            dpoint: increment(changeValue)
        });
        console.log(`dpointを${changeValue > 0 ? "増加" : "減少"}させました: ${changeValue}`);
        return `dpointを${changeValue > 0 ? "増加" : "減少"}しました！`;
    } catch (e) {
        console.error("Firestoreエラー:", e);
        return "エラーが発生しました。";
    }
}

// dpointの更新結果をティラノスクリプトに直接返すラッパー
window.updateDpointWrapper = async function (changeValue) {
    const result = await updateDpoint(changeValue);
    // ティラノスクリプトに結果を表示する
    tyrano.plugin.kag.ftag.startTag('text', { text: result });
};

// dpointの現在値を取得する関数
import { getDoc } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";

async function getDpoint() {
    const ganDocRef = doc(db, "pbl", "gan");
    try {
        const docSnap = await getDoc(ganDocRef);
        if (docSnap.exists()) {
            return `現在のdpoint: ${docSnap.data().dpoint}`;
        } else {
            return "ドキュメントが存在しません。";
        }
    } catch (e) {
        console.error("Firestoreエラー:", e);
        return "エラーが発生しました。";
    }
}

// dpointの現在値を取得して表示するラッパー
window.getDpointWrapper = async function () {
    const result = await getDpoint();
    // ティラノスクリプトに結果を表示する
    tyrano.plugin.kag.ftag.startTag('text', { text: result });
};

// 関数をグローバルスコープに登録
window.updateDpoint = updateDpoint;
window.getDpoint = getDpoint;
