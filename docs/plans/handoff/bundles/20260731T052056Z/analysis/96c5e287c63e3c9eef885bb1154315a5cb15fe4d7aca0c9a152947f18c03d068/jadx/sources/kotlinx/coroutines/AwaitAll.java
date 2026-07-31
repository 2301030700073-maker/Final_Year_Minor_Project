package kotlinx.coroutines;

import _COROUTINE.ArtificialStackFramesUnsafe;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AwaitAll {
    public static final /* synthetic */ AtomicIntegerFieldUpdater notCompletedCount$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(AwaitAll.class, "notCompletedCount$volatile");
    public final Deferred[] deferreds;
    private volatile /* synthetic */ int notCompletedCount$volatile;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AwaitAllNode extends JobNode {
        public static final /* synthetic */ long _disposer$volatile$FU$offset = ArtificialStackFramesUnsafe.unsafe.objectFieldOffset(AwaitAllNode.class.getDeclaredField("_disposer$volatile"));
        private volatile /* synthetic */ Object _disposer$volatile;
        public final CancellableContinuationImpl continuation;
        public DisposableHandle handle;

        public AwaitAllNode(CancellableContinuationImpl cancellableContinuationImpl) {
            this.continuation = cancellableContinuationImpl;
        }

        @Override // kotlinx.coroutines.JobNode
        public final boolean getOnCancelling() {
            return false;
        }

        @Override // kotlinx.coroutines.JobNode
        public final void invoke(Throwable th) {
            CancellableContinuationImpl cancellableContinuationImpl = this.continuation;
            if (th != null) {
                Symbol tryResumeImpl = cancellableContinuationImpl.tryResumeImpl(new CompletedExceptionally(th, false), null);
                if (tryResumeImpl != null) {
                    cancellableContinuationImpl.completeResume(tryResumeImpl);
                    DisposeHandlersOnCancel disposeHandlersOnCancel = (DisposeHandlersOnCancel) ArtificialStackFramesUnsafe.unsafe.getObjectVolatile(this, _disposer$volatile$FU$offset);
                    if (disposeHandlersOnCancel != null) {
                        disposeHandlersOnCancel.disposeAll();
                        return;
                    }
                    return;
                }
                return;
            }
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = AwaitAll.notCompletedCount$volatile$FU;
            AwaitAll awaitAll = AwaitAll.this;
            if (atomicIntegerFieldUpdater.decrementAndGet(awaitAll) == 0) {
                Deferred[] deferredArr = awaitAll.deferreds;
                ArrayList arrayList = new ArrayList(deferredArr.length);
                for (Deferred deferred : deferredArr) {
                    arrayList.add(deferred.getCompleted());
                }
                cancellableContinuationImpl.resumeWith(arrayList);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DisposeHandlersOnCancel implements CancelHandler {
        public final AwaitAllNode[] nodes;

        public DisposeHandlersOnCancel(AwaitAllNode[] awaitAllNodeArr) {
            this.nodes = awaitAllNodeArr;
        }

        public final void disposeAll() {
            for (AwaitAllNode awaitAllNode : this.nodes) {
                DisposableHandle disposableHandle = awaitAllNode.handle;
                if (disposableHandle == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("handle");
                    throw null;
                }
                disposableHandle.dispose();
            }
        }

        @Override // kotlinx.coroutines.CancelHandler
        public final void invoke(Throwable th) {
            disposeAll();
        }

        public final String toString() {
            return "DisposeHandlersOnCancel[" + this.nodes + ']';
        }
    }

    public AwaitAll(Deferred[] deferredArr) {
        this.deferreds = deferredArr;
        this.notCompletedCount$volatile = deferredArr.length;
    }
}
