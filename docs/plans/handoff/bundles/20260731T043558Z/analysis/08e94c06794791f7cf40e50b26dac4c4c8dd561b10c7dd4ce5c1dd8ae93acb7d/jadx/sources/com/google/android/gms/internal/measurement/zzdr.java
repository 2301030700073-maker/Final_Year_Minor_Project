package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import java.util.Objects;

/* compiled from: com.google.android.gms:play-services-measurement-sdk-api@@23.0.0 */
/* loaded from: classes4.dex */
final class zzdr extends zzeq {
    final /* synthetic */ Context zza;
    final /* synthetic */ Bundle zzb;
    final /* synthetic */ zzfb zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzdr(zzfb zzfbVar, Context context, Bundle bundle) {
        super(zzfbVar, true);
        this.zza = context;
        this.zzb = bundle;
        Objects.requireNonNull(zzfbVar);
        this.zzc = zzfbVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041 A[Catch: Exception -> 0x0089, TryCatch #0 {Exception -> 0x0089, blocks: (B:3:0x0006, B:5:0x001e, B:6:0x0022, B:8:0x002a, B:12:0x0034, B:14:0x0041, B:17:0x004b, B:22:0x0065), top: B:2:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004b A[Catch: Exception -> 0x0089, TryCatch #0 {Exception -> 0x0089, blocks: (B:3:0x0006, B:5:0x001e, B:6:0x0022, B:8:0x002a, B:12:0x0034, B:14:0x0041, B:17:0x004b, B:22:0x0065), top: B:2:0x0006 }] */
    @Override // com.google.android.gms.internal.measurement.zzeq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza() {
        /*
            r17 = this;
            r1 = r17
            java.lang.String r0 = "com.google.android.gms.measurement.dynamite"
            r2 = 0
            r3 = 1
            android.content.Context r4 = r1.zza     // Catch: java.lang.Exception -> L89
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r4)     // Catch: java.lang.Exception -> L89
            java.lang.String r5 = com.google.android.gms.measurement.internal.zzhu.zza(r4)     // Catch: java.lang.Exception -> L89
            java.lang.String r6 = "google_analytics_force_disable_updates"
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r4)     // Catch: java.lang.Exception -> L89
            android.content.res.Resources r7 = r4.getResources()     // Catch: java.lang.Exception -> L89
            boolean r8 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L89
            if (r8 == 0) goto L22
            java.lang.String r5 = com.google.android.gms.measurement.internal.zzhu.zza(r4)     // Catch: java.lang.Exception -> L89
        L22:
            java.lang.Boolean r5 = com.google.android.gms.measurement.internal.zzhu.zzc(r6, r7, r5)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.zzfb r6 = r1.zzc     // Catch: java.lang.Exception -> L89
            if (r5 == 0) goto L33
            boolean r7 = r5.booleanValue()     // Catch: java.lang.Exception -> L89
            if (r7 != 0) goto L31
            goto L33
        L31:
            r7 = r2
            goto L34
        L33:
            r7 = r3
        L34:
            com.google.android.gms.internal.measurement.zzcr r7 = r6.zzc(r4, r7)     // Catch: java.lang.Exception -> L89
            r6.zzR(r7)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.zzcr r7 = r6.zzQ()     // Catch: java.lang.Exception -> L89
            if (r7 != 0) goto L4b
            java.lang.String r0 = r6.zzO()     // Catch: java.lang.Exception -> L89
            java.lang.String r4 = "Failed to connect to measurement client."
            io.sentry.android.core.SentryLogcatAdapter.w(r0, r4)     // Catch: java.lang.Exception -> L89
            return
        L4b:
            int r7 = com.google.android.gms.dynamite.DynamiteModule.getLocalVersion(r4, r0)     // Catch: java.lang.Exception -> L89
            int r0 = com.google.android.gms.dynamite.DynamiteModule.getRemoteVersion(r4, r0)     // Catch: java.lang.Exception -> L89
            int r8 = java.lang.Math.max(r7, r0)     // Catch: java.lang.Exception -> L89
            java.lang.Boolean r9 = java.lang.Boolean.TRUE     // Catch: java.lang.Exception -> L89
            boolean r5 = r9.equals(r5)     // Catch: java.lang.Exception -> L89
            if (r5 != 0) goto L64
            if (r0 >= r7) goto L62
            goto L64
        L62:
            r14 = r2
            goto L65
        L64:
            r14 = r3
        L65:
            com.google.android.gms.internal.measurement.zzdd r0 = new com.google.android.gms.internal.measurement.zzdd     // Catch: java.lang.Exception -> L89
            long r12 = (long) r8     // Catch: java.lang.Exception -> L89
            android.os.Bundle r15 = r1.zzb     // Catch: java.lang.Exception -> L89
            java.lang.String r16 = com.google.android.gms.measurement.internal.zzhu.zza(r4)     // Catch: java.lang.Exception -> L89
            r10 = 133005(0x2078d, double:6.5713E-319)
            r9 = r0
            r9.<init>(r10, r12, r14, r15, r16)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.zzcr r5 = r6.zzQ()     // Catch: java.lang.Exception -> L89
            java.lang.Object r5 = com.google.android.gms.common.internal.Preconditions.checkNotNull(r5)     // Catch: java.lang.Exception -> L89
            com.google.android.gms.internal.measurement.zzcr r5 = (com.google.android.gms.internal.measurement.zzcr) r5     // Catch: java.lang.Exception -> L89
            com.google.android.gms.dynamic.IObjectWrapper r4 = com.google.android.gms.dynamic.ObjectWrapper.wrap(r4)     // Catch: java.lang.Exception -> L89
            long r6 = r1.zzh     // Catch: java.lang.Exception -> L89
            r5.initialize(r4, r0, r6)     // Catch: java.lang.Exception -> L89
            return
        L89:
            r0 = move-exception
            com.google.android.gms.internal.measurement.zzfb r4 = r1.zzc
            r4.zzN(r0, r3, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzdr.zza():void");
    }
}
