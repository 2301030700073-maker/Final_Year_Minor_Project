package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Cif;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
abstract class zzgbe extends zzgbx implements Runnable {
    public static final /* synthetic */ int zzc = 0;
    InterfaceFutureC3942wq zza;
    Object zzb;

    public zzgbe(InterfaceFutureC3942wq interfaceFutureC3942wq, Object obj) {
        interfaceFutureC3942wq.getClass();
        this.zza = interfaceFutureC3942wq;
        this.zzb = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.zza;
        Object obj = this.zzb;
        if ((isCancelled() | (interfaceFutureC3942wq == null)) || (obj == null)) {
            return;
        }
        this.zza = null;
        if (interfaceFutureC3942wq.isCancelled()) {
            zzs(interfaceFutureC3942wq);
            return;
        }
        try {
            try {
                Object zze = zze(obj, zzgch.zzp(interfaceFutureC3942wq));
                this.zzb = null;
                zzf(zze);
            } catch (Throwable th) {
                try {
                    zzgda.zza(th);
                    zzd(th);
                } finally {
                    this.zzb = null;
                }
            }
        } catch (Error e) {
            zzd(e);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (ExecutionException e2) {
            zzd(e2.getCause());
        } catch (Exception e3) {
            zzd(e3);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final String zza() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.zza;
        Object obj = this.zzb;
        String zza = super.zza();
        String m6908case = interfaceFutureC3942wq != null ? Cif.m6908case("inputFuture=[", interfaceFutureC3942wq.toString(), "], ") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (obj == null) {
            if (zza != null) {
                return m6908case.concat(zza);
            }
            return null;
        }
        return m6908case + "function=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb() {
        zzr(this.zza);
        this.zza = null;
        this.zzb = null;
    }

    public abstract Object zze(Object obj, Object obj2);

    public abstract void zzf(Object obj);
}
