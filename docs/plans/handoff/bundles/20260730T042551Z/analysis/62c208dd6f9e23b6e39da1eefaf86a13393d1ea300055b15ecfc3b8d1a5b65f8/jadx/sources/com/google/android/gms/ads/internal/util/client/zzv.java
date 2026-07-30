package com.google.android.gms.ads.internal.util.client;

import defpackage.FU;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzv {

    /* renamed from: do, reason: not valid java name */
    public final zzx f9746do;

    public zzv() {
        this.f9746do = new FU(1, 0, 1.0d, false);
    }

    public zzv(FU fu) {
        this.f9746do = fu;
    }

    public static zzv zza(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("ping_strategy");
        return new zzv(optJSONObject == null ? new FU(1, 0, 1.0d, false) : new FU(optJSONObject.optInt("max_attempts", 1), optJSONObject.optInt("initial_backoff_ms", 0), optJSONObject.optDouble("backoff_multiplier", 1.0d), optJSONObject.optBoolean("buffer_after_max_attempts", false)));
    }

    public final zzx zzb() {
        return this.f9746do;
    }
}
