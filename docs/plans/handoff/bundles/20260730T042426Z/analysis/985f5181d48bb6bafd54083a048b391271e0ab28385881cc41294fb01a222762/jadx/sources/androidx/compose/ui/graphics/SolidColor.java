package androidx.compose.ui.graphics;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Brush.kt */
/* loaded from: classes.dex */
public final class SolidColor extends Brush {
    private final long value;

    public /* synthetic */ SolidColor(long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(j);
    }

    private SolidColor(long j) {
        super(null);
        this.value = j;
    }

    /* renamed from: getValue-0d7_KjU, reason: not valid java name */
    public final long m1418getValue0d7_KjU() {
        return this.value;
    }

    @Override // androidx.compose.ui.graphics.Brush
    /* renamed from: applyTo-Pq9zytI */
    public void mo1288applyToPq9zytI(long j, Paint paint, float f) {
        long m1302copywmQWz5c$default;
        paint.setAlpha(1.0f);
        if (f != 1.0f) {
            long j2 = this.value;
            m1302copywmQWz5c$default = Color.m1302copywmQWz5c$default(j2, Color.m1305getAlphaimpl(j2) * f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            m1302copywmQWz5c$default = this.value;
        }
        paint.mo1236setColor8_81llA(m1302copywmQWz5c$default);
        if (paint.getShader() != null) {
            paint.setShader(null);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SolidColor) && Color.m1304equalsimpl0(this.value, ((SolidColor) obj).value);
    }

    public int hashCode() {
        return Color.m1310hashCodeimpl(this.value);
    }

    public String toString() {
        return "SolidColor(value=" + ((Object) Color.m1311toStringimpl(this.value)) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }
}
