package androidx.compose.foundation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
    public final Brush mo35createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        switch (this.$r8$classId) {
            case 0:
                float mo58roundToPx0680j_4 = density.mo58roundToPx0680j_4(30.0f);
                return new Outline$Rectangle(new Rect(-mo58roundToPx0680j_4, 0.0f, Float.intBitsToFloat((int) (j >> 32)) + mo58roundToPx0680j_4, Float.intBitsToFloat((int) (j & 4294967295L))));
            default:
                float mo58roundToPx0680j_42 = density.mo58roundToPx0680j_4(30.0f);
                return new Outline$Rectangle(new Rect(0.0f, -mo58roundToPx0680j_42, Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)) + mo58roundToPx0680j_42));
        }
    }
}
