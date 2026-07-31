package androidx.room;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.paging.PageFetcher$flow$1;
import coil3.memory.MemoryCacheService;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker {
    public static final String[] TRIGGERS = {"INSERT", "UPDATE", "DELETE"};
    public final RoomDatabase database;
    public final ObservedTableStates observedTableStates;
    public final MemoryCacheService observedTableVersions;
    public final InvalidationTracker$implementation$1 onInvalidatedTablesIds;
    public final LinkedHashMap shadowTablesMap;
    public final String[] tablesNames;
    public final boolean useTempTable;
    public final LinkedHashMap viewTables;
    public final AtomicBoolean pendingRefresh = new AtomicBoolean(false);
    public Function0 onAllowRefresh = new ImmLeaksCleaner$$ExternalSyntheticLambda0(9);
    public final LinkedHashMap tableIdLookup = new LinkedHashMap();

    public TriggerBasedInvalidationTracker(RoomDatabase roomDatabase, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, String[] strArr, boolean z, InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        String str;
        this.database = roomDatabase;
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
                linkedHashMap3.put(lowerCase3, MapsKt__MapsKt.getValue(lowerCase2, linkedHashMap3));
            }
        }
        this.observedTableStates = new ObservedTableStates(this.tablesNames.length);
        this.observedTableVersions = new MemoryCacheService(this.tablesNames.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0050, code lost:
    
        if (r4 == r6) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object checkInvalidatedTables(androidx.room.PooledConnection r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r4 = this;
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3d
            if (r1 == r3) goto L35
            if (r1 != r2) goto L2e
            java.lang.Object r5 = r0.L$0
            java.util.Set r5 = (java.util.Set) r5
            kotlin.ResultKt.throwOnFailure(r4)
            return r5
        L2e:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L35:
            java.lang.Object r5 = r0.L$0
            androidx.room.PooledConnection r5 = (androidx.room.PooledConnection) r5
            kotlin.ResultKt.throwOnFailure(r4)
            goto L53
        L3d:
            kotlin.ResultKt.throwOnFailure(r4)
            androidx.work.Data$$ExternalSyntheticLambda0 r4 = new androidx.work.Data$$ExternalSyntheticLambda0
            r1 = 3
            r4.<init>(r1)
            r0.L$0 = r5
            r0.label = r3
            java.lang.String r1 = "SELECT * FROM room_table_modification_log WHERE invalidated = 1"
            java.lang.Object r4 = r5.usePrepared(r1, r4, r0)
            if (r4 != r6) goto L53
            goto L6a
        L53:
            java.util.Set r4 = (java.util.Set) r4
            r1 = r4
            java.util.Collection r1 = (java.util.Collection) r1
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L6b
            r0.L$0 = r4
            r0.label = r2
            java.lang.String r1 = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1"
            java.lang.Object r5 = kotlin.text.UStringsKt.execSQL(r5, r1, r0)
            if (r5 != r6) goto L6b
        L6a:
            return r6
        L6b:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.checkInvalidatedTables(androidx.room.PooledConnection, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007d A[Catch: all -> 0x002b, TryCatch #0 {all -> 0x002b, blocks: (B:11:0x0027, B:12:0x0072, B:14:0x007d, B:17:0x00b5, B:19:0x0089, B:20:0x008d, B:22:0x009a, B:24:0x00a4, B:26:0x00aa, B:27:0x00a8, B:30:0x00af), top: B:10:0x0027 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object notifyInvalidation(kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1
            r0.<init>(r10, r11)
        L18:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L34
            if (r2 != r5) goto L2e
            coil3.svg.internal.AndroidSvg r0 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Throwable -> L2b
            goto L72
        L2b:
            r10 = move-exception
            goto Lc0
        L2e:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r10)
            return r3
        L34:
            kotlin.ResultKt.throwOnFailure(r11)
            androidx.room.RoomDatabase r11 = r10.database
            coil3.svg.internal.AndroidSvg r2 = r11.closeBarrier
            boolean r6 = r2.block$room_runtime()
            kotlin.collections.EmptySet r7 = kotlin.collections.EmptySet.INSTANCE
            if (r6 == 0) goto Lc4
            java.util.concurrent.atomic.AtomicBoolean r6 = r10.pendingRefresh     // Catch: java.lang.Throwable -> Lbe
            boolean r6 = r6.compareAndSet(r5, r4)     // Catch: java.lang.Throwable -> Lbe
            if (r6 != 0) goto L4f
            r2.unblock$room_runtime()
            return r7
        L4f:
            kotlin.jvm.functions.Function0 r6 = r10.onAllowRefresh     // Catch: java.lang.Throwable -> Lbe
            java.lang.Object r6 = r6.invoke()     // Catch: java.lang.Throwable -> Lbe
            java.lang.Boolean r6 = (java.lang.Boolean) r6     // Catch: java.lang.Throwable -> Lbe
            boolean r6 = r6.booleanValue()     // Catch: java.lang.Throwable -> Lbe
            if (r6 != 0) goto L61
            r2.unblock$room_runtime()
            return r7
        L61:
            androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 r6 = new androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1     // Catch: java.lang.Throwable -> Lbe
            r6.<init>(r10, r3, r4)     // Catch: java.lang.Throwable -> Lbe
            r0.L$0 = r2     // Catch: java.lang.Throwable -> Lbe
            r0.label = r5     // Catch: java.lang.Throwable -> Lbe
            java.lang.Object r11 = r11.useConnection(r4, r6, r0)     // Catch: java.lang.Throwable -> Lbe
            if (r11 != r1) goto L71
            return r1
        L71:
            r0 = r2
        L72:
            java.util.Set r11 = (java.util.Set) r11     // Catch: java.lang.Throwable -> L2b
            r1 = r11
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L2b
            if (r1 != 0) goto Lba
            coil3.memory.MemoryCacheService r1 = r10.observedTableVersions     // Catch: java.lang.Throwable -> L2b
            r11.getClass()     // Catch: java.lang.Throwable -> L2b
            boolean r2 = r11.isEmpty()     // Catch: java.lang.Throwable -> L2b
            if (r2 == 0) goto L89
            goto Lb5
        L89:
            java.lang.Object r1 = r1.imageLoader     // Catch: java.lang.Throwable -> L2b
            kotlinx.coroutines.flow.StateFlowImpl r1 = (kotlinx.coroutines.flow.StateFlowImpl) r1     // Catch: java.lang.Throwable -> L2b
        L8d:
            java.lang.Object r2 = r1.getValue()     // Catch: java.lang.Throwable -> L2b
            r3 = r2
            int[] r3 = (int[]) r3     // Catch: java.lang.Throwable -> L2b
            int r6 = r3.length     // Catch: java.lang.Throwable -> L2b
            int[] r7 = new int[r6]     // Catch: java.lang.Throwable -> L2b
            r8 = r4
        L98:
            if (r8 >= r6) goto Laf
            java.lang.Integer r9 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> L2b
            boolean r9 = r11.contains(r9)     // Catch: java.lang.Throwable -> L2b
            if (r9 == 0) goto La8
            r9 = r3[r8]     // Catch: java.lang.Throwable -> L2b
            int r9 = r9 + r5
            goto Laa
        La8:
            r9 = r3[r8]     // Catch: java.lang.Throwable -> L2b
        Laa:
            r7[r8] = r9     // Catch: java.lang.Throwable -> L2b
            int r8 = r8 + 1
            goto L98
        Laf:
            boolean r2 = r1.compareAndSet(r2, r7)     // Catch: java.lang.Throwable -> L2b
            if (r2 == 0) goto L8d
        Lb5:
            androidx.room.InvalidationTracker$implementation$1 r10 = r10.onInvalidatedTablesIds     // Catch: java.lang.Throwable -> L2b
            r10.invoke(r11)     // Catch: java.lang.Throwable -> L2b
        Lba:
            r0.unblock$room_runtime()
            return r11
        Lbe:
            r10 = move-exception
            r0 = r2
        Lc0:
            r0.unblock$room_runtime()
            throw r10
        Lc4:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.notifyInvalidation(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void refreshInvalidationAsync$room_runtime(Function0 function0, Function0 function02) {
        function0.getClass();
        function02.getClass();
        if (this.pendingRefresh.compareAndSet(false, true)) {
            function0.invoke();
            ContextScope contextScope = this.database.coroutineScope;
            Continuation continuation = null;
            if (contextScope != null) {
                AwaitKt.launch$default(contextScope, new CoroutineName(CoroutineName.Key), null, new PageFetcher$flow$1(this, function02, continuation, 14), 2);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                throw null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00d5, code lost:
    
        if (kotlin.text.UStringsKt.execSQL(r11, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00d7, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0075, code lost:
    
        if (kotlin.text.UStringsKt.execSQL(r1, r3, r4) == r5) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.room.PooledConnection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x00d5 -> B:11:0x00d8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object startTrackingTable(androidx.room.Transactor r18, int r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.startTrackingTable(androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.room.PooledConnection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x007e -> B:10:0x0081). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object stopTrackingTable(androidx.room.Transactor r9, int r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            r8 = this;
            boolean r0 = r11 instanceof androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            if (r0 == 0) goto L13
            r0 = r11
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            r0.<init>(r8, r11)
        L18:
            java.lang.Object r11 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L33
            int r8 = r0.I$1
            int r9 = r0.I$0
            java.lang.String[] r10 = r0.L$2
            java.lang.String r2 = r0.L$1
            androidx.room.PooledConnection r4 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = r10
            r10 = r4
            goto L81
        L33:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r8)
            r8 = 0
            return r8
        L3a:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.String[] r8 = r8.tablesNames
            r8 = r8[r10]
            java.lang.String[] r10 = androidx.room.TriggerBasedInvalidationTracker.TRIGGERS
            r11 = 0
            r2 = 3
            r7 = r2
            r2 = r8
            r8 = r7
            r7 = r10
            r10 = r9
            r9 = r11
            r11 = r7
        L4c:
            if (r9 >= r8) goto L83
            r4 = r11[r9]
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "room_table_modification_trigger_"
            r5.<init>(r6)
            r5.append(r2)
            r6 = 95
            r5.append(r6)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            java.lang.String r5 = "DROP TRIGGER IF EXISTS `"
            r6 = 96
            java.lang.String r4 = androidx.compose.animation.core.Animation.CC.m(r6, r5, r4)
            r0.L$0 = r10
            r0.L$1 = r2
            r0.L$2 = r11
            r0.I$0 = r9
            r0.I$1 = r8
            r0.label = r3
            java.lang.Object r4 = kotlin.text.UStringsKt.execSQL(r10, r4, r0)
            if (r4 != r1) goto L81
            return r1
        L81:
            int r9 = r9 + r3
            goto L4c
        L83:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.stopTrackingTable(androidx.room.Transactor, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object syncTriggers$room_runtime(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
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
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            coil3.svg.internal.AndroidSvg r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L2a
            goto L51
        L2a:
            r7 = move-exception
            goto L57
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.room.RoomDatabase r7 = r6.database
            coil3.svg.internal.AndroidSvg r2 = r7.closeBarrier
            boolean r5 = r2.block$room_runtime()
            if (r5 == 0) goto L5b
            coil3.RealImageLoader$execute$2 r5 = new coil3.RealImageLoader$execute$2     // Catch: java.lang.Throwable -> L55
            r5.<init>(r6, r3)     // Catch: java.lang.Throwable -> L55
            r0.L$0 = r2     // Catch: java.lang.Throwable -> L55
            r0.label = r4     // Catch: java.lang.Throwable -> L55
            r6 = 0
            java.lang.Object r6 = r7.useConnection(r6, r5, r0)     // Catch: java.lang.Throwable -> L55
            if (r6 != r1) goto L50
            return r1
        L50:
            r6 = r2
        L51:
            r6.unblock$room_runtime()
            goto L5b
        L55:
            r7 = move-exception
            r6 = r2
        L57:
            r6.unblock$room_runtime()
            throw r7
        L5b:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.syncTriggers$room_runtime(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
