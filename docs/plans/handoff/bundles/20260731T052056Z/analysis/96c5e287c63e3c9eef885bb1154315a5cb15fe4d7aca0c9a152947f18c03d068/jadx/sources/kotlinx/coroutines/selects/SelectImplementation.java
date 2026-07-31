package kotlinx.coroutines.selects;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.room.Room;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
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
import kotlinx.coroutines.CancelHandler;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.Symbol;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectImplementation implements CancelHandler, Waiter {
    public static final /* synthetic */ long state$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(SelectImplementation.class.getDeclaredField("state$volatile"));
    public final CoroutineContext context;
    public Object disposableHandleOrSegment;
    private volatile /* synthetic */ Object state$volatile = SelectKt.STATE_REG;
    public ArrayList clauses = new ArrayList(2);
    public int indexInSegment = -1;
    public Object internalResult = SelectKt.NO_RESULT;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ClauseData {
        public final SuspendLambda block;
        public final Object clauseObject;
        public Object disposableHandleOrSegment;
        public int indexInSegment = -1;
        public final Function3 onCancellationConstructor;
        public final Object param;
        public final Function3 processResFunc;
        public final Function3 regFunc;

        public ClauseData(Object obj, Function3 function3, Function3 function32, Object obj2, SuspendLambda suspendLambda, Function3 function33) {
            this.clauseObject = obj;
            this.regFunc = function3;
            this.processResFunc = function32;
            this.param = obj2;
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

    public final Object complete(ContinuationImpl continuationImpl) {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long j = state$volatile$FU$offset;
        Object objectVolatile = unsafe.getObjectVolatile(this, j);
        objectVolatile.getClass();
        ClauseData clauseData = (ClauseData) objectVolatile;
        Object obj = clauseData.param;
        Object obj2 = this.internalResult;
        ArrayList arrayList = this.clauses;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ClauseData clauseData2 = (ClauseData) it.next();
                if (clauseData2 != clauseData) {
                    clauseData2.dispose();
                }
            }
            ArtificialStackFramesUnsafe.unsafe.putObjectVolatile(this, j, SelectKt.STATE_COMPLETED);
            this.internalResult = SelectKt.NO_RESULT;
            this.clauses = null;
        }
        Object invoke = clauseData.processResFunc.invoke(clauseData.clauseObject, obj, obj2);
        Continuation continuation = clauseData.block;
        return obj == SelectKt.PARAM_CLAUSE_0 ? ((Function1) continuation).invoke(continuationImpl) : ((Function2) continuation).invoke(invoke, continuationImpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00e1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object doSelectSuspend(kotlin.coroutines.jvm.internal.ContinuationImpl r16) {
        /*
            Method dump skipped, instructions count: 233
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.SelectImplementation.doSelectSuspend(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final ClauseData findClause(Object obj) {
        ArrayList arrayList = this.clauses;
        Object obj2 = null;
        if (arrayList == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ClauseData) next).clauseObject == obj) {
                obj2 = next;
                break;
            }
        }
        ClauseData clauseData = (ClauseData) obj2;
        if (clauseData != null) {
            return clauseData;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void invoke(Throwable th) {
        SelectImplementation selectImplementation;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = state$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == SelectKt.STATE_COMPLETED) {
                return;
            }
            while (true) {
                Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
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

    public final void register(ClauseData clauseData, boolean z) {
        Object obj = clauseData.clauseObject;
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
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
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Cannot use select clauses on the same object: ", obj);
                        return;
                    }
                }
            }
        }
        clauseData.regFunc.invoke(obj, this, clauseData.param);
        if (this.internalResult != SelectKt.NO_RESULT) {
            ArtificialStackFramesUnsafe.unsafe.putObjectVolatile(this, j, clauseData);
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
            Unsafe unsafe3 = ArtificialStackFramesUnsafe.unsafe;
            long j = state$volatile$FU$offset;
            Object objectVolatile = unsafe3.getObjectVolatile(this, j);
            if (objectVolatile instanceof CancellableContinuation) {
                ClauseData findClause = this.findClause(obj);
                if (findClause != null) {
                    Function3 function3 = findClause.onCancellationConstructor;
                    Function3 function32 = function3 != null ? (Function3) function3.invoke(this, findClause.param, obj2) : null;
                    while (true) {
                        Unsafe unsafe4 = ArtificialStackFramesUnsafe.unsafe;
                        selectImplementation = this;
                        if (unsafe4.compareAndSwapObject(selectImplementation, state$volatile$FU$offset, objectVolatile, findClause)) {
                            CancellableContinuation cancellableContinuation = (CancellableContinuation) objectVolatile;
                            selectImplementation.internalResult = obj2;
                            Symbol tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, function32);
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
                    List listOf = Room.listOf(obj);
                    do {
                        unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                        if (unsafe2.compareAndSwapObject(selectImplementation, state$volatile$FU$offset, objectVolatile, listOf)) {
                            return 1;
                        }
                    } while (unsafe2.getObjectVolatile(selectImplementation, j) == objectVolatile);
                } else {
                    if (!(objectVolatile instanceof List)) {
                        Gson$$ExternalSyntheticBUOutline0.m$8("Unexpected state: ", objectVolatile);
                        return 0;
                    }
                    ArrayList plus = CollectionsKt.plus((Collection) objectVolatile, obj);
                    do {
                        unsafe = ArtificialStackFramesUnsafe.unsafe;
                        if (unsafe.compareAndSwapObject(selectImplementation, state$volatile$FU$offset, objectVolatile, plus)) {
                            return 1;
                        }
                    } while (unsafe.getObjectVolatile(selectImplementation, j) == objectVolatile);
                }
            }
            this = selectImplementation;
        }
    }
}
