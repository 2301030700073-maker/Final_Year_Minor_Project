package com.google.android.gms.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AdError {
    public static final String UNDEFINED_DOMAIN = "undefined";

    /* renamed from: do, reason: not valid java name */
    public final int f9490do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AdError f9491do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9492do;

    /* renamed from: if, reason: not valid java name */
    public final String f9493if;

    public AdError(int i, String str, String str2) {
        this(i, str, str2, null);
    }

    public AdError(int i, String str, String str2, AdError adError) {
        this.f9490do = i;
        this.f9492do = str;
        this.f9493if = str2;
        this.f9491do = adError;
    }

    public AdError getCause() {
        return this.f9491do;
    }

    public int getCode() {
        return this.f9490do;
    }

    public String getDomain() {
        return this.f9493if;
    }

    public String getMessage() {
        return this.f9492do;
    }

    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final com.google.android.gms.ads.internal.client.zze zza() {
        com.google.android.gms.ads.internal.client.zze zzeVar;
        AdError adError = this.f9491do;
        if (adError == null) {
            zzeVar = null;
        } else {
            String str = adError.f9493if;
            zzeVar = new com.google.android.gms.ads.internal.client.zze(adError.f9490do, adError.f9492do, str, null, null);
        }
        return new com.google.android.gms.ads.internal.client.zze(this.f9490do, this.f9492do, this.f9493if, zzeVar, null);
    }

    public JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f9490do);
        jSONObject.put("Message", this.f9492do);
        jSONObject.put("Domain", this.f9493if);
        AdError adError = this.f9491do;
        if (adError == null) {
            jSONObject.put("Cause", "null");
        } else {
            jSONObject.put("Cause", adError.zzb());
        }
        return jSONObject;
    }
}
