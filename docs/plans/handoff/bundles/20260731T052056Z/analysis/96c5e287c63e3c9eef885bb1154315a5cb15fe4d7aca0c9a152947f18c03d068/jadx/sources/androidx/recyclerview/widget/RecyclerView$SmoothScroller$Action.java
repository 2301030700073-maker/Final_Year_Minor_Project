package androidx.recyclerview.widget;

import android.util.Log;
import android.view.animation.BaseInterpolator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecyclerView$SmoothScroller$Action {
    public boolean mChanged;
    public int mConsecutiveUpdates;
    public int mDuration;
    public int mDx;
    public int mDy;
    public BaseInterpolator mInterpolator;
    public int mJumpToPosition;

    public final void runIfNecessary(RecyclerView recyclerView) {
        int i = this.mJumpToPosition;
        if (i >= 0) {
            this.mJumpToPosition = -1;
            recyclerView.jumpToPositionForSmoothScroller(i);
            this.mChanged = false;
            return;
        }
        if (!this.mChanged) {
            this.mConsecutiveUpdates = 0;
            return;
        }
        BaseInterpolator baseInterpolator = this.mInterpolator;
        if (baseInterpolator != null && this.mDuration < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("If you provide an interpolator, you must set a positive duration");
            return;
        }
        int i2 = this.mDuration;
        if (i2 < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Scroll duration must be a positive number");
            return;
        }
        recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, i2, baseInterpolator);
        int i3 = this.mConsecutiveUpdates + 1;
        this.mConsecutiveUpdates = i3;
        if (i3 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.mChanged = false;
    }
}
