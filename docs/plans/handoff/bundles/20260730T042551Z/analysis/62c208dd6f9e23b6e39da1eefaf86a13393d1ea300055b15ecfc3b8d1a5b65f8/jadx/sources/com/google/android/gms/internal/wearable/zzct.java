package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
final class zzct implements zzda {
    private final zzda[] zza;

    public zzct(zzda... zzdaVarArr) {
        this.zza = zzdaVarArr;
    }

    @Override // com.google.android.gms.internal.wearable.zzda
    public final zzcz zzb(Class cls) {
        zzda[] zzdaVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzda zzdaVar = zzdaVarArr[i];
            if (zzdaVar.zzc(cls)) {
                return zzdaVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.wearable.zzda
    public final boolean zzc(Class cls) {
        zzda[] zzdaVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzdaVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
