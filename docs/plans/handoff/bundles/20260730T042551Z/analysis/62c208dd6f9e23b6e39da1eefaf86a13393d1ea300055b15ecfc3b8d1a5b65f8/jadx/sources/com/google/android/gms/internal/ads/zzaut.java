package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;

/* loaded from: classes.dex */
final class zzaut implements Runnable {
    final /* synthetic */ zzauu zza;

    public zzaut(zzauu zzauuVar) {
        this.zza = zzauuVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        zzawd zzawdVar;
        ConditionVariable conditionVariable2;
        if (this.zza.zzb != null) {
            return;
        }
        conditionVariable = zzauu.zzc;
        synchronized (conditionVariable) {
            if (this.zza.zzb != null) {
                return;
            }
            boolean z2 = false;
            try {
                z = ((Boolean) zzbcl.zzcF.zze()).booleanValue();
            } catch (IllegalStateException unused) {
                z = false;
            }
            if (z) {
                try {
                    zzawdVar = this.zza.zze;
                    zzauu.zza = zzfpk.zzb(zzawdVar.zza, "ADSHIELD", null);
                } catch (Throwable unused2) {
                }
            }
            z2 = z;
            this.zza.zzb = Boolean.valueOf(z2);
            conditionVariable2 = zzauu.zzc;
            conditionVariable2.open();
        }
    }
}
