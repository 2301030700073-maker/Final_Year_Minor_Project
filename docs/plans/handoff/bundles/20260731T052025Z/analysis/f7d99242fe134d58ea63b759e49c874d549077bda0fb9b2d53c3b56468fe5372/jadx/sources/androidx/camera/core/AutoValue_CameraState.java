package androidx.camera.core;

import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AutoValue_CameraState {
    public final AutoValue_CameraState_StateError error;
    public final int type;

    public AutoValue_CameraState(int i, AutoValue_CameraState_StateError autoValue_CameraState_StateError) {
        if (i == 0) {
            Regex$$ExternalSyntheticBUOutline0.m("Null type");
            throw null;
        }
        this.type = i;
        this.error = autoValue_CameraState_StateError;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AutoValue_CameraState)) {
            return false;
        }
        AutoValue_CameraState autoValue_CameraState = (AutoValue_CameraState) obj;
        if (!ImageAnalysis$$ExternalSyntheticLambda3.equals(this.type, autoValue_CameraState.type)) {
            return false;
        }
        AutoValue_CameraState_StateError autoValue_CameraState_StateError = autoValue_CameraState.error;
        AutoValue_CameraState_StateError autoValue_CameraState_StateError2 = this.error;
        return autoValue_CameraState_StateError2 == null ? autoValue_CameraState_StateError == null : autoValue_CameraState_StateError2.equals(autoValue_CameraState_StateError);
    }

    public final int hashCode() {
        int ordinal = (ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.type) ^ 1000003) * 1000003;
        AutoValue_CameraState_StateError autoValue_CameraState_StateError = this.error;
        return (autoValue_CameraState_StateError == null ? 0 : autoValue_CameraState_StateError.hashCode()) ^ ordinal;
    }

    public final String toString() {
        return "CameraState{type=" + ImageAnalysis$$ExternalSyntheticLambda3.stringValueOf(this.type) + ", error=" + this.error + "}";
    }
}
