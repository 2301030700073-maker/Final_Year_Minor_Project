package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.core.MutexToken;
import androidx.compose.material.ripple.RippleNode$onAttach$1;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.Recomposer$join$2;
import androidx.compose.ui.node.NodeChain;
import java.util.Set;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.CharsKt__CharKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActiveCamera {
    public final Set allCameraIds;
    public final AndroidCameraState androidCameraState;
    public VirtualCameraState current;
    public final NodeChain.Differ wakelock;

    public ActiveCamera(AndroidCameraState androidCameraState, Set set, CoroutineScope coroutineScope, TorchControl$$ExternalSyntheticLambda1 torchControl$$ExternalSyntheticLambda1) {
        Continuation continuation;
        int i;
        androidCameraState.getClass();
        coroutineScope.getClass();
        this.androidCameraState = androidCameraState;
        this.allCameraIds = set;
        Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(4, torchControl$$ExternalSyntheticLambda1, this);
        coroutineScope.getClass();
        NodeChain.Differ differ = new NodeChain.Differ();
        differ.node = coroutineScope;
        differ.before = recomposer$$ExternalSyntheticLambda6;
        Object obj = new Object();
        differ.after = obj;
        synchronized (obj) {
            continuation = null;
            i = 3;
            differ.this$0 = JobKt.launch$default(coroutineScope, null, null, new ThumbNode$onAttach$1(differ, continuation, 10), 3);
        }
        this.wakelock = differ;
        JobKt.launch$default(coroutineScope, null, null, new ThumbNode$onAttach$1(this, continuation, i), 3);
    }

    public final MutexToken acquire() {
        NodeChain.Differ differ = this.wakelock;
        synchronized (differ.after) {
            try {
                if (differ.shouldAttachOnInsert) {
                    return null;
                }
                int i = differ.offset + 1;
                differ.offset = i;
                if (i == 1) {
                    StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) differ.this$0;
                    if (standaloneCoroutine != null) {
                        standaloneCoroutine.cancel(null);
                    }
                    differ.this$0 = null;
                }
                return new MutexToken(differ);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object awaitClosed(ContinuationImpl continuationImpl) {
        int i = 2;
        Object first = FlowKt.first(this.androidCameraState._state, new Recomposer$join$2(i, null, i), continuationImpl);
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        if (first != coroutineSingletons) {
            first = unit;
        }
        return first == coroutineSingletons ? first : unit;
    }

    public final void close() {
        this.wakelock.release();
        this.androidCameraState.close();
    }

    public final Unit connectTo(VirtualCameraState virtualCameraState, MutexToken mutexToken) {
        Unit unit = Unit.INSTANCE;
        VirtualCameraState virtualCameraState2 = this.current;
        this.current = virtualCameraState;
        Continuation continuation = null;
        if (virtualCameraState2 != null) {
            virtualCameraState2.m74disconnectTPqeGZw(null);
        }
        StateFlowImpl stateFlowImpl = this.androidCameraState._state;
        synchronized (virtualCameraState.lock) {
            if (virtualCameraState.closed) {
                mutexToken.release();
            } else {
                virtualCameraState.job = JobKt.launch$default(virtualCameraState.scope, null, null, new RippleNode$onAttach$1(stateFlowImpl, virtualCameraState, continuation, 9), 3);
                virtualCameraState.wakelockToken = mutexToken;
            }
        }
        return unit;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ActiveCamera(cameraId=");
        sb.append((Object) CameraId.m35toStringimpl(this.androidCameraState.cameraId));
        sb.append(")@");
        int hashCode = hashCode();
        CharsKt__CharKt.checkRadix(16);
        String num = Integer.toString(hashCode, 16);
        num.getClass();
        sb.append(num);
        return sb.toString();
    }
}
