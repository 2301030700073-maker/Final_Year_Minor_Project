package com.google.android.material.snackbar;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.os.BundleKt;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.io.CloseableKt;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.settings.NotificationsSettingsFragment$onResume$1$2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseTransientBottomBar {
    public final AccessibilityManager accessibilityManager;
    public final int animationFadeInDuration;
    public final TimeInterpolator animationFadeInterpolator;
    public final int animationFadeOutDuration;
    public final TimeInterpolator animationScaleInterpolator;
    public final int animationSlideDuration;
    public final TimeInterpolator animationSlideInterpolator;
    public int appliedBottomMarginGestureInset;
    public ArrayList callbacks;
    public final SnackbarContentLayout contentViewCallback;
    public final Context context;
    public int duration;
    public int extraBottomMarginGestureInset;
    public int extraBottomMarginWindowInset;
    public int extraLeftMarginWindowInset;
    public int extraRightMarginWindowInset;
    public boolean pendingShowingView;
    public final ViewGroup targetParent;
    public final SnackbarBaseLayout view;
    public static final FastOutSlowInInterpolator DEFAULT_ANIMATION_SLIDE_INTERPOLATOR = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    public static final LinearInterpolator DEFAULT_ANIMATION_FADE_INTERPOLATOR = AnimationUtils.LINEAR_INTERPOLATOR;
    public static final FastOutSlowInInterpolator DEFAULT_ANIMATION_SCALE_INTERPOLATOR = AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
    public static final int[] SNACKBAR_STYLE_ATTR = {R.attr.snackbarStyle};
    public static final String TAG = "BaseTransientBottomBar";
    public static final Handler handler = new Handler(Looper.getMainLooper(), new AnonymousClass1());
    public final AnonymousClass2 bottomMarginGestureInsetRunnable = new AnonymousClass2(this, 0);
    public final AnonymousClass5 managerCallback = new AnonymousClass5();

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$1, reason: invalid class name */
    public final class AnonymousClass1 implements Handler.Callback {
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
            int i = message.what;
            byte b = 0;
            int i2 = 1;
            if (i == 0) {
                BaseTransientBottomBar baseTransientBottomBar = (BaseTransientBottomBar) message.obj;
                SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar.view;
                if (snackbarBaseLayout.getParent() == null) {
                    ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
                    if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                        CoordinatorLayout.LayoutParams layoutParams2 = (CoordinatorLayout.LayoutParams) layoutParams;
                        Behavior behavior = new Behavior();
                        ConnectionPool connectionPool = behavior.delegate;
                        connectionPool.getClass();
                        connectionPool.delegate = baseTransientBottomBar.managerCallback;
                        behavior.listener = baseTransientBottomBar.new AnonymousClass3();
                        layoutParams2.setBehavior(behavior);
                        layoutParams2.insetEdge = 80;
                    }
                    ViewGroup viewGroup = baseTransientBottomBar.targetParent;
                    snackbarBaseLayout.addingToTargetParent = true;
                    viewGroup.addView(snackbarBaseLayout);
                    snackbarBaseLayout.addingToTargetParent = false;
                    baseTransientBottomBar.updateMargins();
                    snackbarBaseLayout.setVisibility(4);
                }
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                if (snackbarBaseLayout.isLaidOut()) {
                    baseTransientBottomBar.showViewImpl();
                    return true;
                }
                baseTransientBottomBar.pendingShowingView = true;
                return true;
            }
            if (i != 1) {
                return false;
            }
            BaseTransientBottomBar baseTransientBottomBar2 = (BaseTransientBottomBar) message.obj;
            int i3 = message.arg1;
            SnackbarBaseLayout snackbarBaseLayout2 = baseTransientBottomBar2.view;
            AccessibilityManager accessibilityManager = baseTransientBottomBar2.accessibilityManager;
            if ((accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) || snackbarBaseLayout2.getVisibility() != 0) {
                baseTransientBottomBar2.onViewHidden();
                return true;
            }
            if (snackbarBaseLayout2.getAnimationMode() == 1) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
                ofFloat.setInterpolator(baseTransientBottomBar2.animationFadeInterpolator);
                ofFloat.addUpdateListener(new AnonymousClass11(baseTransientBottomBar2, b, b));
                ofFloat.setDuration(baseTransientBottomBar2.animationFadeOutDuration);
                ofFloat.addListener(new AnonymousClass9(baseTransientBottomBar2, i3, i2));
                ofFloat.start();
                return true;
            }
            ValueAnimator valueAnimator = new ValueAnimator();
            SnackbarBaseLayout snackbarBaseLayout3 = baseTransientBottomBar2.view;
            int height = snackbarBaseLayout3.getHeight();
            ViewGroup.LayoutParams layoutParams3 = snackbarBaseLayout3.getLayoutParams();
            if (layoutParams3 instanceof ViewGroup.MarginLayoutParams) {
                height += ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin;
            }
            valueAnimator.setIntValues(0, height);
            valueAnimator.setInterpolator(baseTransientBottomBar2.animationSlideInterpolator);
            valueAnimator.setDuration(baseTransientBottomBar2.animationSlideDuration);
            int i4 = 3;
            valueAnimator.addListener(new AnonymousClass9(baseTransientBottomBar2, i3, i4));
            valueAnimator.addUpdateListener(new AnonymousClass11(baseTransientBottomBar2, i4, b));
            valueAnimator.start();
            return true;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$2, reason: invalid class name */
    public final class AnonymousClass2 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ BaseTransientBottomBar this$0;

        public /* synthetic */ AnonymousClass2(BaseTransientBottomBar baseTransientBottomBar, int i) {
            this.$r8$classId = i;
            this.this$0 = baseTransientBottomBar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            BaseTransientBottomBar baseTransientBottomBar = this.this$0;
            int i2 = 1;
            int i3 = 2;
            switch (i) {
                case 0:
                    SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar.view;
                    if (snackbarBaseLayout != null) {
                        int height = ViewUtils.getCurrentWindowBounds(baseTransientBottomBar.context).height();
                        int[] iArr = new int[2];
                        snackbarBaseLayout.getLocationInWindow(iArr);
                        int height2 = (height - (snackbarBaseLayout.getHeight() + iArr[1])) + ((int) snackbarBaseLayout.getTranslationY());
                        int i4 = baseTransientBottomBar.extraBottomMarginGestureInset;
                        if (height2 < i4) {
                            ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
                            if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                                Log.w(BaseTransientBottomBar.TAG, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
                                break;
                            } else {
                                int i5 = baseTransientBottomBar.extraBottomMarginGestureInset;
                                baseTransientBottomBar.appliedBottomMarginGestureInset = i5;
                                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                                marginLayoutParams.bottomMargin = (i5 - height2) + marginLayoutParams.bottomMargin;
                                snackbarBaseLayout.requestLayout();
                                break;
                            }
                        } else {
                            baseTransientBottomBar.appliedBottomMarginGestureInset = i4;
                            break;
                        }
                    }
                    break;
                case 1:
                    baseTransientBottomBar.onViewHidden();
                    break;
                default:
                    SnackbarBaseLayout snackbarBaseLayout2 = baseTransientBottomBar.view;
                    if (snackbarBaseLayout2 != null) {
                        byte b = 0;
                        if (snackbarBaseLayout2.getParent() != null) {
                            snackbarBaseLayout2.setVisibility(0);
                        }
                        if (snackbarBaseLayout2.getAnimationMode() != 1) {
                            int height3 = snackbarBaseLayout2.getHeight();
                            ViewGroup.LayoutParams layoutParams2 = snackbarBaseLayout2.getLayoutParams();
                            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                                height3 += ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                            }
                            snackbarBaseLayout2.setTranslationY(height3);
                            ValueAnimator valueAnimator = new ValueAnimator();
                            valueAnimator.setIntValues(height3, 0);
                            valueAnimator.setInterpolator(baseTransientBottomBar.animationSlideInterpolator);
                            valueAnimator.setDuration(baseTransientBottomBar.animationSlideDuration);
                            valueAnimator.addListener(new AnonymousClass9(baseTransientBottomBar, i3));
                            valueAnimator.addUpdateListener(new AnonymousClass11(baseTransientBottomBar, height3));
                            valueAnimator.start();
                            break;
                        } else {
                            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                            ofFloat.setInterpolator(baseTransientBottomBar.animationFadeInterpolator);
                            ofFloat.addUpdateListener(new AnonymousClass11(baseTransientBottomBar, b, b));
                            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
                            ofFloat2.setInterpolator(baseTransientBottomBar.animationScaleInterpolator);
                            ofFloat2.addUpdateListener(new AnonymousClass11(baseTransientBottomBar, i2, b));
                            AnimatorSet animatorSet = new AnimatorSet();
                            animatorSet.playTogether(ofFloat, ofFloat2);
                            animatorSet.setDuration(baseTransientBottomBar.animationFadeInDuration);
                            animatorSet.addListener(new AnonymousClass9(baseTransientBottomBar, b));
                            animatorSet.start();
                            break;
                        }
                    }
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$3, reason: invalid class name */
    public final class AnonymousClass3 implements OnApplyWindowInsetsListener {
        public /* synthetic */ AnonymousClass3() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int systemWindowInsetBottom = windowInsetsCompat.getSystemWindowInsetBottom();
            BaseTransientBottomBar baseTransientBottomBar = BaseTransientBottomBar.this;
            baseTransientBottomBar.extraBottomMarginWindowInset = systemWindowInsetBottom;
            baseTransientBottomBar.extraLeftMarginWindowInset = windowInsetsCompat.getSystemWindowInsetLeft();
            baseTransientBottomBar.extraRightMarginWindowInset = windowInsetsCompat.getSystemWindowInsetRight();
            baseTransientBottomBar.updateMargins();
            return windowInsetsCompat;
        }

        public void onDismiss(View view) {
            if (view.getParent() != null) {
                view.setVisibility(8);
            }
            BaseTransientBottomBar.this.dispatchDismiss(0);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$5, reason: invalid class name */
    public final class AnonymousClass5 {
        public AnonymousClass5() {
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class Behavior extends SwipeDismissBehavior<View> {
        public final ConnectionPool delegate;

        public Behavior() {
            ConnectionPool connectionPool = new ConnectionPool(8);
            this.alphaStartSwipeDistance = Math.min(Math.max(0.0f, 0.1f), 1.0f);
            this.alphaEndSwipeDistance = Math.min(Math.max(0.0f, 0.6f), 1.0f);
            this.swipeDirection = 0;
            this.delegate = connectionPool;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior
        public final boolean canSwipeDismissView(View view) {
            this.delegate.getClass();
            return view instanceof SnackbarBaseLayout;
        }

        @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            ConnectionPool connectionPool = this.delegate;
            connectionPool.getClass();
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked == 1 || actionMasked == 3) {
                    Dispatcher.getInstance().restoreTimeoutIfPaused((AnonymousClass5) connectionPool.delegate);
                }
            } else if (coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                Dispatcher.getInstance().pauseTimeout((AnonymousClass5) connectionPool.delegate);
            }
            return super.onInterceptTouchEvent(coordinatorLayout, view, motionEvent);
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class SnackbarBaseLayout extends FrameLayout {
        public static final AnonymousClass1 consumeAllTouchListener = new AnonymousClass1();
        public final float actionTextColorAlpha;
        public boolean addingToTargetParent;
        public int animationMode;
        public final float backgroundOverlayColorAlpha;
        public ColorStateList backgroundTint;
        public PorterDuff.Mode backgroundTintMode;
        public BaseTransientBottomBar baseTransientBottomBar;
        public final int maxInlineActionWidth;
        public final int maxWidth;
        public Rect originalMargins;
        public final ShapeAppearanceModel shapeAppearanceModel;

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$SnackbarBaseLayout$1, reason: invalid class name */
        public final class AnonymousClass1 implements View.OnTouchListener {
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SnackbarBaseLayout(Context context, AttributeSet attributeSet) {
            super(MaterialThemeOverlay.wrap(context, attributeSet, 0, 0), attributeSet);
            GradientDrawable gradientDrawable;
            Context context2 = getContext();
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, R$styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(6)) {
                float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(6, 0);
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                setElevation(dimensionPixelSize);
            }
            this.animationMode = obtainStyledAttributes.getInt(2, 0);
            if (obtainStyledAttributes.hasValue(8) || obtainStyledAttributes.hasValue(9)) {
                this.shapeAppearanceModel = ShapeAppearanceModel.builder(context2, attributeSet, 0, 0).build();
            }
            this.backgroundOverlayColorAlpha = obtainStyledAttributes.getFloat(3, 1.0f);
            setBackgroundTintList(BundleKt.getColorStateList(context2, obtainStyledAttributes, 4));
            setBackgroundTintMode(ViewUtils.parseTintMode(obtainStyledAttributes.getInt(5, -1), PorterDuff.Mode.SRC_IN));
            this.actionTextColorAlpha = obtainStyledAttributes.getFloat(1, 1.0f);
            this.maxWidth = obtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.maxInlineActionWidth = obtainStyledAttributes.getDimensionPixelSize(7, -1);
            obtainStyledAttributes.recycle();
            setOnTouchListener(consumeAllTouchListener);
            setFocusable(true);
            if (getBackground() == null) {
                int layer = CloseableKt.layer(getBackgroundOverlayColorAlpha(), CloseableKt.getColor(R.attr.colorSurface, this), CloseableKt.getColor(R.attr.colorOnSurface, this));
                ShapeAppearanceModel shapeAppearanceModel = this.shapeAppearanceModel;
                if (shapeAppearanceModel != null) {
                    FastOutSlowInInterpolator fastOutSlowInInterpolator = BaseTransientBottomBar.DEFAULT_ANIMATION_SLIDE_INTERPOLATOR;
                    MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
                    materialShapeDrawable.setFillColor(ColorStateList.valueOf(layer));
                    gradientDrawable = materialShapeDrawable;
                } else {
                    Resources resources = getResources();
                    FastOutSlowInInterpolator fastOutSlowInInterpolator2 = BaseTransientBottomBar.DEFAULT_ANIMATION_SLIDE_INTERPOLATOR;
                    float dimension = resources.getDimension(R.dimen.mtrl_snackbar_background_corner_radius);
                    GradientDrawable gradientDrawable2 = new GradientDrawable();
                    gradientDrawable2.setShape(0);
                    gradientDrawable2.setCornerRadius(dimension);
                    gradientDrawable2.setColor(layer);
                    gradientDrawable = gradientDrawable2;
                }
                ColorStateList colorStateList = this.backgroundTint;
                if (colorStateList != null) {
                    gradientDrawable.setTintList(colorStateList);
                }
                WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
                setBackground(gradientDrawable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBaseTransientBottomBar(BaseTransientBottomBar baseTransientBottomBar) {
            this.baseTransientBottomBar = baseTransientBottomBar;
        }

        public float getActionTextColorAlpha() {
            return this.actionTextColorAlpha;
        }

        public int getAnimationMode() {
            return this.animationMode;
        }

        public float getBackgroundOverlayColorAlpha() {
            return this.backgroundOverlayColorAlpha;
        }

        public int getMaxInlineActionWidth() {
            return this.maxInlineActionWidth;
        }

        public int getMaxWidth() {
            return this.maxWidth;
        }

        @Override // android.view.ViewGroup, android.view.View
        public final void onAttachedToWindow() {
            super.onAttachedToWindow();
            BaseTransientBottomBar baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar != null) {
                baseTransientBottomBar.onAttachedToWindow();
            }
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            requestApplyInsets();
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
        
            if ((r0 != null && r0.callback.get() == r1) != false) goto L15;
         */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onDetachedFromWindow() {
            /*
                r5 = this;
                super.onDetachedFromWindow()
                com.google.android.material.snackbar.BaseTransientBottomBar r5 = r5.baseTransientBottomBar
                if (r5 == 0) goto L3d
                okhttp3.Dispatcher r0 = okhttp3.Dispatcher.getInstance()
                com.google.android.material.snackbar.BaseTransientBottomBar$5 r1 = r5.managerCallback
                java.lang.Object r2 = r0.executorServiceOrNull
                monitor-enter(r2)
                boolean r3 = r0.isCurrentSnackbarLocked(r1)     // Catch: java.lang.Throwable -> L3a
                r4 = 1
                if (r3 != 0) goto L2b
                java.lang.Object r0 = r0.runningSyncCalls     // Catch: java.lang.Throwable -> L3a
                com.google.android.material.snackbar.SnackbarManager$SnackbarRecord r0 = (com.google.android.material.snackbar.SnackbarManager$SnackbarRecord) r0     // Catch: java.lang.Throwable -> L3a
                r3 = 0
                if (r0 == 0) goto L28
                java.lang.ref.WeakReference r0 = r0.callback     // Catch: java.lang.Throwable -> L3a
                java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L3a
                if (r0 != r1) goto L28
                r0 = r4
                goto L29
            L28:
                r0 = r3
            L29:
                if (r0 == 0) goto L2c
            L2b:
                r3 = r4
            L2c:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
                if (r3 == 0) goto L3d
                android.os.Handler r0 = com.google.android.material.snackbar.BaseTransientBottomBar.handler
                com.google.android.material.snackbar.BaseTransientBottomBar$2 r1 = new com.google.android.material.snackbar.BaseTransientBottomBar$2
                r1.<init>(r5, r4)
                r0.post(r1)
                return
            L3a:
                r5 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L3a
                throw r5
            L3d:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.BaseTransientBottomBar.SnackbarBaseLayout.onDetachedFromWindow():void");
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            BaseTransientBottomBar baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar == null || !baseTransientBottomBar.pendingShowingView) {
                return;
            }
            baseTransientBottomBar.showViewImpl();
            baseTransientBottomBar.pendingShowingView = false;
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            int i3 = this.maxWidth;
            if (i3 <= 0 || getMeasuredWidth() <= i3) {
                return;
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
        }

        public void setAnimationMode(int i) {
            this.animationMode = i;
        }

        @Override // android.view.View
        public void setBackground(Drawable drawable) {
            setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundDrawable(Drawable drawable) {
            if (drawable != null && this.backgroundTint != null) {
                drawable = drawable.mutate();
                drawable.setTintList(this.backgroundTint);
                drawable.setTintMode(this.backgroundTintMode);
            }
            super.setBackgroundDrawable(drawable);
        }

        @Override // android.view.View
        public void setBackgroundTintList(ColorStateList colorStateList) {
            this.backgroundTint = colorStateList;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintList(colorStateList);
                mutate.setTintMode(this.backgroundTintMode);
                if (mutate != getBackground()) {
                    super.setBackgroundDrawable(mutate);
                }
            }
        }

        @Override // android.view.View
        public void setBackgroundTintMode(PorterDuff.Mode mode) {
            this.backgroundTintMode = mode;
            if (getBackground() != null) {
                Drawable mutate = getBackground().mutate();
                mutate.setTintMode(mode);
                if (mutate != getBackground()) {
                    super.setBackgroundDrawable(mutate);
                }
            }
        }

        @Override // android.view.View
        public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
            super.setLayoutParams(layoutParams);
            if (this.addingToTargetParent || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                return;
            }
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            this.originalMargins = new Rect(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            BaseTransientBottomBar baseTransientBottomBar = this.baseTransientBottomBar;
            if (baseTransientBottomBar != null) {
                FastOutSlowInInterpolator fastOutSlowInInterpolator = BaseTransientBottomBar.DEFAULT_ANIMATION_SLIDE_INTERPOLATOR;
                baseTransientBottomBar.updateMargins();
            }
        }

        @Override // android.view.View
        public void setOnClickListener(View.OnClickListener onClickListener) {
            setOnTouchListener(onClickListener != null ? null : consumeAllTouchListener);
            super.setOnClickListener(onClickListener);
        }
    }

    public BaseTransientBottomBar(Context context, ViewGroup viewGroup, View view, SnackbarContentLayout snackbarContentLayout) {
        if (view == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Transient bottom bar must have non-null content");
            throw null;
        }
        if (snackbarContentLayout == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Transient bottom bar must have non-null callback");
            throw null;
        }
        this.targetParent = viewGroup;
        this.contentViewCallback = snackbarContentLayout;
        this.context = context;
        ViewUtils.checkTheme(context, ViewUtils.APPCOMPAT_CHECK_ATTRS, "Theme.AppCompat");
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(SNACKBAR_STYLE_ATTR);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        SnackbarBaseLayout snackbarBaseLayout = (SnackbarBaseLayout) from.inflate(resourceId != -1 ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar, viewGroup, false);
        this.view = snackbarBaseLayout;
        snackbarBaseLayout.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout2 = (SnackbarContentLayout) view;
            float actionTextColorAlpha = snackbarBaseLayout.getActionTextColorAlpha();
            if (actionTextColorAlpha != 1.0f) {
                snackbarContentLayout2.actionView.setTextColor(CloseableKt.layer(actionTextColorAlpha, CloseableKt.getColor(R.attr.colorSurface, snackbarContentLayout2), snackbarContentLayout2.actionView.getCurrentTextColor()));
            }
            snackbarContentLayout2.setMaxInlineActionWidth(snackbarBaseLayout.getMaxInlineActionWidth());
        }
        snackbarBaseLayout.addView(view);
        WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
        snackbarBaseLayout.setAccessibilityLiveRegion(1);
        snackbarBaseLayout.setImportantForAccessibility(1);
        snackbarBaseLayout.setFitsSystemWindows(true);
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(snackbarBaseLayout, new AnonymousClass3());
        ViewCompat.setAccessibilityDelegate(snackbarBaseLayout, new ViewPager.MyAccessibilityDelegate(this, 5));
        this.accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        this.animationSlideDuration = Cookie.Companion.resolveThemeDuration(context, R.attr.motionDurationLong2, org.mozilla.javascript.Context.VERSION_ECMASCRIPT);
        this.animationFadeInDuration = Cookie.Companion.resolveThemeDuration(context, R.attr.motionDurationLong2, 150);
        this.animationFadeOutDuration = Cookie.Companion.resolveThemeDuration(context, R.attr.motionDurationMedium1, 75);
        this.animationFadeInterpolator = Cookie.Companion.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, DEFAULT_ANIMATION_FADE_INTERPOLATOR);
        this.animationScaleInterpolator = Cookie.Companion.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, DEFAULT_ANIMATION_SCALE_INTERPOLATOR);
        this.animationSlideInterpolator = Cookie.Companion.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, DEFAULT_ANIMATION_SLIDE_INTERPOLATOR);
    }

    public final void dispatchDismiss(int i) {
        Dispatcher dispatcher = Dispatcher.getInstance();
        AnonymousClass5 anonymousClass5 = this.managerCallback;
        synchronized (dispatcher.executorServiceOrNull) {
            try {
                if (dispatcher.isCurrentSnackbarLocked(anonymousClass5)) {
                    dispatcher.cancelSnackbarLocked((SnackbarManager$SnackbarRecord) dispatcher.runningAsyncCalls, i);
                } else {
                    SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) dispatcher.runningSyncCalls;
                    if (snackbarManager$SnackbarRecord != null && snackbarManager$SnackbarRecord.callback.get() == anonymousClass5) {
                        dispatcher.cancelSnackbarLocked((SnackbarManager$SnackbarRecord) dispatcher.runningSyncCalls, i);
                    }
                }
            } finally {
            }
        }
    }

    public final void onAttachedToWindow() {
        WindowInsets rootWindowInsets;
        int i;
        if (Build.VERSION.SDK_INT < 29 || (rootWindowInsets = this.view.getRootWindowInsets()) == null) {
            return;
        }
        i = rootWindowInsets.getMandatorySystemGestureInsets().bottom;
        this.extraBottomMarginGestureInset = i;
        updateMargins();
    }

    public final void onViewHidden() {
        Dispatcher dispatcher = Dispatcher.getInstance();
        AnonymousClass5 anonymousClass5 = this.managerCallback;
        synchronized (dispatcher.executorServiceOrNull) {
            try {
                if (dispatcher.isCurrentSnackbarLocked(anonymousClass5)) {
                    dispatcher.runningAsyncCalls = null;
                    if (((SnackbarManager$SnackbarRecord) dispatcher.runningSyncCalls) != null) {
                        dispatcher.showNextSnackbarLocked();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList = this.callbacks;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                NotificationsSettingsFragment$onResume$1$2 notificationsSettingsFragment$onResume$1$2 = (NotificationsSettingsFragment$onResume$1$2) this.callbacks.get(size);
                notificationsSettingsFragment$onResume$1$2.getClass();
                notificationsSettingsFragment$onResume$1$2.this$0.notificationWarningSnackbar = null;
            }
        }
        ViewParent parent = this.view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.view);
        }
    }

    public final void onViewShown() {
        Dispatcher dispatcher = Dispatcher.getInstance();
        AnonymousClass5 anonymousClass5 = this.managerCallback;
        synchronized (dispatcher.executorServiceOrNull) {
            try {
                if (dispatcher.isCurrentSnackbarLocked(anonymousClass5)) {
                    dispatcher.scheduleTimeoutLocked((SnackbarManager$SnackbarRecord) dispatcher.runningAsyncCalls);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ArrayList arrayList = this.callbacks;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((NotificationsSettingsFragment$onResume$1$2) this.callbacks.get(size)).getClass();
            }
        }
    }

    public final void showViewImpl() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        boolean z = true;
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            z = false;
        }
        SnackbarBaseLayout snackbarBaseLayout = this.view;
        if (z) {
            snackbarBaseLayout.post(new AnonymousClass2(this, 2));
            return;
        }
        if (snackbarBaseLayout.getParent() != null) {
            snackbarBaseLayout.setVisibility(0);
        }
        onViewShown();
    }

    public final void updateMargins() {
        SnackbarBaseLayout snackbarBaseLayout = this.view;
        ViewGroup.LayoutParams layoutParams = snackbarBaseLayout.getLayoutParams();
        boolean z = layoutParams instanceof ViewGroup.MarginLayoutParams;
        String str = TAG;
        if (!z) {
            Log.w(str, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (snackbarBaseLayout.originalMargins == null) {
            Log.w(str, "Unable to update margins because original view margins are not set");
            return;
        }
        if (snackbarBaseLayout.getParent() == null) {
            return;
        }
        int i = this.extraBottomMarginWindowInset;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Rect rect = snackbarBaseLayout.originalMargins;
        int i2 = rect.bottom + i;
        int i3 = rect.left + this.extraLeftMarginWindowInset;
        int i4 = rect.right + this.extraRightMarginWindowInset;
        int i5 = rect.top;
        boolean z2 = (marginLayoutParams.bottomMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4 && marginLayoutParams.topMargin == i5) ? false : true;
        if (z2) {
            marginLayoutParams.bottomMargin = i2;
            marginLayoutParams.leftMargin = i3;
            marginLayoutParams.rightMargin = i4;
            marginLayoutParams.topMargin = i5;
            snackbarBaseLayout.requestLayout();
        }
        if ((z2 || this.appliedBottomMarginGestureInset != this.extraBottomMarginGestureInset) && Build.VERSION.SDK_INT >= 29 && this.extraBottomMarginGestureInset > 0) {
            ViewGroup.LayoutParams layoutParams2 = snackbarBaseLayout.getLayoutParams();
            if ((layoutParams2 instanceof CoordinatorLayout.LayoutParams) && (((CoordinatorLayout.LayoutParams) layoutParams2).mBehavior instanceof SwipeDismissBehavior)) {
                AnonymousClass2 anonymousClass2 = this.bottomMarginGestureInsetRunnable;
                snackbarBaseLayout.removeCallbacks(anonymousClass2);
                snackbarBaseLayout.post(anonymousClass2);
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$9, reason: invalid class name */
    public final class AnonymousClass9 extends AnimatorListenerAdapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ BaseTransientBottomBar this$0;

        public /* synthetic */ AnonymousClass9(BaseTransientBottomBar baseTransientBottomBar, int i) {
            this.$r8$classId = i;
            this.this$0 = baseTransientBottomBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            int i = this.$r8$classId;
            BaseTransientBottomBar baseTransientBottomBar = this.this$0;
            switch (i) {
                case 0:
                    baseTransientBottomBar.onViewShown();
                    break;
                case 1:
                    baseTransientBottomBar.onViewHidden();
                    break;
                case 2:
                    baseTransientBottomBar.onViewShown();
                    break;
                default:
                    baseTransientBottomBar.onViewHidden();
                    break;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            int i = this.$r8$classId;
            BaseTransientBottomBar baseTransientBottomBar = this.this$0;
            switch (i) {
                case 2:
                    SnackbarContentLayout snackbarContentLayout = baseTransientBottomBar.contentViewCallback;
                    int i2 = baseTransientBottomBar.animationSlideDuration;
                    int i3 = baseTransientBottomBar.animationFadeInDuration;
                    int i4 = i2 - i3;
                    snackbarContentLayout.messageView.setAlpha(0.0f);
                    long j = i3;
                    ViewPropertyAnimator duration = snackbarContentLayout.messageView.animate().alpha(1.0f).setDuration(j);
                    TimeInterpolator timeInterpolator = snackbarContentLayout.contentInterpolator;
                    long j2 = i4;
                    duration.setInterpolator(timeInterpolator).setStartDelay(j2).start();
                    if (snackbarContentLayout.actionView.getVisibility() == 0) {
                        snackbarContentLayout.actionView.setAlpha(0.0f);
                        snackbarContentLayout.actionView.animate().alpha(1.0f).setDuration(j).setInterpolator(timeInterpolator).setStartDelay(j2).start();
                        break;
                    }
                    break;
                case 3:
                    SnackbarContentLayout snackbarContentLayout2 = baseTransientBottomBar.contentViewCallback;
                    int i5 = baseTransientBottomBar.animationFadeOutDuration;
                    snackbarContentLayout2.messageView.setAlpha(1.0f);
                    long j3 = i5;
                    ViewPropertyAnimator duration2 = snackbarContentLayout2.messageView.animate().alpha(0.0f).setDuration(j3);
                    TimeInterpolator timeInterpolator2 = snackbarContentLayout2.contentInterpolator;
                    duration2.setInterpolator(timeInterpolator2).setStartDelay(0L).start();
                    if (snackbarContentLayout2.actionView.getVisibility() == 0) {
                        snackbarContentLayout2.actionView.setAlpha(1.0f);
                        snackbarContentLayout2.actionView.animate().alpha(0.0f).setDuration(j3).setInterpolator(timeInterpolator2).setStartDelay(0L).start();
                        break;
                    }
                    break;
                default:
                    super.onAnimationStart(animator);
                    break;
            }
        }

        public /* synthetic */ AnonymousClass9(BaseTransientBottomBar baseTransientBottomBar, int i, int i2) {
            this.$r8$classId = i2;
            this.this$0 = baseTransientBottomBar;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: com.google.android.material.snackbar.BaseTransientBottomBar$11, reason: invalid class name */
    public final class AnonymousClass11 implements ValueAnimator.AnimatorUpdateListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ BaseTransientBottomBar this$0;

        public AnonymousClass11(BaseTransientBottomBar baseTransientBottomBar, int i) {
            this.$r8$classId = 2;
            this.this$0 = baseTransientBottomBar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            int i = this.$r8$classId;
            BaseTransientBottomBar baseTransientBottomBar = this.this$0;
            switch (i) {
                case 0:
                    baseTransientBottomBar.view.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    break;
                case 1:
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    SnackbarBaseLayout snackbarBaseLayout = baseTransientBottomBar.view;
                    snackbarBaseLayout.setScaleX(floatValue);
                    snackbarBaseLayout.setScaleY(floatValue);
                    break;
                case 2:
                    int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    FastOutSlowInInterpolator fastOutSlowInInterpolator = BaseTransientBottomBar.DEFAULT_ANIMATION_SLIDE_INTERPOLATOR;
                    baseTransientBottomBar.view.setTranslationY(intValue);
                    break;
                default:
                    int intValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    FastOutSlowInInterpolator fastOutSlowInInterpolator2 = BaseTransientBottomBar.DEFAULT_ANIMATION_SLIDE_INTERPOLATOR;
                    baseTransientBottomBar.view.setTranslationY(intValue2);
                    break;
            }
        }

        public /* synthetic */ AnonymousClass11(BaseTransientBottomBar baseTransientBottomBar, int i, byte b) {
            this.$r8$classId = i;
            this.this$0 = baseTransientBottomBar;
        }
    }
}
