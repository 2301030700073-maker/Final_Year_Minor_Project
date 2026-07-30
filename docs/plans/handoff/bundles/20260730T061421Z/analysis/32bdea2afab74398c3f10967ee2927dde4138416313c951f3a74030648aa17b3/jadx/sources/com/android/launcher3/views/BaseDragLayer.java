package com.android.launcher3.views;

import android.annotation.TargetApi;
import android.app.WallpaperInfo;
import android.app.WallpaperManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Insets;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import c.a.c.a.a;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.CheckLongPressHelper;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.DefaultDisplay;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public abstract class BaseDragLayer extends InsettableFrameLayout {
    public static final Property LAYOUT_X = new Property(Integer.TYPE, "x") { // from class: com.android.launcher3.views.BaseDragLayer.1
        @Override // android.util.Property
        public Object get(Object obj) {
            return Integer.valueOf(((LayoutParams) obj).x);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ((LayoutParams) obj).x = ((Integer) obj2).intValue();
        }
    };
    public static final Property LAYOUT_Y = new Property(Integer.TYPE, "y") { // from class: com.android.launcher3.views.BaseDragLayer.2
        @Override // android.util.Property
        public Object get(Object obj) {
            return Integer.valueOf(((LayoutParams) obj).y);
        }

        @Override // android.util.Property
        public void set(Object obj, Object obj2) {
            ((LayoutParams) obj).y = ((Integer) obj2).intValue();
        }
    };
    public static final int TOUCH_DISPATCHING_FROM_PROXY = 4;
    public static final int TOUCH_DISPATCHING_FROM_VIEW = 1;
    public static final int TOUCH_DISPATCHING_FROM_VIEW_GESTURE_REGION = 2;
    public static final int TOUCH_DISPATCHING_TO_VIEW_IN_PROGRESS = 8;
    public TouchController mActiveController;
    public final Context mActivity;
    public boolean mAllowSysuiScrims;
    public TouchController[] mControllers;
    public final Rect mHitRect;
    public final MultiValueAlpha mMultiValueAlpha;
    public TouchController mProxyTouchController;

    @ViewDebug.ExportedProperty(category = "launcher")
    public final RectF mSystemGestureRegion;
    public final float[] mTmpRectPoints;
    public final float[] mTmpXY;
    public TouchCompleteListener mTouchCompleteListener;
    public int mTouchDispatchState;
    public final SimpleBroadcastReceiver mWallpaperChangeReceiver;
    public final WallpaperManager mWallpaperManager;
    public final String[] mWallpapersWithoutSysuiScrims;

    public interface TouchCompleteListener {
    }

    public BaseDragLayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.mTmpXY = new float[2];
        this.mTmpRectPoints = new float[4];
        this.mHitRect = new Rect();
        this.mSystemGestureRegion = new RectF();
        this.mTouchDispatchState = 0;
        this.mWallpaperChangeReceiver = new SimpleBroadcastReceiver(new Consumer() { // from class: c.a.a.b1.f
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BaseDragLayer.this.onWallpaperChanged((Intent) obj);
            }
        });
        this.mAllowSysuiScrims = true;
        this.mActivity = (Context) ActivityContext.lookupContext(context);
        this.mMultiValueAlpha = new MultiValueAlpha(this, i);
        this.mWallpaperManager = (WallpaperManager) context.getSystemService(WallpaperManager.class);
        this.mWallpapersWithoutSysuiScrims = getResources().getStringArray(R.array.live_wallpapers_remove_sysui_scrims);
    }

    private boolean computeAllowSysuiScrims(WallpaperInfo wallpaperInfo) {
        if (wallpaperInfo == null) {
            return true;
        }
        ComponentName component = wallpaperInfo.getComponent();
        for (String str : this.mWallpapersWithoutSysuiScrims) {
            if (component.equals(ComponentName.unflattenFromString(str))) {
                return false;
            }
        }
        return true;
    }

    private TouchController findControllerToHandleTouch(MotionEvent motionEvent) {
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity);
        if (topOpenView != null && ((isEventInLauncher(motionEvent) || topOpenView.canInterceptEventsInSystemGestureRegion()) && topOpenView.onControllerInterceptTouchEvent(motionEvent))) {
            return topOpenView;
        }
        for (TouchController touchController : this.mControllers) {
            if (touchController.onControllerInterceptTouchEvent(motionEvent)) {
                return touchController;
            }
        }
        return null;
    }

    private boolean isEventInLauncher(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (x >= this.mSystemGestureRegion.left) {
            float width = getWidth();
            RectF rectF = this.mSystemGestureRegion;
            if (x < width - rectF.right && y >= rectF.top && y < getHeight() - this.mSystemGestureRegion.bottom) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onWallpaperChanged(Intent intent) {
        WallpaperInfo wallpaperInfo = this.mWallpaperManager.getWallpaperInfo();
        boolean z = this.mAllowSysuiScrims;
        boolean computeAllowSysuiScrims = computeAllowSysuiScrims(wallpaperInfo);
        this.mAllowSysuiScrims = computeAllowSysuiScrims;
        if (computeAllowSysuiScrims != z) {
            setInsets(this.mInsets);
        }
    }

    public void addAccessibleChildToList(View view, ArrayList arrayList) {
        if (view.isImportantForAccessibility()) {
            arrayList.add(view);
        } else {
            view.addChildrenForAccessibility(arrayList);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addChildrenForAccessibility(ArrayList arrayList) {
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType((ActivityContext) this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE);
        if (topOpenViewWithType != null) {
            addAccessibleChildToList(topOpenViewWithType, arrayList);
        } else {
            super.addChildrenForAccessibility(arrayList);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i, int i2) {
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity);
        if (topOpenView != null) {
            topOpenView.addFocusables(arrayList, i);
        } else {
            super.addFocusables(arrayList, i, i2);
        }
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(29)
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        if (Utilities.ATLEAST_Q) {
            Insets mandatorySystemGestureInsets = windowInsets.getMandatorySystemGestureInsets();
            this.mSystemGestureRegion.set(mandatorySystemGestureInsets.left, mandatorySystemGestureInsets.top, mandatorySystemGestureInsets.right, mandatorySystemGestureInsets.bottom);
        }
        return super.dispatchApplyWindowInsets(windowInsets);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            if ((this.mTouchDispatchState & 8) != 0) {
                int action2 = motionEvent.getAction();
                motionEvent.setAction(3);
                super.dispatchTouchEvent(motionEvent);
                motionEvent.setAction(action2);
            }
            this.mTouchDispatchState |= 9;
            if (isEventInLauncher(motionEvent)) {
                this.mTouchDispatchState &= -3;
            } else {
                this.mTouchDispatchState |= 2;
            }
        } else if (action == 1 || action == 3) {
            int i = this.mTouchDispatchState & (-3);
            this.mTouchDispatchState = i;
            int i2 = i & (-2);
            this.mTouchDispatchState = i2;
            this.mTouchDispatchState = i2 & (-9);
        }
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        return AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity) != null;
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.println(str + "DragLayer:");
        if (this.mActiveController != null) {
            StringBuilder g = a.g(str, "\tactiveController: ");
            g.append(this.mActiveController);
            printWriter.println(g.toString());
            this.mActiveController.dump(str + "\t", printWriter);
        }
        StringBuilder g2 = a.g(str, "\tdragLayerAlpha : ");
        g2.append(this.mMultiValueAlpha);
        printWriter.println(g2.toString());
    }

    public boolean findActiveController(MotionEvent motionEvent) {
        this.mActiveController = null;
        if ((this.mTouchDispatchState & 6) == 0) {
            this.mActiveController = findControllerToHandleTouch(motionEvent);
        }
        return this.mActiveController != null;
    }

    public MultiValueAlpha.AlphaProperty getAlphaProperty(int i) {
        return this.mMultiValueAlpha.mMyProperties[i];
    }

    public float getDescendantCoordRelativeToSelf(View view, float[] fArr, boolean z) {
        return Utilities.getDescendantCoordRelativeToAncestor(view, this, fArr, z, false);
    }

    public float getDescendantRectRelativeToSelf(View view, Rect rect) {
        float[] fArr = this.mTmpRectPoints;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = view.getWidth();
        this.mTmpRectPoints[3] = view.getHeight();
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf(view, this.mTmpRectPoints);
        float[] fArr2 = this.mTmpRectPoints;
        rect.left = Math.round(Math.min(fArr2[0], fArr2[2]));
        float[] fArr3 = this.mTmpRectPoints;
        rect.top = Math.round(Math.min(fArr3[1], fArr3[3]));
        float[] fArr4 = this.mTmpRectPoints;
        rect.right = Math.round(Math.max(fArr4[0], fArr4[2]));
        float[] fArr5 = this.mTmpRectPoints;
        rect.bottom = Math.round(Math.max(fArr5[1], fArr5[3]));
        return descendantCoordRelativeToSelf;
    }

    public float getLocationInDragLayer(View view, int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        return getDescendantCoordRelativeToSelf(view, iArr);
    }

    public void getViewRectRelativeToSelf(View view, Rect rect) {
        int[] iArr = new int[2];
        getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        view.getLocationInWindow(iArr);
        int i3 = iArr[0] - i;
        int i4 = iArr[1] - i2;
        rect.set(i3, i4, view.getMeasuredWidth() + i3, view.getMeasuredHeight() + i4);
    }

    public boolean isEventOverView(View view, MotionEvent motionEvent) {
        getDescendantRectRelativeToSelf(view, this.mHitRect);
        return this.mHitRect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public void mapCoordInSelfToDescendant(View view, float[] fArr) {
        Utilities.mapCoordInSelfToDescendant(view, this, fArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mWallpaperChangeReceiver.register(this.mActivity, "android.intent.action.WALLPAPER_CHANGED");
        onWallpaperChanged(null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mActivity.unregisterReceiver(this.mWallpaperChangeReceiver);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            TouchCompleteListener touchCompleteListener = this.mTouchCompleteListener;
            if (touchCompleteListener != null) {
                CheckLongPressHelper checkLongPressHelper = ((LauncherAppWidgetHostView) touchCompleteListener).mLongPressHelper;
                if (!checkLongPressHelper.mHasPerformedLongPress) {
                    checkLongPressHelper.cancelLongPress();
                }
            }
            this.mTouchCompleteListener = null;
        } else if (action == 0) {
            ((ActivityContext) this.mActivity).finishAutoCancelActionMode();
        }
        return findActiveController(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (layoutParams instanceof LayoutParams) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                if (layoutParams2.customPosition) {
                    int i6 = layoutParams2.x;
                    int i7 = layoutParams2.y;
                    childAt.layout(i6, i7, ((FrameLayout.LayoutParams) layoutParams2).width + i6, ((FrameLayout.LayoutParams) layoutParams2).height + i7);
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        AbstractFloatingView topOpenView = AbstractFloatingView.getTopOpenView((ActivityContext) this.mActivity);
        return topOpenView != null ? topOpenView.requestFocus(i, rect) : super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AbstractFloatingView topOpenViewWithType = AbstractFloatingView.getTopOpenViewWithType((ActivityContext) this.mActivity, AbstractFloatingView.TYPE_ACCESSIBLE);
        if (topOpenViewWithType == null) {
            return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
        }
        if (view == topOpenViewWithType) {
            return super.onRequestSendAccessibilityEvent(view, accessibilityEvent);
        }
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            TouchCompleteListener touchCompleteListener = this.mTouchCompleteListener;
            if (touchCompleteListener != null) {
                CheckLongPressHelper checkLongPressHelper = ((LauncherAppWidgetHostView) touchCompleteListener).mLongPressHelper;
                if (!checkLongPressHelper.mHasPerformedLongPress) {
                    checkLongPressHelper.cancelLongPress();
                }
            }
            this.mTouchCompleteListener = null;
        }
        TouchController touchController = this.mActiveController;
        return touchController != null ? touchController.onControllerTouchEvent(motionEvent) : findActiveController(motionEvent);
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof AbstractFloatingView) {
            final AbstractFloatingView abstractFloatingView = (AbstractFloatingView) view;
            if (abstractFloatingView.isOpen()) {
                postDelayed(new Runnable() { // from class: c.a.a.b1.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbstractFloatingView.this.close(false);
                    }
                }, DefaultDisplay.getSingleFrameMs(getContext()));
            }
        }
    }

    public boolean proxyTouchEvent(MotionEvent motionEvent, boolean z) {
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        boolean z3 = (this.mTouchDispatchState & 1) != 0;
        if (z && !z3 && (actionMasked == 0 || (this.mTouchDispatchState & 8) != 0)) {
            this.mTouchDispatchState |= 8;
            super.dispatchTouchEvent(motionEvent);
            if (actionMasked == 1 || actionMasked == 3) {
                int i = this.mTouchDispatchState & (-9);
                this.mTouchDispatchState = i;
                this.mTouchDispatchState = i & (-5);
            }
            return true;
        }
        TouchController touchController = this.mProxyTouchController;
        if (touchController != null) {
            z2 = touchController.onControllerTouchEvent(motionEvent);
        } else {
            if (actionMasked == 0) {
                if (!z3 || this.mActiveController == null) {
                    this.mTouchDispatchState |= 4;
                } else {
                    this.mTouchDispatchState &= -5;
                }
            }
            if ((this.mTouchDispatchState & 4) != 0) {
                this.mProxyTouchController = findControllerToHandleTouch(motionEvent);
            }
            z2 = this.mProxyTouchController != null;
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.mProxyTouchController = null;
            this.mTouchDispatchState &= -5;
        }
        return z2;
    }

    public abstract void recreateControllers();

    public void setTouchCompleteListener(TouchCompleteListener touchCompleteListener) {
        this.mTouchCompleteListener = touchCompleteListener;
    }

    public class LayoutParams extends InsettableFrameLayout.LayoutParams {
        public boolean customPosition;
        public int x;
        public int y;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.customPosition = false;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.customPosition = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.customPosition = false;
        }
    }

    public float getDescendantCoordRelativeToSelf(View view, int[] iArr) {
        float[] fArr = this.mTmpXY;
        fArr[0] = iArr[0];
        fArr[1] = iArr[1];
        float descendantCoordRelativeToSelf = getDescendantCoordRelativeToSelf(view, fArr);
        Utilities.roundArray(this.mTmpXY, iArr);
        return descendantCoordRelativeToSelf;
    }

    public void mapCoordInSelfToDescendant(View view, int[] iArr) {
        float[] fArr = this.mTmpXY;
        fArr[0] = iArr[0];
        fArr[1] = iArr[1];
        Utilities.mapCoordInSelfToDescendant(view, this, fArr);
        Utilities.roundArray(this.mTmpXY, iArr);
    }

    public boolean isEventOverView(View view, MotionEvent motionEvent, View view2) {
        int[] iArr = {(int) motionEvent.getX(), (int) motionEvent.getY()};
        getDescendantCoordRelativeToSelf(view2, iArr);
        getDescendantRectRelativeToSelf(view, this.mHitRect);
        return this.mHitRect.contains(iArr[0], iArr[1]);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public float getDescendantCoordRelativeToSelf(View view, float[] fArr) {
        return getDescendantCoordRelativeToSelf(view, fArr, false);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }
}
