package androidx.compose.ui.text.style;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: BaselineShift.kt */
/* loaded from: classes.dex */
public final class BaselineShift {
    private final float multiplier;
    public static final Companion Companion = new Companion(null);
    private static final float Superscript = m2276constructorimpl(0.5f);
    private static final float Subscript = m2276constructorimpl(-0.5f);
    private static final float None = m2276constructorimpl(0.0f);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ BaselineShift m2275boximpl(float f) {
        return new BaselineShift(f);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static float m2276constructorimpl(float f) {
        return f;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2277equalsimpl(float f, Object obj) {
        return (obj instanceof BaselineShift) && Float.compare(f, ((BaselineShift) obj).m2281unboximpl()) == 0;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2278equalsimpl0(float f, float f2) {
        return Float.compare(f, f2) == 0;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2279hashCodeimpl(float f) {
        return Float.floatToIntBits(f);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2280toStringimpl(float f) {
        return "BaselineShift(multiplier=" + f + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public boolean equals(Object obj) {
        return m2277equalsimpl(this.multiplier, obj);
    }

    public int hashCode() {
        return m2279hashCodeimpl(this.multiplier);
    }

    public String toString() {
        return m2280toStringimpl(this.multiplier);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ float m2281unboximpl() {
        return this.multiplier;
    }

    /* compiled from: BaselineShift.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNone-y9eOQZs, reason: not valid java name */
        public final float m2282getNoney9eOQZs() {
            return BaselineShift.None;
        }
    }

    private /* synthetic */ BaselineShift(float f) {
        this.multiplier = f;
    }
}
