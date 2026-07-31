package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.util.UtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CircleShape implements Shape {
    public static final CircleShape INSTANCE = new CircleShape();

    @Override // androidx.compose.ui.graphics.Shape
    /* renamed from: createOutline-Pq9zytI */
    public final ColorKt mo61createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        float m396getMinDimensionimpl = Size.m396getMinDimensionimpl(j) / 2.0f;
        long floatToRawIntBits = (Float.floatToRawIntBits(m396getMinDimensionimpl) << 32) | (Float.floatToRawIntBits(m396getMinDimensionimpl) & 4294967295L);
        Rect m793Recttz77jQw = UtilsKt.m793Recttz77jQw(0L, j);
        return new Outline$Rounded(new RoundRect(m793Recttz77jQw.left, m793Recttz77jQw.top, m793Recttz77jQw.right, m793Recttz77jQw.bottom, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits, floatToRawIntBits));
    }
}
