package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzbnq extends zzbnn {
    final /* synthetic */ zzcca zza;

    zzbnq(zzbnr zzbnrVar, zzcca zzccaVar) {
        this.zza = zzccaVar;
        Objects.requireNonNull(zzbnrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbno
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zzc(parcelFileDescriptor);
    }
}
