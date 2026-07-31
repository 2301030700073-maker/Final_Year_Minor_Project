package androidx.room;

import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.network.NetworkFetcher$fetch$2;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker {
    public static final String[] TRIGGERS = {"INSERT", "UPDATE", "DELETE"};
    public final RoomDatabase database;
    public final ObservedTableStates observedTableStates;
    public final ObservedTableVersions observedTableVersions;
    public final NetworkFetcher$fetch$2 onInvalidatedTablesIds;
    public final LinkedHashMap shadowTablesMap;
    public final String[] tablesNames;
    public final boolean useTempTable;
    public final LinkedHashMap viewTables;
    public final AtomicBoolean pendingRefresh = new AtomicBoolean(false);
    public Function0 onAllowRefresh = new UtilsKt$$ExternalSyntheticLambda0(10);
    public final LinkedHashMap tableIdLookup = new LinkedHashMap();

    public TriggerBasedInvalidationTracker(RoomDatabase roomDatabase, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String[] strArr, boolean z, NetworkFetcher$fetch$2 networkFetcher$fetch$2) {
        String str;
        this.database = roomDatabase;
        this.shadowTablesMap = linkedHashMap;
        this.viewTables = linkedHashMap2;
        this.useTempTable = z;
        this.onInvalidatedTablesIds = networkFetcher$fetch$2;
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
                linkedHashMap3.put(lowerCase3, MapsKt__MapsKt.getValue(lowerCase2, linkedHashMap3));
            }
        }
        this.observedTableStates = new ObservedTableStates(this.tablesNames.length);
        this.observedTableVersions = new ObservedTableVersions(this.tablesNames.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
    
        if (r4 == r3) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$checkInvalidatedTables(androidx.room.TriggerBasedInvalidationTracker r4, androidx.room.PooledConnection r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4.getClass()
            boolean r0 = r6 instanceof androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1
            if (r0 == 0) goto L16
            r0 = r6
            androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1
            r0.<init>(r4, r6)
        L1b:
            java.lang.Object r4 = r0.result
            int r6 = r0.label
            r1 = 2
            r2 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r6 == 0) goto L40
            if (r6 == r2) goto L38
            if (r6 != r1) goto L31
            java.lang.Object r5 = r0.L$0
            java.util.Set r5 = (java.util.Set) r5
            kotlin.ResultKt.throwOnFailure(r4)
            return r5
        L31:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r4)
            r4 = 0
            return r4
        L38:
            java.lang.Object r5 = r0.L$0
            androidx.room.PooledConnection r5 = (androidx.room.PooledConnection) r5
            kotlin.ResultKt.throwOnFailure(r4)
            goto L56
        L40:
            kotlin.ResultKt.throwOnFailure(r4)
            androidx.work.Data$$ExternalSyntheticLambda0 r4 = new androidx.work.Data$$ExternalSyntheticLambda0
            r6 = 3
            r4.<init>(r6)
            r0.L$0 = r5
            r0.label = r2
            java.lang.String r6 = "SELECT * FROM room_table_modification_log WHERE invalidated = 1"
            java.lang.Object r4 = r5.usePrepared(r6, r4, r0)
            if (r4 != r3) goto L56
            goto L6d
        L56:
            java.util.Set r4 = (java.util.Set) r4
            r6 = r4
            java.util.Collection r6 = (java.util.Collection) r6
            boolean r6 = r6.isEmpty()
            if (r6 != 0) goto L6e
            r0.L$0 = r4
            r0.label = r1
            java.lang.String r6 = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"
            java.lang.Object r5 = kotlin.text.UStringsKt.execSQL(r5, r6, r0)
            if (r5 != r3) goto L6e
        L6d:
            return r3
        L6e:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$checkInvalidatedTables(androidx.room.TriggerBasedInvalidationTracker, androidx.room.PooledConnection, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0080 A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #0 {all -> 0x002c, blocks: (B:11:0x0028, B:12:0x0075, B:14:0x0080), top: B:10:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$notifyInvalidation(androidx.room.TriggerBasedInvalidationTracker r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            androidx.room.RoomDatabase r0 = r8.database
            boolean r1 = r9 instanceof androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1
            if (r1 == 0) goto L15
            r1 = r9
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1 r1 = (androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.label = r2
            goto L1a
        L15:
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1 r1 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1
            r1.<init>(r8, r9)
        L1a:
            java.lang.Object r9 = r1.result
            int r2 = r1.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2e
            java.lang.Object r0 = r1.L$0
            androidx.room.concurrent.CloseBarrier r0 = (androidx.room.concurrent.CloseBarrier) r0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L2c
            goto L75
        L2c:
            r8 = move-exception
            goto L90
        L2e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r8)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r9)
            androidx.room.concurrent.CloseBarrier r9 = r0.closeBarrier
            boolean r2 = r9.block$room_runtime()
            kotlin.collections.EmptySet r5 = kotlin.collections.EmptySet.INSTANCE
            if (r2 == 0) goto L94
            java.util.concurrent.atomic.AtomicBoolean r2 = r8.pendingRefresh     // Catch: java.lang.Throwable -> L8e
            r6 = 0
            boolean r2 = r2.compareAndSet(r4, r6)     // Catch: java.lang.Throwable -> L8e
            if (r2 != 0) goto L4e
            r9.unblock$room_runtime()
            return r5
        L4e:
            kotlin.jvm.functions.Function0 r2 = r8.onAllowRefresh     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r2 = r2.invoke()     // Catch: java.lang.Throwable -> L8e
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch: java.lang.Throwable -> L8e
            boolean r2 = r2.booleanValue()     // Catch: java.lang.Throwable -> L8e
            if (r2 != 0) goto L60
            r9.unblock$room_runtime()
            return r5
        L60:
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 r2 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1     // Catch: java.lang.Throwable -> L8e
            r2.<init>(r8, r3)     // Catch: java.lang.Throwable -> L8e
            r1.L$0 = r9     // Catch: java.lang.Throwable -> L8e
            r1.label = r4     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r0 = r0.useConnection(r6, r2, r1)     // Catch: java.lang.Throwable -> L8e
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L72
            return r1
        L72:
            r7 = r0
            r0 = r9
            r9 = r7
        L75:
            java.util.Set r9 = (java.util.Set) r9     // Catch: java.lang.Throwable -> L2c
            r1 = r9
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> L2c
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L2c
            if (r1 != 0) goto L8a
            androidx.room.ObservedTableVersions r1 = r8.observedTableVersions     // Catch: java.lang.Throwable -> L2c
            r1.increment(r9)     // Catch: java.lang.Throwable -> L2c
            coil3.network.NetworkFetcher$fetch$2 r8 = r8.onInvalidatedTablesIds     // Catch: java.lang.Throwable -> L2c
            r8.invoke(r9)     // Catch: java.lang.Throwable -> L2c
        L8a:
            r0.unblock$room_runtime()
            return r9
        L8e:
            r8 = move-exception
            r0 = r9
        L90:
            r0.unblock$room_runtime()
            throw r8
        L94:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$notifyInvalidation(androidx.room.TriggerBasedInvalidationTracker, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00e6, code lost:
    
        if (kotlin.text.UStringsKt.execSQL(r7, r15, r0) == r4) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00e8, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
    
        if (r15 == r4) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r13v6, types: [androidx.room.PooledConnection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00e6 -> B:11:0x00e9). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$startTrackingTable(androidx.room.TriggerBasedInvalidationTracker r12, androidx.room.Transactor r13, int r14, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$startTrackingTable(androidx.room.TriggerBasedInvalidationTracker, androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r3v5, types: [androidx.room.PooledConnection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0087 -> B:10:0x008a). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L41
            if (r1 != r2) goto L3a
            int r7 = r0.I$1
            int r8 = r0.I$0
            java.lang.Object r9 = r0.L$2
            java.lang.String[] r9 = (java.lang.String[]) r9
            java.lang.Object r1 = r0.L$1
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r3 = r0.L$0
            androidx.room.PooledConnection r3 = (androidx.room.PooledConnection) r3
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r9
            r9 = r3
            goto L8a
        L3a:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r7)
            r7 = 0
            return r7
        L41:
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
        L53:
            if (r8 >= r7) goto L8c
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
            java.lang.String r3 = androidx.compose.ui.node.Owner.CC.m(r5, r4, r3)
            r0.L$0 = r9
            r0.L$1 = r1
            r0.L$2 = r10
            r0.I$0 = r8
            r0.I$1 = r7
            r0.label = r2
            java.lang.Object r3 = kotlin.text.UStringsKt.execSQL(r9, r3, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r3 != r4) goto L8a
            return r4
        L8a:
            int r8 = r8 + r2
            goto L53
        L8c:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.access$stopTrackingTable(androidx.room.TriggerBasedInvalidationTracker, androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void refreshInvalidationAsync$room_runtime(Function0 function0, Function0 function02) {
        function0.getClass();
        function02.getClass();
        if (this.pendingRefresh.compareAndSet(false, true)) {
            function0.invoke();
            ContextScope contextScope = this.database.coroutineScope;
            if (contextScope != null) {
                JobKt.launch$default(contextScope, new CoroutineName(), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, function02, null), 2);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object syncTriggers$room_runtime(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.room.TriggerBasedInvalidationTracker$syncTriggers$1
            if (r0 == 0) goto L13
            r0 = r6
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
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L32
            if (r1 != r3) goto L2c
            java.lang.Object r5 = r0.L$0
            androidx.room.concurrent.CloseBarrier r5 = (androidx.room.concurrent.CloseBarrier) r5
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2a
            goto L53
        L2a:
            r6 = move-exception
            goto L59
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1.m$2(r5)
            return r2
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.room.RoomDatabase r6 = r5.database
            androidx.room.concurrent.CloseBarrier r1 = r6.closeBarrier
            boolean r4 = r1.block$room_runtime()
            if (r4 == 0) goto L5d
            androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1 r4 = new androidx.room.TriggerBasedInvalidationTracker$syncTriggers$2$1     // Catch: java.lang.Throwable -> L57
            r4.<init>(r5, r2)     // Catch: java.lang.Throwable -> L57
            r0.L$0 = r1     // Catch: java.lang.Throwable -> L57
            r0.label = r3     // Catch: java.lang.Throwable -> L57
            r5 = 0
            java.lang.Object r5 = r6.useConnection(r5, r4, r0)     // Catch: java.lang.Throwable -> L57
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r6) goto L52
            return r6
        L52:
            r5 = r1
        L53:
            r5.unblock$room_runtime()
            goto L5d
        L57:
            r6 = move-exception
            r5 = r1
        L59:
            r5.unblock$room_runtime()
            throw r6
        L5d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.syncTriggers$room_runtime(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
