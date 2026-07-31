package com.fsck.k9.ui.settings.notificationactions;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RowDragState {
    public final float alpha;
    public final float draggedOffsetY;
    public final boolean isDragged;

    public RowDragState(float f, float f2, boolean z) {
        this.isDragged = z;
        this.draggedOffsetY = f;
        this.alpha = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RowDragState)) {
            return false;
        }
        RowDragState rowDragState = (RowDragState) obj;
        return this.isDragged == rowDragState.isDragged && Float.compare(this.draggedOffsetY, rowDragState.draggedOffsetY) == 0 && Float.compare(this.alpha, rowDragState.alpha) == 0;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.alpha) + CameraDevices$CC.m((this.isDragged ? 1231 : 1237) * 31, this.draggedOffsetY, 31);
    }

    public final String toString() {
        return "RowDragState(isDragged=" + this.isDragged + ", draggedOffsetY=" + this.draggedOffsetY + ", alpha=" + this.alpha + ")";
    }
}
