package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgma {
    public static final /* synthetic */ int zza = 0;
    private static final zzglz zzb = new zzglz() { // from class: com.google.android.gms.internal.ads.zzgly
        @Override // com.google.android.gms.internal.ads.zzglz
        public final zzgdx zza(zzgek zzgekVar, Integer num) {
            int i = zzgma.zza;
            zzgsp zzc2 = ((zzgll) zzgekVar).zzb().zzc();
            zzgdy zzb2 = zzgkz.zzc().zzb(zzc2.zzi());
            if (!zzgkz.zzc().zze(zzc2.zzi())) {
                throw new GeneralSecurityException("Creating new keys is not allowed.");
            }
            zzgsl zza2 = zzb2.zza(zzc2.zzh());
            return new zzglk(zzgnh.zza(zza2.zzg(), zza2.zzf(), zza2.zzb(), zzc2.zzg(), num), zzgdw.zza());
        }
    };
    private static final zzgma zzc = zze();
    private final Map zzd = new HashMap();

    public static zzgma zzb() {
        return zzc;
    }

    private final synchronized zzgdx zzd(zzgek zzgekVar, Integer num) {
        zzglz zzglzVar;
        zzglzVar = (zzglz) this.zzd.get(zzgekVar.getClass());
        if (zzglzVar == null) {
            throw new GeneralSecurityException("Cannot create a new key for parameters " + zzgekVar.toString() + ": no key creator for this class was registered.");
        }
        return zzglzVar.zza(zzgekVar, num);
    }

    private static zzgma zze() {
        zzgma zzgmaVar = new zzgma();
        try {
            zzgmaVar.zzc(zzb, zzgll.class);
            return zzgmaVar;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("unexpected error.", e);
        }
    }

    public final zzgdx zza(zzgek zzgekVar, Integer num) {
        return zzd(zzgekVar, num);
    }

    public final synchronized void zzc(zzglz zzglzVar, Class cls) {
        zzglz zzglzVar2 = (zzglz) this.zzd.get(cls);
        if (zzglzVar2 != null && !zzglzVar2.equals(zzglzVar)) {
            throw new GeneralSecurityException("Different key creator for parameters class " + cls.toString() + " already inserted");
        }
        this.zzd.put(cls, zzglzVar);
    }
}
