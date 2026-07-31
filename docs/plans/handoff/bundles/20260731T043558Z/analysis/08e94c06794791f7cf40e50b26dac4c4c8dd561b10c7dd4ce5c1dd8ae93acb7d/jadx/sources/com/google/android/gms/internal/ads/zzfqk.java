package com.google.android.gms.internal.ads;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import io.sentry.android.core.SentryLogcatAdapter;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfqk extends WebViewClient {
    final /* synthetic */ zzfqm zza;

    zzfqk(zzfqm zzfqmVar) {
        Objects.requireNonNull(zzfqmVar);
        this.zza = zzfqmVar;
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        String obj = renderProcessGoneDetail.toString();
        String valueOf = String.valueOf(webView);
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 36 + String.valueOf(valueOf).length());
        sb.append("WebView renderer gone: ");
        sb.append(obj);
        sb.append("for WebView: ");
        sb.append(valueOf);
        SentryLogcatAdapter.w("NativeBridge", sb.toString());
        zzfqm zzfqmVar = this.zza;
        if (zzfqmVar.zzd() == webView) {
            SentryLogcatAdapter.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
            zzfqmVar.zzc(null);
        }
        webView.destroy();
        return true;
    }
}
