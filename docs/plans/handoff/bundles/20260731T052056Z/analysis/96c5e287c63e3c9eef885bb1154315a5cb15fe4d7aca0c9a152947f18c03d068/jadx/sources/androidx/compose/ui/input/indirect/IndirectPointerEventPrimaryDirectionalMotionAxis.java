package androidx.compose.ui.input.indirect;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class IndirectPointerEventPrimaryDirectionalMotionAxis {
    public final int value;

    public final boolean equals(Object obj) {
        if (obj instanceof IndirectPointerEventPrimaryDirectionalMotionAxis) {
            return this.value == ((IndirectPointerEventPrimaryDirectionalMotionAxis) obj).value;
        }
        return false;
    }

    public final int hashCode() {
        return this.value;
    }

    public final String toString() {
        return "IndirectPointerEventPrimaryDirectionalMotionAxis(value=" + this.value + ')';
    }
}
