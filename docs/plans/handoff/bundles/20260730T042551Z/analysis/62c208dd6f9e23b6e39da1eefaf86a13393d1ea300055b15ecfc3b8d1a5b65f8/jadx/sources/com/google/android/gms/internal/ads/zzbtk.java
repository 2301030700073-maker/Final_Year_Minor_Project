package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbtk {
    public final boolean zza;
    public final String zzb;
    public final boolean zzc;

    public zzbtk(boolean z, String str, boolean z2) {
        this.zza = z;
        this.zzb = str;
        this.zzc = z2;
    }

    public static zzbtk zza(JSONObject jSONObject) {
        return new zzbtk(jSONObject.optBoolean("enable_prewarming", false), jSONObject.optString("prefetch_url", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), jSONObject.optBoolean("skip_offline_notification_flow", false));
    }
}
