package net.thunderbird.core.validation.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class StringInputField {
    public final ValidationError error;
    public final boolean isValid;
    public final String value;

    public StringInputField(String str, ValidationError validationError, boolean z) {
        str.getClass();
        this.value = str;
        this.error = validationError;
        this.isValid = z;
    }

    public static StringInputField updateValue(String str) {
        str.getClass();
        return new StringInputField(str, null, false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!StringInputField.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        StringInputField stringInputField = (StringInputField) obj;
        return Intrinsics.areEqual(this.value, stringInputField.value) && Intrinsics.areEqual(this.error, stringInputField.error) && this.isValid == stringInputField.isValid;
    }

    public final int hashCode() {
        int hashCode = this.value.hashCode() * 31;
        ValidationError validationError = this.error;
        return ((hashCode + (validationError != null ? validationError.hashCode() : 0)) * 31) + (this.isValid ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StringInputField(value='");
        sb.append(this.value);
        sb.append("', error=");
        sb.append(this.error);
        sb.append(", isValid=");
        return CameraDevices$CC.m(")", sb, this.isValid);
    }

    public final StringInputField updateFromValidationOutcome(Outcome outcome) {
        outcome.getClass();
        boolean z = outcome instanceof Outcome.Success;
        String str = this.value;
        if (z) {
            return new StringInputField(str, null, true);
        }
        if (outcome instanceof Outcome.Failure) {
            return new StringInputField(str, (ValidationError) ((Outcome.Failure) outcome).error, false);
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public /* synthetic */ StringInputField(String str, int i) {
        this((i & 1) != 0 ? "" : str, null, false);
    }
}
