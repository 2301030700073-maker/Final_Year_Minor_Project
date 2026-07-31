package androidx.recyclerview.widget;

import android.util.Log;
import android.view.animation.Interpolator;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecyclerView$SmoothScroller$Action {
    public boolean mChanged;
    public int mConsecutiveUpdates;
    public int mDuration;
    public int mDx;
    public int mDy;
    public Interpolator mInterpolator;
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
        Interpolator interpolator = this.mInterpolator;
        if (interpolator != null && this.mDuration < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("If you provide an interpolator, you must set a positive duration");
            return;
        }
        int i2 = this.mDuration;
        if (i2 < 1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Scroll duration must be a positive number");
            return;
        }
        recyclerView.mViewFlinger.smoothScrollBy(this.mDx, this.mDy, i2, interpolator);
        int i3 = this.mConsecutiveUpdates + 1;
        this.mConsecutiveUpdates = i3;
        if (i3 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.mChanged = false;
    }
}
