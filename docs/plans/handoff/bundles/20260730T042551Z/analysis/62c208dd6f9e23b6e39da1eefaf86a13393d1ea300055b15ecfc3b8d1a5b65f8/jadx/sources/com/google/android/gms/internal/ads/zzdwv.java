package com.google.android.gms.internal.ads;

import java.util.UUID;

/* loaded from: classes.dex */
public final class zzdwv implements zzher {
    public static zzdwv zza() {
        zzdwv zzdwvVar;
        zzdwvVar = zzdwu.zza;
        return zzdwvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj, com.google.android.gms.internal.ads.zzhfi
    public final /* synthetic */ Object zzb() {
        com.google.android.gms.ads.internal.zzv.zzq();
        String uuid = UUID.randomUUID().toString();
        zzhez.zzb(uuid);
        return uuid;
    }
}
