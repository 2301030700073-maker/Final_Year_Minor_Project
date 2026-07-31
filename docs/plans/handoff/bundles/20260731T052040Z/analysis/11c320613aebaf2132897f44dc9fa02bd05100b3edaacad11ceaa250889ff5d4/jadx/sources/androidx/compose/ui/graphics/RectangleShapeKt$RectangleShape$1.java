package androidx.compose.ui.graphics;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.work.OperationKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RectangleShapeKt$RectangleShape$1 implements Shape {
    @Override // androidx.compose.ui.graphics.Shape
    /* renamed from: createOutline-Pq9zytI */
    public final Brush mo35createOutlinePq9zytI(long j, LayoutDirection layoutDirection, Density density) {
        return new Outline$Rectangle(OperationKt.m476Recttz77jQw(0L, j));
    }

    public final String toString() {
        return "RectangleShape";
    }
}
