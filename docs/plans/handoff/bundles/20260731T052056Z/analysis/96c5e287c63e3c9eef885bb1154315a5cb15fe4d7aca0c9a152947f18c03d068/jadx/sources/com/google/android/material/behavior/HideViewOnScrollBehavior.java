package com.google.android.material.behavior;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.DpKt;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentStateManager;
import androidx.room.Room;
import androidx.transition.Transition;
import androidx.work.Operation$State;
import com.google.android.material.animation.AnimationUtils;
import java.util.Iterator;
import java.util.LinkedHashSet;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class HideViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior {
    public AccessibilityManager accessibilityManager;
    public ViewPropertyAnimator currentAnimator;
    public int enterAnimDuration;
    public TimeInterpolator enterAnimInterpolator;
    public int exitAnimDuration;
    public TimeInterpolator exitAnimInterpolator;
    public Room hideOnScrollViewDelegate;
    public HideViewOnScrollBehavior$$ExternalSyntheticLambda0 touchExplorationListener;
    public final LinkedHashSet onScrollStateChangedListeners = new LinkedHashSet();
    public int size = 0;
    public int currentState = 2;
    public int savedImportantForAccessibility = 0;
    public int savedVisibility = 0;

    public HideViewOnScrollBehavior() {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null) {
            accessibilityManager = (AccessibilityManager) view.getContext().getSystemService(AccessibilityManager.class);
            this.accessibilityManager = accessibilityManager;
        }
        if (accessibilityManager != null && this.touchExplorationListener == null) {
            HideViewOnScrollBehavior$$ExternalSyntheticLambda0 hideViewOnScrollBehavior$$ExternalSyntheticLambda0 = new HideViewOnScrollBehavior$$ExternalSyntheticLambda0(this, view, 0);
            this.touchExplorationListener = hideViewOnScrollBehavior$$ExternalSyntheticLambda0;
            accessibilityManager.addTouchExplorationStateChangeListener(hideViewOnScrollBehavior$$ExternalSyntheticLambda0);
            view.addOnAttachStateChangeListener(new FragmentStateManager.AnonymousClass1(7, this));
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i2 = ((CoordinatorLayout.LayoutParams) view.getLayoutParams()).gravity;
        if (i2 == 80 || i2 == 81) {
            setViewEdgeInternal(1);
        } else {
            int absoluteGravity = Gravity.getAbsoluteGravity(i2, i);
            setViewEdgeInternal((absoluteGravity == 3 || absoluteGravity == 19) ? 2 : 0);
        }
        this.size = this.hideOnScrollViewDelegate.getSize(view, marginLayoutParams);
        this.enterAnimDuration = Operation$State.resolveInteger(view.getContext(), R.attr.motionDurationLong2, 225);
        this.exitAnimDuration = Operation$State.resolveInteger(view.getContext(), R.attr.motionDurationMedium4, 175);
        this.enterAnimInterpolator = DpKt.resolveThemeInterpolator(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        this.exitAnimInterpolator = DpKt.resolveThemeInterpolator(view.getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void onNestedScroll(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int[] iArr) {
        if (i <= 0) {
            if (i < 0) {
                slideIn(view);
                return;
            }
            return;
        }
        if (this.currentState == 1) {
            return;
        }
        AccessibilityManager accessibilityManager = this.accessibilityManager;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
            if (viewPropertyAnimator != null) {
                viewPropertyAnimator.cancel();
                view.clearAnimation();
            }
            updateCurrentState$1(view, 1);
            this.currentAnimator = this.hideOnScrollViewDelegate.getViewTranslationAnimator(view, this.size).setInterpolator(this.exitAnimInterpolator).setDuration(this.exitAnimDuration).setListener(new Transition.AnonymousClass2(4, this, view));
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2) {
        return i == 2;
    }

    public final void setViewEdgeInternal(int i) {
        Room room = this.hideOnScrollViewDelegate;
        if (room == null || room.getViewEdge() != i) {
            if (i == 0) {
                this.hideOnScrollViewDelegate = new HideLeftViewOnScrollDelegate(2);
                return;
            }
            if (i == 1) {
                this.hideOnScrollViewDelegate = new HideLeftViewOnScrollDelegate(1);
            } else if (i == 2) {
                this.hideOnScrollViewDelegate = new HideLeftViewOnScrollDelegate(0);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Invalid view edge position value: ", ". Must be 0, 1 or 2."));
            }
        }
    }

    public final void slideIn(View view) {
        if (this.currentState == 2) {
            return;
        }
        updateCurrentState$1(view, 2);
        ViewPropertyAnimator viewPropertyAnimator = this.currentAnimator;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            view.clearAnimation();
        }
        this.hideOnScrollViewDelegate.getClass();
        this.currentAnimator = this.hideOnScrollViewDelegate.getViewTranslationAnimator(view, 0).setInterpolator(this.enterAnimInterpolator).setDuration(this.enterAnimDuration).setListener(new Transition.AnonymousClass2(4, this, view));
    }

    public final void updateCurrentState$1(View view, int i) {
        this.currentState = i;
        if (i == 1) {
            if (view.hasFocus()) {
                view.clearFocus();
            }
            if (view.getImportantForAccessibility() != 4) {
                this.savedImportantForAccessibility = view.getImportantForAccessibility();
            }
            if (view.getVisibility() != 4) {
                this.savedVisibility = view.getVisibility();
            }
            view.setImportantForAccessibility(4);
        } else if (i == 2) {
            if (view.getImportantForAccessibility() == 4) {
                view.setImportantForAccessibility(this.savedImportantForAccessibility);
            }
            if (view.getVisibility() == 4) {
                view.setVisibility(this.savedVisibility);
            }
        }
        Iterator it = this.onScrollStateChangedListeners.iterator();
        if (it.hasNext()) {
            throw Modifier.CC.m(it);
        }
    }

    public HideViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
    }
}
