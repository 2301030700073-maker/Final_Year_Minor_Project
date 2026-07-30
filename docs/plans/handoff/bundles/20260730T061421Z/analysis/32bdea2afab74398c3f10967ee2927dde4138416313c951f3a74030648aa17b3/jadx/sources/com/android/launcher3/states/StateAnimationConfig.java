package com.android.launcher3.states;

import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public class StateAnimationConfig {
    public long duration;
    public boolean userControlled;
    public int animFlags = 7;
    public final Interpolator[] mInterpolators = new Interpolator[15];

    public void copyTo(StateAnimationConfig stateAnimationConfig) {
        stateAnimationConfig.duration = this.duration;
        stateAnimationConfig.animFlags = this.animFlags;
        stateAnimationConfig.userControlled = this.userControlled;
        for (int i = 0; i < 15; i++) {
            stateAnimationConfig.mInterpolators[i] = this.mInterpolators[i];
        }
    }

    public Interpolator getInterpolator(int i, Interpolator interpolator) {
        Interpolator[] interpolatorArr = this.mInterpolators;
        return interpolatorArr[i] == null ? interpolator : interpolatorArr[i];
    }

    public boolean hasAnimationFlag(int i) {
        return (this.animFlags & i) != 0;
    }

    public boolean onlyPlayAtomicComponent() {
        int i = this.animFlags;
        return (i & 7) == 2 || (i & 7) == 4;
    }
}
