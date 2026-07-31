package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzcun implements zzguf {
    final /* synthetic */ zzcus zza;

    zzcun(zzcus zzcusVar) {
        Objects.requireNonNull(zzcusVar);
        this.zza = zzcusVar;
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final void zza(Throwable th) {
        this.zza.zzk().zzm(false);
    }

    @Override // com.google.android.gms.internal.ads.zzguf
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Object obj) {
        this.zza.zzk().zzm(true);
    }
}
