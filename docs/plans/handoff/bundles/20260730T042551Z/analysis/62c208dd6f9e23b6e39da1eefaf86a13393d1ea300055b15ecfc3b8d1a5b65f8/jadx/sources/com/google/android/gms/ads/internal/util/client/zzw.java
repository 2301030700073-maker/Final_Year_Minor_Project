package com.google.android.gms.ads.internal.util.client;

import defpackage.C3453oU;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract class zzw {
    public static zzw zzd(JSONObject jSONObject) {
        return new C3453oU(jSONObject.optInt("impression_prerequisite", 0), jSONObject.optInt("click_prerequisite", 0), jSONObject.optBoolean("notification_flow_enabled", false));
    }

    public abstract int zza();

    public abstract int zzb();

    public abstract boolean zzc();
}
