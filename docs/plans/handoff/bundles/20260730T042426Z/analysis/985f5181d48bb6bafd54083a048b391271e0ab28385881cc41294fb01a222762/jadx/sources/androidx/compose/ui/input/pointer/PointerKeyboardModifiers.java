package androidx.compose.ui.input.pointer;

import ch.qos.logback.core.CoreConstants;

/* compiled from: PointerEvent.kt */
/* loaded from: classes.dex */
public final class PointerKeyboardModifiers {
    private final int packedValue;

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ PointerKeyboardModifiers m1702boximpl(int i) {
        return new PointerKeyboardModifiers(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1703constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m1704equalsimpl(int i, Object obj) {
        return (obj instanceof PointerKeyboardModifiers) && i == ((PointerKeyboardModifiers) obj).m1707unboximpl();
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1705hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1706toStringimpl(int i) {
        return "PointerKeyboardModifiers(packedValue=" + i + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public boolean equals(Object obj) {
        return m1704equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1705hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m1706toStringimpl(this.packedValue);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1707unboximpl() {
        return this.packedValue;
    }

    private /* synthetic */ PointerKeyboardModifiers(int i) {
        this.packedValue = i;
    }
}
