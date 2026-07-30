package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.webkit.WebView;
import com.facebook.internal.AnalyticsEvents;
import defpackage.AbstractC0480Ro;
import defpackage.TL;
import defpackage.YL;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzfkz implements YL.Cdo {
    final /* synthetic */ zzfla zza;

    public zzfkz(zzfla zzflaVar) {
        this.zza = zzflaVar;
    }

    @Override // defpackage.YL.Cdo
    public final void onPostMessage(WebView webView, TL tl, Uri uri, boolean z, AbstractC0480Ro abstractC0480Ro) {
        int i = tl.f3647do;
        if (i != 0) {
            StringBuilder sb = new StringBuilder("Wrong data accessor type detected. ");
            sb.append(i != 0 ? i != 1 ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN : "ArrayBuffer" : "String");
            sb.append(" expected, but got ");
            sb.append("String");
            throw new IllegalStateException(sb.toString());
        }
        try {
            JSONObject jSONObject = new JSONObject(tl.f3648do);
            String string = jSONObject.getString("method");
            String string2 = jSONObject.getJSONObject("data").getString("adSessionId");
            if (string.equals("startSession")) {
                zzfla.zze(this.zza, string2);
            } else if (string.equals("finishSession")) {
                zzfla.zzc(this.zza, string2);
            } else {
                zzfkm.zza.booleanValue();
            }
        } catch (JSONException e) {
            zzfmh.zza("Error parsing JS message in JavaScriptSessionService.", e);
        }
    }
}
