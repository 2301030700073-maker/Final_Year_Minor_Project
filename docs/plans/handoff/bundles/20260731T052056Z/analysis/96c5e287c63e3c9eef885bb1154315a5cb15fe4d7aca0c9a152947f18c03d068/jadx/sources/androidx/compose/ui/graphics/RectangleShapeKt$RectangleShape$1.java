package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.util.UtilsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RectangleShapeKt$RectangleShape$1 implements Shape {
    @Override // androidx.compose.ui.graphics.Shape
    /* renamed from: createOutline-Pq9zytI */
    public final ColorKt mo61createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        return new Outline$Rectangle(UtilsKt.m793Recttz77jQw(0L, j));
    }

    public final String toString() {
        return "RectangleShape";
    }
}
