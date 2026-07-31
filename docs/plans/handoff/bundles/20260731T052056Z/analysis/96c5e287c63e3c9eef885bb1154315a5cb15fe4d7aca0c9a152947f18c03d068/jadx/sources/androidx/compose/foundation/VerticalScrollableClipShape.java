package androidx.compose.foundation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public final ColorKt mo61createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        switch (this.$r8$classId) {
            case 0:
                float mo81roundToPx0680j_4 = density.mo81roundToPx0680j_4(30.0f);
                return new Outline$Rectangle(new Rect(-mo81roundToPx0680j_4, RecyclerView.DECELERATION_RATE, Float.intBitsToFloat((int) (j >> 32)) + mo81roundToPx0680j_4, Float.intBitsToFloat((int) (j & 4294967295L))));
            default:
                float mo81roundToPx0680j_42 = density.mo81roundToPx0680j_4(30.0f);
                return new Outline$Rectangle(new Rect(RecyclerView.DECELERATION_RATE, -mo81roundToPx0680j_42, Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)) + mo81roundToPx0680j_42));
        }
    }
}
