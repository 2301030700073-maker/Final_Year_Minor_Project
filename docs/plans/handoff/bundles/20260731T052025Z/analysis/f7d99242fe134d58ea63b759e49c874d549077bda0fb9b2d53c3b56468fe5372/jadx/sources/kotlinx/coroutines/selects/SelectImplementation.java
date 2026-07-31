package kotlinx.coroutines.selects;

import androidx.compose.ui.unit.IntOffsetKt;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper;
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SelectImplementation implements CancelHandler, Waiter {
    public static final /* synthetic */ AtomicReferenceFieldUpdater state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");
    public static final /* synthetic */ long state$volatile$FU$offset = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.objectFieldOffset(SelectImplementation.class.getDeclaredField("state$volatile"));
    public final CoroutineContext context;
    public Object disposableHandleOrSegment;
    private volatile /* synthetic */ Object state$volatile = SelectKt.STATE_REG;
    public ArrayList clauses = new ArrayList(2);
    public int indexInSegment = -1;
    public Object internalResult = SelectKt.NO_RESULT;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ClauseData {
        public final SuspendLambda block;
        public final Object clauseObject;
        public Object disposableHandleOrSegment;
        public int indexInSegment = -1;
        public final Function3 onCancellationConstructor;
        public final Object param;
        public final Function3 processResFunc;
        public final Function3 regFunc;

        public ClauseData(Object obj, Function3 function3, Function3 function32, LocalStore.AnonymousClass8 anonymousClass8, SuspendLambda suspendLambda, Function3 function33) {
            this.clauseObject = obj;
            this.regFunc = function3;
            this.processResFunc = function32;
            this.param = anonymousClass8;
            this.block = suspendLambda;
            this.onCancellationConstructor = function33;
        }

        public final void dispose() {
            Object obj = this.disposableHandleOrSegment;
            if (obj instanceof Segment) {
                ((Segment) obj).onCancellation(this.indexInSegment, SelectImplementation.this.context);
                return;
            }
            DisposableHandle disposableHandle = obj instanceof DisposableHandle ? (DisposableHandle) obj : null;
            if (disposableHandle != null) {
                disposableHandle.dispose();
            }
        }
    }

    public SelectImplementation(CoroutineContext coroutineContext) {
        this.context = coroutineContext;
    }

    public final void cleanup(ClauseData clauseData) {
        ArrayList arrayList = this.clauses;
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ClauseData clauseData2 = (ClauseData) it.next();
            if (clauseData2 != clauseData) {
                clauseData2.dispose();
            }
        }
        state$volatile$FU.getClass();
        AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, state$volatile$FU$offset, SelectKt.STATE_COMPLETED);
        this.internalResult = SelectKt.NO_RESULT;
        this.clauses = null;
    }

    public final Object complete(ContinuationImpl continuationImpl) {
        state$volatile$FU.getClass();
        Object objectVolatile = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, state$volatile$FU$offset);
        objectVolatile.getClass();
        ClauseData clauseData = (ClauseData) objectVolatile;
        Object obj = this.internalResult;
        cleanup(clauseData);
        Function3 function3 = clauseData.processResFunc;
        Object obj2 = clauseData.clauseObject;
        Object obj3 = clauseData.param;
        Object invoke = function3.invoke(obj2, obj3, obj);
        Continuation continuation = clauseData.block;
        return obj3 == SelectKt.PARAM_CLAUSE_0 ? ((Function1) continuation).invoke(continuationImpl) : ((Function2) continuation).invoke(invoke, continuationImpl);
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003e, code lost:
    
        if (waitUntilSelected(r0) == r4) goto L22;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doSelectSuspend(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = (kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r0 = new kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            int r1 = r0.label
            r2 = 2
            r3 = 1
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L35
            if (r1 == r3) goto L31
            if (r1 != r2) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            return r6
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L41
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            r0.label = r3
            java.lang.Object r6 = r5.waitUntilSelected(r0)
            if (r6 != r4) goto L41
            goto L49
        L41:
            r0.label = r2
            java.lang.Object r5 = r5.complete(r0)
            if (r5 != r4) goto L4a
        L49:
            return r4
        L4a:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.doSelectSuspend(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final ClauseData findClause(Object obj) {
        Object obj2;
        ArrayList arrayList = this.clauses;
        if (arrayList == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj2 = null;
                break;
            }
            obj2 = it.next();
            if (((ClauseData) obj2).clauseObject == obj) {
                break;
            }
        }
        ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        Regex$$ExternalSyntheticBUOutline0.m(obj, " is not found", "Clause with object ");
        return null;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void invoke(Throwable th) {
        SelectImplementation selectImplementation;
        while (true) {
            state$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = state$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == SelectKt.STATE_COMPLETED) {
                return;
            }
            while (true) {
                Unsafe unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                selectImplementation = this;
                if (unsafe2.compareAndSwapObject(selectImplementation, state$volatile$FU$offset, objectVolatile, SelectKt.STATE_CANCELLED)) {
                    ArrayList arrayList = selectImplementation.clauses;
                    if (arrayList == null) {
                        return;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((ClauseData) it.next()).dispose();
                    }
                    selectImplementation.internalResult = SelectKt.NO_RESULT;
                    selectImplementation.clauses = null;
                    return;
                }
                if (unsafe2.getObjectVolatile(selectImplementation, j) != objectVolatile) {
                    break;
                } else {
                    this = selectImplementation;
                }
            }
            this = selectImplementation;
        }
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i) {
        this.disposableHandleOrSegment = segment;
        this.indexInSegment = i;
    }

    public final boolean isSelected$1() {
        state$volatile$FU.getClass();
        return AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, state$volatile$FU$offset) instanceof ClauseData;
    }

    public final void register(ClauseData clauseData, boolean z) {
        Object obj = clauseData.clauseObject;
        state$volatile$FU.getClass();
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        long j = state$volatile$FU$offset;
        if (unsafe.getObjectVolatile(this, j) instanceof ClauseData) {
            return;
        }
        if (!z) {
            ArrayList arrayList = this.clauses;
            arrayList.getClass();
            if (!arrayList.isEmpty()) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    if (((ClauseData) it.next()).clauseObject == obj) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1(obj, "Cannot use select clauses on the same object: ");
                        return;
                    }
                }
            }
        }
        clauseData.regFunc.invoke(obj, this, clauseData.param);
        if (this.internalResult != SelectKt.NO_RESULT) {
            AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, j, clauseData);
            return;
        }
        if (!z) {
            ArrayList arrayList2 = this.clauses;
            arrayList2.getClass();
            arrayList2.add(clauseData);
        }
        clauseData.disposableHandleOrSegment = this.disposableHandleOrSegment;
        clauseData.indexInSegment = this.indexInSegment;
        this.disposableHandleOrSegment = null;
        this.indexInSegment = -1;
    }

    public final int trySelectInternal(Object obj, Object obj2) {
        SelectImplementation selectImplementation;
        Unsafe unsafe;
        Unsafe unsafe2;
        while (true) {
            state$volatile$FU.getClass();
            Unsafe unsafe3 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = state$volatile$FU$offset;
            Object objectVolatile = unsafe3.getObjectVolatile(this, j);
            if (objectVolatile instanceof CancellableContinuation) {
                ClauseData findClause = this.findClause(obj);
                if (findClause != null) {
                    Function3 function3 = findClause.onCancellationConstructor;
                    Function3 function32 = function3 != null ? (Function3) function3.invoke(this, findClause.param, obj2) : null;
                    while (true) {
                        Unsafe unsafe4 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                        selectImplementation = this;
                        if (unsafe4.compareAndSwapObject(selectImplementation, state$volatile$FU$offset, objectVolatile, findClause)) {
                            CancellableContinuation cancellableContinuation = (CancellableContinuation) objectVolatile;
                            selectImplementation.internalResult = obj2;
                            LocalStore.AnonymousClass8 tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, function32);
                            if (tryResume == null) {
                                selectImplementation.internalResult = SelectKt.NO_RESULT;
                                return 2;
                            }
                            cancellableContinuation.completeResume(tryResume);
                            return 0;
                        }
                        if (unsafe4.getObjectVolatile(selectImplementation, j) != objectVolatile) {
                            break;
                        }
                        this = selectImplementation;
                    }
                } else {
                    continue;
                }
            } else {
                selectImplementation = this;
                if (Intrinsics.areEqual(objectVolatile, SelectKt.STATE_COMPLETED) || (objectVolatile instanceof ClauseData)) {
                    return 3;
                }
                if (Intrinsics.areEqual(objectVolatile, SelectKt.STATE_CANCELLED)) {
                    return 2;
                }
                if (Intrinsics.areEqual(objectVolatile, SelectKt.STATE_REG)) {
                    List listOf = IntOffsetKt.listOf(obj);
                    do {
                        unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                        if (unsafe2.compareAndSwapObject(selectImplementation, state$volatile$FU$offset, objectVolatile, listOf)) {
                            return 1;
                        }
                    } while (unsafe2.getObjectVolatile(selectImplementation, j) == objectVolatile);
                } else {
                    if (!(objectVolatile instanceof List)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m(objectVolatile, "Unexpected state: ");
                        return 0;
                    }
                    ArrayList plus = CollectionsKt.plus((Collection) objectVolatile, obj);
                    do {
                        unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                        if (unsafe.compareAndSwapObject(selectImplementation, state$volatile$FU$offset, objectVolatile, plus)) {
                            return 1;
                        }
                    } while (unsafe.getObjectVolatile(selectImplementation, j) == objectVolatile);
                }
            }
            this = selectImplementation;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x008c, code lost:
    
        r0 = r10.getResult();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0092, code lost:
    
        if (r0 != kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0094, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0095, code lost:
    
        return r9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object waitUntilSelected(kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1 r13) {
        /*
            r12 = this;
            kotlinx.coroutines.CancellableContinuationImpl r5 = new kotlinx.coroutines.CancellableContinuationImpl
            kotlin.coroutines.Continuation r0 = kotlinx.atomicfu.AtomicFU.intercepted(r13)
            r6 = 1
            r5.<init>(r6, r0)
            r5.initCancellability()
        Ld:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.selects.SelectImplementation.state$volatile$FU
            r0.getClass()
            sun.misc.Unsafe r0 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r7 = kotlinx.coroutines.selects.SelectImplementation.state$volatile$FU$offset
            java.lang.Object r4 = r0.getObjectVolatile(r12, r7)
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            r0 = r5
            com.fsck.k9.mailstore.LocalStore$8 r5 = kotlinx.coroutines.selects.SelectKt.STATE_REG
            if (r4 != r5) goto L3b
            r5 = r0
        L22:
            sun.misc.Unsafe r0 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.selects.SelectImplementation.state$volatile$FU$offset
            r1 = r12
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            r10 = r5
            if (r2 == 0) goto L32
            r10.invokeOnCancellationImpl(r12)
            goto L8c
        L32:
            java.lang.Object r0 = r0.getObjectVolatile(r12, r7)
            if (r0 == r4) goto L39
            goto L72
        L39:
            r5 = r10
            goto L22
        L3b:
            r10 = r0
            boolean r0 = r4 instanceof java.util.List
            r11 = 0
            if (r0 == 0) goto L74
        L41:
            sun.misc.Unsafe r0 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.selects.SelectImplementation.state$volatile$FU$offset
            r1 = r12
            boolean r2 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r2 == 0) goto L6c
            java.lang.Iterable r4 = (java.lang.Iterable) r4
            java.util.Iterator r0 = r4.iterator()
        L52:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L72
            java.lang.Object r2 = r0.next()
            kotlinx.coroutines.selects.SelectImplementation$ClauseData r2 = r12.findClause(r2)
            r2.getClass()
            r2.disposableHandleOrSegment = r11
            r3 = -1
            r2.indexInSegment = r3
            r12.register(r2, r6)
            goto L52
        L6c:
            java.lang.Object r0 = r0.getObjectVolatile(r12, r7)
            if (r0 == r4) goto L41
        L72:
            r5 = r10
            goto Ld
        L74:
            boolean r0 = r4 instanceof kotlinx.coroutines.selects.SelectImplementation.ClauseData
            if (r0 == 0) goto L96
            kotlinx.coroutines.selects.SelectImplementation$ClauseData r4 = (kotlinx.coroutines.selects.SelectImplementation.ClauseData) r4
            java.lang.Object r0 = r12.internalResult
            kotlin.jvm.functions.Function3 r2 = r4.onCancellationConstructor
            if (r2 == 0) goto L89
            java.lang.Object r3 = r4.param
            java.lang.Object r0 = r2.invoke(r12, r3, r0)
            r11 = r0
            kotlin.jvm.functions.Function3 r11 = (kotlin.jvm.functions.Function3) r11
        L89:
            r10.resume(r9, r11)
        L8c:
            java.lang.Object r0 = r10.getResult()
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r0 != r1) goto L95
            return r0
        L95:
            return r9
        L96:
            java.lang.String r0 = "unexpected state: "
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r4, r0)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.waitUntilSelected(kotlinx.coroutines.selects.SelectImplementation$doSelectSuspend$1):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void invoke(Dispatcher dispatcher, Function2 function2) {
        register(new ClauseData(dispatcher.executorServiceOrNull, (Function3) dispatcher.readyAsyncCalls, (Function3) dispatcher.runningAsyncCalls, null, (SuspendLambda) function2, (Function3) dispatcher.runningSyncCalls), false);
    }
}
