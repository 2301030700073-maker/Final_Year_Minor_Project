package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.RectEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.IntProperty;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import b.e.d.a;
import b.e.i.E.b;
import b.e.i.q;
import b.f.b.d;
import b.l.W;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.uioverrides.WallpaperColorInfo;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.launcher3.views.ScrimView;
import com.android.launcher3.widget.WidgetsFullSheet;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.List;

/* loaded from: classes.dex */
public class ScrimView extends View implements Insettable, WallpaperColorInfo.OnChangeListener, AccessibilityManager.AccessibilityStateChangeListener {
    public static final int ALPHA_CHANNEL_COUNT = 1;
    public static final IntProperty DRAG_HANDLE_ALPHA = new IntProperty("dragHandleAlpha") { // from class: com.android.launcher3.views.ScrimView.1
        @Override // android.util.Property
        public Integer get(Object obj) {
            return Integer.valueOf(((ScrimView) obj).mDragHandleAlpha);
        }

        @Override // android.util.IntProperty
        public void setValue(Object obj, int i) {
            ((ScrimView) obj).setDragHandleAlpha(i);
        }
    };
    public static final long DRAG_HANDLE_BOUNCE_DELAY_MS = 200;
    public static final long DRAG_HANDLE_BOUNCE_DURATION_MS = 300;
    public static final int DRAG_HANDLE_BOUNCE_REPEAT_COUNT = 2;
    public static final int SETTINGS = 2131755268;
    public static final int WALLPAPERS = 2131755306;
    public static final int WIDGETS = 2131755312;
    public final AccessibilityManager mAM;
    public final AccessibilityHelper mAccessibilityHelper;
    public final StateManager.StateListener mAccessibilityLauncherStateListener;
    public int mCurrentFlatColor;
    public Drawable mDragHandle;
    public int mDragHandleAlpha;
    public ObjectAnimator mDragHandleAnim;
    public final Rect mDragHandleBounds;
    public float mDragHandleOffset;
    public final int mDragHandlePaddingInVerticalBarLayout;
    public final Point mDragHandleSize;
    public final int mDragHandleTouchSize;
    public int mEndFlatColor;
    public int mEndFlatColorAlpha;
    public final int mEndScrim;
    public final RectF mHitRect;
    public final boolean mIsScrimDark;
    public final Launcher mLauncher;
    public float mMaxScrimAlpha;
    public final MultiValueAlpha mMultiValueAlpha;
    public float mProgress;
    public int mScrimColor;
    public final int[] mTempPos;
    public final Rect mTempRect;
    public final WallpaperColorInfo mWallpaperColorInfo;

    public class AccessibilityHelper extends d {
        public AccessibilityHelper() {
            super(ScrimView.this);
        }

        @Override // b.f.b.d
        public int getVirtualViewAt(float f, float f2) {
            if (ScrimView.this.mHitRect.contains((int) f, (int) f2)) {
                return 1;
            }
            return RecyclerView.UNDEFINED_DURATION;
        }

        @Override // b.f.b.d
        public void getVisibleVirtualViews(List list) {
            list.add(1);
        }

