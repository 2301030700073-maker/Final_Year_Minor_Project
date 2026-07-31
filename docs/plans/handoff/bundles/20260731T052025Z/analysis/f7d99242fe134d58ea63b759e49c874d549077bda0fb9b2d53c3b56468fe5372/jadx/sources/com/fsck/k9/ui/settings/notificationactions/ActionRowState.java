package com.fsck.k9.ui.settings.notificationactions;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ActionRowState {
    public final boolean canMoveDown;
    public final boolean canMoveUp;
    public final RowDragState dragState;
    public final boolean isDimmed;

    public ActionRowState(boolean z, boolean z2, boolean z3, RowDragState rowDragState) {
        this.isDimmed = z;
        this.canMoveUp = z2;
        this.canMoveDown = z3;
        this.dragState = rowDragState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActionRowState)) {
            return false;
        }
        ActionRowState actionRowState = (ActionRowState) obj;
        return this.isDimmed == actionRowState.isDimmed && this.canMoveUp == actionRowState.canMoveUp && this.canMoveDown == actionRowState.canMoveDown && this.dragState.equals(actionRowState.dragState);
    }

    public final int hashCode() {
        return this.dragState.hashCode() + ((((((this.isDimmed ? 1231 : 1237) * 31) + (this.canMoveUp ? 1231 : 1237)) * 31) + (this.canMoveDown ? 1231 : 1237)) * 31);
    }

    public final String toString() {
        return "ActionRowState(isDimmed=" + this.isDimmed + ", canMoveUp=" + this.canMoveUp + ", canMoveDown=" + this.canMoveDown + ", dragState=" + this.dragState + ")";
    }
}
