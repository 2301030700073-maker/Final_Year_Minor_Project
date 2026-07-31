package androidx.camera.camera2.pipe.core;

import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.ui.node.NodeChain;
import kotlin.coroutines.Continuation;
import kotlinx.atomicfu.AtomicBoolean;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.sync.Mutex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutexToken {
    public final /* synthetic */ int $r8$classId;
    public final AtomicBoolean _released;
    public final Object mutex;

    public MutexToken(Mutex mutex) {
        this.$r8$classId = 0;
        mutex.getClass();
        this.mutex = mutex;
        this._released = AtomicFU.atomic(false);
    }

    public final boolean getReleased() {
        switch (this.$r8$classId) {
        }
        return this._released.getValue();
    }

    public final boolean release() {
        Continuation continuation = null;
        switch (this.$r8$classId) {
            case 0:
                if (!this._released.compareAndSet()) {
                    return false;
                }
                ((Mutex) this.mutex).unlock(null);
                return true;
            default:
                if (!this._released.compareAndSet()) {
                    return false;
                }
                NodeChain.Differ differ = (NodeChain.Differ) this.mutex;
                synchronized (differ.after) {
                    int i = differ.offset - 1;
                    differ.offset = i;
                    if (i == 0 && !differ.shouldAttachOnInsert) {
                        differ.this$0 = JobKt.launch$default((CoroutineScope) differ.node, null, null, new ThumbNode$onAttach$1(differ, continuation, 10), 3);
                    }
                }
                return true;
        }
    }

    public MutexToken(NodeChain.Differ differ) {
        this.$r8$classId = 1;
        this.mutex = differ;
        this._released = AtomicFU.atomic(false);
    }
}
