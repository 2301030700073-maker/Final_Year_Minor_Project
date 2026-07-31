package androidx.room;

import androidx.compose.material3.TextKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Latch;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker {
    public static final String[] TRIGGERS = {"INSERT", "UPDATE", "DELETE"};
    public final WorkDatabase_Impl database;
    public final Latch observedTableStates;
    public final ObservedTableVersions observedTableVersions;
    public final InvalidationTracker$implementation$1 onInvalidatedTablesIds;
    public final LinkedHashMap shadowTablesMap;
    public final String[] tablesNames;
    public final boolean useTempTable;
    public final LinkedHashMap viewTables;
    public final AtomicBoolean pendingRefresh = new AtomicBoolean(false);
    public Function0 onAllowRefresh = new TextKt$$ExternalSyntheticLambda4(28);
    public final LinkedHashMap tableIdLookup = new LinkedHashMap();

    public TriggerBasedInvalidationTracker(WorkDatabase_Impl workDatabase_Impl, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String[] strArr, boolean z, InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        String str;
        this.database = workDatabase_Impl;
        this.shadowTablesMap = linkedHashMap;
        this.viewTables = linkedHashMap2;
        this.useTempTable = z;
        this.onInvalidatedTablesIds = invalidationTracker$implementation$1;
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str2 = strArr[i];
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            this.tableIdLookup.put(lowerCase, Integer.valueOf(i));
            String str3 = (String) this.shadowTablesMap.get(strArr[i]);
            if (str3 != null) {
                str = str3.toLowerCase(locale);
                str.getClass();
            } else {
                str = null;
            }
            if (str != null) {
                lowerCase = str;
            }
            strArr2[i] = lowerCase;
        }
        this.tablesNames = strArr2;
        for (Map.Entry entry : this.shadowTablesMap.entrySet()) {
            String str4 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase2 = str4.toLowerCase(locale2);
            lowerCase2.getClass();
            if (this.tableIdLookup.containsKey(lowerCase2)) {
                String lowerCase3 = ((String) entry.getKey()).toLowerCase(locale2);
                lowerCase3.getClass();
                LinkedHashMap linkedHashMap3 = this.tableIdLookup;
                linkedHashMap3.put(lowerCase3, MapsKt__MapsKt.getValue(linkedHashMap3, lowerCase2));
            }
        }
        this.observedTableStates = new Latch(this.tablesNames.length);
        this.observedTableVersions = new ObservedTableVersions(this.tablesNames.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x004f, code lost:
    
        if (r4 == r3) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$checkInvalidatedTables(androidx.room.TriggerBasedInvalidationTracker r4, androidx.room.PooledConnection r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            boolean r0 = r6 instanceof androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r4 = r0.result
            int r6 = r0.label
            r1 = 2
            r2 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 == 0) goto L3d
            if (r6 == r2) goto L35
            if (r6 != r1) goto L2e
            java.lang.Object r5 = r0.L$0
            java.util.Set r5 = (java.util.Set) r5
            kotlin.ResultKt.throwOnFailure(r4)
            return r5
        L2e:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L35:
            java.lang.Object r5 = r0.L$0
            androidx.room.PooledConnection r5 = (androidx.room.PooledConnection) r5
            kotlin.ResultKt.throwOnFailure(r4)
            goto L52
        L3d:
            kotlin.ResultKt.throwOnFailure(r4)
            androidx.work.Data$$ExternalSyntheticLambda0 r4 = new androidx.work.Data$$ExternalSyntheticLambda0
            r4.<init>(r2)
            r0.L$0 = r5
            r0.label = r2
            java.lang.String r6 = "SELECT * FROM room_table_modification_log WHERE invalidated = 1"
            java.lang.Object r4 = r5.usePrepared(r6, r4, r0)
            if (r4 != r3) goto L52
            goto L69
        L52:
            java.util.Set r4 = (java.util.Set) r4
            r6 = r4
            java.util.Collection r6 = (java.util.Collection) r6
            boolean r6 = r6.isEmpty()
            if (r6 != 0) goto L6a
            r0.L$0 = r4
            r0.label = r1
            java.lang.String r6 = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"
            java.lang.Object r5 = androidx.work.impl.model.WorkTagDao_Impl.AnonymousClass1.execSQL(r5, r6, r0)
            if (r5 != r3) goto L6a
        L69:
            return r3
        L6a:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$checkInvalidatedTables(androidx.room.TriggerBasedInvalidationTracker, androidx.room.PooledConnection, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0085 A[Catch: all -> 0x00c4, TryCatch #1 {all -> 0x00c4, blocks: (B:13:0x007a, B:15:0x0085, B:18:0x00be, B:25:0x0094, B:26:0x0096, B:28:0x00a3, B:30:0x00ad, B:32:0x00b3, B:33:0x00b1, B:36:0x00b8, B:50:0x0047, B:54:0x0053, B:58:0x0065), top: B:49:0x0047 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$notifyInvalidation(androidx.room.TriggerBasedInvalidationTracker r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$notifyInvalidation(androidx.room.TriggerBasedInvalidationTracker, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00de, code lost:
    
        if (androidx.work.impl.model.WorkTagDao_Impl.AnonymousClass1.execSQL(r10, r3, r4) == r8) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00e0, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007e, code lost:
    
        if (androidx.work.impl.model.WorkTagDao_Impl.AnonymousClass1.execSQL(r1, r3, r4) == r8) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00de -> B:11:0x00e1). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$startTrackingTable(androidx.room.TriggerBasedInvalidationTracker r17, androidx.room.Transactor r18, int r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(androidx.room.TriggerBasedInvalidationTracker, androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r3v4, types: [androidx.room.PooledConnection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0081 -> B:10:0x0084). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$stopTrackingTable(androidx.room.TriggerBasedInvalidationTracker r7, androidx.room.Transactor r8, int r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r7.getClass()
            boolean r0 = r10 instanceof androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            if (r0 == 0) goto L16
            r0 = r10
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            r0.<init>(r7, r10)
        L1b:
            java.lang.Object r10 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L3b
            if (r1 != r2) goto L34
            int r7 = r0.I$1
            int r8 = r0.I$0
            java.lang.String[] r9 = r0.L$2
            java.lang.String r1 = r0.L$1
            androidx.room.PooledConnection r3 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r9
            r9 = r3
            goto L84
        L34:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            r7 = 0
            return r7
        L3b:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.String[] r7 = r7.tablesNames
            r7 = r7[r9]
            java.lang.String[] r9 = androidx.room.TriggerBasedInvalidationTracker.TRIGGERS
            r10 = 0
            r1 = 3
            r6 = r1
            r1 = r7
            r7 = r6
            r6 = r9
            r9 = r8
            r8 = r10
            r10 = r6
        L4d:
            if (r8 >= r7) goto L86
            r3 = r10[r8]
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "room_table_modification_trigger_"
            r4.<init>(r5)
            r4.append(r1)
            r5 = 95
            r4.append(r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            java.lang.String r4 = "DROP TRIGGER IF EXISTS `"
            r5 = 96
            java.lang.String r3 = androidx.camera.camera2.pipe.CameraDevices$CC.m(r5, r4, r3)
            r0.L$0 = r9
            r0.L$1 = r1
            r0.L$2 = r10
            r0.I$0 = r8
            r0.I$1 = r7
            r0.label = r2
            java.lang.Object r3 = androidx.work.impl.model.WorkTagDao_Impl.AnonymousClass1.execSQL(r9, r3, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r3 != r4) goto L84
            return r4
        L84:
            int r8 = r8 + r2
            goto L4d
        L86:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$stopTrackingTable(androidx.room.TriggerBasedInvalidationTracker, androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void refreshInvalidationAsync$room_runtime_release(Function0 function0, Function0 function02) {
        function0.getClass();
        function02.getClass();
        if (this.pendingRefresh.compareAndSet(false, true)) {
            function0.invoke();
            ContextScope contextScope = this.database.coroutineScope;
            Continuation continuation = null;
            if (contextScope != null) {
                JobKt.launch$default(contextScope, new CoroutineName("Room Invalidation Tracker Refresh"), null, new BlockRunner$maybeRun$1(this, function02, continuation, 15), 2);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object syncTriggers$room_runtime_release(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.room.TriggerBasedInvalidationTracker$syncTriggers$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.TriggerBasedInvalidationTracker$syncTriggers$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$syncTriggers$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$syncTriggers$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$syncTriggers$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L30
            if (r1 != r3) goto L2a
            com.beetstra.jutf7.Base64Util r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L28
            goto L51
        L28:
            r7 = move-exception
            goto L57
        L2a:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r6)
            return r2
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.work.impl.WorkDatabase_Impl r7 = r6.database
            com.beetstra.jutf7.Base64Util r1 = r7.closeBarrier
            boolean r4 = r1.block$room_runtime_release()
            if (r4 == 0) goto L5b
            androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1 r4 = new androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1     // Catch: java.lang.Throwable -> L55
            r5 = 0
            r4.<init>(r6, r2, r5)     // Catch: java.lang.Throwable -> L55
            r0.L$0 = r1     // Catch: java.lang.Throwable -> L55
            r0.label = r3     // Catch: java.lang.Throwable -> L55
            java.lang.Object r6 = r7.useConnection$room_runtime_release(r5, r4, r0)     // Catch: java.lang.Throwable -> L55
            kotlin.coroutines.intrinsics.CoroutineSingletons r7 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 != r7) goto L50
            return r7
        L50:
            r6 = r1
        L51:
            r6.unblock$room_runtime_release()
            goto L5b
        L55:
            r7 = move-exception
            r6 = r1
        L57:
            r6.unblock$room_runtime_release()
            throw r7
        L5b:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.syncTriggers$room_runtime_release(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
