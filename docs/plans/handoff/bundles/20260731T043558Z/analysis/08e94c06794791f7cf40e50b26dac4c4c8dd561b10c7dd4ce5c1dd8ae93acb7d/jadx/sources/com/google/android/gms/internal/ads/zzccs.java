package com.google.android.gms.internal.ads;

import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzccs implements Runnable {
    final /* synthetic */ zzccv zza;

    zzccs(zzccv zzccvVar) {
        Objects.requireNonNull(zzccvVar);
        this.zza = zzccvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzccv zzccvVar = this.zza;
        if (zzccvVar.zzt() != null) {
            if (!zzccvVar.zzu()) {
                zzccvVar.zzt().zzk();
                zzccvVar.zzv(true);
            }
            zzccvVar.zzt().zzc();
        }
    }
}
