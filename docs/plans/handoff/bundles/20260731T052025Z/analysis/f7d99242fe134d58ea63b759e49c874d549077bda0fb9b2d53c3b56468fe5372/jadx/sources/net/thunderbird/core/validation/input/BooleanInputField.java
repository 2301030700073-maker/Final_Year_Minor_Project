package net.thunderbird.core.validation.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BooleanInputField {
    public final ValidationError error;
    public final boolean isValid;
    public final Boolean value;

    public BooleanInputField(Boolean bool, ValidationError validationError, boolean z) {
        this.value = bool;
        this.error = validationError;
        this.isValid = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!BooleanInputField.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        BooleanInputField booleanInputField = (BooleanInputField) obj;
        return Intrinsics.areEqual(this.value, booleanInputField.value) && Intrinsics.areEqual(this.error, booleanInputField.error) && this.isValid == booleanInputField.isValid;
    }

    public final int hashCode() {
        Boolean bool = this.value;
        int i = (bool != null ? bool.booleanValue() ? 1231 : 1237 : 0) * 31;
        ValidationError validationError = this.error;
        return ((i + (validationError != null ? validationError.hashCode() : 0)) * 31) + (this.isValid ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BooleanInputField(value=");
        sb.append(this.value);
        sb.append(", error=");
        sb.append(this.error);
        sb.append(", isValid=");
        return CameraDevices$CC.m(")", sb, this.isValid);
    }
}
