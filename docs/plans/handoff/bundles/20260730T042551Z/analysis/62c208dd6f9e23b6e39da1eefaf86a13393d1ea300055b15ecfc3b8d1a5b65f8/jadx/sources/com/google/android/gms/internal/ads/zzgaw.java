package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Cif;
import defpackage.InterfaceFutureC3942wq;

/* loaded from: classes.dex */
abstract class zzgaw extends zzgbx implements Runnable {
    InterfaceFutureC3942wq zza;
    Class zzb;
    Object zzc;

    public zzgaw(InterfaceFutureC3942wq interfaceFutureC3942wq, Class cls, Object obj) {
        interfaceFutureC3942wq.getClass();
        this.zza = interfaceFutureC3942wq;
        this.zzb = cls;
        this.zzc = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            wq r0 = r10.zza
            java.lang.Class r1 = r10.zzb
            java.lang.Object r2 = r10.zzc
            r3 = 1
            if (r0 != 0) goto Lb
            r4 = 1
            goto Lc
        Lb:
            r4 = 0
        Lc:
            if (r1 != 0) goto L10
            r5 = 1
            goto L11
        L10:
            r5 = 0
        L11:
            r4 = r4 | r5
            if (r2 != 0) goto L15
            goto L16
        L15:
            r3 = 0
        L16:
            r3 = r3 | r4
            if (r3 != 0) goto L8f
            boolean r3 = r10.isCancelled()
            if (r3 == 0) goto L21
            goto L8f
        L21:
            r3 = 0
            r10.zza = r3
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgdl     // Catch: java.lang.Throwable -> L38 java.util.concurrent.ExecutionException -> L3a
            if (r4 == 0) goto L30
            r4 = r0
            com.google.android.gms.internal.ads.zzgdl r4 = (com.google.android.gms.internal.ads.zzgdl) r4     // Catch: java.lang.Throwable -> L38 java.util.concurrent.ExecutionException -> L3a
            java.lang.Throwable r4 = r4.zzl()     // Catch: java.lang.Throwable -> L38 java.util.concurrent.ExecutionException -> L3a
            goto L31
        L30:
            r4 = r3
        L31:
            if (r4 != 0) goto L61
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzgch.zzp(r0)     // Catch: java.lang.Throwable -> L38 java.util.concurrent.ExecutionException -> L3a
            goto L62
        L38:
            r4 = move-exception
            goto L61
        L3a:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L60
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.String r7 = "Future type "
            java.lang.String r8 = " threw "
            java.lang.String r9 = " without a cause"
            java.lang.String r4 = defpackage.V1.m2499else(r7, r6, r8, r4, r9)
            r5.<init>(r4)
        L60:
            r4 = r5
        L61:
            r5 = r3
        L62:
            if (r4 != 0) goto L68
            r10.zzc(r5)
            return
        L68:
            boolean r1 = r1.isInstance(r4)
            if (r1 == 0) goto L8c
            java.lang.Object r0 = r10.zze(r2, r4)     // Catch: java.lang.Throwable -> L7a
            r10.zzb = r3
            r10.zzc = r3
            r10.zzf(r0)
            return
        L7a:
            r0 = move-exception
            com.google.android.gms.internal.ads.zzgda.zza(r0)     // Catch: java.lang.Throwable -> L86
            r10.zzd(r0)     // Catch: java.lang.Throwable -> L86
            r10.zzb = r3
            r10.zzc = r3
            return
        L86:
            r0 = move-exception
            r10.zzb = r3
            r10.zzc = r3
            throw r0
        L8c:
            r10.zzs(r0)
        L8f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgaw.run():void");
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final String zza() {
        InterfaceFutureC3942wq interfaceFutureC3942wq = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        String zza = super.zza();
        String m6908case = interfaceFutureC3942wq != null ? Cif.m6908case("inputFuture=[", interfaceFutureC3942wq.toString(), "], ") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (cls == null || obj == null) {
            if (zza != null) {
                return m6908case.concat(zza);
            }
            return null;
        }
        return m6908case + "exceptionType=[" + cls.toString() + "], fallback=[" + obj.toString() + "]";
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb() {
        zzr(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    public abstract Object zze(Object obj, Throwable th);

    public abstract void zzf(Object obj);
}
