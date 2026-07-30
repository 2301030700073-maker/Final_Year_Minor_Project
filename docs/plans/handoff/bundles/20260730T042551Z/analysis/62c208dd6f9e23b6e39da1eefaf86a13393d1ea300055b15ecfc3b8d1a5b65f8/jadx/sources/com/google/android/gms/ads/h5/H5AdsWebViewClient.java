package com.google.android.gms.ads.h5;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzbkk;
import com.google.android.gms.internal.ads.zzbkx;

/* loaded from: classes.dex */
public final class H5AdsWebViewClient extends zzbkk {

    /* renamed from: do, reason: not valid java name */
    public final zzbkx f9561do;

    public H5AdsWebViewClient(Context context, WebView webView) {
        this.f9561do = new zzbkx(context, webView);
    }

    public void clearAdObjects() {
        this.f9561do.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final WebViewClient getDelegate() {
        return this.f9561do;
    }

    public WebViewClient getDelegateWebViewClient() {
        return this.f9561do.getDelegate();
    }

    public void setDelegateWebViewClient(WebViewClient webViewClient) {
        this.f9561do.zzb(webViewClient);
    }
}
