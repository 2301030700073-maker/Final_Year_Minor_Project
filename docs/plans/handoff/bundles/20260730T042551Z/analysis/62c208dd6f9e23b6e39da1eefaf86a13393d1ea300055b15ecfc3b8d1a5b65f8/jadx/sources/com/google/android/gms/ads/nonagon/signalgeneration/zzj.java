package com.google.android.gms.ads.nonagon.signalgeneration;

import android.graphics.Bitmap;
import android.os.Build;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzbcl;
import com.google.android.gms.internal.ads.zzbkk;
import com.google.android.gms.internal.ads.zzgcs;
import defpackage.AbstractC3306m1;
import defpackage.C0315Kc;
import defpackage.C0687aM;
import defpackage.C3424o1;
import defpackage.YL;
import defpackage.ZL;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzj extends zzbkk {

    /* renamed from: do, reason: not valid java name */
    public final WebView f10071do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public WebViewClient f10072do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzf f10073do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzgcs f10074do;

    public zzj(WebView webView, zzf zzfVar, zzgcs zzgcsVar) {
        this.f10071do = webView;
        this.f10073do = zzfVar;
        this.f10074do = zzgcsVar;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m5592do() {
        this.f10071do.evaluateJavascript(String.format(Locale.getDefault(), (String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjF), this.f10073do.zza()), null);
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final WebViewClient getDelegate() {
        return this.f10072do;
    }

    @Override // com.google.android.gms.internal.ads.zzbkk, android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        m5592do();
        super.onPageFinished(webView, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbkk, android.webkit.WebViewClient
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        m5592do();
        super.onPageStarted(webView, str, bitmap);
    }

    public final void zzb() {
        this.f10074do.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzh
            @Override // java.lang.Runnable
            public final void run() {
                WebViewClient webViewClient;
                zzj zzjVar = zzj.this;
                zzjVar.getClass();
                try {
                    com.google.android.gms.ads.internal.zzv.zzq();
                    int i = Build.VERSION.SDK_INT;
                    WebView webView = zzjVar.f10071do;
                    if (i < 26) {
                        if (C0315Kc.m1176return("GET_WEB_VIEW_CLIENT")) {
                            try {
                                int i2 = YL.f4729do;
                                AbstractC3306m1.Ctry ctry = ZL.f4806do;
                                if (ctry.mo7443for()) {
                                    webViewClient = C3424o1.m7651new(webView);
                                } else {
                                    if (!ctry.mo2991new()) {
                                        throw new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
                                    }
                                    webViewClient = C0687aM.Cdo.f4943do.mo4833new(webView).getWebViewClient();
                                }
                            } catch (RuntimeException e) {
                                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdUtil.getWebViewClient");
                            }
                        }
                        throw new IllegalStateException("getWebViewClient not supported");
                    }
                    webViewClient = webView.getWebViewClient();
                    if (webViewClient == zzjVar) {
                        return;
                    }
                    if (webViewClient != null) {
                        zzjVar.f10072do = webViewClient;
                    }
                    webView.setWebViewClient(zzjVar);
                    zzjVar.m5592do();
                } catch (IllegalStateException unused) {
                }
            }
        });
    }
}
