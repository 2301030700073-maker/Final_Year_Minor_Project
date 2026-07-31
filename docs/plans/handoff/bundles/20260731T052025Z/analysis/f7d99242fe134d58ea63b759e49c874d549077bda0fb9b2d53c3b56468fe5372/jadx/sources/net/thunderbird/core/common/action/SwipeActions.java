package net.thunderbird.core.common.action;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SwipeActions {
    public final SwipeAction leftAction;
    public final SwipeAction rightAction;

    public SwipeActions(SwipeAction swipeAction, SwipeAction swipeAction2) {
        swipeAction.getClass();
        swipeAction2.getClass();
        this.leftAction = swipeAction;
        this.rightAction = swipeAction2;
    }

    public static SwipeActions copy$default(SwipeActions swipeActions, SwipeAction swipeAction, SwipeAction swipeAction2, int i) {
        if ((i & 1) != 0) {
            swipeAction = swipeActions.leftAction;
        }
        if ((i & 2) != 0) {
            swipeAction2 = swipeActions.rightAction;
        }
        swipeActions.getClass();
        swipeAction.getClass();
        swipeAction2.getClass();
        return new SwipeActions(swipeAction, swipeAction2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwipeActions)) {
            return false;
        }
        SwipeActions swipeActions = (SwipeActions) obj;
        return this.leftAction == swipeActions.leftAction && this.rightAction == swipeActions.rightAction;
    }

    public final int hashCode() {
        return this.rightAction.hashCode() + (this.leftAction.hashCode() * 31);
    }

    public final String toString() {
        return "SwipeActions(leftAction=" + this.leftAction + ", rightAction=" + this.rightAction + ")";
    }
}
