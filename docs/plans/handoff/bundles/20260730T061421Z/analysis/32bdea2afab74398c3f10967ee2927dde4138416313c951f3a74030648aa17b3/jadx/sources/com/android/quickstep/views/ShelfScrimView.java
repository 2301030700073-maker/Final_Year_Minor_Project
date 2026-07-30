package com.android.quickstep.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import b.l.W;
import com.android.launcher3.BaseQuickstepLauncher;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.uioverrides.states.OverviewState;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.views.ScrimView;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.LayoutUtils;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class ShelfScrimView extends ScrimView implements SysUINavigationMode.NavigationModeChangeListener {
    public static final float BOTTOM_CORNER_RADIUS_RATIO = 2.0f;
    public static final float SCRIM_CATCHUP_THRESHOLD = 0.2f;
    public Interpolator mAfterMidProgressColorInterpolator;
    public Interpolator mBeforeMidProgressColorInterpolator;
    public float mDragHandleProgress;
    public boolean mDrawingFlatColor;
    public final int mEndAlpha;
    public boolean mIsTwoZoneSwipeModel;
    public final int mMaxScrimAlpha;
    public int mMidAlpha;
    public float mMidProgress;
    public final OnboardingPrefs mOnboardingPrefs;
    public final Paint mPaint;
    public final float mRadius;
    public int mRemainingScreenColor;
    public final Path mRemainingScreenPath;
    public boolean mRemainingScreenPathValid;
    public int mShelfColor;
    public float mShelfTop;
    public float mShelfTopAtThreshold;
    public float mShiftRange;
    public SysUINavigationMode.Mode mSysUINavigationMode;
    public final Path mTempPath;
    public float mTopOffset;

    public ShelfScrimView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Interpolator interpolator = Interpolators.ACCEL;
        this.mBeforeMidProgressColorInterpolator = interpolator;
        this.mAfterMidProgressColorInterpolator = interpolator;
        this.mTempPath = new Path();
        this.mRemainingScreenPath = new Path();
        this.mRemainingScreenPathValid = false;
        this.mMaxScrimAlpha = Math.round(LauncherState.OVERVIEW.getOverviewScrimAlpha(this.mLauncher) * 255.0f);
        this.mEndAlpha = Color.alpha(this.mEndScrim);
        this.mRadius = W.getDialogCornerRadius(context) * 2.0f;
        this.mPaint = new Paint(1);
        this.mOnboardingPrefs = ((BaseQuickstepLauncher) this.mLauncher).mOnboardingPrefs;
        this.mDrawingFlatColor = true;
    }

    private void drawBackground(Canvas canvas) {
        if (this.mDrawingFlatColor) {
            int i = this.mCurrentFlatColor;
            if (i != 0) {
                canvas.drawColor(i);
                return;
            }
            return;
        }
        if (Color.alpha(this.mShelfColor) == 0) {
            return;
        }
        if (this.mProgress <= RecentsState.NO_OFFSET) {
            canvas.drawColor(this.mShelfColor);
            return;
        }
        int height = getHeight();
        int width = getWidth();
        if (this.mRemainingScreenColor != 0) {
            if (!this.mRemainingScreenPathValid) {
                this.mTempPath.reset();
                Path path = this.mTempPath;
                float f = height;
                float f2 = this.mRadius;
                float f3 = width;
                path.addRoundRect(RecentsState.NO_OFFSET, f - f2, f3, 10.0f + f + f2, f2, f2, Path.Direction.CW);
                this.mRemainingScreenPath.reset();
                this.mRemainingScreenPath.addRect(RecentsState.NO_OFFSET, RecentsState.NO_OFFSET, f3, f, Path.Direction.CW);
                this.mRemainingScreenPath.op(this.mTempPath, Path.Op.DIFFERENCE);
            }
            float f4 = (height - this.mRadius) - this.mShelfTop;
            canvas.translate(RecentsState.NO_OFFSET, -f4);
            this.mPaint.setColor(this.mRemainingScreenColor);
            canvas.drawPath(this.mRemainingScreenPath, this.mPaint);
            canvas.translate(RecentsState.NO_OFFSET, f4);
        }
        this.mPaint.setColor(this.mShelfColor);
        float f5 = this.mRadius;
        canvas.drawRoundRect(RecentsState.NO_OFFSET, this.mShelfTop, width, height + f5, f5, f5, this.mPaint);
    }

    @Override // com.android.launcher3.views.ScrimView
    public float getVisualTop() {
        return this.mShelfTop;
    }

    @Override // com.android.launcher3.views.ScrimView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        onNavigationModeChanged(((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(getContext())).addModeChangeListener(this));
    }

    @Override // com.android.launcher3.views.ScrimView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((SysUINavigationMode) SysUINavigationMode.INSTANCE.b(getContext())).removeModeChangeListener(this);
    }

    @Override // com.android.launcher3.views.ScrimView, android.view.View
    public void onDraw(Canvas canvas) {
        drawBackground(canvas);
        drawDragHandle(canvas);
    }

    @Override // com.android.quickstep.SysUINavigationMode.NavigationModeChangeListener
    public void onNavigationModeChanged(SysUINavigationMode.Mode mode) {
        this.mSysUINavigationMode = mode;
        if (mode == SysUINavigationMode.Mode.NO_BUTTON) {
            this.mBeforeMidProgressColorInterpolator = Interpolators.ACCEL_2;
            this.mAfterMidProgressColorInterpolator = Interpolators.ACCEL;
            this.mIsTwoZoneSwipeModel = FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get();
        } else {
            Interpolator interpolator = Interpolators.ACCEL;
            this.mBeforeMidProgressColorInterpolator = interpolator;
            this.mAfterMidProgressColorInterpolator = Interpolators.clampToProgress(interpolator, 0.5f, 1.0f);
            this.mIsTwoZoneSwipeModel = false;
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mRemainingScreenPathValid = false;
    }

    @Override // com.android.launcher3.views.ScrimView
    public void reInitUi() {
        DeviceProfile deviceProfile = ((BaseQuickstepLauncher) this.mLauncher).getDeviceProfile();
        boolean isVerticalBarLayout = deviceProfile.isVerticalBarLayout();
        this.mDrawingFlatColor = isVerticalBarLayout;
        if (!isVerticalBarLayout) {
            this.mRemainingScreenPathValid = false;
            this.mShiftRange = ((BaseQuickstepLauncher) this.mLauncher).mAllAppsController.mShiftRange;
            Context context = getContext();
            if ((LauncherState.OVERVIEW.getVisibleElements(this.mLauncher) & 8) == 0) {
                this.mDragHandleProgress = 1.0f;
                if (FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get() && SysUINavigationMode.removeShelfFromOverview(context)) {
                    TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{R.attr.allAppsInterimScrimAlpha});
                    int integer = obtainStyledAttributes.getInteger(0, 0);
                    obtainStyledAttributes.recycle();
                    this.mMidAlpha = integer;
                    this.mMidProgress = OverviewState.getDefaultVerticalProgress(this.mLauncher);
                } else {
                    this.mMidAlpha = 0;
                    this.mMidProgress = 1.0f;
                }
            } else {
                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(new int[]{R.attr.allAppsInterimScrimAlpha});
                int integer2 = obtainStyledAttributes2.getInteger(0, 0);
                obtainStyledAttributes2.recycle();
                this.mMidAlpha = integer2;
                this.mMidProgress = LauncherState.OVERVIEW.getVerticalProgress(this.mLauncher);
                Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding();
                this.mDragHandleProgress = 1.0f - (Math.min(((deviceProfile.hotseatBarSizePx + deviceProfile.mInsets.bottom) + hotseatLayoutPadding.bottom) + hotseatLayoutPadding.top, LayoutUtils.getDefaultSwipeHeight(context, deviceProfile)) / this.mShiftRange);
            }
            float f = deviceProfile.mInsets.top - this.mDragHandleSize.y;
            this.mTopOffset = f;
            this.mShelfTopAtThreshold = (this.mShiftRange * 0.2f) + f;
        }
        updateColors();
        updateSysUiColors();
        updateDragHandleAlpha();
        invalidate();
    }

    @Override // com.android.launcher3.views.ScrimView
    public boolean shouldDragHandleBeVisible() {
        return (this.mIsTwoZoneSwipeModel && !this.mOnboardingPrefs.hasReachedMaxCount(OnboardingPrefs.ALL_APPS_COUNT)) || super.shouldDragHandleBeVisible();
    }

    @Override // com.android.launcher3.views.ScrimView
    public void updateColors() {
        super.updateColors();
        this.mDragHandleOffset = RecentsState.NO_OFFSET;
        if (this.mDrawingFlatColor) {
            return;
        }
        float f = this.mProgress;
        float f2 = this.mDragHandleProgress;
        if (f < f2) {
            this.mDragHandleOffset = (f2 - f) * this.mShiftRange;
        }
        float f3 = this.mProgress;
        if (f3 >= 0.2f) {
            this.mShelfTop = (this.mShiftRange * f3) + this.mTopOffset;
        } else {
            this.mShelfTop = Utilities.mapRange(f3 / 0.2f, -this.mRadius, this.mShelfTopAtThreshold);
        }
        float f4 = this.mProgress;
        if (f4 >= 1.0f) {
            this.mRemainingScreenColor = 0;
            this.mShelfColor = 0;
            LauncherState launcherState = (LauncherState) ((BaseQuickstepLauncher) this.mLauncher).getStateManager().mState;
            if (this.mSysUINavigationMode == SysUINavigationMode.Mode.NO_BUTTON) {
                if ((launcherState == LauncherState.BACKGROUND_APP || launcherState == LauncherState.QUICK_SWITCH) && ((BaseQuickstepLauncher) this.mLauncher).mShelfPeekAnim.isPeeking()) {
                    this.mShelfColor = GraphicsUtils.setColorAlphaBound(this.mEndScrim, this.mMidAlpha);
                    return;
                }
                return;
            }
            return;
        }
        float f5 = this.mMidProgress;
        if (f4 >= f5) {
            this.mRemainingScreenColor = 0;
            this.mShelfColor = GraphicsUtils.setColorAlphaBound(this.mEndScrim, Math.round(Utilities.mapToRange(f4, f5, 1.0f, this.mMidAlpha, RecentsState.NO_OFFSET, this.mBeforeMidProgressColorInterpolator)));
        } else {
            this.mShelfColor = GraphicsUtils.setColorAlphaBound(this.mEndScrim, Math.round(Utilities.mapToRange(f4, RecentsState.NO_OFFSET, f5, this.mEndAlpha, this.mMidAlpha, this.mAfterMidProgressColorInterpolator)));
            this.mRemainingScreenColor = GraphicsUtils.setColorAlphaBound(this.mScrimColor, Math.round(Utilities.mapToRange(this.mProgress, RecentsState.NO_OFFSET, this.mMidProgress, this.mMaxScrimAlpha, RecentsState.NO_OFFSET, Interpolators.LINEAR)));
        }
    }

    @Override // com.android.launcher3.views.ScrimView
    public void updateSysUiColors() {
        if (this.mDrawingFlatColor) {
            super.updateSysUiColors();
            return;
        }
        if (this.mShelfTop <= ((float) ((BaseQuickstepLauncher) this.mLauncher).getDeviceProfile().mInsets.top) / 2.0f) {
            ((BaseQuickstepLauncher) this.mLauncher).getSystemUiController().updateUiState(1, !this.mIsScrimDark);
        } else {
            ((BaseQuickstepLauncher) this.mLauncher).getSystemUiController().updateUiState(1, 0);
        }
    }
}
