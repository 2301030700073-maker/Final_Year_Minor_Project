package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzayl implements AppOpsManager.OnOpActiveChangedListener {
    final /* synthetic */ zzaym zza;

    zzayl(zzaym zzaymVar) {
        Objects.requireNonNull(zzaymVar);
        this.zza = zzaymVar;
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        if (z) {
            zzaym zzaymVar = this.zza;
            zzaymVar.zze(System.currentTimeMillis());
            zzaymVar.zzh(true);
            return;
        }
        zzaym zzaymVar2 = this.zza;
        long zzf = zzaymVar2.zzf();
        long currentTimeMillis = System.currentTimeMillis();
        if (zzf > 0 && currentTimeMillis >= zzaymVar2.zzf()) {
            zzaymVar2.zzg(currentTimeMillis - zzaymVar2.zzf());
        }
        zzaymVar2.zzh(false);
    }
}
