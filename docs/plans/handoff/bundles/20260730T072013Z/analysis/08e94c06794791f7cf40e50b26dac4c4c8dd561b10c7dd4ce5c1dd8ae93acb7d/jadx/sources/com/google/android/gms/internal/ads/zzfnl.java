package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzfnl implements zzbbo {
    final /* synthetic */ zzfnm zza;

    zzfnl(zzfnm zzfnmVar) {
        Objects.requireNonNull(zzfnmVar);
        this.zza = zzfnmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbo
    public final void zza(boolean z) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzd(zzbeu.zzy)).booleanValue()) {
            this.zza.zzl(z);
        }
    }
}
