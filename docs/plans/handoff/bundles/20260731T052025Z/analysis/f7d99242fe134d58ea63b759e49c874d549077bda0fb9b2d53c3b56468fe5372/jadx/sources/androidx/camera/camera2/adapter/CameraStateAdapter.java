package androidx.camera.camera2.adapter;

import android.os.Looper;
import android.util.Log;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.camera2.pipe.graph.CameraGraphImpl;
import androidx.camera.core.AutoValue_CameraState;
import androidx.camera.core.AutoValue_CameraState_StateError;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.LiveDataObservable$Result;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHostHelper;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.lifecycle.MutableLiveData;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CameraStateAdapter {
    public final LinkedHashMap cameraStateListeners;
    public CameraInternal.State currentCameraInternalState;
    public AutoValue_CameraState_StateError currentCameraStateError;
    public CameraGraphImpl currentGraph;
    public boolean isRemoved;
    public final Object lock = new Object();
    public final MenuHostHelper cameraInternalState = new MenuHostHelper(7);
    public final MutableLiveData cameraState = new MutableLiveData();

    public CameraStateAdapter() {
        CameraInternal.State state = CameraInternal.State.CLOSED;
        this.currentCameraInternalState = state;
        this.cameraStateListeners = new LinkedHashMap();
        postCameraState(state, null);
    }

    public final void handleStateTransition(CameraGraphImpl cameraGraphImpl, GraphState graphState) {
        GraphState.GraphStateStarted graphStateStarted = GraphState.GraphStateStarted.INSTANCE$1;
        GraphState.GraphStateStarted graphStateStarted2 = GraphState.GraphStateStarted.INSTANCE;
        if (cameraGraphImpl != this.currentGraph) {
            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                Log.d("CXCP", "Ignored stale transition " + graphState + " for " + cameraGraphImpl);
                return;
            }
            return;
        }
        CameraInternal.State state = this.currentCameraInternalState;
        state.getClass();
        graphState.getClass();
        int ordinal = state.ordinal();
        CameraInternal.State state2 = CameraInternal.State.OPEN;
        CameraInternal.State state3 = CameraInternal.State.OPENING;
        CombinedCameraState combinedCameraState = null;
        if (ordinal != 2) {
            CameraInternal.State state4 = CameraInternal.State.PENDING_OPEN;
            CameraInternal.State state5 = CameraInternal.State.CLOSED;
            if (ordinal != 3) {
                GraphState.GraphStateStopped graphStateStopped = GraphState.GraphStateStopped.INSTANCE;
                CameraInternal.State state6 = CameraInternal.State.CLOSING;
                if (ordinal != 4) {
                    GraphState.GraphStateStopping graphStateStopping = GraphState.GraphStateStopping.INSTANCE;
                    if (ordinal != 5) {
                        if (ordinal == 6) {
                            if (graphState.equals(graphStateStopping)) {
                                combinedCameraState = new CombinedCameraState(state6);
                            } else if (graphState.equals(graphStateStopped)) {
                                combinedCameraState = new CombinedCameraState(state5);
                            } else if (graphState instanceof GraphState.GraphStateError) {
                                int i = ((GraphState.GraphStateError) graphState).cameraError;
                                combinedCameraState = Util.m1094isRecoverableError90vkdD0$camera_camera2(i) ? new CombinedCameraState(state4, Util.m1095toCameraStateError90vkdD0$camera_camera2(i)) : new CombinedCameraState(state5, Util.m1095toCameraStateError90vkdD0$camera_camera2(i));
                            }
                        }
                    } else if (graphState.equals(graphStateStarted2)) {
                        combinedCameraState = new CombinedCameraState(state2);
                    } else if (graphState instanceof GraphState.GraphStateError) {
                        GraphState.GraphStateError graphStateError = (GraphState.GraphStateError) graphState;
                        int i2 = graphStateError.cameraError;
                        combinedCameraState = graphStateError.willAttemptRetry ? new CombinedCameraState(state3, Util.m1095toCameraStateError90vkdD0$camera_camera2(i2)) : Util.m1094isRecoverableError90vkdD0$camera_camera2(i2) ? new CombinedCameraState(state4, Util.m1095toCameraStateError90vkdD0$camera_camera2(i2)) : new CombinedCameraState(state6, Util.m1095toCameraStateError90vkdD0$camera_camera2(i2));
                    } else if (graphState.equals(graphStateStopping)) {
                        combinedCameraState = new CombinedCameraState(state6);
                    } else if (graphState.equals(graphStateStopped)) {
                        combinedCameraState = new CombinedCameraState(state5);
                    }
                } else if (graphState.equals(graphStateStopped)) {
                    combinedCameraState = new CombinedCameraState(state5);
                } else if (graphState.equals(graphStateStarted)) {
                    combinedCameraState = new CombinedCameraState(state3);
                } else if (graphState instanceof GraphState.GraphStateError) {
                    combinedCameraState = new CombinedCameraState(state6, Util.m1095toCameraStateError90vkdD0$camera_camera2(((GraphState.GraphStateError) graphState).cameraError));
                }
            } else if (graphState.equals(graphStateStarted)) {
                combinedCameraState = new CombinedCameraState(state3);
            } else if (graphState.equals(graphStateStarted2)) {
                combinedCameraState = new CombinedCameraState(state2);
            } else if (graphState instanceof GraphState.GraphStateError) {
                int i3 = ((GraphState.GraphStateError) graphState).cameraError;
                combinedCameraState = Util.m1094isRecoverableError90vkdD0$camera_camera2(i3) ? new CombinedCameraState(state4, Util.m1095toCameraStateError90vkdD0$camera_camera2(i3)) : new CombinedCameraState(state5, Util.m1095toCameraStateError90vkdD0$camera_camera2(i3));
            }
        } else if (graphState.equals(graphStateStarted)) {
            combinedCameraState = new CombinedCameraState(state3);
        } else if (graphState.equals(graphStateStarted2)) {
            combinedCameraState = new CombinedCameraState(state2);
        }
        if (combinedCameraState == null) {
            if (Utf8.SafeProcessor.isWarnEnabled()) {
                Log.w("CXCP", "Impermissible state transition: current camera internal state: " + this.currentCameraInternalState + ", received graph state: " + graphState);
                return;
            }
            return;
        }
        this.currentCameraInternalState = combinedCameraState.state;
        this.currentCameraStateError = combinedCameraState.error;
        if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
            Log.d("CXCP", "Updated current camera internal state to " + combinedCameraState);
        }
        postCameraState(this.currentCameraInternalState, this.currentCameraStateError);
    }

    public final void onGraphStateUpdated(CameraGraphImpl cameraGraphImpl, GraphState graphState) {
        graphState.getClass();
        synchronized (this.lock) {
            if (this.isRemoved) {
                if (Utf8.SafeProcessor.isWarnEnabled()) {
                    Log.w("CXCP", "Ignoring graph state update " + graphState + " on removed camera.");
                }
                return;
            }
            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                Log.d("CXCP", cameraGraphImpl + " state updated to " + graphState);
            }
            handleStateTransition(cameraGraphImpl, graphState);
        }
    }

    public final void postCameraState(CameraInternal.State state, AutoValue_CameraState_StateError autoValue_CameraState_StateError) {
        List<Map.Entry> list;
        ((MutableLiveData) this.cameraInternalState.mOnInvalidateMenuCallback).postValue(new LiveDataObservable$Result(state));
        state.getClass();
        int ordinal = state.ordinal();
        int i = 5;
        int i2 = 3;
        if (ordinal != 2) {
            if (ordinal == 3) {
                i = 1;
            } else if (ordinal == 4) {
                i = 4;
            } else if (ordinal == 5) {
                i = 2;
            } else {
                if (ordinal != 6) {
                    Regex$$ExternalSyntheticBUOutline0.m$2(state, "Unexpected CameraInternal state: ");
                    return;
                }
                i = 3;
            }
        }
        AutoValue_CameraState autoValue_CameraState = new AutoValue_CameraState(i, autoValue_CameraState_StateError);
        MutableLiveData mutableLiveData = this.cameraState;
        mutableLiveData.getClass();
        if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            mutableLiveData.setValue(autoValue_CameraState);
        } else {
            mutableLiveData.postValue(autoValue_CameraState);
        }
        synchronized (this.lock) {
            list = CollectionsKt.toList(this.cameraStateListeners.entrySet());
        }
        for (Map.Entry entry : list) {
            ((Executor) entry.getValue()).execute(new CameraX$$ExternalSyntheticLambda2(i2, (Consumer) entry.getKey(), autoValue_CameraState));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class CombinedCameraState {
        public final AutoValue_CameraState_StateError error;
        public final CameraInternal.State state;

        public CombinedCameraState(CameraInternal.State state) {
            this.state = state;
            this.error = null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CombinedCameraState)) {
                return false;
            }
            CombinedCameraState combinedCameraState = (CombinedCameraState) obj;
            return this.state == combinedCameraState.state && Intrinsics.areEqual(this.error, combinedCameraState.error);
        }

        public final int hashCode() {
            int hashCode = this.state.hashCode() * 31;
            AutoValue_CameraState_StateError autoValue_CameraState_StateError = this.error;
            return hashCode + (autoValue_CameraState_StateError == null ? 0 : autoValue_CameraState_StateError.hashCode());
        }

        public final String toString() {
            return "CombinedCameraState(state=" + this.state + ", error=" + this.error + ')';
        }

        public CombinedCameraState(CameraInternal.State state, AutoValue_CameraState_StateError autoValue_CameraState_StateError) {
            this.state = state;
            this.error = autoValue_CameraState_StateError;
        }
    }
}
