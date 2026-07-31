package net.thunderbird.core.validation.input;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.validation.ValidationError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NumberInputField {
    public final ValidationError error;
    public final boolean isValid;
    public final Long value;

    public NumberInputField(Long l, ValidationError validationError, boolean z) {
        this.value = l;
        this.error = validationError;
        this.isValid = z;
    }

    public static NumberInputField updateValue(Long l) {
        return new NumberInputField(l, null, false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!NumberInputField.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        NumberInputField numberInputField = (NumberInputField) obj;
        return Intrinsics.areEqual(this.value, numberInputField.value) && Intrinsics.areEqual(this.error, numberInputField.error) && this.isValid == numberInputField.isValid;
    }

    public final int hashCode() {
        int i;
        Long l = this.value;
        if (l != null) {
            long longValue = l.longValue();
            i = (int) (longValue ^ (longValue >>> 32));
        } else {
            i = 0;
        }
        int i2 = i * 31;
        ValidationError validationError = this.error;
        return ((i2 + (validationError != null ? validationError.hashCode() : 0)) * 31) + (this.isValid ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NumberInputField(value=");
        sb.append(this.value);
        sb.append(", error=");
        sb.append(this.error);
        sb.append(", isValid=");
        return CameraDevices$CC.m(")", sb, this.isValid);
    }

    public final NumberInputField updateFromValidationOutcome(Outcome outcome) {
        boolean z = outcome instanceof Outcome.Success;
        Long l = this.value;
        if (z) {
            return new NumberInputField(l, null, true);
        }
        if (outcome instanceof Outcome.Failure) {
            return new NumberInputField(l, (ValidationError) ((Outcome.Failure) outcome).error, false);
        }
        UriKt$$ExternalSyntheticBUOutline0.m857m();
        return null;
    }

    public /* synthetic */ NumberInputField(Long l) {
        this(l, null, false);
    }
}
