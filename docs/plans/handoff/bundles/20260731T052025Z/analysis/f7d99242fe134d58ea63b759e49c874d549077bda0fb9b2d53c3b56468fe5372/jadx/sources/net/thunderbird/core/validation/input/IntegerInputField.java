package net.thunderbird.core.validation.input;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class IntegerInputField {
    public final Integer value;

    public IntegerInputField(int i, Integer num) {
        this.value = (i & 1) != 0 ? null : num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!IntegerInputField.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        return Intrinsics.areEqual(this.value, ((IntegerInputField) obj).value);
    }

    public final int hashCode() {
        Integer num = this.value;
        return ((num != null ? num.intValue() : 0) * 961) + 1237;
    }

    public final String toString() {
        return "IntegerInputField(value=" + this.value + ", error=null, isValid=false)";
    }
}
