package androidx.glance.state;

import java.util.LinkedHashMap;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceState {
    public static final GlanceState INSTANCE = new GlanceState();
    public static final MutexImpl mutex = new MutexImpl();
    public static final LinkedHashMap dataStores = new LinkedHashMap();

    /* JADX WARN: Removed duplicated region for block: B:21:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object deleteStore(android.content.Context r5, androidx.glance.state.GlanceStateDefinition r6, java.lang.String r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r4 = this;
            boolean r0 = r8 instanceof androidx.glance.state.GlanceState$deleteStore$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.glance.state.GlanceState$deleteStore$1 r0 = (androidx.glance.state.GlanceState$deleteStore$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.state.GlanceState$deleteStore$1 r0 = new androidx.glance.state.GlanceState$deleteStore$1
            r0.<init>(r4, r8)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L38
            if (r1 != r2) goto L32
            kotlinx.coroutines.sync.MutexImpl r5 = r0.L$3
            java.lang.String r7 = r0.L$2
            androidx.glance.state.GlanceStateDefinition r6 = r0.L$1
            android.content.Context r8 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r4)
            r4 = r5
            r5 = r8
            goto L4e
        L32:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            return r3
        L38:
            kotlin.ResultKt.throwOnFailure(r4)
            r0.L$0 = r5
            r0.L$1 = r6
            r0.L$2 = r7
            kotlinx.coroutines.sync.MutexImpl r4 = androidx.glance.state.GlanceState.mutex
            r0.L$3 = r4
            r0.label = r2
            java.lang.Object r0 = r4.lock(r0)
            if (r0 != r8) goto L4e
            return r8
        L4e:
            java.util.LinkedHashMap r8 = androidx.glance.state.GlanceState.dataStores     // Catch: java.lang.Throwable -> L60
            r8.remove(r7)     // Catch: java.lang.Throwable -> L60
            java.io.File r5 = r6.getLocation(r5, r7)     // Catch: java.lang.Throwable -> L60
            r5.delete()     // Catch: java.lang.Throwable -> L60
            r4.unlock(r3)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L60:
            r5 = move-exception
            r4.unlock(r3)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.state.GlanceState.deleteStore(android.content.Context, androidx.glance.state.GlanceStateDefinition, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0068, code lost:
    
        if (r5.lock(r0) == r9) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0073 A[Catch: all -> 0x008e, TRY_LEAVE, TryCatch #1 {all -> 0x008e, blocks: (B:26:0x006b, B:28:0x0073), top: B:25:0x006b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getDataStore(android.content.Context r6, androidx.glance.state.GlanceStateDefinition r7, java.lang.String r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof androidx.glance.state.GlanceState$getDataStore$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.glance.state.GlanceState$getDataStore$1 r0 = (androidx.glance.state.GlanceState$getDataStore$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.state.GlanceState$getDataStore$1 r0 = new androidx.glance.state.GlanceState$getDataStore$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L55
            if (r1 == r3) goto L40
            if (r1 != r2) goto L3a
            java.io.Serializable r6 = r0.L$2
            java.util.Map r6 = (java.util.Map) r6
            java.lang.Object r7 = r0.L$1
            kotlinx.coroutines.sync.Mutex r7 = (kotlinx.coroutines.sync.Mutex) r7
            java.lang.Object r8 = r0.L$0
            java.lang.String r8 = (java.lang.String) r8
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L37
            goto L87
        L37:
            r5 = move-exception
            goto L9c
        L3a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r4
        L40:
            kotlinx.coroutines.sync.MutexImpl r6 = r0.L$3
            java.io.Serializable r7 = r0.L$2
            r8 = r7
            java.lang.String r8 = (java.lang.String) r8
            java.lang.Object r7 = r0.L$1
            androidx.glance.state.GlanceStateDefinition r7 = (androidx.glance.state.GlanceStateDefinition) r7
            java.lang.Object r1 = r0.L$0
            android.content.Context r1 = (android.content.Context) r1
            kotlin.ResultKt.throwOnFailure(r5)
            r5 = r6
            r6 = r1
            goto L6b
        L55:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.L$2 = r8
            kotlinx.coroutines.sync.MutexImpl r5 = androidx.glance.state.GlanceState.mutex
            r0.L$3 = r5
            r0.label = r3
            java.lang.Object r1 = r5.lock(r0)
            if (r1 != r9) goto L6b
            goto L83
        L6b:
            java.util.LinkedHashMap r1 = androidx.glance.state.GlanceState.dataStores     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r3 = r1.get(r8)     // Catch: java.lang.Throwable -> L8e
            if (r3 != 0) goto L92
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L8e
            r0.L$1 = r5     // Catch: java.lang.Throwable -> L8e
            r0.L$2 = r1     // Catch: java.lang.Throwable -> L8e
            r0.L$3 = r4     // Catch: java.lang.Throwable -> L8e
            r0.label = r2     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r6 = r7.getDataStore(r6, r8)     // Catch: java.lang.Throwable -> L8e
            if (r6 != r9) goto L84
        L83:
            return r9
        L84:
            r7 = r5
            r5 = r6
            r6 = r1
        L87:
            r3 = r5
            androidx.datastore.core.DataStore r3 = (androidx.datastore.core.DataStore) r3     // Catch: java.lang.Throwable -> L37
            r6.put(r8, r3)     // Catch: java.lang.Throwable -> L37
            goto L93
        L8e:
            r6 = move-exception
            r7 = r5
            r5 = r6
            goto L9c
        L92:
            r7 = r5
        L93:
            r3.getClass()     // Catch: java.lang.Throwable -> L37
            androidx.datastore.core.DataStore r3 = (androidx.datastore.core.DataStore) r3     // Catch: java.lang.Throwable -> L37
            r7.unlock(r4)
            return r3
        L9c:
            r7.unlock(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.state.GlanceState.getDataStore(android.content.Context, androidx.glance.state.GlanceStateDefinition, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        if (r9 == r1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0050 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getValue(android.content.Context r6, androidx.glance.state.GlanceStateDefinition r7, java.lang.String r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof androidx.glance.state.GlanceState$getValue$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.glance.state.GlanceState$getValue$1 r0 = (androidx.glance.state.GlanceState$getValue$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.state.GlanceState$getValue$1 r0 = new androidx.glance.state.GlanceState$getValue$1
            r0.<init>(r5, r9)
        L18:
            java.lang.Object r9 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r9)
            return r9
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L41
        L35:
            kotlin.ResultKt.throwOnFailure(r9)
            r0.label = r4
            java.lang.Object r9 = r5.getDataStore(r6, r7, r8, r0)
            if (r9 != r1) goto L41
            goto L4f
        L41:
            androidx.datastore.core.DataStore r9 = (androidx.datastore.core.DataStore) r9
            kotlinx.coroutines.flow.Flow r5 = r9.getData()
            r0.label = r3
            java.lang.Object r5 = kotlinx.coroutines.flow.StateFlowKt.first(r5, r0)
            if (r5 != r1) goto L50
        L4f:
            return r1
        L50:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.state.GlanceState.getValue(android.content.Context, androidx.glance.state.GlanceStateDefinition, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
    
        if (r11 == r1) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateValue(android.content.Context r7, androidx.glance.state.GlanceStateDefinition r8, java.lang.String r9, org.wikipedia.donate.DonateDialog$onCreateView$3.AnonymousClass1 r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r6 = this;
            boolean r0 = r11 instanceof androidx.glance.state.GlanceState$updateValue$1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.glance.state.GlanceState$updateValue$1 r0 = (androidx.glance.state.GlanceState$updateValue$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.state.GlanceState$updateValue$1 r0 = new androidx.glance.state.GlanceState$updateValue$1
            r0.<init>(r6, r11)
        L18:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L37
            if (r2 == r5) goto L31
            if (r2 != r4) goto L2b
            kotlin.ResultKt.throwOnFailure(r11)
            return r11
        L2b:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L31:
            org.wikipedia.donate.DonateDialog$onCreateView$3$1 r10 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r11)
            goto L45
        L37:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r10
            r0.label = r5
            java.lang.Object r11 = r6.getDataStore(r7, r8, r9, r0)
            if (r11 != r1) goto L45
            goto L51
        L45:
            androidx.datastore.core.DataStore r11 = (androidx.datastore.core.DataStore) r11
            r0.L$0 = r3
            r0.label = r4
            java.lang.Object r6 = r11.updateData(r10, r0)
            if (r6 != r1) goto L52
        L51:
            return r1
        L52:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.state.GlanceState.updateValue(android.content.Context, androidx.glance.state.GlanceStateDefinition, java.lang.String, org.wikipedia.donate.DonateDialog$onCreateView$3$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
