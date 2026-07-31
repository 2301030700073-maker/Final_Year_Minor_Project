package com.google.android.gms.internal.ads;

import java.io.File;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzaqm implements zzaqp {
    final /* synthetic */ File zza;

    zzaqm(zzaqq zzaqqVar, File file) {
        this.zza = file;
        Objects.requireNonNull(zzaqqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaqp
    public final File zza() {
        return this.zza;
    }
}
