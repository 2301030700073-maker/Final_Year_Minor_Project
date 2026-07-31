package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzawt implements Runnable {
    final /* synthetic */ zzawu zza;

    zzawt(zzawu zzawuVar) {
        Objects.requireNonNull(zzawuVar);
        this.zza = zzawuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        ConditionVariable conditionVariable2;
        zzawu zzawuVar = this.zza;
        if (zzawuVar.zzb != null) {
            return;
        }
        conditionVariable = zzawu.zzd;
        synchronized (conditionVariable) {
            if (zzawuVar.zzb != null) {
                return;
            }
            boolean z2 = false;
            try {
                z = ((Boolean) zzbeu.zzcU.zze()).booleanValue();
            } catch (IllegalStateException unused) {
                z = false;
            }
            if (z) {
                try {
                    zzawu.zza = zzfto.zzb(this.zza.zzb().zza, "ADSHIELD", null);
                } catch (Throwable unused2) {
                }
            }
            z2 = z;
            this.zza.zzb = Boolean.valueOf(z2);
            conditionVariable2 = zzawu.zzd;
            conditionVariable2.open();
        }
    }
}
