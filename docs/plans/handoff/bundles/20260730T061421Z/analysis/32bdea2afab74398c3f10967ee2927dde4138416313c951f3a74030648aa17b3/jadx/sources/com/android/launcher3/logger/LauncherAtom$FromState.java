package com.android.launcher3.logger;

import c.b.b.M;
import c.b.b.N;

/* loaded from: classes.dex */
public enum LauncherAtom$FromState implements M {
    FROM_STATE_UNSPECIFIED(0),
    FROM_EMPTY(1),
    FROM_CUSTOM(2),
    FROM_SUGGESTED(3);

    public final int value;

    public final class FromStateVerifier implements N {
        public static final N INSTANCE = new FromStateVerifier();

        @Override // c.b.b.N
        public boolean isInRange(int i) {
            return LauncherAtom$FromState.forNumber(i) != null;
        }
    }

    LauncherAtom$FromState(int i) {
        this.value = i;
    }

    public static LauncherAtom$FromState forNumber(int i) {
        if (i == 0) {
            return FROM_STATE_UNSPECIFIED;
        }
        if (i == 1) {
            return FROM_EMPTY;
        }
        if (i == 2) {
            return FROM_CUSTOM;
        }
        if (i != 3) {
            return null;
        }
        return FROM_SUGGESTED;
    }

    @Override // c.b.b.M
    public final int getNumber() {
        return this.value;
    }
}
