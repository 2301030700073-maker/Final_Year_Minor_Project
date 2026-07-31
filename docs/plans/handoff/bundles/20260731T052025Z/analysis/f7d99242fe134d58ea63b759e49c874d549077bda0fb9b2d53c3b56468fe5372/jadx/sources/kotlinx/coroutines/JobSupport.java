package kotlinx.coroutines;

import androidx.room.InvalidationTracker$implementation$1;
import com.google.zxing.BinaryBitmap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlin.uuid.UuidKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ListClosed;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.selects.SelectImplementation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.SerializationException;
import sun.misc.Unsafe;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class JobSupport implements Job {
    public static final /* synthetic */ AtomicReferenceFieldUpdater _parentHandle$volatile$FU;
    public static final /* synthetic */ long _parentHandle$volatile$FU$offset;
    public static final /* synthetic */ AtomicReferenceFieldUpdater _state$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state$volatile");
    public static final /* synthetic */ long _state$volatile$FU$offset;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Finishing implements Incomplete {
        public static final /* synthetic */ AtomicReferenceFieldUpdater _exceptionsHolder$volatile$FU;
        public static final /* synthetic */ long _exceptionsHolder$volatile$FU$offset;
        public static final /* synthetic */ AtomicIntegerFieldUpdater _isCompleting$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Finishing.class, "_isCompleting$volatile");
        public static final /* synthetic */ AtomicReferenceFieldUpdater _rootCause$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_rootCause$volatile");
        public static final /* synthetic */ long _rootCause$volatile$FU$offset;
        private volatile /* synthetic */ Object _exceptionsHolder$volatile;
        private volatile /* synthetic */ int _isCompleting$volatile = 0;
        private volatile /* synthetic */ Object _rootCause$volatile;
        public final NodeList list;

        static {
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            _rootCause$volatile$FU$offset = unsafe.objectFieldOffset(Finishing.class.getDeclaredField("_rootCause$volatile"));
            _exceptionsHolder$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(Finishing.class, Object.class, "_exceptionsHolder$volatile");
            _exceptionsHolder$volatile$FU$offset = unsafe.objectFieldOffset(Finishing.class.getDeclaredField("_exceptionsHolder$volatile"));
        }

        public Finishing(NodeList nodeList, Throwable th) {
            this.list = nodeList;
            this._rootCause$volatile = th;
        }

        public final void addExceptionLocked(Throwable th) {
            Throwable rootCause = getRootCause();
            if (rootCause == null) {
                setRootCause(th);
                return;
            }
            if (th == rootCause) {
                return;
            }
            Object exceptionsHolder = getExceptionsHolder();
            if (exceptionsHolder == null) {
                setExceptionsHolder(th);
                return;
            }
            if (!(exceptionsHolder instanceof Throwable)) {
                if (exceptionsHolder instanceof ArrayList) {
                    ((ArrayList) exceptionsHolder).add(th);
                    return;
                } else {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(exceptionsHolder, "State is ");
                    return;
                }
            }
            if (th == exceptionsHolder) {
                return;
            }
            ArrayList arrayList = new ArrayList(4);
            arrayList.add(exceptionsHolder);
            arrayList.add(th);
            setExceptionsHolder(arrayList);
        }

        public final Object getExceptionsHolder() {
            _exceptionsHolder$volatile$FU.getClass();
            return AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _exceptionsHolder$volatile$FU$offset);
        }

        @Override // kotlinx.coroutines.Incomplete
        public final NodeList getList() {
            return this.list;
        }

        public final Throwable getRootCause() {
            _rootCause$volatile$FU.getClass();
            return (Throwable) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _rootCause$volatile$FU$offset);
        }

        @Override // kotlinx.coroutines.Incomplete
        public final boolean isActive() {
            return getRootCause() == null;
        }

        public final boolean isCancelling() {
            return getRootCause() != null;
        }

        public final ArrayList sealLocked(Throwable th) {
            ArrayList arrayList;
            Object exceptionsHolder = getExceptionsHolder();
            if (exceptionsHolder == null) {
                arrayList = new ArrayList(4);
            } else if (exceptionsHolder instanceof Throwable) {
                ArrayList arrayList2 = new ArrayList(4);
                arrayList2.add(exceptionsHolder);
                arrayList = arrayList2;
            } else {
                if (!(exceptionsHolder instanceof ArrayList)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(exceptionsHolder, "State is ");
                    return null;
                }
                arrayList = (ArrayList) exceptionsHolder;
            }
            Throwable rootCause = getRootCause();
            if (rootCause != null) {
                arrayList.add(0, rootCause);
            }
            if (th != null && !th.equals(rootCause)) {
                arrayList.add(th);
            }
            setExceptionsHolder(JobKt.SEALED);
            return arrayList;
        }

        public final void setExceptionsHolder(Object obj) {
            _exceptionsHolder$volatile$FU.getClass();
            AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, _exceptionsHolder$volatile$FU$offset, obj);
        }

        public final void setRootCause(Throwable th) {
            _rootCause$volatile$FU.getClass();
            AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, _rootCause$volatile$FU$offset, th);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Finishing[cancelling=");
            sb.append(isCancelling());
            sb.append(", completing=");
            sb.append(_isCompleting$volatile$FU.get(this) == 1);
            sb.append(", rootCause=");
            sb.append(getRootCause());
            sb.append(", exceptions=");
            sb.append(getExceptionsHolder());
            sb.append(", list=");
            sb.append(this.list);
            sb.append(']');
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SelectOnAwaitCompletionHandler extends JobNode {
        public final SelectImplementation select;

        public SelectOnAwaitCompletionHandler(SelectImplementation selectImplementation) {
            this.select = selectImplementation;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean getOnCancelling() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void invoke(Throwable th) {
            JobSupport jobSupport = JobSupport.this;
            Object state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                state$kotlinx_coroutines_core = JobKt.unboxState(state$kotlinx_coroutines_core);
            }
            this.select.trySelectInternal(jobSupport, state$kotlinx_coroutines_core);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SelectOnJoinCompletionHandler extends JobNode {
        public final SelectImplementation select;

        public SelectOnJoinCompletionHandler(SelectImplementation selectImplementation) {
            this.select = selectImplementation;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean getOnCancelling() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void invoke(Throwable th) {
            this.select.trySelectInternal(JobSupport.this, Unit.INSTANCE);
        }
    }

    static {
        Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
        _state$volatile$FU$offset = unsafe.objectFieldOffset(JobSupport.class.getDeclaredField("_state$volatile"));
        _parentHandle$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_parentHandle$volatile");
        _parentHandle$volatile$FU$offset = unsafe.objectFieldOffset(JobSupport.class.getDeclaredField("_parentHandle$volatile"));
    }

    public JobSupport(boolean z) {
        this._state$volatile = z ? JobKt.EMPTY_ACTIVE : JobKt.EMPTY_NEW;
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
        return finishing.isCancelling() ? "Cancelling" : Finishing._isCompleting$volatile$FU.get(finishing) == 1 ? "Completing" : "Active";
    }

    public void afterResume(Object obj) {
        afterCompletion(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x007a, code lost:
    
        return r5;
     */
    @Override // kotlinx.coroutines.Job
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlinx.coroutines.ChildHandle attachChild(kotlinx.coroutines.JobSupport r7) {
        /*
            r6 = this;
            kotlinx.coroutines.ChildHandleNode r5 = new kotlinx.coroutines.ChildHandleNode
            r5.<init>(r7)
            r5.job = r6
        L7:
            java.lang.Object r4 = r6.getState$kotlinx_coroutines_core()
            boolean r7 = r4 instanceof kotlinx.coroutines.Empty
            if (r7 == 0) goto L35
            r7 = r4
            kotlinx.coroutines.Empty r7 = (kotlinx.coroutines.Empty) r7
            boolean r0 = r7.isActive
            if (r0 == 0) goto L30
        L16:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = kotlinx.coroutines.JobSupport._state$volatile$FU
            r7.getClass()
            sun.misc.Unsafe r0 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.JobSupport._state$volatile$FU$offset
            r1 = r6
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L27
            goto L7a
        L27:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r2)
            if (r6 == r4) goto L2e
            goto L4b
        L2e:
            r6 = r1
            goto L16
        L30:
            r1 = r6
            r1.promoteEmptyToNodeList(r7)
            goto L4b
        L35:
            r1 = r6
            boolean r6 = r4 instanceof kotlinx.coroutines.Incomplete
            kotlinx.coroutines.NonDisposableHandle r7 = kotlinx.coroutines.NonDisposableHandle.INSTANCE
            r0 = 0
            if (r6 == 0) goto L7c
            r6 = r4
            kotlinx.coroutines.Incomplete r6 = (kotlinx.coroutines.Incomplete) r6
            kotlinx.coroutines.NodeList r6 = r6.getList()
            if (r6 != 0) goto L4d
            kotlinx.coroutines.JobNode r4 = (kotlinx.coroutines.JobNode) r4
            r1.promoteSingleToNodeList(r4)
        L4b:
            r6 = r1
            goto L7
        L4d:
            r2 = 7
            boolean r2 = r6.addLast(r5, r2)
            if (r2 == 0) goto L55
            goto L7a
        L55:
            r2 = 3
            boolean r6 = r6.addLast(r5, r2)
            java.lang.Object r1 = r1.getState$kotlinx_coroutines_core()
            boolean r2 = r1 instanceof kotlinx.coroutines.JobSupport.Finishing
            if (r2 == 0) goto L69
            kotlinx.coroutines.JobSupport$Finishing r1 = (kotlinx.coroutines.JobSupport.Finishing) r1
            java.lang.Throwable r0 = r1.getRootCause()
            goto L75
        L69:
            boolean r2 = r1 instanceof kotlinx.coroutines.CompletedExceptionally
            if (r2 == 0) goto L70
            kotlinx.coroutines.CompletedExceptionally r1 = (kotlinx.coroutines.CompletedExceptionally) r1
            goto L71
        L70:
            r1 = r0
        L71:
            if (r1 == 0) goto L75
            java.lang.Throwable r0 = r1.cause
        L75:
            r5.invoke(r0)
            if (r6 == 0) goto L7b
        L7a:
            return r5
        L7b:
            return r7
        L7c:
            java.lang.Object r6 = r1.getState$kotlinx_coroutines_core()
            boolean r1 = r6 instanceof kotlinx.coroutines.CompletedExceptionally
            if (r1 == 0) goto L87
            kotlinx.coroutines.CompletedExceptionally r6 = (kotlinx.coroutines.CompletedExceptionally) r6
            goto L88
        L87:
            r6 = r0
        L88:
            if (r6 == 0) goto L8c
            java.lang.Throwable r0 = r6.cause
        L8c:
            r5.invoke(r0)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.attachChild(kotlinx.coroutines.JobSupport):kotlinx.coroutines.ChildHandle");
    }

    public final Object awaitInternal(Continuation continuation) {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
                }
                return JobKt.unboxState(state$kotlinx_coroutines_core);
            }
        } while (startInternal(state$kotlinx_coroutines_core) < 0);
        AwaitContinuation awaitContinuation = new AwaitContinuation(AtomicFU.intercepted(continuation), this);
        awaitContinuation.initCancellability();
        awaitContinuation.invokeOnCancellationImpl(new DisposeOnCancel(0, JobKt.invokeOnCompletion(this, true, new ResumeAwaitOnCompletion(awaitContinuation))));
        return awaitContinuation.getResult();
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
    
        if (r0 == kotlinx.coroutines.JobKt.COMPLETING_WAITING_CHILDREN) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0059, code lost:
    
        r0 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancelImpl$kotlinx_coroutines_core(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 217
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport.cancelImpl$kotlinx_coroutines_core(java.lang.Object):boolean");
    }

    public void cancelInternal(Throwable th) {
        cancelImpl$kotlinx_coroutines_core(th);
    }

    public final boolean cancelParent(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        return (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == NonDisposableHandle.INSTANCE) ? z : parentHandle$kotlinx_coroutines_core.childCancelled(th) || z;
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
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
        SerializationException serializationException = null;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        if (incomplete instanceof JobNode) {
            try {
                ((JobNode) incomplete).invoke(th);
                return;
            } catch (Throwable th2) {
                handleOnCompletionException$kotlinx_coroutines_core(new SerializationException("Exception in completion handler " + incomplete + " for " + this, th2));
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
                        if (serializationException != null) {
                            ResultKt.addSuppressed(serializationException, th3);
                        } else {
                            serializationException = new SerializationException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th3);
                        }
                    }
                }
            }
            if (serializationException != null) {
                handleOnCompletionException$kotlinx_coroutines_core(serializationException);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Throwable] */
    public final Throwable createCauseException(Object obj) {
        CancellationException cancellationException;
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th;
        }
        obj.getClass();
        JobSupport jobSupport = (JobSupport) obj;
        Object state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Finishing) {
            cancellationException = ((Finishing) state$kotlinx_coroutines_core).getRootCause();
        } else if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            cancellationException = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        } else {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(state$kotlinx_coroutines_core, "Cannot be cancelling child in this state: ");
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
                                    ResultKt.addSuppressed(finalRootCause, th3);
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
            CompletedExceptionally._handled$volatile$FU.compareAndSet((CompletedExceptionally) obj, 0, 1);
        }
        onCompletionInternal(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        Object incompleteStateBox = obj instanceof Incomplete ? new IncompleteStateBox((Incomplete) obj) : obj;
        while (true) {
            atomicReferenceFieldUpdater.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
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
        return UuidKt.get(this, key);
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException getCancellationException() {
        CancellationException cancellationException;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Finishing) {
            Throwable rootCause = ((Finishing) state$kotlinx_coroutines_core).getRootCause();
            if (rootCause == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) this, "Job is still new or active: ");
                return null;
            }
            String concat = getClass().getSimpleName().concat(" is cancelling");
            cancellationException = rootCause instanceof CancellationException ? (CancellationException) rootCause : null;
            return cancellationException == null ? new JobCancellationException(concat, rootCause, this) : cancellationException;
        }
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) this, "Job is still new or active: ");
            return null;
        }
        if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
            return new JobCancellationException(getClass().getSimpleName().concat(" has completed normally"), null, this);
        }
        Throwable th = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        return cancellationException == null ? new JobCancellationException(cancellationExceptionMessage(), th, this) : cancellationException;
    }

    @Override // kotlinx.coroutines.Job
    public final Sequence getChildren() {
        return new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(3, new JobSupport$children$1(this, null, 0));
    }

    public Object getCompleted() {
        return getCompletedInternal$kotlinx_coroutines_core();
    }

    public final Object getCompletedInternal$kotlinx_coroutines_core() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Incomplete) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("This job has not completed yet");
            return null;
        }
        if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        }
        return JobKt.unboxState(state$kotlinx_coroutines_core);
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

    @Override // kotlinx.coroutines.Job
    public final BinaryBitmap getOnJoin() {
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, JobSupport$onJoin$1.INSTANCE);
        return new BinaryBitmap(this);
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) incomplete, "State should have list: ");
        return null;
    }

    public final ChildHandle getParentHandle$kotlinx_coroutines_core() {
        _parentHandle$volatile$FU.getClass();
        return (ChildHandle) AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _parentHandle$volatile$FU$offset);
    }

    public final Object getState$kotlinx_coroutines_core() {
        _state$volatile$FU.getClass();
        return AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.getObjectVolatile(this, _state$volatile$FU$offset);
    }

    public boolean handleJobException(Throwable th) {
        return false;
    }

    public final void initParentJob(Job job) {
        NonDisposableHandle nonDisposableHandle = NonDisposableHandle.INSTANCE;
        if (job == null) {
            setParentHandle$kotlinx_coroutines_core(nonDisposableHandle);
            return;
        }
        job.start();
        ChildHandle attachChild = job.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(attachChild);
        if (isCompleted()) {
            attachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(nonDisposableHandle);
        }
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(boolean z, boolean z2, InvalidationTracker$implementation$1 invalidationTracker$implementation$1) {
        return invokeOnCompletionInternal$kotlinx_coroutines_core(z2, z ? new InvokeOnCancelling(invalidationTracker$implementation$1) : new InvokeOnCompletion(invalidationTracker$implementation$1));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0074, code lost:
    
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
            if (r0 == 0) goto L33
            r0 = r4
            kotlinx.coroutines.Empty r0 = (kotlinx.coroutines.Empty) r0
            boolean r1 = r0.isActive
            if (r1 == 0) goto L2d
        L11:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.JobSupport._state$volatile$FU
            r0.getClass()
            sun.misc.Unsafe r0 = kotlinx.coroutines.AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe
            long r2 = kotlinx.coroutines.JobSupport._state$volatile$FU$offset
            r1 = r6
            r5 = r8
            boolean r6 = r0.compareAndSwapObject(r1, r2, r4, r5)
            if (r6 == 0) goto L23
            goto L74
        L23:
            java.lang.Object r6 = r0.getObjectVolatile(r1, r2)
            if (r6 == r4) goto L2a
            goto L75
        L2a:
            r6 = r1
            r8 = r5
            goto L11
        L2d:
            r1 = r6
            r5 = r8
            r1.promoteEmptyToNodeList(r0)
            goto L75
        L33:
            r1 = r6
            r5 = r8
            boolean r6 = r4 instanceof kotlinx.coroutines.Incomplete
            kotlinx.coroutines.NonDisposableHandle r8 = kotlinx.coroutines.NonDisposableHandle.INSTANCE
            r0 = 0
            if (r6 == 0) goto L78
            r6 = r4
            kotlinx.coroutines.Incomplete r6 = (kotlinx.coroutines.Incomplete) r6
            kotlinx.coroutines.NodeList r2 = r6.getList()
            if (r2 != 0) goto L4b
            kotlinx.coroutines.JobNode r4 = (kotlinx.coroutines.JobNode) r4
            r1.promoteSingleToNodeList(r4)
            goto L75
        L4b:
            boolean r3 = r5.getOnCancelling()
            if (r3 == 0) goto L6d
            boolean r3 = r6 instanceof kotlinx.coroutines.JobSupport.Finishing
            if (r3 == 0) goto L58
            kotlinx.coroutines.JobSupport$Finishing r6 = (kotlinx.coroutines.JobSupport.Finishing) r6
            goto L59
        L58:
            r6 = r0
        L59:
            if (r6 == 0) goto L5f
            java.lang.Throwable r0 = r6.getRootCause()
        L5f:
            if (r0 != 0) goto L67
            r6 = 5
            boolean r6 = r2.addLast(r5, r6)
            goto L72
        L67:
            if (r7 == 0) goto L8d
            r5.invoke(r0)
            return r8
        L6d:
            r6 = 1
            boolean r6 = r2.addLast(r5, r6)
        L72:
            if (r6 == 0) goto L75
        L74:
            return r5
        L75:
            r6 = r1
            r8 = r5
            goto L2
        L78:
            if (r7 == 0) goto L8d
            java.lang.Object r6 = r1.getState$kotlinx_coroutines_core()
            boolean r7 = r6 instanceof kotlinx.coroutines.CompletedExceptionally
            if (r7 == 0) goto L85
            kotlinx.coroutines.CompletedExceptionally r6 = (kotlinx.coroutines.CompletedExceptionally) r6
            goto L86
        L85:
            r6 = r0
        L86:
            if (r6 == 0) goto L8a
            java.lang.Throwable r0 = r6.cause
        L8a:
            r5.invoke(r0)
        L8d:
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

    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof Incomplete);
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
                JobKt.ensureActive(continuationImpl.getContext());
                return unit;
            }
        } while (startInternal(state$kotlinx_coroutines_core) < 0);
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, AtomicFU.intercepted(continuationImpl));
        cancellableContinuationImpl.initCancellability();
        cancellableContinuationImpl.invokeOnCancellationImpl(new DisposeOnCancel(0, JobKt.invokeOnCompletion(this, true, new ResumeOnCompletion(cancellableContinuationImpl))));
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
            if (tryMakeCompleting == JobKt.COMPLETING_ALREADY) {
                return false;
            }
            if (tryMakeCompleting == JobKt.COMPLETING_WAITING_CHILDREN) {
                return true;
            }
        } while (tryMakeCompleting == JobKt.COMPLETING_RETRY);
        afterCompletion(tryMakeCompleting);
        return true;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object obj) {
        Object tryMakeCompleting;
        do {
            tryMakeCompleting = tryMakeCompleting(getState$kotlinx_coroutines_core(), obj);
            if (tryMakeCompleting == JobKt.COMPLETING_ALREADY) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
                throw new IllegalStateException(str, completedExceptionally != null ? completedExceptionally.cause : null);
            }
        } while (tryMakeCompleting == JobKt.COMPLETING_RETRY);
        return tryMakeCompleting;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext minusKey(CoroutineContext.Key key) {
        return UuidKt.minusKey(this, key);
    }

    public String nameString$kotlinx_coroutines_core() {
        return getClass().getSimpleName();
    }

    public final void notifyCancelling(NodeList nodeList, Throwable th) {
        nodeList.addLast(new ListClosed(4), 4);
        Object next = nodeList.getNext();
        next.getClass();
        SerializationException serializationException = null;
        for (LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) next; !lockFreeLinkedListNode.equals(nodeList); lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode()) {
            if ((lockFreeLinkedListNode instanceof JobNode) && ((JobNode) lockFreeLinkedListNode).getOnCancelling()) {
                try {
                    ((JobNode) lockFreeLinkedListNode).invoke(th);
                } catch (Throwable th2) {
                    if (serializationException != null) {
                        ResultKt.addSuppressed(serializationException, th2);
                    } else {
                        serializationException = new SerializationException("Exception in completion handler " + lockFreeLinkedListNode + " for " + this, th2);
                    }
                }
            }
        }
        if (serializationException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(serializationException);
        }
        cancelParent(th);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public final CoroutineContext plus(CoroutineContext coroutineContext) {
        return UuidKt.plus(this, coroutineContext);
    }

    public final void promoteEmptyToNodeList(Empty empty) {
        NodeList nodeList = new NodeList();
        Incomplete inactiveNodeList = empty.isActive ? nodeList : new InactiveNodeList(nodeList);
        while (true) {
            _state$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
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
        jobNode.addOneIfEmpty(new NodeList());
        LockFreeLinkedListNode nextNode = jobNode.getNextNode();
        while (true) {
            _state$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = _state$volatile$FU$offset;
            JobSupport jobSupport = this;
            JobNode jobNode2 = jobNode;
            if (unsafe.compareAndSwapObject(jobSupport, j, jobNode2, nextNode) || unsafe.getObjectVolatile(jobSupport, j) != jobNode2) {
                return;
            }
            this = jobSupport;
            jobNode = jobNode2;
        }
    }

    public final void removeNode$kotlinx_coroutines_core(JobNode jobNode) {
        JobSupport jobSupport;
        while (true) {
            Object state$kotlinx_coroutines_core = this.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof JobNode)) {
                if (!(state$kotlinx_coroutines_core instanceof Incomplete) || ((Incomplete) state$kotlinx_coroutines_core).getList() == null) {
                    return;
                }
                jobNode.removeOrNext();
                return;
            }
            if (state$kotlinx_coroutines_core != jobNode) {
                return;
            }
            Empty empty = JobKt.EMPTY_ACTIVE;
            while (true) {
                _state$volatile$FU.getClass();
                Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
                long j = _state$volatile$FU$offset;
                jobSupport = this;
                if (unsafe.compareAndSwapObject(jobSupport, j, state$kotlinx_coroutines_core, empty)) {
                    return;
                }
                if (unsafe.getObjectVolatile(jobSupport, j) != state$kotlinx_coroutines_core) {
                    break;
                } else {
                    this = jobSupport;
                }
            }
            this = jobSupport;
        }
    }

    public final void setParentHandle$kotlinx_coroutines_core(ChildHandle childHandle) {
        _parentHandle$volatile$FU.getClass();
        AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe.putObjectVolatile(this, _parentHandle$volatile$FU$offset, childHandle);
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
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
        if (z) {
            if (((Empty) obj).isActive) {
                return 0;
            }
            Empty empty = JobKt.EMPTY_ACTIVE;
            do {
                atomicReferenceFieldUpdater.getClass();
                unsafe2 = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
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
            atomicReferenceFieldUpdater.getClass();
            unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            if (unsafe.compareAndSwapObject(this, _state$volatile$FU$offset, obj, nodeList)) {
                onStart();
                return 1;
            }
        } while (unsafe.getObjectVolatile(this, j) == obj);
        return -1;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(nameString$kotlinx_coroutines_core() + '{' + stateString(getState$kotlinx_coroutines_core()) + '}');
        sb.append('@');
        sb.append(JobKt.getHexAddress(this));
        return sb.toString();
    }

    public final boolean tryFinalizeSimpleState(Incomplete incomplete, Object obj) {
        Object incompleteStateBox = obj instanceof Incomplete ? new IncompleteStateBox((Incomplete) obj) : obj;
        while (true) {
            _state$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = _state$volatile$FU$offset;
            JobSupport jobSupport = this;
            Incomplete incomplete2 = incomplete;
            if (unsafe.compareAndSwapObject(jobSupport, j, incomplete2, incompleteStateBox)) {
                jobSupport.onCompletionInternal(obj);
                jobSupport.completeStateFinalization(incomplete2, obj);
                return true;
            }
            if (unsafe.getObjectVolatile(jobSupport, j) != incomplete2) {
                return false;
            }
            this = jobSupport;
            incomplete = incomplete2;
        }
    }

    public final boolean tryMakeCancelling(Incomplete incomplete, Throwable th) {
        NodeList orPromoteCancellingList = getOrPromoteCancellingList(incomplete);
        if (orPromoteCancellingList == null) {
            return false;
        }
        Finishing finishing = new Finishing(orPromoteCancellingList, th);
        while (true) {
            _state$volatile$FU.getClass();
            Unsafe unsafe = AwaitAll$AwaitAllNodeAtomicFieldUpdaterHelper.unsafe;
            long j = _state$volatile$FU$offset;
            JobSupport jobSupport = this;
            Incomplete incomplete2 = incomplete;
            if (unsafe.compareAndSwapObject(jobSupport, j, incomplete2, finishing)) {
                jobSupport.notifyCancelling(orPromoteCancellingList, th);
                return true;
            }
            if (unsafe.getObjectVolatile(jobSupport, j) != incomplete2) {
                return false;
            }
            this = jobSupport;
            incomplete = incomplete2;
        }
    }

    public final Object tryMakeCompleting(Object obj, Object obj2) {
        if (!(obj instanceof Incomplete)) {
            return JobKt.COMPLETING_ALREADY;
        }
        if (((obj instanceof Empty) || (obj instanceof JobNode)) && !(obj instanceof ChildHandleNode) && !(obj2 instanceof CompletedExceptionally)) {
            return tryFinalizeSimpleState((Incomplete) obj, obj2) ? obj2 : JobKt.COMPLETING_RETRY;
        }
        Incomplete incomplete = (Incomplete) obj;
        NodeList orPromoteCancellingList = getOrPromoteCancellingList(incomplete);
        if (orPromoteCancellingList == null) {
            return JobKt.COMPLETING_RETRY;
        }
        Finishing finishing = incomplete instanceof Finishing ? (Finishing) incomplete : null;
        if (finishing == null) {
            finishing = new Finishing(orPromoteCancellingList, null);
        }
        synchronized (finishing) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = Finishing._isCompleting$volatile$FU;
            if (atomicIntegerFieldUpdater.get(finishing) == 1) {
                return JobKt.COMPLETING_ALREADY;
            }
            atomicIntegerFieldUpdater.set(finishing, 1);
            if (finishing != incomplete) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$volatile$FU;
                while (!atomicReferenceFieldUpdater.compareAndSet(this, incomplete, finishing)) {
                    if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                        return JobKt.COMPLETING_RETRY;
                    }
                }
            }
            boolean isCancelling = finishing.isCancelling();
            CompletedExceptionally completedExceptionally = obj2 instanceof CompletedExceptionally ? (CompletedExceptionally) obj2 : null;
            if (completedExceptionally != null) {
                finishing.addExceptionLocked(completedExceptionally.cause);
            }
            Throwable rootCause = isCancelling ? null : finishing.getRootCause();
            if (rootCause != null) {
                notifyCancelling(orPromoteCancellingList, rootCause);
            }
            ChildHandleNode nextChild = nextChild(orPromoteCancellingList);
            if (nextChild != null && tryWaitForChild(finishing, nextChild, obj2)) {
                return JobKt.COMPLETING_WAITING_CHILDREN;
            }
            orPromoteCancellingList.addLast(new ListClosed(2), 2);
            ChildHandleNode nextChild2 = nextChild(orPromoteCancellingList);
            return (nextChild2 == null || !tryWaitForChild(finishing, nextChild2, obj2)) ? finalizeFinishingState(finishing, obj2) : JobKt.COMPLETING_WAITING_CHILDREN;
        }
    }

    public final boolean tryWaitForChild(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        while (JobKt.invokeOnCompletion(childHandleNode.childJob, false, new ChildCompletion(this, finishing, childHandleNode, obj)) == NonDisposableHandle.INSTANCE) {
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

    public void handleOnCompletionException$kotlinx_coroutines_core(SerializationException serializationException) {
        throw serializationException;
    }

    public void onCompletionInternal(Object obj) {
    }
}
