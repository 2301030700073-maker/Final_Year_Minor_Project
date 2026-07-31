package androidx.compose.foundation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class VerticalScrollableClipShape implements Shape {
    public final /* synthetic */ int $r8$classId;
    public static final VerticalScrollableClipShape INSTANCE$1 = new VerticalScrollableClipShape(1);
    public static final VerticalScrollableClipShape INSTANCE = new VerticalScrollableClipShape(0);

    public /* synthetic */ VerticalScrollableClipShape(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.ui.graphics.Shape
    /* renamed from: createOutline-Pq9zytI, reason: not valid java name */
    public final ColorKt mo147createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        switch (this.$r8$classId) {
            case 0:
                float mo171roundToPx0680j_4 = density.mo171roundToPx0680j_4(30.0f);
                return new Outline$Rectangle(new Rect(-mo171roundToPx0680j_4, 0.0f, Float.intBitsToFloat((int) (j >> 32)) + mo171roundToPx0680j_4, Float.intBitsToFloat((int) (j & 4294967295L))));
            default:
                float mo171roundToPx0680j_42 = density.mo171roundToPx0680j_4(30.0f);
                return new Outline$Rectangle(new Rect(0.0f, -mo171roundToPx0680j_42, Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)) + mo171roundToPx0680j_42));
        }
    }
}
