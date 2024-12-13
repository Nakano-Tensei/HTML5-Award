// Firebase SDKをインポート
import { initializeApp } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-app.js";
import { getFirestore } from "https://www.gstatic.com/firebasejs/11.0.2/firebase-firestore.js";

// Firebaseの設定
const firebaseConfig = {
    apiKey: "AIzaSyDL3iuvOS63Yi0SlBylSYS11LRyq1iNZ1E",
    authDomain: "pblhtml.firebaseapp.com",
    projectId: "pblhtml",
    storageBucket: "pblhtml.appspot.com",
    messagingSenderId: "74803271017",
    appId: "1:74803271017:web:bb52165f580b1d5764d9f8",
    measurementId: "G-7TYY4EVZNR"
};

// Firebaseの初期化
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

// Firestoreのエクスポート
export { db };