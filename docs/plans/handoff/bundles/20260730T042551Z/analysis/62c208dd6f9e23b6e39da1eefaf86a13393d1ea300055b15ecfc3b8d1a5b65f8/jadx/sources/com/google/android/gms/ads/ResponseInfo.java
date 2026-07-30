package com.google.android.gms.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbc;
import com.google.android.gms.ads.internal.client.zzdy;
import com.google.android.gms.ads.internal.client.zzw;
import com.google.android.gms.ads.internal.util.client.zzo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ResponseInfo {

    /* renamed from: do, reason: not valid java name */
    public final AdapterResponseInfo f9525do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final zzdy f9526do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f9527do = new ArrayList();

    public ResponseInfo(zzdy zzdyVar) {
        this.f9526do = zzdyVar;
        if (zzdyVar != null) {
            try {
                List zzj = zzdyVar.zzj();
                if (zzj != null) {
                    Iterator it = zzj.iterator();
                    while (it.hasNext()) {
                        AdapterResponseInfo zza = AdapterResponseInfo.zza((zzw) it.next());
                        if (zza != null) {
                            this.f9527do.add(zza);
                        }
                    }
                }
            } catch (RemoteException e) {
                zzo.zzh("Could not forward getAdapterResponseInfo to ResponseInfo.", e);
            }
        }
        zzdy zzdyVar2 = this.f9526do;
        if (zzdyVar2 == null) {
            return;
        }
        try {
            zzw zzf = zzdyVar2.zzf();
            if (zzf != null) {
                this.f9525do = AdapterResponseInfo.zza(zzf);
            }
        } catch (RemoteException e2) {
            zzo.zzh("Could not forward getLoadedAdapterResponse to ResponseInfo.", e2);
        }
    }

    public static ResponseInfo zza(zzdy zzdyVar) {
        if (zzdyVar != null) {
            return new ResponseInfo(zzdyVar);
        }
        return null;
    }

    public static ResponseInfo zzb(zzdy zzdyVar) {
        return new ResponseInfo(zzdyVar);
    }

    public List<AdapterResponseInfo> getAdapterResponses() {
        return this.f9527do;
    }

    public AdapterResponseInfo getLoadedAdapterResponseInfo() {
        return this.f9525do;
    }

    public String getMediationAdapterClassName() {
        try {
            zzdy zzdyVar = this.f9526do;
            if (zzdyVar != null) {
                return zzdyVar.zzg();
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzh("Could not forward getMediationAdapterClassName to ResponseInfo.", e);
            return null;
        }
    }

    public Bundle getResponseExtras() {
        try {
            zzdy zzdyVar = this.f9526do;
            if (zzdyVar != null) {
                return zzdyVar.zze();
            }
        } catch (RemoteException e) {
            zzo.zzh("Could not forward getResponseExtras to ResponseInfo.", e);
        }
        return new Bundle();
    }

    public String getResponseId() {
        try {
            zzdy zzdyVar = this.f9526do;
            if (zzdyVar != null) {
                return zzdyVar.zzi();
            }
            return null;
        } catch (RemoteException e) {
            zzo.zzh("Could not forward getResponseId to ResponseInfo.", e);
            return null;
        }
    }

    public String toString() {
        try {
            return zzd().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }

    public final zzdy zzc() {
        return this.f9526do;
    }

    public final JSONObject zzd() {
        JSONObject jSONObject = new JSONObject();
        String responseId = getResponseId();
        if (responseId == null) {
            jSONObject.put("Response ID", "null");
        } else {
            jSONObject.put("Response ID", responseId);
        }
        String mediationAdapterClassName = getMediationAdapterClassName();
        if (mediationAdapterClassName == null) {
            jSONObject.put("Mediation Adapter Class Name", "null");
        } else {
            jSONObject.put("Mediation Adapter Class Name", mediationAdapterClassName);
        }
        JSONArray jSONArray = new JSONArray();
        Iterator it = this.f9527do.iterator();
        while (it.hasNext()) {
            jSONArray.put(((AdapterResponseInfo) it.next()).zzb());
        }
        jSONObject.put("Adapter Responses", jSONArray);
        AdapterResponseInfo adapterResponseInfo = this.f9525do;
        if (adapterResponseInfo != null) {
            jSONObject.put("Loaded Adapter Response", adapterResponseInfo.zzb());
        }
        Bundle responseExtras = getResponseExtras();
        if (responseExtras != null) {
            jSONObject.put("Response Extras", zzbc.zzb().zzi(responseExtras));
        }
        return jSONObject;
    }
}
