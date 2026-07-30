package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zzbyj {
    static zzbyj zza;

    public static synchronized zzbyj zzd(Context context) {
        synchronized (zzbyj.class) {
            zzbyj zzbyjVar = zza;
            if (zzbyjVar != null) {
                return zzbyjVar;
            }
            Context applicationContext = context.getApplicationContext();
            zzbcl.zza(applicationContext);
            com.google.android.gms.ads.internal.util.zzg zzi = com.google.android.gms.ads.internal.zzv.zzp().zzi();
            zzi.zzp(applicationContext);
            zzbyb zzbybVar = new zzbyb(null);
            zzbybVar.zzb(applicationContext);
            zzbybVar.zzc(com.google.android.gms.ads.internal.zzv.zzC());
            zzbybVar.zza(zzi);
            zzbybVar.zzd(com.google.android.gms.ads.internal.zzv.zzo());
            zzbyj zze = zzbybVar.zze();
            zza = zze;
            zze.zza().zza();
            zzbyn zzc = zza.zzc();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaE)).booleanValue()) {
                com.google.android.gms.ads.internal.zzv.zzq();
                Map zzw = com.google.android.gms.ads.internal.util.zzs.zzw((String) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzaF));
                Iterator it = zzw.keySet().iterator();
                while (it.hasNext()) {
                    zzc.zzc((String) it.next());
                }
                zzc.zzd(new zzbyl(zzc, zzw));
            }
            return zza;
        }
    }

    public abstract zzbxv zza();

    public abstract zzbxz zzb();

    public abstract zzbyn zzc();
}
