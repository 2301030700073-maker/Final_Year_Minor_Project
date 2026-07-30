package com.google.android.gms.ads;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzw;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AdapterResponseInfo {

    /* renamed from: do, reason: not valid java name */
    public final AdError f9508do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzw f9509do;

    public AdapterResponseInfo(zzw zzwVar) {
        this.f9509do = zzwVar;
        com.google.android.gms.ads.internal.client.zze zzeVar = zzwVar.zzc;
        this.f9508do = zzeVar == null ? null : zzeVar.zza();
    }

    public static AdapterResponseInfo zza(zzw zzwVar) {
        if (zzwVar != null) {
            return new AdapterResponseInfo(zzwVar);
        }
        return null;
    }

    public AdError getAdError() {
        return this.f9508do;
    }

    public String getAdSourceId() {
        return this.f9509do.zzf;
    }

    public String getAdSourceInstanceId() {
        return this.f9509do.zzh;
    }

    public String getAdSourceInstanceName() {
        return this.f9509do.zzg;
    }

    public String getAdSourceName() {
        return this.f9509do.zze;
    }

    public String getAdapterClassName() {
        return this.f9509do.zza;
    }

    public Bundle getCredentials() {
        return this.f9509do.zzd;
    }

    public long getLatencyMillis() {
        return this.f9509do.zzb;
    }

    public String toString() {
        try {
            return zzb().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final JSONObject zzb() {
        JSONObject jSONObject = new JSONObject();
        zzw zzwVar = this.f9509do;
        jSONObject.put("Adapter", zzwVar.zza);
        jSONObject.put("Latency", zzwVar.zzb);
        String adSourceName = getAdSourceName();
        if (adSourceName == null) {
            jSONObject.put("Ad Source Name", "null");
        } else {
            jSONObject.put("Ad Source Name", adSourceName);
        }
        String adSourceId = getAdSourceId();
        if (adSourceId == null) {
            jSONObject.put("Ad Source ID", "null");
        } else {
            jSONObject.put("Ad Source ID", adSourceId);
        }
        String adSourceInstanceName = getAdSourceInstanceName();
        if (adSourceInstanceName == null) {
            jSONObject.put("Ad Source Instance Name", "null");
        } else {
            jSONObject.put("Ad Source Instance Name", adSourceInstanceName);
        }
        String adSourceInstanceId = getAdSourceInstanceId();
        if (adSourceInstanceId == null) {
            jSONObject.put("Ad Source Instance ID", "null");
        } else {
            jSONObject.put("Ad Source Instance ID", adSourceInstanceId);
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str : zzwVar.zzd.keySet()) {
            jSONObject2.put(str, zzwVar.zzd.get(str));
        }
        jSONObject.put("Credentials", jSONObject2);
        AdError adError = this.f9508do;
        if (adError == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", adError.zzb());
        }
        return jSONObject;
    }
}
