package b.m.b;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.android.quickstep.fallback.RecentsState;

/* loaded from: classes.dex */
public class F {
    public final DisplayMetrics mDisplayMetrics;
    public AbstractC0176f0 mLayoutManager;
    public float mMillisPerPixel;
    public boolean mPendingInitialRun;
    public RecyclerView mRecyclerView;
    public boolean mRunning;
    public boolean mStarted;
    public PointF mTargetVector;
    public View mTargetView;
    public int mTargetPosition = -1;
    public final r0 mRecyclingAction = new r0(0, 0);
    public final LinearInterpolator mLinearInterpolator = new LinearInterpolator();
    public final DecelerateInterpolator mDecelerateInterpolator = new DecelerateInterpolator();
    public boolean mHasCalculatedMillisPerPixel = false;
    public int mInterimTargetDx = 0;
    public int mInterimTargetDy = 0;

    public F(Context context) {
        this.mDisplayMetrics = context.getResources().getDisplayMetrics();
    }

    public int calculateDtToFit(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    public int calculateTimeForScrolling(int i) {
        float abs = Math.abs(i);
        if (!this.mHasCalculatedMillisPerPixel) {
            this.mMillisPerPixel = 25.0f / this.mDisplayMetrics.densityDpi;
            this.mHasCalculatedMillisPerPixel = true;
        }
        return (int) Math.ceil(abs * this.mMillisPerPixel);
    }

    public PointF computeScrollVectorForPosition(int i) {
        Object obj = this.mLayoutManager;
        if (obj instanceof s0) {
            return ((s0) obj).computeScrollVectorForPosition(i);
        }
        StringBuilder f = c.a.c.a.a.f("You should override computeScrollVectorForPosition when the LayoutManager does not implement ");
        f.append(s0.class.getCanonicalName());
        Log.w(RecyclerView.TAG, f.toString());
        return null;
    }

    public int getVerticalSnapPreference() {
        PointF pointF = this.mTargetVector;
        if (pointF != null) {
            float f = pointF.y;
            if (f != RecentsState.NO_OFFSET) {
                return f > RecentsState.NO_OFFSET ? 1 : -1;
            }
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAnimation(int r15, int r16) {
        /*
            Method dump skipped, instructions count: 454
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: b.m.b.F.onAnimation(int, int):void");
    }

    public void onStart() {
    }

    public void onStop() {
        this.mInterimTargetDy = 0;
        this.mInterimTargetDx = 0;
        this.mTargetVector = null;
    }

    public final void stop() {
        if (this.mRunning) {
            this.mRunning = false;
            onStop();
            this.mRecyclerView.mState.f1205a = -1;
            this.mTargetView = null;
            this.mTargetPosition = -1;
            this.mPendingInitialRun = false;
            this.mLayoutManager.onSmoothScrollerStopped(this);
            this.mLayoutManager = null;
            this.mRecyclerView = null;
        }
    }
}
