package com.android.quickstep.fallback;

import android.content.Context;
import c.a.c.a.a;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.uioverrides.states.OverviewModalTaskState;
import com.android.quickstep.RecentsActivity;

/* loaded from: classes.dex */
public class RecentsState implements BaseState {
    public static final float NO_OFFSET = 0.0f;
    public static final float NO_SCALE = 1.0f;
    public final int mFlags;
    public final int ordinal;
    public static final int FLAG_MODAL = BaseState.getFlag(0);
    public static final int FLAG_HAS_BUTTONS = BaseState.getFlag(1);
    public static final int FLAG_FULL_SCREEN = BaseState.getFlag(2);
    public static final RecentsState DEFAULT = new RecentsState(0, FLAG_HAS_BUTTONS);
    public static final RecentsState MODAL_TASK = new ModalState(1, (FLAG_HAS_BUTTONS | 2) | FLAG_MODAL);
    public static final RecentsState BACKGROUND_APP = new BackgroundAppState(2, FLAG_FULL_SCREEN | 3);

    public class BackgroundAppState extends RecentsState {
        public BackgroundAppState(int i, int i2) {
            super(i, i2);
        }

        @Override // com.android.quickstep.fallback.RecentsState
        public float[] getOverviewScaleAndOffset(RecentsActivity recentsActivity) {
            return com.android.launcher3.uioverrides.states.BackgroundAppState.getOverviewScaleAndOffsetForBackgroundState(recentsActivity);
        }
    }

    public class ModalState extends RecentsState {
        public ModalState(int i, int i2) {
            super(i, i2);
        }

        @Override // com.android.quickstep.fallback.RecentsState
        public float[] getOverviewScaleAndOffset(RecentsActivity recentsActivity) {
            return OverviewModalTaskState.getOverviewScaleAndOffsetForModalState(recentsActivity);
        }
    }

    public RecentsState(int i, int i2) {
        this.ordinal = i;
        this.mFlags = i2;
    }

    public float getOverviewModalness() {
        if (hasFlag(FLAG_MODAL)) {
            return 1.0f;
        }
        return NO_OFFSET;
    }

    public float[] getOverviewScaleAndOffset(RecentsActivity recentsActivity) {
        return new float[]{1.0f, NO_OFFSET};
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public int getTransitionDuration(Context context) {
        return 250;
    }

    public boolean hasButtons() {
        return hasFlag(FLAG_HAS_BUTTONS);
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public final boolean hasFlag(int i) {
        return (this.mFlags & i) != 0;
    }

    public boolean isFullScreen() {
        return hasFlag(FLAG_FULL_SCREEN);
    }

    public String toString() {
        StringBuilder f = a.f("Ordinal-");
        f.append(this.ordinal);
        return f.toString();
    }

    @Override // com.android.launcher3.statemanager.BaseState
    public RecentsState getHistoryForState(RecentsState recentsState) {
        return DEFAULT;
    }
}
