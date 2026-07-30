package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgyx {
    public static final boolean zza(Object obj) {
        return !((zzgyw) obj).zze();
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzgyw zzgywVar = (zzgyw) obj;
        zzgyw zzgywVar2 = (zzgyw) obj2;
        if (!zzgywVar2.isEmpty()) {
            if (!zzgywVar.zze()) {
                zzgywVar = zzgywVar.zzb();
            }
            zzgywVar.zzd(zzgywVar2);
        }
        return zzgywVar;
    }
}
