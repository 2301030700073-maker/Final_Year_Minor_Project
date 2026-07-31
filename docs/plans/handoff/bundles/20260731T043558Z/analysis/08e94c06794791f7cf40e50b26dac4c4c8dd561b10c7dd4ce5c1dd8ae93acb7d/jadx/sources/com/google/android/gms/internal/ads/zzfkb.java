package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfkb {
    final /* synthetic */ zzfkk zza;
    private final Object zzb;
    private final List zzc;

    /* synthetic */ zzfkb(zzfkk zzfkkVar, Object obj, List list, byte[] bArr) {
        Objects.requireNonNull(zzfkkVar);
        this.zza = zzfkkVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final zzfkj zza(Callable callable) {
        List list = this.zzc;
        zzguh zzp = zzgui.zzp(list);
        ListenableFuture zza = zzp.zza(zzfka.zza, zzcbv.zzg);
        zzfkk zzfkkVar = this.zza;
        return new zzfkj(zzfkkVar, this.zzb, null, zza, list, zzp.zza(callable, zzfkkVar.zze()), null);
    }
}
