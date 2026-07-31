package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import io.sentry.SentryLockReason;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdsy {
    private final zzfhj zza;
    private final zzdsv zzb;

    zzdsy(zzfhj zzfhjVar, zzdsv zzdsvVar) {
        this.zza = zzfhjVar;
        this.zzb = zzdsvVar;
    }

    public final zzfhl zza(String str, JSONObject jSONObject) throws zzfgu {
        zzbrm zzb;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzb = new zzbsk(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzb = new zzbsk(new zzbub());
            } else {
                zzbrj zzd = zzd();
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString(SentryLockReason.JsonKeys.CLASS_NAME);
                        zzb = zzd.zzc(string) ? zzd.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zzd.zzd(string) ? zzd.zzb(string) : zzd.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Invalid custom event.", e);
                    }
                }
                zzb = zzd.zzb(str);
            }
            zzfhl zzfhlVar = new zzfhl(zzb);
            this.zzb.zza(str, zzfhlVar);
            return zzfhlVar;
        } catch (Throwable th) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzkq)).booleanValue()) {
                this.zzb.zza(str, null);
            }
            throw new zzfgu(th);
        }
    }

    public final zzbti zzb(String str) throws RemoteException {
        zzbti zze = zzd().zze(str);
        this.zzb.zzb(str, zze);
        return zze;
    }

    public final boolean zzc() {
        return this.zza.zzd() != null;
    }

    final zzbrj zzd() throws RemoteException {
        zzbrj zzd = this.zza.zzd();
        if (zzd != null) {
            return zzd;
        }
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Unexpected call to adapter creator.");
        throw new RemoteException();
    }
}