        @Override // b.f.b.d
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                ScrimView.this.mLauncher.getUserEventDispatcher().logActionOnControl(0, 1, ((LauncherState) ScrimView.this.mLauncher.getStateManager().mState).containerType);
                ScrimView.this.mLauncher.getStateManager().goToState(LauncherState.ALL_APPS);
                return true;
            }
            if (i2 == R.string.wallpaper_button_text) {
                return OptionsPopupView.startWallpaperPicker(ScrimView.this);
            }
            if (i2 != R.string.widget_button_text) {
                if (i2 != R.string.settings_button_text) {
                    return false;
                }
                OptionsPopupView.startSettings(ScrimView.this);
                return true;
            }
            final int importantForAccessibility = ScrimView.this.getImportantForAccessibility();
            ScrimView.this.setImportantForAccessibility(4);
            final WidgetsFullSheet openWidgets = OptionsPopupView.openWidgets(ScrimView.this.mLauncher);
            if (openWidgets == null) {
                ScrimView.this.setImportantForAccessibility(importantForAccessibility);
                return false;
            }
            openWidgets.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.android.launcher3.views.ScrimView.AccessibilityHelper.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    ScrimView.this.setImportantForAccessibility(importantForAccessibility);
                    openWidgets.removeOnAttachStateChangeListener(this);
                }
            });
            return true;
        }

        @Override // b.f.b.d
        public void onPopulateNodeForVirtualView(int i, b.e.i.E.d dVar) {
            dVar.f753a.setContentDescription(ScrimView.this.getContext().getString(R.string.all_apps_button_label));
            dVar.f753a.setBoundsInParent(ScrimView.this.mDragHandleBounds);
            ScrimView scrimView = ScrimView.this;
            scrimView.getLocationOnScreen(scrimView.mTempPos);
            ScrimView.this.mTempRect.set(ScrimView.this.mDragHandleBounds);
            ScrimView.this.mTempRect.offset(ScrimView.this.mTempPos[0], ScrimView.this.mTempPos[1]);
            dVar.f753a.setBoundsInScreen(ScrimView.this.mTempRect);
            dVar.f753a.addAction(16);
            dVar.f753a.setClickable(true);
            dVar.f753a.setFocusable(true);
            if (ScrimView.this.mLauncher.isInState(LauncherState.NORMAL)) {
                Context context = ScrimView.this.getContext();
                if (Utilities.isWallpaperAllowed(context)) {
                    dVar.f753a.addAction((AccessibilityNodeInfo.AccessibilityAction) new b(R.string.wallpaper_button_text, context.getText(R.string.wallpaper_button_text)).f749a);
                }
                dVar.f753a.addAction((AccessibilityNodeInfo.AccessibilityAction) new b(R.string.widget_button_text, context.getText(R.string.widget_button_text)).f749a);
                dVar.f753a.addAction((AccessibilityNodeInfo.AccessibilityAction) new b(R.string.settings_button_text, context.getText(R.string.settings_button_text)).f749a);
            }
        }
    }

    public ScrimView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        this.mTempPos = new int[2];
        this.mAccessibilityLauncherStateListener = new StateManager.StateListener() { // from class: com.android.launcher3.views.ScrimView.2
            @Override // com.android.launcher3.statemanager.StateManager.StateListener
            public void onStateTransitionComplete(Object obj) {
                ScrimView.this.setImportantForAccessibility(((LauncherState) obj) == LauncherState.ALL_APPS ? 4 : 0);
            }
        };
        this.mProgress = 1.0f;
        this.mHitRect = new RectF();
        this.mDragHandleAlpha = 255;
        this.mLauncher = Launcher.getLauncher(context);
        this.mWallpaperColorInfo = (WallpaperColorInfo) WallpaperColorInfo.INSTANCE.b(context);
        int attrColor = W.getAttrColor(context, R.attr.allAppsScrimColor);
        this.mEndScrim = attrColor;
        this.mIsScrimDark = a.d(attrColor) < 0.5d;
        this.mMaxScrimAlpha = 0.7f;
        Resources resources = context.getResources();
        this.mDragHandleSize = new Point(resources.getDimensionPixelSize(R.dimen.vertical_drag_handle_width), resources.getDimensionPixelSize(R.dimen.vertical_drag_handle_height));
        Point point = this.mDragHandleSize;
        this.mDragHandleBounds = new Rect(0, 0, point.x, point.y);
        this.mDragHandleTouchSize = resources.getDimensionPixelSize(R.dimen.vertical_drag_handle_touch_size);
        this.mDragHandlePaddingInVerticalBarLayout = context.getResources().getDimensionPixelSize(R.dimen.vertical_drag_handle_padding_in_vertical_bar_layout);
        AccessibilityHelper createAccessibilityHelper = createAccessibilityHelper();
        this.mAccessibilityHelper = createAccessibilityHelper;
        q.D(this, createAccessibilityHelper);
        this.mAM = (AccessibilityManager) context.getSystemService("accessibility");
        setFocusable(false);
        this.mMultiValueAlpha = new MultiValueAlpha(this, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDragHandleAlpha(int i) {
        if (i != this.mDragHandleAlpha) {
            this.mDragHandleAlpha = i;
            Drawable drawable = this.mDragHandle;
            if (drawable != null) {
                drawable.setAlpha(i);
                invalidate();
            }
        }
    }

    private void stopDragHandleEducationAnim() {
        ObjectAnimator objectAnimator = this.mDragHandleAnim;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
    }

    public /* synthetic */ void a(Rect rect, ValueAnimator valueAnimator) {
        invalidate(rect);
    }

    public AccessibilityHelper createAccessibilityHelper() {
        return new AccessibilityHelper();
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.mAccessibilityHelper.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.mAccessibilityHelper.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    public void drawDragHandle(Canvas canvas) {
        if (this.mDragHandle != null) {
            canvas.translate(RecentsState.NO_OFFSET, -this.mDragHandleOffset);
            this.mDragHandle.draw(canvas);
            canvas.translate(RecentsState.NO_OFFSET, this.mDragHandleOffset);
        }
    }

    public MultiValueAlpha.AlphaProperty getAlphaProperty(int i) {
        return this.mMultiValueAlpha.mMyProperties[i];
    }

    public float getVisualTop() {
        return Float.MAX_VALUE;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z) {
        StateManager stateManager = this.mLauncher.getStateManager();
        stateManager.mListeners.remove(this.mAccessibilityLauncherStateListener);
        if (z) {
            stateManager.mListeners.add(this.mAccessibilityLauncherStateListener);
            this.mAccessibilityLauncherStateListener.onStateTransitionComplete((LauncherState) stateManager.mState);
        } else {
            setImportantForAccessibility(4);
        }
        updateDragHandleVisibility();
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mWallpaperColorInfo.mListeners.add(this);
        onExtractedColorsChanged(this.mWallpaperColorInfo);
        this.mAM.addAccessibilityStateChangeListener(this);
        onAccessibilityStateChanged(this.mAM.isEnabled());
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mWallpaperColorInfo.mListeners.remove(this);
        this.mAM.removeAccessibilityStateChangeListener(this);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i = this.mCurrentFlatColor;
        if (i != 0) {
            canvas.drawColor(i);
        }
        drawDragHandle(canvas);
    }

    @Override // com.android.launcher3.uioverrides.WallpaperColorInfo.OnChangeListener
    public void onExtractedColorsChanged(WallpaperColorInfo wallpaperColorInfo) {
        int i = wallpaperColorInfo.mExtractionInfo.mainColor;
        this.mScrimColor = i;
        int f = a.f(this.mEndScrim, GraphicsUtils.setColorAlphaBound(i, Math.round(this.mMaxScrimAlpha * 255.0f)));
        this.mEndFlatColor = f;
        this.mEndFlatColorAlpha = Color.alpha(f);
        updateColors();
        invalidate();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        AccessibilityHelper accessibilityHelper = this.mAccessibilityHelper;
        int i2 = accessibilityHelper.mKeyboardFocusedVirtualViewId;
        if (i2 != Integer.MIN_VALUE) {
            accessibilityHelper.clearKeyboardFocusForVirtualView(i2);
        }
        if (z) {
            accessibilityHelper.moveFocus(i, rect);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updateDragHandleBounds();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 0) {
            if (!onTouchEvent && this.mHitRect.contains(motionEvent.getX(), motionEvent.getY()) && startDragHandleEducationAnim()) {
                return true;
            }
            stopDragHandleEducationAnim();
        }
        return onTouchEvent;
    }

    public void reInitUi() {
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        updateDragHandleBounds();
        updateDragHandleVisibility();
    }

    public void setProgress(float f) {
        if (this.mProgress != f) {
            this.mProgress = f;
            stopDragHandleEducationAnim();
            updateColors();
            updateSysUiColors();
            updateDragHandleAlpha();
            invalidate();
        }
    }

    public boolean shouldDragHandleBeVisible() {
        return this.mLauncher.getDeviceProfile().isVerticalBarLayout() || this.mAM.isEnabled();
    }

    public boolean startDragHandleEducationAnim() {
        stopDragHandleEducationAnim();
        Drawable drawable = this.mDragHandle;
        if (drawable == null || drawable.getAlpha() != 255) {
            return false;
        }
        final Drawable drawable2 = this.mDragHandle;
        this.mDragHandle = null;
        Rect rect = new Rect(this.mDragHandleBounds);
        rect.offset(0, -((int) this.mDragHandleOffset));
        drawable2.setBounds(rect);
        Rect rect2 = new Rect(rect);
        rect2.offset(0, -rect.height());
        final Rect rect3 = new Rect(rect);
        rect3.top = rect2.top;
        Keyframe ofObject = Keyframe.ofObject(0.6f, rect2);
        ofObject.setInterpolator(Interpolators.DEACCEL);
        Keyframe ofObject2 = Keyframe.ofObject(1.0f, rect);
        ofObject2.setInterpolator(Interpolators.ACCEL_DEACCEL);
        PropertyValuesHolder ofKeyframe = PropertyValuesHolder.ofKeyframe("bounds", Keyframe.ofObject(RecentsState.NO_OFFSET, rect), ofObject, ofObject2);
        ofKeyframe.setEvaluator(new RectEvaluator());
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(drawable2, ofKeyframe);
        this.mDragHandleAnim = ofPropertyValuesHolder;
        ofPropertyValuesHolder.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: c.a.a.b1.k
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ScrimView.this.a(rect3, valueAnimator);
            }
        });
        this.mDragHandleAnim.setDuration(500L);
        this.mDragHandleAnim.setInterpolator(Interpolators.clampToProgress(Interpolators.LINEAR, RecentsState.NO_OFFSET, 1.0f - (200.0f / 500)));
        this.mDragHandleAnim.setRepeatCount(2);
        getOverlay().add(drawable2);
        this.mDragHandleAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.ScrimView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ScrimView.this.mDragHandleAnim = null;
                ScrimView.this.getOverlay().remove(drawable2);
                ScrimView.this.updateDragHandleVisibility(drawable2);
            }
        });
        this.mDragHandleAnim.start();
        return true;
    }

    public void updateColors() {
        float f = this.mProgress;
        this.mCurrentFlatColor = f >= 1.0f ? 0 : GraphicsUtils.setColorAlphaBound(this.mEndFlatColor, Math.round((1.0f - f) * this.mEndFlatColorAlpha));
    }

    public void updateDragHandleAlpha() {
        Drawable drawable = this.mDragHandle;
        if (drawable != null) {
            drawable.setAlpha(this.mDragHandleAlpha);
        }
    }

    public void updateDragHandleBounds() {
        int round;
        int i;
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = (getMeasuredHeight() - this.mDragHandleSize.y) - deviceProfile.mInsets.bottom;
        if (deviceProfile.isVerticalBarLayout()) {
            i = deviceProfile.workspacePadding.bottom + this.mDragHandlePaddingInVerticalBarLayout;
            if (deviceProfile.isSeascape()) {
                round = ((measuredWidth - deviceProfile.mInsets.right) - this.mDragHandleSize.x) - this.mDragHandlePaddingInVerticalBarLayout;
            } else {
                round = this.mDragHandlePaddingInVerticalBarLayout + deviceProfile.mInsets.left;
            }
        } else {
            round = Math.round((measuredWidth - this.mDragHandleSize.x) / 2.0f);
            i = deviceProfile.hotseatBarSizePx;
        }
        this.mDragHandleBounds.offsetTo(round, measuredHeight - i);
        this.mHitRect.set(this.mDragHandleBounds);
        RectF rectF = this.mHitRect;
        int i2 = this.mDragHandleSize.x;
        int i3 = this.mDragHandleTouchSize;
        rectF.inset((i2 - i3) / 2.0f, (r1.y - i3) / 2.0f);
        Drawable drawable = this.mDragHandle;
        if (drawable != null) {
            drawable.setBounds(this.mDragHandleBounds);
        }
    }

    public void updateDragHandleVisibility() {
        updateDragHandleVisibility(null);
    }

    public void updateSysUiColors() {
        if (this.mProgress <= 0.1f) {
            this.mLauncher.getSystemUiController().updateUiState(1, !this.mIsScrimDark);
        } else {
            this.mLauncher.getSystemUiController().updateUiState(1, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDragHandleVisibility(Drawable drawable) {
        boolean shouldDragHandleBeVisible = shouldDragHandleBeVisible();
        if (shouldDragHandleBeVisible != (this.mDragHandle != null)) {
            if (shouldDragHandleBeVisible) {
                if (drawable == null) {
                    drawable = this.mLauncher.getDrawable(R.drawable.drag_handle_indicator_shadow);
                }
                this.mDragHandle = drawable;
                drawable.setBounds(this.mDragHandleBounds);
                updateDragHandleAlpha();
            } else {
                this.mDragHandle = null;
            }
            invalidate();
        }
    }
}
