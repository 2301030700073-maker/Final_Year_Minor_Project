package androidx.camera.core.impl;

import androidx.camera.core.Camera;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.UseCase;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Collection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface CameraInternal extends Camera, UseCase.StateChangeCallback {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class State {
        public static final /* synthetic */ State[] $VALUES;
        public static final State CLOSED;
        public static final State CLOSING;
        public static final State OPEN;
        public static final State OPENING;
        public static final State PENDING_OPEN;
        public static final State RELEASED;
        public static final State RELEASING;

        static {
            State state = new State("RELEASED", 0);
            RELEASED = state;
            State state2 = new State("RELEASING", 1);
            RELEASING = state2;
            State state3 = new State("CLOSED", 2);
            CLOSED = state3;
            State state4 = new State("PENDING_OPEN", 3);
            PENDING_OPEN = state4;
            State state5 = new State("CLOSING", 4);
            CLOSING = state5;
            State state6 = new State("OPENING", 5);
            OPENING = state6;
            State state7 = new State("OPEN", 6);
            OPEN = state7;
            $VALUES = new State[]{state, state2, state3, state4, state5, state6, state7, new State("CONFIGURED", 7)};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    void attachUseCases(Collection collection);

    void detachUseCases(ArrayList arrayList);

    CameraControlInternal getCameraControlInternal();

    @Override // androidx.camera.core.Camera
    CameraInfo getCameraInfo();

    CameraInfoInternal getCameraInfoInternal();

    Observable getCameraState();

    CameraConfig getExtendedConfig();

    boolean getHasTransform();

    boolean isFrontFacing();

    boolean isRemoved();

    void onRemoved();

    ListenableFuture release();

    void setActiveResumingMode(boolean z);

    void setExtendedConfig(CameraConfig cameraConfig);

    void setPrimary(boolean z);
}
