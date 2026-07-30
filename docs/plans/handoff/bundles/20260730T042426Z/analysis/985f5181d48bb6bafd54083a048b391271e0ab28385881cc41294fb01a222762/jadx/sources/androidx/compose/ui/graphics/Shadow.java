package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Offset;
import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Shadow.kt */
/* loaded from: classes.dex */
public final class Shadow {
    public static final Companion Companion = new Companion(null);
    private static final Shadow None = new Shadow(0, 0, 0.0f, 7, null);
    private final float blurRadius;
    private final long color;
    private final long offset;

    public /* synthetic */ Shadow(long j, long j2, float f, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, f);
    }

    private Shadow(long j, long j2, float f) {
        this.color = j;
        this.offset = j2;
        this.blurRadius = f;
    }

    public /* synthetic */ Shadow(long j, long j2, float f, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ColorKt.Color(4278190080L) : j, (i & 2) != 0 ? Offset.Companion.m1179getZeroF1C5BW0() : j2, (i & 4) != 0 ? 0.0f : f, null);
    }

    /* renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m1408getColor0d7_KjU() {
        return this.color;
    }

    /* renamed from: getOffset-F1C5BW0, reason: not valid java name */
    public final long m1409getOffsetF1C5BW0() {
        return this.offset;
    }

    public final float getBlurRadius() {
        return this.blurRadius;
    }

    /* compiled from: Shadow.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Shadow getNone() {
            return Shadow.None;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shadow)) {
            return false;
        }
        Shadow shadow = (Shadow) obj;
        return Color.m1304equalsimpl0(this.color, shadow.color) && Offset.m1164equalsimpl0(this.offset, shadow.offset) && this.blurRadius == shadow.blurRadius;
    }

    public int hashCode() {
        return (((Color.m1310hashCodeimpl(this.color) * 31) + Offset.m1169hashCodeimpl(this.offset)) * 31) + Float.floatToIntBits(this.blurRadius);
    }

    public String toString() {
        return "Shadow(color=" + ((Object) Color.m1311toStringimpl(this.color)) + ", offset=" + ((Object) Offset.m1174toStringimpl(this.offset)) + ", blurRadius=" + this.blurRadius + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
