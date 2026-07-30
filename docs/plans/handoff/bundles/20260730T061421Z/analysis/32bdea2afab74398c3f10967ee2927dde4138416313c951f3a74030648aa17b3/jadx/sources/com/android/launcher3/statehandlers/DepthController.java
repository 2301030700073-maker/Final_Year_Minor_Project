package com.android.launcher3.statehandlers;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.os.IBinder;
import android.util.FloatProperty;
import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.Interpolators;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.BlurUtils;
import com.android.systemui.shared.system.SurfaceControlCompat;
import com.android.systemui.shared.system.TransactionCompat;
import com.android.systemui.shared.system.WallpaperManagerCompat;
import java.util.Objects;

/* loaded from: classes.dex */
public class DepthController implements StateManager.StateHandler, BaseActivity.MultiWindowModeChangedListener {
    public static final FloatProperty DEPTH = new FloatProperty("depth") { // from class: com.android.launcher3.statehandlers.DepthController.1
        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((DepthController) obj).mDepth);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            ((DepthController) obj).setDepth(f);
        }
    };
    public float mDepth;
    public final Launcher mLauncher;
    public int mMaxBlurRadius;
    public View.OnAttachStateChangeListener mOnAttachListener;
    public SurfaceControlCompat mSurface;
    public WallpaperManagerCompat mWallpaperManager;
    public final ViewTreeObserver.OnDrawListener mOnDrawListener = new ViewTreeObserver.OnDrawListener() { // from class: com.android.launcher3.statehandlers.DepthController.2
        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            DepthController depthController = DepthController.this;
            final DragLayer dragLayer = depthController.mLauncher.mDragLayer;
            depthController.setSurface(new SurfaceControlCompat(dragLayer));
            dragLayer.post(new Runnable() { // from class: c.a.a.V0.b
                @Override // java.lang.Runnable
                public final void run() {
                    DepthController.AnonymousClass2 anonymousClass2 = DepthController.AnonymousClass2.this;
                    View view = dragLayer;
                    Objects.requireNonNull(anonymousClass2);
                    view.getViewTreeObserver().removeOnDrawListener(anonymousClass2);
                }
            });
        }
    };
    public boolean mIgnoreStateChangesDuringMultiWindowAnimation = false;

    public class ClampedDepthProperty extends FloatProperty {
        public final float mMaxValue;
        public final float mMinValue;

        public ClampedDepthProperty(float f, float f2) {
            super("depthClamped");
            this.mMinValue = f;
            this.mMaxValue = f2;
        }

        @Override // android.util.Property
        public Float get(Object obj) {
            return Float.valueOf(((DepthController) obj).mDepth);
        }

        @Override // android.util.FloatProperty
        public void setValue(Object obj, float f) {
            ((DepthController) obj).setDepth(Utilities.boundToRange(f, this.mMinValue, this.mMaxValue));
        }
    }

    public DepthController(Launcher launcher) {
        this.mLauncher = launcher;
    }

    @Override // com.android.launcher3.BaseActivity.MultiWindowModeChangedListener
    public void onMultiWindowModeChanged(boolean z) {
        this.mIgnoreStateChangesDuringMultiWindowAnimation = true;
        FloatProperty floatProperty = DEPTH;
        float[] fArr = new float[1];
        LauncherState launcherState = (LauncherState) this.mLauncher.getStateManager().mState;
        Launcher launcher = this.mLauncher;
        Objects.requireNonNull(launcherState);
        fArr[0] = z ? RecentsState.NO_OFFSET : launcherState.getDepthUnchecked(launcher);
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, floatProperty, fArr).setDuration(300L);
        duration.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.statehandlers.DepthController.4
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                DepthController.this.mIgnoreStateChangesDuringMultiWindowAnimation = false;
            }
        });
        duration.setAutoCancel(true);
        duration.start();
    }

    public void setActivityStarted(boolean z) {
        if (z) {
            this.mLauncher.mDragLayer.getViewTreeObserver().addOnDrawListener(this.mOnDrawListener);
        } else {
            this.mLauncher.mDragLayer.getViewTreeObserver().removeOnDrawListener(this.mOnDrawListener);
            setSurface(null);
        }
    }

    public final void setDepth(float f) {
        SurfaceControlCompat surfaceControlCompat;
        float boundToRange = ((int) (Utilities.boundToRange(f, RecentsState.NO_OFFSET, 1.0f) * 256.0f)) / 256.0f;
        if (Float.compare(this.mDepth, boundToRange) == 0) {
            return;
        }
        boolean supportsBlursOnWindows = BlurUtils.supportsBlursOnWindows();
        if (!supportsBlursOnWindows || ((surfaceControlCompat = this.mSurface) != null && surfaceControlCompat.isValid())) {
            this.mDepth = boundToRange;
            if (this.mWallpaperManager == null) {
                this.mMaxBlurRadius = this.mLauncher.getResources().getInteger(R.integer.max_depth_blur_radius);
                this.mWallpaperManager = new WallpaperManagerCompat(this.mLauncher);
            }
            if (this.mLauncher.getRootView() != null && this.mOnAttachListener == null) {
                this.mOnAttachListener = new View.OnAttachStateChangeListener() { // from class: com.android.launcher3.statehandlers.DepthController.3
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                        IBinder windowToken = DepthController.this.mLauncher.getRootView().getWindowToken();
                        if (windowToken != null) {
                            DepthController depthController = DepthController.this;
                            depthController.mWallpaperManager.setWallpaperZoomOut(windowToken, depthController.mDepth);
                        }
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                    }
                };
                this.mLauncher.getRootView().addOnAttachStateChangeListener(this.mOnAttachListener);
            }
            IBinder windowToken = this.mLauncher.getRootView().getWindowToken();
            if (windowToken != null) {
                this.mWallpaperManager.setWallpaperZoomOut(windowToken, this.mDepth);
            }
            if (supportsBlursOnWindows) {
                new TransactionCompat().setBackgroundBlurRadius(this.mSurface, (this.mLauncher.isInState(LauncherState.ALL_APPS) && this.mDepth == 1.0f) ? 0 : (int) (this.mDepth * this.mMaxBlurRadius)).apply();
            }
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setState(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (this.mSurface == null || this.mIgnoreStateChangesDuringMultiWindowAnimation) {
            return;
        }
        float depth = launcherState.getDepth(this.mLauncher);
        if (Float.compare(this.mDepth, depth) != 0) {
            setDepth(depth);
        }
    }

    public final void setSurface(SurfaceControlCompat surfaceControlCompat) {
        if (this.mSurface != surfaceControlCompat) {
            this.mSurface = surfaceControlCompat;
            if (surfaceControlCompat != null) {
                setDepth(this.mDepth);
            } else {
                setDepth(RecentsState.NO_OFFSET);
            }
        }
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public void setStateWithAnimation(LauncherState launcherState, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        if (this.mSurface == null || stateAnimationConfig.onlyPlayAtomicComponent() || stateAnimationConfig.hasAnimationFlag(16) || this.mIgnoreStateChangesDuringMultiWindowAnimation) {
            return;
        }
        float depth = launcherState.getDepth(this.mLauncher);
        if (Float.compare(this.mDepth, depth) != 0) {
            pendingAnimation.setFloat(this, DEPTH, depth, stateAnimationConfig.getInterpolator(14, Interpolators.LINEAR));
        }
    }
}
