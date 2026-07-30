package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzgii {
    private static final zzglz zza = new zzglz() { // from class: com.google.android.gms.internal.ads.zzgig
        @Override // com.google.android.gms.internal.ads.zzglz
        public final zzgdx zza(zzgek zzgekVar, Integer num) {
            return zzgif.zza((zzgik) zzgekVar, zzgvp.zzc(32), num);
        }
    };
    private static final zzgmx zzb = zzgmx.zzb(new zzgmv() { // from class: com.google.android.gms.internal.ads.zzgih
        @Override // com.google.android.gms.internal.ads.zzgmv
        public final Object zza(zzgdx zzgdxVar) {
            return zzgke.zzb((zzgif) zzgdxVar);
        }
    }, zzgif.class, zzgdn.class);

    public static void zza(boolean z) {
        int i = zzgkj.zza;
        zzgkj.zze(zzgmk.zzc());
        zzgmg zzb2 = zzgmg.zzb();
        HashMap hashMap = new HashMap();
        hashMap.put("X_AES_GCM_8_BYTE_SALT_NO_PREFIX", zzgie.zzg);
        zzb2.zzd(DesugarCollections.unmodifiableMap(hashMap));
        zzgmh.zza().zze(zzb);
        zzgma.zzb().zzc(zza, zzgik.class);
    }
}
