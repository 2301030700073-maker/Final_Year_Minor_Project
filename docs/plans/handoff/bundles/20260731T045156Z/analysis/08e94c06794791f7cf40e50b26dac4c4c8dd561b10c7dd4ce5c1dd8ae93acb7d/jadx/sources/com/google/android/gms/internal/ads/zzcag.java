package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Iterator;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public abstract class zzcag {
    static zzcag zzi;

    public static synchronized zzcag zzb(Context context) {
        synchronized (zzcag.class) {
            zzcag zzcagVar = zzi;
            if (zzcagVar != null) {
                return zzcagVar;
            }
            Context applicationContext = context.getApplicationContext();
            zzbeu.zza(applicationContext);
            com.google.android.gms.ads.internal.util.zzg zzo = com.google.android.gms.ads.internal.zzt.zzh().zzo();
            zzo.zza(applicationContext);
            zzcaa zzcaaVar = new zzcaa(null);
            zzcaaVar.zza(applicationContext);
            zzcaaVar.zzb(com.google.android.gms.ads.internal.zzt.zzk());
            zzcaaVar.zzc(zzo);
            zzcaaVar.zzd(com.google.android.gms.ads.internal.zzt.zzD());
            zzcag zze = zzcaaVar.zze();
            zzi = zze;
            ((zzbzu) ((zzcab) zze).zzc.zzb()).zza();
            final zzcal zzcalVar = (zzcal) ((zzcab) zzi).zzh.zzb();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzaM)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzc();
                final Map zzz = com.google.android.gms.ads.internal.util.zzs.zzz((String) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzaN));
                Iterator it = zzz.keySet().iterator();
                while (it.hasNext()) {
                    zzcalVar.zzb((String) it.next());
                }
                zzcalVar.zza(new zzcaj() { // from class: com.google.android.gms.internal.ads.zzcak
                    @Override // com.google.android.gms.internal.ads.zzcaj
                    public final /* synthetic */ void zza(SharedPreferences sharedPreferences, String str, String str2) {
                        zzcal.this.zzc(zzz, sharedPreferences, str, str2);
                    }
                });
            }
            return zzi;
        }
    }

    abstract zzbzy zza();
}
