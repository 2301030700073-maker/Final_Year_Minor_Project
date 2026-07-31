package androidx.compose.material3;

import androidx.compose.ui.graphics.Shape;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ListItemShapes {
    public final Shape draggedShape;
    public final Shape focusedShape;
    public final Shape hoveredShape;
    public final Shape pressedShape;
    public final Shape selectedShape;
    public final Shape shape;

    public ListItemShapes(Shape shape, Shape shape2, Shape shape3, Shape shape4, Shape shape5, Shape shape6) {
        this.shape = shape;
        this.selectedShape = shape2;
        this.pressedShape = shape3;
        this.focusedShape = shape4;
        this.hoveredShape = shape5;
        this.draggedShape = shape6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListItemShapes)) {
            return false;
        }
        ListItemShapes listItemShapes = (ListItemShapes) obj;
        return Intrinsics.areEqual(this.shape, listItemShapes.shape) && Intrinsics.areEqual(this.selectedShape, listItemShapes.selectedShape) && Intrinsics.areEqual(this.pressedShape, listItemShapes.pressedShape) && Intrinsics.areEqual(this.focusedShape, listItemShapes.focusedShape) && Intrinsics.areEqual(this.hoveredShape, listItemShapes.hoveredShape) && Intrinsics.areEqual(this.draggedShape, listItemShapes.draggedShape);
    }

    public final int hashCode() {
        return this.draggedShape.hashCode() + ((this.hoveredShape.hashCode() + ((this.focusedShape.hashCode() + ((this.pressedShape.hashCode() + ((this.selectedShape.hashCode() + (this.shape.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }
}
