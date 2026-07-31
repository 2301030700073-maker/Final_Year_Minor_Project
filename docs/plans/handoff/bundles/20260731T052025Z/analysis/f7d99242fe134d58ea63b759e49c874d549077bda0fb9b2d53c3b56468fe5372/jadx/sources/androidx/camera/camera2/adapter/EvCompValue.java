package androidx.camera.camera2.adapter;

import android.util.Range;
import android.util.Rational;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EvCompValue {
    public final int index;
    public final Range range;
    public final Rational step;
    public final boolean supported;

    public EvCompValue(boolean z, int i, Range range, Rational rational) {
        range.getClass();
        rational.getClass();
        this.supported = z;
        this.index = i;
        this.range = range;
        this.step = rational;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EvCompValue)) {
            return false;
        }
        EvCompValue evCompValue = (EvCompValue) obj;
        return this.supported == evCompValue.supported && this.index == evCompValue.index && Intrinsics.areEqual(this.range, evCompValue.range) && Intrinsics.areEqual(this.step, evCompValue.step);
    }

    public final int hashCode() {
        return this.step.hashCode() + ((this.range.hashCode() + ((((this.supported ? 1231 : 1237) * 31) + this.index) * 31)) * 31);
    }

    public final String toString() {
        return "EvCompValue(supported=" + this.supported + ", index=" + this.index + ", range=" + this.range + ", step=" + this.step + ')';
    }
}
