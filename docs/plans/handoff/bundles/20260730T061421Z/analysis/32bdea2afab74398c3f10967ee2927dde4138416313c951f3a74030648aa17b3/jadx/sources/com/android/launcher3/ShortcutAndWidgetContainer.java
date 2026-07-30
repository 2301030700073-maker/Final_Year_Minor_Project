package com.android.launcher3;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.CellLayout;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.quickstep.fallback.RecentsState;
import java.util.Objects;

/* loaded from: classes.dex */
public class ShortcutAndWidgetContainer extends ViewGroup {
    public ActivityContext mActivity;
    public int mCellHeight;
    public int mCellWidth;
    public final int mContainerType;
    public int mCountX;
    public boolean mInvertIfRtl;
    public final int[] mTmpCellXY;
    public final WallpaperManager mWallpaperManager;

    public ShortcutAndWidgetContainer(Context context, int i) {
        super(context);
        this.mTmpCellXY = new int[2];
        this.mInvertIfRtl = false;
        this.mActivity = ActivityContext.lookupContext(context);
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mContainerType = i;
    }

    @Override // android.view.View
    public void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).cancelLongPress();
        }
    }

    public int getCellContentHeight() {
        int measuredHeight = getMeasuredHeight();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        int i = this.mContainerType;
        Objects.requireNonNull(deviceProfile);
        return Math.min(measuredHeight, i != 0 ? i != 1 ? i != 2 ? 0 : deviceProfile.folderCellHeightPx : deviceProfile.hotseatCellHeightPx : deviceProfile.cellHeightPx);
    }

    public View getChildAt(int i, int i2) {
        int i3;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) childAt.getLayoutParams();
            int i5 = layoutParams.cellX;
            if (i5 <= i && i < i5 + layoutParams.cellHSpan && (i3 = layoutParams.cellY) <= i2 && i2 < i3 + layoutParams.cellVSpan) {
                return childAt;
            }
        }
        return null;
    }

    public boolean invertLayoutHorizontally() {
        return this.mInvertIfRtl && Utilities.isRtl(getResources());
    }

    public void layoutChild(View view) {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        if (view instanceof LauncherAppWidgetHostView) {
            LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) view;
            PointF pointF = this.mActivity.getDeviceProfile().appWidgetScale;
            float f = pointF.x;
            float f2 = pointF.y;
            launcherAppWidgetHostView.setScaleToFit(Math.min(f, f2));
            float f3 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            float f4 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            launcherAppWidgetHostView.mTranslationForCentering.set((-(f3 - (f * f3))) / 2.0f, (-(f4 - (f2 * f4))) / 2.0f);
            launcherAppWidgetHostView.updateTranslation();
        }
        int i = layoutParams.x;
        int i2 = layoutParams.y;
        view.layout(i, i2, ((ViewGroup.MarginLayoutParams) layoutParams).width + i, ((ViewGroup.MarginLayoutParams) layoutParams).height + i2);
        if (layoutParams.dropped) {
            layoutParams.dropped = false;
            int[] iArr = this.mTmpCellXY;
            getLocationOnScreen(iArr);
            this.mWallpaperManager.sendWallpaperCommand(getWindowToken(), "android.home.drop", (((ViewGroup.MarginLayoutParams) layoutParams).width / 2) + iArr[0] + i, (((ViewGroup.MarginLayoutParams) layoutParams).height / 2) + iArr[1] + i2, 0, null);
        }
    }

    public void measureChild(View view) {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (view instanceof LauncherAppWidgetHostView) {
            int i = this.mCellWidth;
            int i2 = this.mCellHeight;
            boolean invertLayoutHorizontally = invertLayoutHorizontally();
            int i3 = this.mCountX;
            PointF pointF = deviceProfile.appWidgetScale;
            layoutParams.setup(i, i2, invertLayoutHorizontally, i3, pointF.x, pointF.y);
        } else {
            layoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mCountX, 1.0f, 1.0f);
            int max = (int) Math.max(RecentsState.NO_OFFSET, (((ViewGroup.MarginLayoutParams) layoutParams).height - getCellContentHeight()) / 2.0f);
            int i4 = this.mContainerType == 0 ? deviceProfile.workspaceCellPaddingXPx : (int) (deviceProfile.edgeMarginPx / 2.0f);
            view.setPadding(i4, max, i4, 0);
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) layoutParams).width, 1073741824), View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) layoutParams).height, 1073741824));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && getAlpha() == RecentsState.NO_OFFSET) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                layoutChild(childAt);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int childCount = getChildCount();
        setMeasuredDimension(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (view != null) {
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            requestRectangleOnScreen(rect);
        }
    }

    public void setCellDimensions(int i, int i2, int i3) {
        this.mCellWidth = i;
        this.mCellHeight = i2;
        this.mCountX = i3;
    }

    public void setupLp(View view) {
        CellLayout.LayoutParams layoutParams = (CellLayout.LayoutParams) view.getLayoutParams();
        if (!(view instanceof LauncherAppWidgetHostView)) {
            layoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mCountX, 1.0f, 1.0f);
            return;
        }
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        int i = this.mCellWidth;
        int i2 = this.mCellHeight;
        boolean invertLayoutHorizontally = invertLayoutHorizontally();
        int i3 = this.mCountX;
        PointF pointF = deviceProfile.appWidgetScale;
        layoutParams.setup(i, i2, invertLayoutHorizontally, i3, pointF.x, pointF.y);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
