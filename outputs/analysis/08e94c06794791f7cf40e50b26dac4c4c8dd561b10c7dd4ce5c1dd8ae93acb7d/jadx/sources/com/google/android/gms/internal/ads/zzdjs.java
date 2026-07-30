package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzdjs implements zzctr {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final zzifw zzd;
    private final zzdma zze;

    zzdjs(Map map, Map map2, Map map3, zzifw zzifwVar, zzdma zzdmaVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = map3;
        this.zzd = zzifwVar;
        this.zze = zzdmaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzctr
    public final zzehk zza(int i, String str) {
        zzehk zza;
        zzehk zzehkVar = (zzehk) this.zza.get(str);
        if (zzehkVar != null) {
            return zzehkVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            zzejq zzejqVar = (zzejq) this.zzc.get(str);
            if (zzejqVar != null) {
                return zzctw.zza(zzejqVar);
            }
            zza = (zzehk) this.zzb.get(str);
            if (zza == null) {
                return null;
            }
        } else if (this.zze.zzd() == null || (zza = ((zzctr) this.zzd.zzb()).zza(i, str)) == null) {
            return null;
        }
        return zzctw.zzb(zza);
    }
}
