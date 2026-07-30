package com.google.android.gms.internal.consent_sdk;

import android.annotation.TargetApi;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
final class zzbp extends WebViewClient {
    final /* synthetic */ zzbr zza;

    public /* synthetic */ zzbp(zzbr zzbrVar, zzbq zzbqVar) {
        this.zza = zzbrVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        zzbx zzbxVar;
        if (zzbr.zzf(this.zza, str)) {
            zzbxVar = this.zza.zzb;
            zzbxVar.zze(str);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        boolean z;
        z = this.zza.zzc;
        if (z) {
            return;
        }
        this.zza.zzc = true;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        zzbx zzbxVar;
        zzbxVar = this.zza.zzb;
        zzbxVar.zzf(i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(ConnectionResult.API_DISABLED_FOR_CONNECTION)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        zzbx zzbxVar;
        String uri = webResourceRequest.getUrl().toString();
        if (!zzbr.zzf(this.zza, uri)) {
            return false;
        }
        zzbxVar = this.zza.zzb;
        zzbxVar.zze(uri);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzbx zzbxVar;
        if (!zzbr.zzf(this.zza, str)) {
            return false;
        }
        zzbxVar = this.zza.zzb;
        zzbxVar.zze(str);
        return true;
    }
}
