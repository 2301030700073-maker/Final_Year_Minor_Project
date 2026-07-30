package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Strings;
import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
public final class zzeoe implements zzetr {
    private final zzeym zza;

    public zzeoe(zzeym zzeymVar) {
        this.zza = zzeymVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        zzeym zzeymVar = this.zza;
        if (zzeymVar == null) {
            return zzgch.zzh(new zzeod(null));
        }
        String zza = zzeymVar.zza();
        return Strings.isEmptyOrWhitespace(zza) ? zzgch.zzh(new zzeod(null)) : zzgch.zzh(new zzeod(zza));
    }
}
