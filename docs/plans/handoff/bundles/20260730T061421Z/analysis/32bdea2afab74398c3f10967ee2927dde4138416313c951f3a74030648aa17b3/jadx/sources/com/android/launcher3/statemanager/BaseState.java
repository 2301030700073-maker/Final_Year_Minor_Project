package com.android.launcher3.statemanager;

import android.content.Context;

/* loaded from: classes.dex */
public interface BaseState {
    static int getFlag(int i) {
        return 1 << (i + 2);
    }

    BaseState getHistoryForState(BaseState baseState);

    int getTransitionDuration(Context context);

    boolean hasFlag(int i);

    default boolean shouldDisableRestore() {
        return hasFlag(2);
    }
}
