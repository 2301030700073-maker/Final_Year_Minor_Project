package com.google.android.gms.internal.ads;

import androidx.datastore.core.DataStore;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfwo implements zzfvh {
    private final CoroutineScope zza;
    private final Mutex zzb;
    private final Mutex zzc;
    private final Mutex zzd;
    private boolean zze;
    private zzfvf zzf;
    private boolean zzg;
    private final DataStore zzh;
    private final zzdss zzi;

    public zzfwo(DataStore adQualityDataStore, zzfwq coroutineScopeProvider, zzdss dataPinger, zzfvq clock) {
        Intrinsics.checkNotNullParameter(adQualityDataStore, "adQualityDataStore");
        Intrinsics.checkNotNullParameter(coroutineScopeProvider, "coroutineScopeProvider");
        Intrinsics.checkNotNullParameter(dataPinger, "dataPinger");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.zzi = dataPinger;
        this.zza = coroutineScopeProvider.zza();
        this.zzb = MutexKt.Mutex$default(false, 1, null);
        this.zzc = MutexKt.Mutex$default(false, 1, null);
        this.zzd = MutexKt.Mutex$default(false, 1, null);
        this.zzh = adQualityDataStore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0058, code lost:
    
        if (r9.lock(null, r0) != r1) goto L35;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzs(java.lang.String r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.google.android.gms.internal.ads.zzfvt
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.gms.internal.ads.zzfvt r0 = (com.google.android.gms.internal.ads.zzfvt) r0
            int r1 = r0.zze
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zze = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfvt r0 = new com.google.android.gms.internal.ads.zzfvt
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.zzc
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zze
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r8 = r0.zza
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L72
        L31:
            r9 = move-exception
            goto L7e
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3b:
            java.lang.Object r8 = r0.zzb
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            java.lang.Object r2 = r0.zza
            java.lang.String r2 = (java.lang.String) r2
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L5a
        L49:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.zzd
            r0.zza = r8
            r0.zzb = r9
            r0.zze = r4
            java.lang.Object r2 = r9.lock(r5, r0)
            if (r2 == r1) goto L82
        L5a:
            androidx.datastore.core.DataStore r2 = r7.zzh     // Catch: java.lang.Throwable -> L7a
            com.google.android.gms.internal.ads.zzfvu r4 = new com.google.android.gms.internal.ads.zzfvu     // Catch: java.lang.Throwable -> L7a
            r4.<init>(r8, r5)     // Catch: java.lang.Throwable -> L7a
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4     // Catch: java.lang.Throwable -> L7a
            r0.zza = r9     // Catch: java.lang.Throwable -> L7a
            r0.zzb = r5     // Catch: java.lang.Throwable -> L7a
            r0.zze = r3     // Catch: java.lang.Throwable -> L7a
            java.lang.Object r8 = r2.updateData(r4, r0)     // Catch: java.lang.Throwable -> L7a
            if (r8 == r1) goto L82
            r6 = r9
            r9 = r8
            r8 = r6
        L72:
            com.google.android.gms.internal.ads.zzfvk r9 = (com.google.android.gms.internal.ads.zzfvk) r9     // Catch: java.lang.Throwable -> L31
            r8.unlock(r5)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L7a:
            r8 = move-exception
            r6 = r9
            r9 = r8
            r8 = r6
        L7e:
            r8.unlock(r5)
            throw r9
        L82:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzs(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0051, code lost:
    
        if (r8.lock(null, r0) != r1) goto L33;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzt(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfvw
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfvw r0 = (com.google.android.gms.internal.ads.zzfvw) r0
            int r1 = r0.zzd
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzd = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfvw r0 = new com.google.android.gms.internal.ads.zzfvw
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.zzb
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zzd
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L44
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.zza
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L69
        L31:
            r8 = move-exception
            goto L75
        L33:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3b:
            java.lang.Object r2 = r0.zza
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L53
        L44:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.zzd
            r0.zza = r8
            r0.zzd = r4
            java.lang.Object r2 = r8.lock(r5, r0)
            if (r2 == r1) goto L79
        L53:
            androidx.datastore.core.DataStore r2 = r7.zzh     // Catch: java.lang.Throwable -> L71
            com.google.android.gms.internal.ads.zzfvx r4 = new com.google.android.gms.internal.ads.zzfvx     // Catch: java.lang.Throwable -> L71
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L71
            kotlin.jvm.functions.Function2 r4 = (kotlin.jvm.functions.Function2) r4     // Catch: java.lang.Throwable -> L71
            r0.zza = r8     // Catch: java.lang.Throwable -> L71
            r0.zzd = r3     // Catch: java.lang.Throwable -> L71
            java.lang.Object r0 = r2.updateData(r4, r0)     // Catch: java.lang.Throwable -> L71
            if (r0 == r1) goto L79
            r6 = r0
            r0 = r8
            r8 = r6
        L69:
            com.google.android.gms.internal.ads.zzfvk r8 = (com.google.android.gms.internal.ads.zzfvk) r8     // Catch: java.lang.Throwable -> L31
            r0.unlock(r5)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L71:
            r0 = move-exception
            r6 = r0
            r0 = r8
            r8 = r6
        L75:
            r0.unlock(r5)
            throw r8
        L79:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzt(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0050 A[Catch: all -> 0x0077, TRY_ENTER, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x004a, B:14:0x0050, B:15:0x0054, B:17:0x0058, B:18:0x005c, B:20:0x0065, B:21:0x0069), top: B:10:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058 A[Catch: all -> 0x0077, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x004a, B:14:0x0050, B:15:0x0054, B:17:0x0058, B:18:0x005c, B:20:0x0065, B:21:0x0069), top: B:10:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0065 A[Catch: all -> 0x0077, TryCatch #0 {all -> 0x0077, blocks: (B:11:0x004a, B:14:0x0050, B:15:0x0054, B:17:0x0058, B:18:0x005c, B:20:0x0065, B:21:0x0069), top: B:10:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzu(long r6, kotlin.coroutines.Continuation r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfvv
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfvv r0 = (com.google.android.gms.internal.ads.zzfvv) r0
            int r1 = r0.zze
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zze = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfvv r0 = new com.google.android.gms.internal.ads.zzfvv
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.zzc
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zze
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            long r6 = r0.zza
            java.lang.Object r0 = r0.zzb
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4a
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r5.zzb
            r0.zzb = r8
            r0.zza = r6
            r0.zze = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 == r1) goto L7c
            r0 = r8
        L4a:
            com.google.android.gms.internal.ads.zzfvf r8 = r5.zzf     // Catch: java.lang.Throwable -> L77
            java.lang.String r1 = "adQualityDataBuilder"
            if (r8 != 0) goto L54
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)     // Catch: java.lang.Throwable -> L77
            r8 = r4
        L54:
            com.google.android.gms.internal.ads.zzfvf r2 = r5.zzf     // Catch: java.lang.Throwable -> L77
            if (r2 != 0) goto L5c
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)     // Catch: java.lang.Throwable -> L77
            r2 = r4
        L5c:
            long r2 = r2.zzi()     // Catch: java.lang.Throwable -> L77
            long r6 = r6 - r2
            com.google.android.gms.internal.ads.zzfvf r2 = r5.zzf     // Catch: java.lang.Throwable -> L77
            if (r2 != 0) goto L69
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r1)     // Catch: java.lang.Throwable -> L77
            r2 = r4
        L69:
            long r1 = r2.zzg()     // Catch: java.lang.Throwable -> L77
            long r6 = r6 - r1
            r8.zzb(r6)     // Catch: java.lang.Throwable -> L77
            r0.unlock(r4)
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L77:
            r6 = move-exception
            r0.unlock(r4)
            throw r6
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzu(long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0060, code lost:
    
        if (r2.lock(null, r0) != r1) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0066 A[Catch: all -> 0x00ab, TryCatch #2 {all -> 0x00ab, blocks: (B:35:0x0062, B:37:0x0066, B:38:0x006c), top: B:34:0x0062 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzv(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfwa
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfwa r0 = (com.google.android.gms.internal.ads.zzfwa) r0
            int r1 = r0.zze
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zze = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfwa r0 = new com.google.android.gms.internal.ads.zzfwa
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.zzc
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zze
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L53
            if (r2 == r5) goto L4b
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r0 = r0.zza
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L34
            goto L9d
        L34:
            r8 = move-exception
            goto La7
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.zzb
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r4 = r0.zza
            com.google.android.gms.internal.ads.zzfvg r4 = (com.google.android.gms.internal.ads.zzfvg) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L87
        L4b:
            java.lang.Object r2 = r0.zza
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L62
        L53:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.zzb
            r0.zza = r2
            r0.zze = r5
            java.lang.Object r8 = r2.lock(r6, r0)
            if (r8 == r1) goto Lb0
        L62:
            com.google.android.gms.internal.ads.zzfvf r8 = r7.zzf     // Catch: java.lang.Throwable -> Lab
            if (r8 != 0) goto L6c
            java.lang.String r8 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r8)     // Catch: java.lang.Throwable -> Lab
            r8 = r6
        L6c:
            com.google.android.gms.internal.ads.zzhwo r8 = r8.zzbu()     // Catch: java.lang.Throwable -> Lab
            com.google.android.gms.internal.ads.zzfvg r8 = (com.google.android.gms.internal.ads.zzfvg) r8     // Catch: java.lang.Throwable -> Lab
            r2.unlock(r6)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            kotlinx.coroutines.sync.Mutex r2 = r7.zzd
            r0.zza = r8
            r0.zzb = r2
            r0.zze = r4
            java.lang.Object r4 = r2.lock(r6, r0)
            if (r4 == r1) goto Lb0
            r4 = r8
        L87:
            androidx.datastore.core.DataStore r8 = r7.zzh     // Catch: java.lang.Throwable -> La5
            com.google.android.gms.internal.ads.zzfwb r5 = new com.google.android.gms.internal.ads.zzfwb     // Catch: java.lang.Throwable -> La5
            r5.<init>(r4, r6)     // Catch: java.lang.Throwable -> La5
            kotlin.jvm.functions.Function2 r5 = (kotlin.jvm.functions.Function2) r5     // Catch: java.lang.Throwable -> La5
            r0.zza = r2     // Catch: java.lang.Throwable -> La5
            r0.zzb = r6     // Catch: java.lang.Throwable -> La5
            r0.zze = r3     // Catch: java.lang.Throwable -> La5
            java.lang.Object r8 = r8.updateData(r5, r0)     // Catch: java.lang.Throwable -> La5
            if (r8 == r1) goto Lb0
            r0 = r2
        L9d:
            com.google.android.gms.internal.ads.zzfvk r8 = (com.google.android.gms.internal.ads.zzfvk) r8     // Catch: java.lang.Throwable -> L34
            r0.unlock(r6)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        La5:
            r8 = move-exception
            r0 = r2
        La7:
            r0.unlock(r6)
            throw r8
        Lab:
            r8 = move-exception
            r2.unlock(r6)
            throw r8
        Lb0:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzv(kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final boolean zzw(zzfvg zzfvgVar) {
        boolean z;
        List zzk = zzfvgVar.zzk();
        Long l = zzk != null ? (Long) CollectionsKt.lastOrNull(zzk) : null;
        boolean z2 = zzfvgVar.zzl() > zzfvgVar.zzm() && !zzfvgVar.zzd();
        if (l != null) {
            if (zzfvgVar.zzi() - l.longValue() > 5000) {
                z = true;
                return !z2 || z;
            }
        }
        z = false;
        if (z2) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final void zza() {
        BuildersKt__Builders_commonKt.launch$default(this.zza, null, null, new zzfwj(this, null), 3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final void zzb(String gwsQueryId) {
        Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
        BuildersKt__Builders_commonKt.launch$default(this.zza, null, null, new zzfwd(this, gwsQueryId, null), 3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final void zzc() {
        BuildersKt__Builders_commonKt.launch$default(this.zza, null, null, new zzfvz(this, null), 3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final void zzd() {
        BuildersKt__Builders_commonKt.launch$default(this.zza, null, null, new zzfwn(this, null), 3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final void zze() {
        BuildersKt__Builders_commonKt.launch$default(this.zza, null, null, new zzfwh(this, null), 3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final void zzf() {
        BuildersKt__Builders_commonKt.launch$default(this.zza, null, null, new zzfwl(this, null), 3, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final void zzg() {
        BuildersKt__Builders_commonKt.launch$default(this.zza, null, null, new zzfwf(this, null), 3, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d0, code lost:
    
        if (zzt(r0) == r1) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x006a, code lost:
    
        if (r9 == r1) goto L49;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v5, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.gms.internal.ads.zzfwo] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzh(kotlin.coroutines.Continuation r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.google.android.gms.internal.ads.zzfwi
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.gms.internal.ads.zzfwi r0 = (com.google.android.gms.internal.ads.zzfwi) r0
            int r1 = r0.zzd
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zzd = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfwi r0 = new com.google.android.gms.internal.ads.zzfwi
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.zzb
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zzd
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L44
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r9)
            goto Ld3
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L39:
            java.lang.Object r2 = r0.zza
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L41
            goto L6c
        L41:
            r9 = move-exception
            goto Ld9
        L44:
            java.lang.Object r2 = r0.zza
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5c
        L4c:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.zzd
            r0.zza = r9
            r0.zzd = r5
            java.lang.Object r2 = r9.lock(r6, r0)
            if (r2 == r1) goto Ldd
            r2 = r9
        L5c:
            androidx.datastore.core.DataStore r9 = r8.zzh     // Catch: java.lang.Throwable -> L41
            kotlinx.coroutines.flow.Flow r9 = r9.getData()     // Catch: java.lang.Throwable -> L41
            r0.zza = r2     // Catch: java.lang.Throwable -> L41
            r0.zzd = r4     // Catch: java.lang.Throwable -> L41
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.firstOrNull(r9, r0)     // Catch: java.lang.Throwable -> L41
            if (r9 == r1) goto Ldd
        L6c:
            com.google.android.gms.internal.ads.zzfvk r9 = (com.google.android.gms.internal.ads.zzfvk) r9     // Catch: java.lang.Throwable -> L41
            r2.unlock(r6)
            if (r9 == 0) goto Ld6
            int r2 = r9.zza()
            if (r2 != 0) goto L7a
            goto Ld6
        L7a:
            java.util.Map r9 = r9.zzb()
            java.util.Set r9 = r9.entrySet()
            java.util.Iterator r9 = r9.iterator()
        L86:
            boolean r2 = r9.hasNext()
            if (r2 == 0) goto Lc8
            java.lang.Object r2 = r9.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r4 = r2.getValue()
            com.google.android.gms.internal.ads.zzfvg r4 = (com.google.android.gms.internal.ads.zzfvg) r4
            com.google.android.gms.internal.ads.zzhwi r4 = r4.zzcc()
            java.lang.String r7 = "toBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r7)
            com.google.android.gms.internal.ads.zzfvf r4 = (com.google.android.gms.internal.ads.zzfvf) r4
            java.lang.Object r2 = r2.getValue()
            java.lang.String r7 = "<get-value>(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r7)
            com.google.android.gms.internal.ads.zzfvg r2 = (com.google.android.gms.internal.ads.zzfvg) r2
            boolean r2 = zzw(r2)
            if (r2 == 0) goto Lb7
            r4.zzf(r5)
        Lb7:
            com.google.android.gms.internal.ads.zzdss r2 = r8.zzi
            com.google.android.gms.internal.ads.zzhwo r4 = r4.zzbu()
            java.lang.String r7 = "build(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r7)
            com.google.android.gms.internal.ads.zzfvg r4 = (com.google.android.gms.internal.ads.zzfvg) r4
            r2.zza(r4)
            goto L86
        Lc8:
            r0.zza = r6
            r0.zzd = r3
            java.lang.Object r9 = r8.zzt(r0)
            if (r9 != r1) goto Ld3
            goto Ldd
        Ld3:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        Ld6:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        Ld9:
            r2.unlock(r6)
            throw r9
        Ldd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzh(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005b A[Catch: all -> 0x0088, TRY_LEAVE, TryCatch #0 {all -> 0x0088, blocks: (B:11:0x0057, B:13:0x005b, B:17:0x0061, B:19:0x0076, B:20:0x007c), top: B:10:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061 A[Catch: all -> 0x0088, TRY_ENTER, TryCatch #0 {all -> 0x0088, blocks: (B:11:0x0057, B:13:0x005b, B:17:0x0061, B:19:0x0076, B:20:0x007c), top: B:10:0x0057 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzi(java.lang.String r8, kotlin.coroutines.Continuation r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.google.android.gms.internal.ads.zzfwc
            if (r0 == 0) goto L13
            r0 = r9
            com.google.android.gms.internal.ads.zzfwc r0 = (com.google.android.gms.internal.ads.zzfwc) r0
            int r1 = r0.zze
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zze = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfwc r0 = new com.google.android.gms.internal.ads.zzfwc
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.zzc
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zze
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            long r1 = r0.zzb
            java.lang.Object r8 = r0.zza
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            java.lang.String r0 = r0.zzf
            r5 = r0
            java.lang.String r5 = (java.lang.String) r5
            kotlin.ResultKt.throwOnFailure(r9)
            goto L57
        L35:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3d:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.zzb
            long r5 = java.lang.System.currentTimeMillis()
            r0.zzf = r8
            r0.zza = r9
            r0.zzb = r5
            r0.zze = r3
            java.lang.Object r0 = r9.lock(r4, r0)
            if (r0 == r1) goto L8d
            r0 = r8
            r8 = r9
            r1 = r5
        L57:
            boolean r9 = r7.zze     // Catch: java.lang.Throwable -> L88
            if (r9 == 0) goto L61
            kotlin.Unit r9 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L88
            r8.unlock(r4)
            return r9
        L61:
            r7.zze = r3     // Catch: java.lang.Throwable -> L88
            com.google.android.gms.internal.ads.zzfvg r9 = com.google.android.gms.internal.ads.zzfvg.zzp()     // Catch: java.lang.Throwable -> L88
            com.google.android.gms.internal.ads.zzhwi r9 = r9.zzcc()     // Catch: java.lang.Throwable -> L88
            java.lang.String r3 = "toBuilder(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r3)     // Catch: java.lang.Throwable -> L88
            com.google.android.gms.internal.ads.zzfvf r9 = (com.google.android.gms.internal.ads.zzfvf) r9     // Catch: java.lang.Throwable -> L88
            r7.zzf = r9     // Catch: java.lang.Throwable -> L88
            if (r9 != 0) goto L7c
            java.lang.String r9 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r9)     // Catch: java.lang.Throwable -> L88
            r9 = r4
        L7c:
            r9.zza(r0)     // Catch: java.lang.Throwable -> L88
            r9.zzj(r1)     // Catch: java.lang.Throwable -> L88
            r8.unlock(r4)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L88:
            r9 = move-exception
            r8.unlock(r4)
            throw r9
        L8d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzi(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a5, code lost:
    
        if (zzv(r0) == r1) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009d, code lost:
    
        if (zzu(r5, r0) == r1) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x005f, code lost:
    
        if (r2.lock(null, r0) != r1) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0089 A[Catch: all -> 0x00ab, TryCatch #1 {all -> 0x00ab, blocks: (B:24:0x0085, B:26:0x0089, B:27:0x008f), top: B:23:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0065 A[Catch: all -> 0x00b0, TRY_LEAVE, TryCatch #0 {all -> 0x00b0, blocks: (B:36:0x0061, B:38:0x0065, B:41:0x006b), top: B:35:0x0061 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006b A[Catch: all -> 0x00b0, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x00b0, blocks: (B:36:0x0061, B:38:0x0065, B:41:0x006b), top: B:35:0x0061 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzj(kotlin.coroutines.Continuation r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.google.android.gms.internal.ads.zzfvy
            if (r0 == 0) goto L13
            r0 = r11
            com.google.android.gms.internal.ads.zzfvy r0 = (com.google.android.gms.internal.ads.zzfvy) r0
            int r1 = r0.zze
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zze = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfvy r0 = new com.google.android.gms.internal.ads.zzfvy
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.zzc
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zze
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L52
            if (r2 == r6) goto L4a
            if (r2 == r5) goto L40
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            kotlin.ResultKt.throwOnFailure(r11)
            goto La8
        L34:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3c:
            kotlin.ResultKt.throwOnFailure(r11)
            goto L9f
        L40:
            long r5 = r0.zzb
            java.lang.Object r2 = r0.zza
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L85
        L4a:
            java.lang.Object r2 = r0.zza
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L61
        L52:
            kotlin.ResultKt.throwOnFailure(r11)
            kotlinx.coroutines.sync.Mutex r2 = r10.zzc
            r0.zza = r2
            r0.zze = r6
            java.lang.Object r11 = r2.lock(r7, r0)
            if (r11 == r1) goto Lb5
        L61:
            boolean r11 = r10.zzg     // Catch: java.lang.Throwable -> Lb0
            if (r11 == 0) goto L6b
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lb0
            r2.unlock(r7)
            return r11
        L6b:
            r10.zzg = r6     // Catch: java.lang.Throwable -> Lb0
            kotlin.Unit r11 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> Lb0
            r2.unlock(r7)
            kotlinx.coroutines.sync.Mutex r2 = r10.zzb
            long r8 = java.lang.System.currentTimeMillis()
            r0.zza = r2
            r0.zzb = r8
            r0.zze = r5
            java.lang.Object r11 = r2.lock(r7, r0)
            if (r11 == r1) goto Lb5
            r5 = r8
        L85:
            com.google.android.gms.internal.ads.zzfvf r11 = r10.zzf     // Catch: java.lang.Throwable -> Lab
            if (r11 != 0) goto L8f
            java.lang.String r11 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r11)     // Catch: java.lang.Throwable -> Lab
            r11 = r7
        L8f:
            r11.zzo(r5)     // Catch: java.lang.Throwable -> Lab
            r2.unlock(r7)
            r0.zza = r7
            r0.zze = r4
            java.lang.Object r11 = r10.zzu(r5, r0)
            if (r11 == r1) goto Lb5
        L9f:
            r0.zze = r3
            java.lang.Object r11 = r10.zzv(r0)
            if (r11 != r1) goto La8
            goto Lb5
        La8:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        Lab:
            r11 = move-exception
            r2.unlock(r7)
            throw r11
        Lb0:
            r11 = move-exception
            r2.unlock(r7)
            throw r11
        Lb5:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzj(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0050, code lost:
    
        if (r2.lock(null, r0) != r1) goto L74;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007e A[Catch: all -> 0x011a, TRY_ENTER, TryCatch #0 {all -> 0x011a, blocks: (B:12:0x0078, B:15:0x007e, B:16:0x0082, B:19:0x008a, B:21:0x008e, B:22:0x0092, B:24:0x00ae, B:25:0x00b2, B:27:0x00bb, B:29:0x00bf, B:30:0x00c3, B:31:0x00cb, B:33:0x00cf, B:34:0x00d3, B:36:0x00d9, B:38:0x00dd, B:39:0x00e1, B:41:0x00fd, B:42:0x0101, B:43:0x0109, B:45:0x010d, B:46:0x0111), top: B:11:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a A[Catch: all -> 0x011a, TRY_ENTER, TryCatch #0 {all -> 0x011a, blocks: (B:12:0x0078, B:15:0x007e, B:16:0x0082, B:19:0x008a, B:21:0x008e, B:22:0x0092, B:24:0x00ae, B:25:0x00b2, B:27:0x00bb, B:29:0x00bf, B:30:0x00c3, B:31:0x00cb, B:33:0x00cf, B:34:0x00d3, B:36:0x00d9, B:38:0x00dd, B:39:0x00e1, B:41:0x00fd, B:42:0x0101, B:43:0x0109, B:45:0x010d, B:46:0x0111), top: B:11:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cf A[Catch: all -> 0x011a, TryCatch #0 {all -> 0x011a, blocks: (B:12:0x0078, B:15:0x007e, B:16:0x0082, B:19:0x008a, B:21:0x008e, B:22:0x0092, B:24:0x00ae, B:25:0x00b2, B:27:0x00bb, B:29:0x00bf, B:30:0x00c3, B:31:0x00cb, B:33:0x00cf, B:34:0x00d3, B:36:0x00d9, B:38:0x00dd, B:39:0x00e1, B:41:0x00fd, B:42:0x0101, B:43:0x0109, B:45:0x010d, B:46:0x0111), top: B:11:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d9 A[Catch: all -> 0x011a, TryCatch #0 {all -> 0x011a, blocks: (B:12:0x0078, B:15:0x007e, B:16:0x0082, B:19:0x008a, B:21:0x008e, B:22:0x0092, B:24:0x00ae, B:25:0x00b2, B:27:0x00bb, B:29:0x00bf, B:30:0x00c3, B:31:0x00cb, B:33:0x00cf, B:34:0x00d3, B:36:0x00d9, B:38:0x00dd, B:39:0x00e1, B:41:0x00fd, B:42:0x0101, B:43:0x0109, B:45:0x010d, B:46:0x0111), top: B:11:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010d A[Catch: all -> 0x011a, TryCatch #0 {all -> 0x011a, blocks: (B:12:0x0078, B:15:0x007e, B:16:0x0082, B:19:0x008a, B:21:0x008e, B:22:0x0092, B:24:0x00ae, B:25:0x00b2, B:27:0x00bb, B:29:0x00bf, B:30:0x00c3, B:31:0x00cb, B:33:0x00cf, B:34:0x00d3, B:36:0x00d9, B:38:0x00dd, B:39:0x00e1, B:41:0x00fd, B:42:0x0101, B:43:0x0109, B:45:0x010d, B:46:0x0111), top: B:11:0x0078 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0056 A[Catch: all -> 0x011f, TRY_LEAVE, TryCatch #1 {all -> 0x011f, blocks: (B:58:0x0052, B:60:0x0056, B:64:0x005d), top: B:57:0x0052 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzk(kotlin.coroutines.Continuation r12) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzk(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00f6, code lost:
    
        if (zzs(r14, r0) == r1) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0064, code lost:
    
        if (r2.lock(null, r0) != r1) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0091 A[Catch: all -> 0x00fc, TRY_ENTER, TryCatch #1 {all -> 0x00fc, blocks: (B:26:0x008b, B:29:0x0091, B:30:0x0095, B:32:0x0099, B:33:0x009d, B:35:0x00a7, B:36:0x00ab, B:38:0x00b7, B:39:0x00bb, B:41:0x00c2, B:42:0x00c6), top: B:25:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0099 A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:26:0x008b, B:29:0x0091, B:30:0x0095, B:32:0x0099, B:33:0x009d, B:35:0x00a7, B:36:0x00ab, B:38:0x00b7, B:39:0x00bb, B:41:0x00c2, B:42:0x00c6), top: B:25:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a7 A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:26:0x008b, B:29:0x0091, B:30:0x0095, B:32:0x0099, B:33:0x009d, B:35:0x00a7, B:36:0x00ab, B:38:0x00b7, B:39:0x00bb, B:41:0x00c2, B:42:0x00c6), top: B:25:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7 A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:26:0x008b, B:29:0x0091, B:30:0x0095, B:32:0x0099, B:33:0x009d, B:35:0x00a7, B:36:0x00ab, B:38:0x00b7, B:39:0x00bb, B:41:0x00c2, B:42:0x00c6), top: B:25:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c2 A[Catch: all -> 0x00fc, TryCatch #1 {all -> 0x00fc, blocks: (B:26:0x008b, B:29:0x0091, B:30:0x0095, B:32:0x0099, B:33:0x009d, B:35:0x00a7, B:36:0x00ab, B:38:0x00b7, B:39:0x00bb, B:41:0x00c2, B:42:0x00c6), top: B:25:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x006a A[Catch: all -> 0x0101, TRY_LEAVE, TryCatch #0 {all -> 0x0101, blocks: (B:52:0x0066, B:54:0x006a, B:58:0x0071), top: B:51:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzl(kotlin.coroutines.Continuation r14) {
        /*
            Method dump skipped, instructions count: 263
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzl(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0100, code lost:
    
        if (zzs(r15, r0) == r1) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0088, code lost:
    
        if (r2.lock(null, r0) != r1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0064, code lost:
    
        if (r2.lock(null, r0) != r1) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x006a A[Catch: all -> 0x010b, TRY_LEAVE, TryCatch #1 {all -> 0x010b, blocks: (B:55:0x0066, B:57:0x006a, B:61:0x0071), top: B:54:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzm(kotlin.coroutines.Continuation r15) {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzm(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053 A[Catch: all -> 0x0062, TryCatch #0 {all -> 0x0062, blocks: (B:11:0x004f, B:13:0x0053, B:14:0x0059), top: B:10:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object zzn(kotlin.coroutines.Continuation r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.google.android.gms.internal.ads.zzfwe
            if (r0 == 0) goto L13
            r0 = r8
            com.google.android.gms.internal.ads.zzfwe r0 = (com.google.android.gms.internal.ads.zzfwe) r0
            int r1 = r0.zze
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.zze = r1
            goto L18
        L13:
            com.google.android.gms.internal.ads.zzfwe r0 = new com.google.android.gms.internal.ads.zzfwe
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.zzc
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.zze
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L38
            if (r2 != r3) goto L30
            long r1 = r0.zza
            java.lang.Object r0 = r0.zzb
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4f
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L38:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.zzb
            long r5 = java.lang.System.currentTimeMillis()
            r0.zzb = r8
            r0.zza = r5
            r0.zze = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 == r1) goto L67
            r0 = r8
            r1 = r5
        L4f:
            com.google.android.gms.internal.ads.zzfvf r8 = r7.zzf     // Catch: java.lang.Throwable -> L62
            if (r8 != 0) goto L59
            java.lang.String r8 = "adQualityDataBuilder"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r8)     // Catch: java.lang.Throwable -> L62
            r8 = r4
        L59:
            r8.zzs(r1)     // Catch: java.lang.Throwable -> L62
            r0.unlock(r4)
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L62:
            r8 = move-exception
            r0.unlock(r4)
            throw r8
        L67:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfwo.zzn(kotlin.coroutines.Continuation):java.lang.Object");
    }
}
