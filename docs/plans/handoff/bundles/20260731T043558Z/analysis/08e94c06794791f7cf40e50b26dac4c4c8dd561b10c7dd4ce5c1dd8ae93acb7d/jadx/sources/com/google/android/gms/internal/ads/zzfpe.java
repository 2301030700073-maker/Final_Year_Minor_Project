package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.webkit.WebView;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfpe implements WebViewCompat.WebMessageListener {
    final /* synthetic */ zzfpg zza;

    zzfpe(zzfpg zzfpgVar) {
        Objects.requireNonNull(zzfpgVar);
        this.zza = zzfpgVar;
    }

    @Override // androidx.webkit.WebViewCompat.WebMessageListener
    public final void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
        try {
            JSONObject jSONObject = new JSONObject(webMessageCompat.getData());
            String string = jSONObject.getString("method");
            String string2 = jSONObject.getJSONObject("data").getString("adSessionId");
            if (string.equals("startSession")) {
                this.zza.zzf(string2);
            } else if (string.equals("finishSession")) {
                this.zza.zzg(string2);
            } else {
                String.valueOf(string);
                zzfor.zza.booleanValue();
            }
        } catch (JSONException e) {
            zzfqp.zza("Error parsing JS message in JavaScriptSessionService.", e);
        }
    }
}
