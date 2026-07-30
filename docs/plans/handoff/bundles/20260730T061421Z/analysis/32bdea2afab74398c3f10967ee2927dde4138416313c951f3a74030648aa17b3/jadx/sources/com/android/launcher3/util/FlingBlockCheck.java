package com.android.launcher3.util;

import android.os.SystemClock;

/* loaded from: classes.dex */
public class FlingBlockCheck {
    public boolean mBlockFling;
    public long mBlockFlingTime;

    public void blockFling() {
        this.mBlockFling = true;
        this.mBlockFlingTime = SystemClock.uptimeMillis();
    }
}
