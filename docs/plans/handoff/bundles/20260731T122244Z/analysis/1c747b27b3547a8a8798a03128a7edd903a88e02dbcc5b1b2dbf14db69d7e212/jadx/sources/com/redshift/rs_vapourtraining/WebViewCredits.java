package com.redshift.rs_vapourtraining;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.appcompat.app.AppCompatActivity;
import java.util.Base64;

/* loaded from: classes5.dex */
public class WebViewCredits extends AppCompatActivity {
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_web_view_credits);
        String cardName = getIntent().getStringExtra("cardName");
        WebView myWebView = (WebView) findViewById(R.id.webview);
        WebSettings webSettings = myWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        myWebView.setWebChromeClient(new WebChromeClient());
        myWebView.addJavascriptInterface(new WebAppInterface(this), "Android");
        String encodedString = Base64.getEncoder().encodeToString(cardName.getBytes());
        SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
        String RS_IP = prefs.getString("RS_IP", com.android.volley.BuildConfig.FLAVOR);
        myWebView.loadUrl("http://" + RS_IP + ":5000/buycredit/cardname/" + encodedString);
    }
}
