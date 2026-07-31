package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzgvc implements Runnable {
    zzgve zza;

    zzgvc(zzgve zzgveVar) {
        this.zza = zzgveVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture zzf;
        zzgve zzgveVar = this.zza;
        if (zzgveVar == null || (zzf = zzgveVar.zzf()) == null) {
            return;
        }
        this.zza = null;
        if (zzf.isDone()) {
            zzgveVar.zzk(zzf);
            return;
        }
        try {
            ScheduledFuture zzx = zzgveVar.zzx();
            zzgveVar.zzy(null);
            String str = "Timed out";
            if (zzx != null) {
                try {
                    long abs = Math.abs(zzx.getDelay(TimeUnit.MILLISECONDS));
                    if (abs > 10) {
                        StringBuilder sb = new StringBuilder(String.valueOf(abs).length() + 55);
                        sb.append("Timed out (timeout delayed by ");
                        sb.append(abs);
                        sb.append(" ms after scheduled time)");
                        str = sb.toString();
                    }
                } catch (Throwable th) {
                    zzgveVar.zzb(new zzgvd(str, null));
                    throw th;
                }
            }
            String obj = zzf.toString();
            StringBuilder sb2 = new StringBuilder(str.length() + 2 + obj.length());
            sb2.append(str);
            sb2.append(": ");
            sb2.append(obj);
            zzgveVar.zzb(new zzgvd(sb2.toString(), null));
        } finally {
            zzf.cancel(true);
        }
    }
}
