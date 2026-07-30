package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdpm {
    private final zzfdf zza;
    private final zzdpj zzb;

    public zzdpm(zzfdf zzfdfVar, zzdpj zzdpjVar) {
        this.zza = zzfdfVar;
        this.zzb = zzdpjVar;
    }

    public final zzbpe zza() {
        zzbpe zzb = this.zza.zzb();
        if (zzb != null) {
            return zzb;
        }
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zzbrd zzb(String str) {
        zzbrd zzc = zza().zzc(str);
        this.zzb.zzd(str, zzc);
        return zzc;
    }

    public final zzfdh zzc(String str, JSONObject jSONObject) {
        zzbph zzb;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzb = new zzbqf(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzb = new zzbqf(new zzbrw());
            } else {
                zzbpe zza = zza();
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        zzb = zza.zze(string) ? zza.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zza.zzd(string) ? zza.zzb(string) : zza.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzh("Invalid custom event.", e);
                    }
                }
                zzb = zza.zzb(str);
            }
            zzfdh zzfdhVar = new zzfdh(zzb);
            this.zzb.zzc(str, zzfdhVar);
            return zzfdhVar;
        } catch (Throwable th) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzjk)).booleanValue()) {
                this.zzb.zzc(str, null);
            }
            throw new zzfcq(th);
        }
    }

    public final boolean zzd() {
        return this.zza.zzb() != null;
    }
}
