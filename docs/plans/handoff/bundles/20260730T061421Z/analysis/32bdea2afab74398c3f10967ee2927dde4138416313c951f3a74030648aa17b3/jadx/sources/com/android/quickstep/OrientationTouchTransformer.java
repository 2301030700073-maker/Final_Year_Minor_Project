package com.android.quickstep;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.RectF;
import android.util.SparseArray;
import android.view.MotionEvent;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.util.DefaultDisplay;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.systemui.shared.R;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class OrientationTouchTransformer {
    public static final boolean DEBUG = false;
    public static final int MAX_ORIENTATIONS = 4;
    public static final int QUICKSTEP_ROTATION_UNINITIALIZED = -1;
    public static final String TAG = "OrientationTouchTransformer";
    public int mActiveTouchRotation;
    public QuickStepContractInfo mContractInfo;
    public int mCurrentDisplayRotation;
    public boolean mEnableMultipleRegions;
    public OrientationRectF mLastRectTouched;
    public SysUINavigationMode.Mode mMode;
    public Resources mResources;
    public final Matrix mTmpMatrix = new Matrix();
    public final float[] mTmpPoint = new float[2];
    public SparseArray mSwipeTouchRegions = new SparseArray(4);
    public final RectF mAssistantLeftRegion = new RectF();
    public final RectF mAssistantRightRegion = new RectF();
    public int mQuickStepStartingRotation = -1;

    public class OrientationRectF extends RectF {
        public float mHeight;
        public int mRotation;
        public float mWidth;

        public OrientationRectF(float f, float f2, float f3, float f4, int i) {
            super(f, f2, f3, f4);
            this.mRotation = i;
            this.mHeight = f4;
            this.mWidth = f3;
        }

        public boolean applyTransform(MotionEvent motionEvent, boolean z) {
            OrientationTouchTransformer.this.mTmpMatrix.reset();
            int i = this.mRotation - OrientationTouchTransformer.this.mCurrentDisplayRotation;
            if (i < 0) {
                i += 4;
            }
            RecentsOrientedState.postDisplayRotation(i, this.mHeight, this.mWidth, OrientationTouchTransformer.this.mTmpMatrix);
            if (z) {
                motionEvent.transform(OrientationTouchTransformer.this.mTmpMatrix);
                return true;
            }
            OrientationTouchTransformer.this.mTmpPoint[0] = motionEvent.getX();
            OrientationTouchTransformer.this.mTmpPoint[1] = motionEvent.getY();
            OrientationTouchTransformer.this.mTmpMatrix.mapPoints(OrientationTouchTransformer.this.mTmpPoint);
            if (!contains(OrientationTouchTransformer.this.mTmpPoint[0], OrientationTouchTransformer.this.mTmpPoint[1])) {
                return false;
            }
            motionEvent.transform(OrientationTouchTransformer.this.mTmpMatrix);
            return true;
        }

        @Override // android.graphics.RectF
        public boolean contains(float f, float f2) {
            float f3 = ((RectF) this).left;
            float f4 = ((RectF) this).right;
            if (f3 < f4) {
                float f5 = ((RectF) this).top;
                float f6 = ((RectF) this).bottom;
                if (f5 < f6 && f >= f3 && f <= f4 && f2 >= f5 && f2 <= f6) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.graphics.RectF
        public String toString() {
            StringBuilder g = a.g(super.toString(), " rotation: ");
            g.append(this.mRotation);
            return g.toString();
        }
    }

    public interface QuickStepContractInfo {
        float getWindowCornerRadius();
    }

    public OrientationTouchTransformer(Resources resources, SysUINavigationMode.Mode mode, QuickStepContractInfo quickStepContractInfo) {
        this.mResources = resources;
        this.mMode = mode;
        this.mContractInfo = quickStepContractInfo;
    }

    private OrientationRectF createRegionForDisplay(DefaultDisplay.Info info) {
        Point point = info.realSize;
        int i = info.rotation;
        OrientationRectF orientationRectF = new OrientationRectF(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, point.x, point.y, i);
        if (this.mMode == SysUINavigationMode.Mode.NO_BUTTON) {
            ((RectF) orientationRectF).top = ((RectF) orientationRectF).bottom - getNavbarSize("navigation_bar_gesture_height");
            updateAssistantRegions(orientationRectF);
        } else {
            this.mAssistantLeftRegion.setEmpty();
            this.mAssistantRightRegion.setEmpty();
            if (i == 1) {
                ((RectF) orientationRectF).left = ((RectF) orientationRectF).right - getNavbarSize("navigation_bar_width");
            } else if (i != 3) {
                ((RectF) orientationRectF).top = ((RectF) orientationRectF).bottom - getNavbarSize("navigation_bar_gesture_height");
            } else {
                ((RectF) orientationRectF).right = ((RectF) orientationRectF).left + getNavbarSize("navigation_bar_width");
            }
        }
        return orientationRectF;
    }

    private int getNavbarSize(String str) {
        return W.getNavbarSize(str, this.mResources);
    }

    private void resetSwipeRegions(DefaultDisplay.Info info) {
        int i = info.rotation;
        this.mCurrentDisplayRotation = i;
        OrientationRectF orientationRectF = (OrientationRectF) this.mSwipeTouchRegions.get(i);
        if (orientationRectF == null) {
            orientationRectF = createRegionForDisplay(info);
        }
        this.mSwipeTouchRegions.clear();
        this.mSwipeTouchRegions.put(this.mCurrentDisplayRotation, orientationRectF);
        updateAssistantRegions(orientationRectF);
    }

    private void updateAssistantRegions(OrientationRectF orientationRectF) {
        int navbarSize = getNavbarSize("navigation_bar_gesture_height");
        int dimensionPixelSize = this.mResources.getDimensionPixelSize(R.dimen.gestures_assistant_width);
        float max = Math.max(navbarSize, this.mContractInfo.getWindowCornerRadius());
        RectF rectF = this.mAssistantLeftRegion;
        RectF rectF2 = this.mAssistantRightRegion;
        float f = ((RectF) orientationRectF).bottom;
        rectF2.bottom = f;
        rectF.bottom = f;
        float f2 = ((RectF) orientationRectF).bottom - max;
        rectF2.top = f2;
        rectF.top = f2;
        rectF.left = RecentsState.NO_OFFSET;
        float f3 = dimensionPixelSize;
        rectF.right = f3;
        rectF2.right = ((RectF) orientationRectF).right;
        rectF2.left = ((RectF) orientationRectF).right - f3;
    }

    public void createOrAddTouchRegion(DefaultDisplay.Info info) {
        int i = info.rotation;
        this.mCurrentDisplayRotation = i;
        int i2 = this.mQuickStepStartingRotation;
        if (i2 > -1 && i == i2) {
            resetSwipeRegions(info);
        } else {
            if (((OrientationRectF) this.mSwipeTouchRegions.get(this.mCurrentDisplayRotation)) != null) {
                return;
            }
            if (this.mEnableMultipleRegions) {
                this.mSwipeTouchRegions.put(this.mCurrentDisplayRotation, createRegionForDisplay(info));
            } else {
                resetSwipeRegions(info);
            }
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("OrientationTouchTransformerState: ");
        printWriter.println("  currentActiveRotation=" + getCurrentActiveRotation());
        printWriter.println("  lastTouchedRegion=" + this.mLastRectTouched);
        printWriter.println("  multipleRegionsEnabled=" + this.mEnableMultipleRegions);
        StringBuilder sb = new StringBuilder("  currentTouchableRotations=");
        for (int i = 0; i < this.mSwipeTouchRegions.size(); i++) {
            SparseArray sparseArray = this.mSwipeTouchRegions;
            sb.append(((OrientationRectF) sparseArray.get(sparseArray.keyAt(i))).mRotation);
            sb.append(" ");
        }
        printWriter.println(sb.toString());
    }

    public void enableMultipleRegions(boolean z, DefaultDisplay.Info info) {
        boolean z2 = z && this.mMode != SysUINavigationMode.Mode.TWO_BUTTONS;
        this.mEnableMultipleRegions = z2;
        if (z2) {
            this.mQuickStepStartingRotation = info.rotation;
        } else {
            this.mActiveTouchRotation = 0;
            this.mQuickStepStartingRotation = -1;
        }
        resetSwipeRegions(info);
    }

    public int getCurrentActiveRotation() {
        return this.mActiveTouchRotation;
    }

    public int getQuickStepStartingRotation() {
        return this.mQuickStepStartingRotation;
    }

    public void setNavigationMode(SysUINavigationMode.Mode mode, DefaultDisplay.Info info) {
        if (this.mMode == mode) {
            return;
        }
        this.mMode = mode;
        this.mSwipeTouchRegions.clear();
        resetSwipeRegions(info);
    }

    public void setSingleActiveRegion(DefaultDisplay.Info info) {
        this.mActiveTouchRotation = info.rotation;
        resetSwipeRegions(info);
    }

    public boolean touchInAssistantRegion(MotionEvent motionEvent) {
        return this.mAssistantLeftRegion.contains(motionEvent.getX(), motionEvent.getY()) || this.mAssistantRightRegion.contains(motionEvent.getX(), motionEvent.getY());
    }

    public boolean touchInValidSwipeRegions(float f, float f2) {
        OrientationRectF orientationRectF = this.mLastRectTouched;
        if (orientationRectF != null) {
            return orientationRectF.contains(f, f2);
        }
        return false;
    }

    public void transform(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    OrientationRectF orientationRectF = this.mLastRectTouched;
                    if (orientationRectF == null) {
                        return;
                    }
                    orientationRectF.applyTransform(motionEvent, true);
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 5) {
                        return;
                    }
                }
            }
            OrientationRectF orientationRectF2 = this.mLastRectTouched;
            if (orientationRectF2 == null) {
                return;
            }
            orientationRectF2.applyTransform(motionEvent, true);
            this.mLastRectTouched = null;
            return;
        }
        if (this.mLastRectTouched != null) {
            return;
        }
        for (int i = 0; i < 4; i++) {
            OrientationRectF orientationRectF3 = (OrientationRectF) this.mSwipeTouchRegions.get(i);
            if (orientationRectF3 != null && orientationRectF3.applyTransform(motionEvent, false)) {
                this.mLastRectTouched = orientationRectF3;
                int i2 = orientationRectF3.mRotation;
                this.mActiveTouchRotation = i2;
                if (this.mEnableMultipleRegions && this.mCurrentDisplayRotation == i2) {
                    this.mQuickStepStartingRotation = this.mLastRectTouched.mRotation;
                    resetSwipeRegions();
                    return;
                }
                return;
            }
        }
    }

    private void resetSwipeRegions() {
        OrientationRectF orientationRectF = (OrientationRectF) this.mSwipeTouchRegions.get(this.mCurrentDisplayRotation);
        this.mSwipeTouchRegions.clear();
        if (orientationRectF != null) {
            this.mSwipeTouchRegions.put(this.mCurrentDisplayRotation, orientationRectF);
            updateAssistantRegions(orientationRectF);
        }
    }
}
