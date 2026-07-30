package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzglx {
    public static final zzglp zza = new zzglv(null);

    public static zzglu zza(zzgnf zzgnfVar) {
        zzgdz zzgdzVar;
        zzglr zzglrVar = new zzglr();
        zzglrVar.zzb(zzgnfVar.zza());
        Iterator it = zzgnfVar.zze().iterator();
        while (it.hasNext()) {
            for (zzgnd zzgndVar : (List) it.next()) {
                int zzf = zzgndVar.zzf() - 2;
                if (zzf == 1) {
                    zzgdzVar = zzgdz.zza;
                } else if (zzf == 2) {
                    zzgdzVar = zzgdz.zzb;
                } else {
                    if (zzf != 3) {
                        throw new IllegalStateException("Unknown key status");
                    }
                    zzgdzVar = zzgdz.zzc;
                }
                int zza2 = zzgndVar.zza();
                String zze = zzgndVar.zze();
                if (zze.startsWith("type.googleapis.com/google.crypto.")) {
                    zze = zze.substring(34);
                }
                zzglrVar.zza(zzgdzVar, zza2, zze, zzgndVar.zzb().name());
            }
        }
        if (zzgnfVar.zzc() != null) {
            zzglrVar.zzc(zzgnfVar.zzc().zza());
        }
        try {
            return zzglrVar.zzd();
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
