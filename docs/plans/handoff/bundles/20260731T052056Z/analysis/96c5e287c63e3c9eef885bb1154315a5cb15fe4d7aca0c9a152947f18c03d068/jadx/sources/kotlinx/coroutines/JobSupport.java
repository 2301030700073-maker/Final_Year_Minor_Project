package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.work.OperationKt;
import coil3.network.HttpException;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ListClosed;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class JobSupport implements Job {
    public static final /* synthetic */ long _parentHandle$volatile$FU$offset;
    public static final /* synthetic */ long _state$volatile$FU$offset;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AwaitContinuation extends CancellableContinuationImpl {
        public final JobSupport job;

        public AwaitContinuation(Continuation continuation, JobSupport jobSupport) {
            super(1, continuation);
            this.job = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final Throwable getContinuationCancellationCause(JobSupport jobSupport) {
            Throwable rootCause;
            Object state$kotlinx_coroutines_core = this.job.getState$kotlinx_coroutines_core();
            return (!(state$kotlinx_coroutines_core instanceof Finishing) || (rootCause = ((Finishing) state$kotlinx_coroutines_core).getRootCause()) == null) ? state$kotlinx_coroutines_core instanceof CompletedExceptionally ? ((CompletedExceptionally) state$kotlinx_coroutines_core).cause : jobSupport.getCancellationException() : rootCause;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public final String nameString() {
            return "AwaitContinuation";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ChildCompletion extends JobNode {
        public final ChildHandleNode child;
        public final JobSupport parent;
        public final Object proposedUpdate;
        public final Finishing state;

        public ChildCompletion(JobSupport jobSupport, Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
            this.parent = jobSupport;
            this.state = finishing;
            this.child = childHandleNode;
            this.proposedUpdate = obj;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean getOnCancelling() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void invoke(Throwable th) {
            ChildHandleNode childHandleNode = this.child;
            ChildHandleNode nextChild = JobSupport.nextChild(childHandleNode);
            JobSupport jobSupport = this.parent;
            Finishing finishing = this.state;
            Object obj = this.proposedUpdate;
            if (nextChild == null || !jobSupport.tryWaitForChild(finishing, nextChild, obj)) {
                finishing.list.addLast(new ListClosed(2), 2);
                ChildHandleNode nextChild2 = JobSupport.nextChild(childHandleNode);
                if (nextChild2 == null || !jobSupport.tryWaitForChild(finishing, nextChild2, obj)) {
                    jobSupport.afterCompletion(jobSupport.finalizeFinishingState(finishing, obj));
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Finishing implements Incomplete {
        public static final /* synthetic */ long _exceptionsHolder$volatile$FU$offset;
        public static final /* synthetic */ long _isCompleting$volatile$FU$offset;
        public static final /* synthetic */ long _rootCause$volatile$FU$offset;
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile = 0;
        private volatile /* synthetic */ Object _rootCause$volatile;
        public final NodeList list;

        static {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            _isCompleting$volatile$FU$offset = unsafe.objectFieldOffset(Finishing.class.getDeclaredField("_isCompleting$volatile"));
            _rootCause$volatile$FU$offset = unsafe.objectFieldOffset(Finishing.class.getDeclaredField("_rootCause$volatile"));
            _exceptionsHolder$volatile$FU$offset = unsafe.objectFieldOffset(Finishing.class.getDeclaredField("_exceptionsHolder$volatile"));
        }

        public Finishing(NodeList nodeList, Throwable th) {
            this.list = nodeList;
            this._rootCause$volatile = th;
        }

        public final void addExceptionLocked(Throwable th) {
            Throwable rootCause = getRootCause();
            if (rootCause == null) {
                ArtificialStackFramesUnsafe.unsafe.putObjectVolatile(this, _rootCause$volatile$FU$offset, th);
                return;
            }
            if (th == rootCause) {
                return;
            }
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _exceptionsHolder$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                unsafe.putObjectVolatile(this, j, th);
                return;
            }
            if (!(objectVolatile instanceof Throwable)) {
                if (objectVolatile instanceof ArrayList) {
                    ((ArrayList) objectVolatile).add(th);
                    return;
                } else {
                    Gson$$ExternalSyntheticBUOutline0.m$8("State is ", objectVolatile);
                    return;
                }
            }
            if (th == objectVolatile) {
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(objectVolatile);
            arrayList.add(th);
            unsafe.putObjectVolatile(this, j, arrayList);
        }

        @Override // kotlinx.coroutines.Incomplete
        public final NodeList getList() {
            return this.list;
        }

        public final Throwable getRootCause() {
            return (Throwable) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _rootCause$volatile$FU$offset);
        }

        @Override // kotlinx.coroutines.Incomplete
        public final boolean isActive() {
            return getRootCause() == null;
        }

        public final boolean isCancelling() {
            return getRootCause() != null;
        }

        public final boolean isCompleting() {
            return ArtificialStackFramesUnsafe.unsafe.getIntVolatile(this, _isCompleting$volatile$FU$offset) == 1;
        }

        public final ArrayList sealLocked(Throwable th) {
            ArrayList arrayList;
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _exceptionsHolder$volatile$FU$offset;
            Object objectVolatile = unsafe.getObjectVolatile(this, j);
            if (objectVolatile == null) {
                arrayList = new ArrayList(4);
            } else if (objectVolatile instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(objectVolatile);
                arrayList = arrayList2;
            } else {
                if (!(objectVolatile instanceof ArrayList)) {
                    Gson$$ExternalSyntheticBUOutline0.m$8("State is ", objectVolatile);
                    return null;
                }
                arrayList = (ArrayList) objectVolatile;
            }
            Throwable rootCause = getRootCause();
            if (rootCause != null) {
                arrayList.add(0, rootCause);
            }
            if (th != null && !th.equals(rootCause)) {
                arrayList.add(th);
            }
            unsafe.putObjectVolatile(this, j, AwaitKt.SEALED);
            return arrayList;
        }

        public final String toString() {
            return "Finishing[cancelling=" + isCancelling() + ", completing=" + isCompleting() + ", rootCause=" + getRootCause() + ", exceptions=" + ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _exceptionsHolder$volatile$FU$offset) + ", list=" + this.list + ']';
        }
    }

    static {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        _state$volatile$FU$offset = unsafe.objectFieldOffset(JobSupport.class.getDeclaredField("_state$volatile"));
        _parentHandle$volatile$FU$offset = unsafe.objectFieldOffset(JobSupport.class.getDeclaredField("_parentHandle$volatile"));
    }

    public JobSupport(boolean z) {
        this._state$volatile = z ? AwaitKt.EMPTY_ACTIVE : AwaitKt.EMPTY_NEW;
    }

    public static ChildHandleNode nextChild(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getPrevNode();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode();
            if (!lockFreeLinkedListNode.isRemoved()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    public static String stateString(Object obj) {
        if (!(obj instanceof Finishing)) {
            return obj instanceof Incomplete ? ((Incomplete) obj).isActive() ? "Active" : "New" : obj instanceof CompletedExceptionally ? "Cancelled" : "Completed";
        }
        Finishing finishing = (Finishing) obj;
        return finishing.isCancelling() ? "Cancelling" : finishing.isCompleting() ? "Completing" : "Active";
    }

    public void afterResume(Object obj) {
        afterCompletion(obj);
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle attachChild(JobSupport jobSupport) {
        JobSupport jobSupport2;
        ChildHandleNode childHandleNode = new ChildHandleNode(jobSupport);
        childHandleNode.job = this;
        loop0: while (true) {
            Object state$kotlinx_coroutines_core = this.getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof Empty) {
                Empty empty = (Empty) state$kotlinx_coroutines_core;
                if (empty.isActive) {
                    while (true) {
                        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
                        long j = _state$volatile$FU$offset;
                        jobSupport2 = this;
                        if (unsafe.compareAndSwapObject(jobSupport2, j, state$kotlinx_coroutines_core, childHandleNode)) {
                            break loop0;
                        }
                        if (unsafe.getObjectVolatile(jobSupport2, j) != state$kotlinx_coroutines_core) {
                            break;
                        }
                        this = jobSupport2;
                    }
                } else {
                    jobSupport2 = this;
                    jobSupport2.promoteEmptyToNodeList(empty);
                }
                this = jobSupport2;
            } else {
                jobSupport2 = this;
                boolean z = state$kotlinx_coroutines_core instanceof Incomplete;
                NonDisposableHandle nonDisposableHandle = NonDisposableHandle.INSTANCE;
                if (!z) {
                    Object state$kotlinx_coroutines_core2 = jobSupport2.getState$kotlinx_coroutines_core();
                    CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core2 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core2 : null;
                    childHandleNode.invoke(completedExceptionally != null ? completedExceptionally.cause : null);
                    return nonDisposableHandle;
                }
                NodeList list = ((Incomplete) state$kotlinx_coroutines_core).getList();
                if (list == null) {
                    jobSupport2.promoteSingleToNodeList((JobNode) state$kotlinx_coroutines_core);
                    this = jobSupport2;
                } else if (!list.addLast(childHandleNode, 7)) {
                    boolean addLast = list.addLast(childHandleNode, 3);
                    Object state$kotlinx_coroutines_core3 = jobSupport2.getState$kotlinx_coroutines_core();
                    if (state$kotlinx_coroutines_core3 instanceof Finishing) {
                        r0 = ((Finishing) state$kotlinx_coroutines_core3).getRootCause();
                    } else {
                        CompletedExceptionally completedExceptionally2 = state$kotlinx_coroutines_core3 instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core3 : null;
                        if (completedExceptionally2 != null) {
                            r0 = completedExceptionally2.cause;
                        }
                    }
                    childHandleNode.invoke(r0);
                    if (addLast) {
                        break loop0;
                    }
                    return nonDisposableHandle;
                }
            }
        }
        return childHandleNode;
    }

    public final Object awaitInternal(Continuation continuation) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
                }
                return AwaitKt.unboxState(state$kotlinx_coroutines_core);
            }
        } while (startInternal(state$kotlinx_coroutines_core) < 0);
        AwaitContinuation awaitContinuation = new AwaitContinuation(ExceptionsKt.intercepted(continuation), this);
        awaitContinuation.initCancellability();
        awaitContinuation.invokeOnCancellationImpl(new DisposeOnCancel(0, AwaitKt.invokeOnCompletion(this, true, new ResumeAwaitOnCompletion(awaitContinuation))));
        return awaitContinuation.getResult();
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0036, code lost:
    
        if (r0 == kotlinx.coroutines.AwaitKt.COMPLETING_WAITING_CHILDREN) goto L76;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancelImpl$kotlinx_coroutines_core(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.cancelImpl$kotlinx_coroutines_core(java.lang.Object):boolean");
    }

    public void cancelInternal(CancellationException cancellationException) {
        cancelImpl$kotlinx_coroutines_core(cancellationException);
    }

    public final boolean cancelParent(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        ChildHandle childHandle = (ChildHandle) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _parentHandle$volatile$FU$offset);
        return (childHandle == null || childHandle == NonDisposableHandle.INSTANCE) ? z : childHandle.childCancelled(th) || z;
    }

    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(th) && getHandlesException$kotlinx_coroutines_core();
    }

    public final void completeStateFinalization(Incomplete incomplete, Object obj) {
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        long j = _parentHandle$volatile$FU$offset;
        ChildHandle childHandle = (ChildHandle) unsafe.getObjectVolatile(this, j);
        if (childHandle != null) {
            childHandle.dispose();
            unsafe.putObjectVolatile(this, j, NonDisposableHandle.INSTANCE);
        }
        HttpException httpException = null;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).invoke(th);
                return;
            } catch (Throwable th2) {
                handleOnCompletionException$kotlinx_coroutines_core(new HttpException("Exception in completion handler " + incomplete + " for " + this, th2));
                return;
            }
        }
        NodeList list = incomplete.getList();
        if (list != null) {
            list.addLast(new ListClosed(1), 1);
            Object next = list.getNext();
            next.getClass();
            for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !lockFreeLinkedListNode.equals(list); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
                if (lockFreeLinkedListNode instanceof JobNode) {
                    try {
                        ((JobNode) lockFreeLinkedListNode).invoke(th);
                    } catch (Throwable th3) {
                        if (httpException != null) {
                            ExceptionsKt.addSuppressed(httpException, th3);
                        } else {
                            httpException = new HttpException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th3);
                        }
                    }
                }
            }
            if (httpException != null) {
                handleOnCompletionException$kotlinx_coroutines_core(httpException);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Throwable] */
    public final Throwable createCauseException(Object obj) {
        CancellationException cancellationException;
        if (obj instanceof Throwable) {
            return (Throwable) obj;
        }
        JobSupport jobSupport = (JobSupport) obj;
        Object state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Finishing) {
            cancellationException = ((Finishing) state$kotlinx_coroutines_core).getRootCause();
        } else if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            cancellationException = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        } else {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Cannot be cancelling child in this state: ", state$kotlinx_coroutines_core);
                return null;
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        return cancellationException2 == null ? new JobCancellationException("Parent job is ".concat(stateString(state$kotlinx_coroutines_core)), cancellationException, jobSupport) : cancellationException2;
    }

    public final Object finalizeFinishingState(Finishing finishing, Object obj) {
        Finishing finishing2;
        Throwable th;
        Throwable finalRootCause;
        JobSupport jobSupport;
        Finishing finishing3;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th2 = completedExceptionally != null ? completedExceptionally.cause : null;
        synchronized (finishing) {
            try {
                finishing.isCancelling();
                ArrayList<Throwable> sealLocked = finishing.sealLocked(th2);
                finalRootCause = getFinalRootCause(finishing, sealLocked);
                if (finalRootCause != null) {
                    try {
                        if (sealLocked.size() > 1) {
                            Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(sealLocked.size()));
                            for (Throwable th3 : sealLocked) {
                                if (th3 != finalRootCause && th3 != finalRootCause && !(th3 instanceof CancellationException) && newSetFromMap.add(th3)) {
                                    ExceptionsKt.addSuppressed(finalRootCause, th3);
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        finishing2 = finishing;
                        throw th;
                    }
                }
            } catch (Throwable th5) {
                finishing2 = finishing;
                th = th5;
            }
        }
        if (finalRootCause != null && finalRootCause != th2) {
            obj = new CompletedExceptionally(finalRootCause, false);
        }
        if (finalRootCause != null && (cancelParent(finalRootCause) || handleJobException(finalRootCause))) {
            obj.getClass();
            ArtificialStackFramesUnsafe.unsafe.compareAndSwapInt((CompletedExceptionally) obj, CompletedExceptionally._handled$volatile$FU$offset, 0, 1);
        }
        onCompletionInternal(obj);
        Object incompleteStateBox = obj instanceof Incomplete ? new IncompleteStateBox((Incomplete) obj) : obj;
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            jobSupport = this;
            finishing3 = finishing;
            if (!unsafe.compareAndSwapObject(jobSupport, j, finishing3, incompleteStateBox) && unsafe.getObjectVolatile(jobSupport, j) == finishing3) {
                this = jobSupport;
                finishing = finishing3;
            }
        }
        jobSupport.completeStateFinalization(finishing3, obj);
        return obj;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final Object fold(Object obj, Function2 function2) {
        return function2.invoke(obj, this);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext.Element get(CoroutineContext.Key key) {
        return OperationKt.get(this, key);
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException getCancellationException() {
        CancellationException cancellationException;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Finishing) {
            Throwable rootCause = ((Finishing) state$kotlinx_coroutines_core).getRootCause();
            if (rootCause == null) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Job is still new or active: ", this);
                return null;
            }
            String concat = getClass().getSimpleName().concat(" is cancelling");
            cancellationException = rootCause instanceof CancellationException ? (CancellationException) rootCause : null;
            return cancellationException == null ? new JobCancellationException(concat, rootCause, this) : cancellationException;
        }
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            Gson$$ExternalSyntheticBUOutline0.m$8("Job is still new or active: ", this);
            return null;
        }
        if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return new JobCancellationException(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        Throwable th = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        return cancellationException == null ? new JobCancellationException(cancellationExceptionMessage(), th, this) : cancellationException;
    }

    public Object getCompleted() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    public final Object getCompletedInternal$kotlinx_coroutines_core() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("This job has not completed yet");
            return null;
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        return AwaitKt.unboxState(state$kotlinx_coroutines_core);
    }

    public final Throwable getFinalRootCause(Finishing finishing, ArrayList arrayList) {
        Object obj;
        Object obj2 = null;
        if (arrayList.isEmpty()) {
            if (finishing.isCancelling()) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Object next = it2.next();
                Throwable th3 = (Throwable) next;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = next;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    public boolean getHandlesException$kotlinx_coroutines_core() {
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext.Element
    public final CoroutineContext.Key getKey() {
        return Job.Key.$$INSTANCE;
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return this instanceof CompletableDeferredImpl;
    }

    public final NodeList getOrPromoteCancellingList(Incomplete incomplete) {
        NodeList list = incomplete.getList();
        if (list != null) {
            return list;
        }
        if (incomplete instanceof Empty) {
            return new NodeList();
        }
        if (incomplete instanceof JobNode) {
            promoteSingleToNodeList((JobNode) incomplete);
            return null;
        }
        Gson$$ExternalSyntheticBUOutline0.m$8("State should have list: ", incomplete);
        return null;
    }

    public final Object getState$kotlinx_coroutines_core() {
        return ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _state$volatile$FU$offset);
    }

    public boolean handleJobException(Throwable th) {
        return false;
    }

    public final void initParentJob(Job job) {
        long j = _parentHandle$volatile$FU$offset;
        NonDisposableHandle nonDisposableHandle = NonDisposableHandle.INSTANCE;
        if (job == null) {
            ArtificialStackFramesUnsafe.unsafe.putObjectVolatile(this, j, nonDisposableHandle);
            return;
        }
        job.start();
        ChildHandle attachChild = job.attachChild(this);
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        unsafe.putObjectVolatile(this, j, attachChild);
        if (getState$kotlinx_coroutines_core() instanceof Incomplete) {
            return;
        }
        attachChild.dispose();
        unsafe.putObjectVolatile(this, j, nonDisposableHandle);
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(boolean z, boolean z2, InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(z2, z ? new InvokeOnCancelling(invalidationTracker$implementation$1) : new InvokeOnCompletion(invalidationTracker$implementation$1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x006f, code lost:
    
        return r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.DisposableHandle invokeOnCompletionInternal$kotlinx_coroutines_core(boolean r7, kotlinx.coroutines.JobNode r8) {
        /*
            r6 = this;
            r8.job = r6
        L2:
            java.lang.Object r4 = r6.getState$kotlinx_coroutines_core()
            boolean r0 = r4 instanceof kotlinx.coroutines.Empty
            if (r0 == 0) goto L2e
            r0 = r4
            kotlinx.coroutines.Empty r0 = (kotlinx.coroutines.Empty) r0
            boolean r1 = r0.isActive
            if (r1 == 0) goto L28
        L11:
            sun.misc.Unsafe r0 = _COROUTINE.ArtificialStackFramesUnsafe.unsafe
            long r2 = kotlinx.coroutines.JobSupport._state$volatile$FU$offset
            r1 = r6
            r5 = r8
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L1e
            goto L6f
        L1e:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r2)
            if (r6 == r4) goto L25
            goto L70
        L25:
            r6 = r1
            r8 = r5
            goto L11
        L28:
            r1 = r6
            r5 = r8
            r1.promoteEmptyToNodeList(r0)
            goto L70
        L2e:
            r1 = r6
            r5 = r8
            boolean r6 = r4 instanceof kotlinx.coroutines.Incomplete
            kotlinx.coroutines.NonDisposableHandle r8 = kotlinx.coroutines.NonDisposableHandle.INSTANCE
            r0 = 0
            if (r6 == 0) goto L73
            r6 = r4
            kotlinx.coroutines.Incomplete r6 = (kotlinx.coroutines.Incomplete) r6
            kotlinx.coroutines.NodeList r2 = r6.getList()
            if (r2 != 0) goto L46
            kotlinx.coroutines.JobNode r4 = (kotlinx.coroutines.JobNode) r4
            r1.promoteSingleToNodeList(r4)
            goto L70
        L46:
            boolean r3 = r5.getOnCancelling()
            if (r3 == 0) goto L68
            boolean r3 = r6 instanceof kotlinx.coroutines.JobSupport.Finishing
            if (r3 == 0) goto L53
            kotlinx.coroutines.JobSupport$Finishing r6 = (kotlinx.coroutines.JobSupport.Finishing) r6
            goto L54
        L53:
            r6 = r0
        L54:
            if (r6 == 0) goto L5a
            java.lang.Throwable r0 = r6.getRootCause()
        L5a:
            if (r0 != 0) goto L62
            r6 = 5
            boolean r6 = r2.addLast(r5, r6)
            goto L6d
        L62:
            if (r7 == 0) goto L88
            r5.invoke(r0)
            return r8
        L68:
            r6 = 1
            boolean r6 = r2.addLast(r5, r6)
        L6d:
            if (r6 == 0) goto L70
        L6f:
            return r5
        L70:
            r6 = r1
            r8 = r5
            goto L2
        L73:
            if (r7 == 0) goto L88
            java.lang.Object r6 = r1.getState$kotlinx_coroutines_core()
            boolean r7 = r6 instanceof kotlinx.coroutines.CompletedExceptionally
            if (r7 == 0) goto L80
            kotlinx.coroutines.CompletedExceptionally r6 = (kotlinx.coroutines.CompletedExceptionally) r6
            goto L81
        L80:
            r6 = r0
        L81:
            if (r6 == 0) goto L85
            java.lang.Throwable r0 = r6.cause
        L85:
            r5.invoke(r0)
        L88:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.invokeOnCompletionInternal$kotlinx_coroutines_core(boolean, kotlinx.coroutines.JobNode):kotlinx.coroutines.DisposableHandle");
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof Incomplete) && ((Incomplete) state$kotlinx_coroutines_core).isActive();
    }

    @Override // kotlinx.coroutines.Job
    public final boolean isCancelled() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            return true;
        }
        return (state$kotlinx_coroutines_core instanceof Finishing) && ((Finishing) state$kotlinx_coroutines_core).isCancelling();
    }

    public boolean isScopedCoroutine() {
        return this instanceof BlockingCoroutine;
    }

    @Override // kotlinx.coroutines.Job
    public final Object join(ContinuationImpl continuationImpl) {
        Object state$kotlinx_coroutines_core;
        Unit unit;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            boolean z = state$kotlinx_coroutines_core instanceof Incomplete;
            unit = Unit.INSTANCE;
            if (!z) {
                AwaitKt.ensureActive(continuationImpl.getContext());
                return unit;
            }
        } while (startInternal(state$kotlinx_coroutines_core) < 0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, ExceptionsKt.intercepted(continuationImpl));
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellationImpl(new DisposeOnCancel(0, AwaitKt.invokeOnCompletion(this, true, new ResumeOnCompletion(cancellableContinuationImpl))));
        Object result = cancellableContinuationImpl.getResult();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (result != coroutineSingletons) {
            result = unit;
        }
        return result == coroutineSingletons ? result : unit;
    }

    public final boolean makeCompleting$kotlinx_coroutines_core(Object obj) {
        Object tryMakeCompleting;
        do {
            tryMakeCompleting = tryMakeCompleting(getState$kotlinx_coroutines_core(), obj);
            if (tryMakeCompleting == AwaitKt.COMPLETING_ALREADY) {
                return false;
            }
            if (tryMakeCompleting == AwaitKt.COMPLETING_WAITING_CHILDREN) {
                return true;
            }
        } while (tryMakeCompleting == AwaitKt.COMPLETING_RETRY);
        afterCompletion(tryMakeCompleting);
        return true;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object obj) {
        Object tryMakeCompleting;
        do {
            tryMakeCompleting = tryMakeCompleting(getState$kotlinx_coroutines_core(), obj);
            if (tryMakeCompleting == AwaitKt.COMPLETING_ALREADY) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
                throw new IllegalStateException(str, completedExceptionally != null ? completedExceptionally.cause : null);
            }
        } while (tryMakeCompleting == AwaitKt.COMPLETING_RETRY);
        return tryMakeCompleting;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return OperationKt.minusKey(this, key);
    }

    public String nameString$kotlinx_coroutines_core() {
        return getClass().getSimpleName();
    }

    public final void notifyCancelling(NodeList nodeList, Throwable th) {
        nodeList.addLast(new ListClosed(4), 4);
        Object next = nodeList.getNext();
        next.getClass();
        HttpException httpException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !lockFreeLinkedListNode.equals(nodeList); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if ((lockFreeLinkedListNode instanceof JobNode) && ((JobNode) lockFreeLinkedListNode).getOnCancelling()) {
                try {
                    ((JobNode) lockFreeLinkedListNode).invoke(th);
                } catch (Throwable th2) {
                    if (httpException != null) {
                        ExceptionsKt.addSuppressed(httpException, th2);
                    } else {
                        httpException = new HttpException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th2);
                    }
                }
            }
        }
        if (httpException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(httpException);
        }
        cancelParent(th);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return OperationKt.plus(this, coroutineContext);
    }

    public final void promoteEmptyToNodeList(Empty empty) {
        NodeList nodeList = new NodeList();
        Incomplete inactiveNodeList = empty.isActive ? nodeList : new InactiveNodeList(nodeList);
        while (true) {
            Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
            long j = _state$volatile$FU$offset;
            JobSupport jobSupport = this;
            Empty empty2 = empty;
            if (unsafe.compareAndSwapObject(jobSupport, j, empty2, inactiveNodeList) || unsafe.getObjectVolatile(jobSupport, j) != empty2) {
                return;
            }
            this = jobSupport;
            empty = empty2;
        }
    }

    public final void promoteSingleToNodeList(JobNode jobNode) {
        JobNode jobNode2;
        JobSupport jobSupport;
        NodeList nodeList = new NodeList();
        Unsafe unsafe = ArtificialStackFramesUnsafe.unsafe;
        unsafe.putObjectVolatile(nodeList, LockFreeLinkedListNode._prev$volatile$FU$offset, jobNode);
        long j = LockFreeLinkedListNode._next$volatile$FU$offset;
        unsafe.putObjectVolatile(nodeList, j, jobNode);
        loop0: while (true) {
            if (jobNode.getNext() != jobNode) {
                jobNode2 = jobNode;
                break;
            }
            while (true) {
                Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                jobNode2 = jobNode;
                if (unsafe2.compareAndSwapObject(jobNode2, LockFreeLinkedListNode._next$volatile$FU$offset, jobNode, nodeList)) {
                    nodeList.finishAdd(jobNode2);
                    break loop0;
                }
                jobSupport = this;
                jobNode = jobNode2;
                if (unsafe2.getObjectVolatile(jobNode2, j) != jobNode2) {
                    break;
                } else {
                    this = jobSupport;
                }
            }
            this = jobSupport;
        }
        LockFreeLinkedListNode nextNode = jobNode2.getNextNode();
        while (true) {
            Unsafe unsafe3 = ArtificialStackFramesUnsafe.unsafe;
            long j2 = _state$volatile$FU$offset;
            JobSupport jobSupport2 = this;
            if (unsafe3.compareAndSwapObject(jobSupport2, j2, jobNode2, nextNode) || unsafe3.getObjectVolatile(jobSupport2, j2) != jobNode2) {
                return;
            } else {
                this = jobSupport2;
            }
        }
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int startInternal;
        do {
            startInternal = startInternal(getState$kotlinx_coroutines_core());
            if (startInternal == 0) {
                return false;
            }
        } while (startInternal != 1);
        return true;
    }

    public final int startInternal(Object obj) {
        Unsafe unsafe;
        Unsafe unsafe2;
        boolean z = obj instanceof Empty;
        long j = _state$volatile$FU$offset;
        if (z) {
            if (((Empty) obj).isActive) {
                return 0;
            }
            Empty empty = AwaitKt.EMPTY_ACTIVE;
            do {
                unsafe2 = ArtificialStackFramesUnsafe.unsafe;
                if (unsafe2.compareAndSwapObject(this, _state$volatile$FU$offset, obj, empty)) {
                    onStart();
                    return 1;
                }
            } while (unsafe2.getObjectVolatile(this, j) == obj);
            return -1;
        }
        if (!(obj instanceof InactiveNodeList)) {
            return 0;
        }
        NodeList nodeList = ((InactiveNodeList) obj).list;
        do {
            unsafe = ArtificialStackFramesUnsafe.unsafe;
            if (unsafe.compareAndSwapObject(this, _state$volatile$FU$offset, obj, nodeList)) {
                onStart();
                return 1;
            }
        } while (unsafe.getObjectVolatile(this, j) == obj);
        return -1;
    }

    public final String toString() {
        return (nameString$kotlinx_coroutines_core() + '{' + stateString(getState$kotlinx_coroutines_core()) + '}') + '@' + AwaitKt.getHexAddress(this);
    }

    public final Object tryMakeCompleting(Object obj, Object obj2) {
        Unsafe unsafe;
        long j;
        if (!(obj instanceof Incomplete)) {
            return AwaitKt.COMPLETING_ALREADY;
        }
        if ((!(obj instanceof Empty) && !(obj instanceof JobNode)) || (obj instanceof ChildHandleNode) || (obj2 instanceof CompletedExceptionally)) {
            JobSupport jobSupport = this;
            Incomplete incomplete = (Incomplete) obj;
            NodeList orPromoteCancellingList = jobSupport.getOrPromoteCancellingList(incomplete);
            if (orPromoteCancellingList == null) {
                return AwaitKt.COMPLETING_RETRY;
            }
            Finishing finishing = incomplete instanceof Finishing ? (Finishing) incomplete : null;
            if (finishing == null) {
                finishing = new Finishing(orPromoteCancellingList, null);
            }
            Finishing finishing2 = finishing;
            synchronized (finishing2) {
                if (finishing2.isCompleting()) {
                    return AwaitKt.COMPLETING_ALREADY;
                }
                ArtificialStackFramesUnsafe.unsafe.putIntVolatile(finishing2, Finishing._isCompleting$volatile$FU$offset, 1);
                if (finishing2 != incomplete) {
                    do {
                        unsafe = ArtificialStackFramesUnsafe.unsafe;
                        j = _state$volatile$FU$offset;
                        JobSupport jobSupport2 = jobSupport;
                        jobSupport = jobSupport2;
                        if (unsafe.compareAndSwapObject(jobSupport2, j, incomplete, finishing2)) {
                        }
                    } while (unsafe.getObjectVolatile(jobSupport, j) == incomplete);
                    return AwaitKt.COMPLETING_RETRY;
                }
                boolean isCancelling = finishing2.isCancelling();
                CompletedExceptionally completedExceptionally = obj2 instanceof CompletedExceptionally ? (CompletedExceptionally) obj2 : null;
                if (completedExceptionally != null) {
                    finishing2.addExceptionLocked(completedExceptionally.cause);
                }
                Throwable rootCause = isCancelling ? null : finishing2.getRootCause();
                if (rootCause != null) {
                    jobSupport.notifyCancelling(orPromoteCancellingList, rootCause);
                }
                ChildHandleNode nextChild = nextChild(orPromoteCancellingList);
                if (nextChild != null && jobSupport.tryWaitForChild(finishing2, nextChild, obj2)) {
                    return AwaitKt.COMPLETING_WAITING_CHILDREN;
                }
                orPromoteCancellingList.addLast(new ListClosed(2), 2);
                ChildHandleNode nextChild2 = nextChild(orPromoteCancellingList);
                return (nextChild2 == null || !jobSupport.tryWaitForChild(finishing2, nextChild2, obj2)) ? jobSupport.finalizeFinishingState(finishing2, obj2) : AwaitKt.COMPLETING_WAITING_CHILDREN;
            }
        }
        Incomplete incomplete2 = (Incomplete) obj;
        Object incompleteStateBox = obj2 instanceof Incomplete ? new IncompleteStateBox((Incomplete) obj2) : obj2;
        while (true) {
            Unsafe unsafe2 = ArtificialStackFramesUnsafe.unsafe;
            long j2 = _state$volatile$FU$offset;
            JobSupport jobSupport3 = this;
            if (unsafe2.compareAndSwapObject(jobSupport3, j2, incomplete2, incompleteStateBox)) {
                jobSupport3.onCompletionInternal(obj2);
                jobSupport3.completeStateFinalization(incomplete2, obj2);
                return obj2;
            }
            if (unsafe2.getObjectVolatile(jobSupport3, j2) != incomplete2) {
                return AwaitKt.COMPLETING_RETRY;
            }
            this = jobSupport3;
        }
    }

    public final boolean tryWaitForChild(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        while (AwaitKt.invokeOnCompletion(childHandleNode.childJob, false, new ChildCompletion(this, finishing, childHandleNode, obj)) == NonDisposableHandle.INSTANCE) {
            childHandleNode = nextChild(childHandleNode);
            if (childHandleNode == null) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(Function1 function1) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(true, new InvokeOnCompletion(function1));
    }

    public void onStart() {
    }

    public void afterCompletion(Object obj) {
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(HttpException httpException) {
        throw httpException;
    }

    public void onCompletionInternal(Object obj) {
    }
}
