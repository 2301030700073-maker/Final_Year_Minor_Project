package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzdws implements zzher {
    private final zzhfj zza;

    public zzdws(zzhfj zzhfjVar) {
        this.zza = zzhfjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final String zzb() {
        String packageName = ((zzche) this.zza).zza().getPackageName();
        zzhez.zzb(packageName);
        return packageName;
    }
}
