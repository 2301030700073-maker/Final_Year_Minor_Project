package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ViewDragHelper;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior {
    public boolean interceptingEvents;
    public BaseTransientBottomBar.AnonymousClass3 listener;
    public boolean requestingDisallowInterceptTouchEvent;
    public ViewDragHelper viewDragHelper;
    public int swipeDirection = 2;
    public float alphaStartSwipeDistance = 0.0f;
    public float alphaEndSwipeDistance = 0.5f;
    public final AnonymousClass1 dragCallback = new Util() { // from class: com.google.android.material.behavior.SwipeDismissBehavior.1
        public int activePointerId = -1;
        public int originalCapturedViewLeft;

        @Override // org.slf4j.helpers.Util
        public final int clampViewPositionHorizontal(View view, int i) {
            int width;
            int width2;
            boolean z = view.getLayoutDirection() == 1;
            int i2 = SwipeDismissBehavior.this.swipeDirection;
            if (i2 == 0) {
                width = this.originalCapturedViewLeft;
                if (z) {
                    width -= view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                } else {
                    width2 = view.getWidth() + width;
                }
            } else {
                int i3 = this.originalCapturedViewLeft;
                if (i2 != 1) {
                    width = i3 - view.getWidth();
                    width2 = this.originalCapturedViewLeft + view.getWidth();
                } else if (z) {
                    width2 = view.getWidth() + i3;
                    width = i3;
                } else {
                    width = i3 - view.getWidth();
                    width2 = this.originalCapturedViewLeft;
                }
            }
            return Math.min(Math.max(width, i), width2);
        }

        @Override // org.slf4j.helpers.Util
        public final int clampViewPositionVertical(View view, int i) {
            return view.getTop();
        }

        @Override // org.slf4j.helpers.Util
        public final int getViewHorizontalDragRange(View view) {
            return view.getWidth();
        }

        @Override // org.slf4j.helpers.Util
        public final void onViewCaptured(View view, int i) {
            this.activePointerId = i;
            this.originalCapturedViewLeft = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
                swipeDismissBehavior.requestingDisallowInterceptTouchEvent = true;
                parent.requestDisallowInterceptTouchEvent(true);
                swipeDismissBehavior.requestingDisallowInterceptTouchEvent = false;
            }
        }

        @Override // org.slf4j.helpers.Util
        public final void onViewDragStateChanged(int i) {
            BaseTransientBottomBar.AnonymousClass3 anonymousClass3 = SwipeDismissBehavior.this.listener;
            if (anonymousClass3 != null) {
                BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = BaseTransientBottomBar.this.managerCallback;
                if (i == 0) {
                    Dispatcher.getInstance().restoreTimeoutIfPaused(anonymousClass5);
                } else if (i == 1 || i == 2) {
                    Dispatcher.getInstance().pauseTimeout(anonymousClass5);
                }
            }
        }

        @Override // org.slf4j.helpers.Util
        public final void onViewPositionChanged(View view, int i, int i2) {
            float width = view.getWidth();
            SwipeDismissBehavior swipeDismissBehavior = SwipeDismissBehavior.this;
            float f = width * swipeDismissBehavior.alphaStartSwipeDistance;
            float width2 = view.getWidth() * swipeDismissBehavior.alphaEndSwipeDistance;
            float abs = Math.abs(i - this.originalCapturedViewLeft);
            if (abs <= f) {
                view.setAlpha(1.0f);
            } else if (abs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((abs - f) / (width2 - f))), 1.0f));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:40:0x004e, code lost:
        
            if (java.lang.Math.abs(r9.getLeft() - r8.originalCapturedViewLeft) >= java.lang.Math.round(r9.getWidth() * 0.5f)) goto L27;
         */
        @Override // org.slf4j.helpers.Util
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onViewReleased(android.view.View r9, float r10, float r11) {
            /*
                r8 = this;
                r11 = -1
                r8.activePointerId = r11
                int r11 = r9.getWidth()
                r0 = 0
                int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                r2 = 0
                com.google.android.material.behavior.SwipeDismissBehavior r3 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r4 = 1
                if (r1 == 0) goto L37
                int r5 = r9.getLayoutDirection()
                if (r5 != r4) goto L18
                r5 = r4
                goto L19
            L18:
                r5 = r2
            L19:
                int r6 = r3.swipeDirection
                r7 = 2
                if (r6 != r7) goto L1f
                goto L50
            L1f:
                if (r6 != 0) goto L2b
                if (r5 == 0) goto L28
                int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r1 >= 0) goto L65
                goto L50
            L28:
                if (r1 <= 0) goto L65
                goto L50
            L2b:
                if (r6 != r4) goto L65
                if (r5 == 0) goto L32
                if (r1 <= 0) goto L65
                goto L50
            L32:
                int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r1 >= 0) goto L65
                goto L50
            L37:
                int r1 = r9.getLeft()
                int r5 = r8.originalCapturedViewLeft
                int r1 = r1 - r5
                int r5 = r9.getWidth()
                float r5 = (float) r5
                r6 = 1056964608(0x3f000000, float:0.5)
                float r5 = r5 * r6
                int r5 = java.lang.Math.round(r5)
                int r1 = java.lang.Math.abs(r1)
                if (r1 < r5) goto L65
            L50:
                int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r10 < 0) goto L5f
                int r10 = r9.getLeft()
                int r0 = r8.originalCapturedViewLeft
                if (r10 >= r0) goto L5d
                goto L5f
            L5d:
                int r0 = r0 + r11
                goto L63
            L5f:
                int r8 = r8.originalCapturedViewLeft
                int r0 = r8 - r11
            L63:
                r2 = r4
                goto L67
            L65:
                int r0 = r8.originalCapturedViewLeft
            L67:
                androidx.customview.widget.ViewDragHelper r8 = r3.viewDragHelper
                int r10 = r9.getTop()
                boolean r8 = r8.settleCapturedViewAt(r0, r10)
                if (r8 == 0) goto L7c
                androidx.lifecycle.ServiceLifecycleDispatcher$DispatchRunnable r8 = new androidx.lifecycle.ServiceLifecycleDispatcher$DispatchRunnable
                r8.<init>(r3, r9, r2)
                r9.postOnAnimation(r8)
                return
            L7c:
                if (r2 == 0) goto L85
                com.google.android.material.snackbar.BaseTransientBottomBar$3 r8 = r3.listener
                if (r8 == 0) goto L85
                r8.onDismiss(r9)
            L85:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.AnonymousClass1.onViewReleased(android.view.View, float, float):void");
        }

        @Override // org.slf4j.helpers.Util
        public final boolean tryCaptureView(View view, int i) {
            int i2 = this.activePointerId;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    };

    public boolean canSwipeDismissView(View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        boolean z = this.interceptingEvents;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.isPointInChildBounds(view, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.interceptingEvents = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.interceptingEvents = false;
        }
        if (z) {
            if (this.viewDragHelper == null) {
                this.viewDragHelper = new ViewDragHelper(coordinatorLayout.getContext(), coordinatorLayout, this.dragCallback);
            }
            if (!this.requestingDisallowInterceptTouchEvent && this.viewDragHelper.shouldInterceptTouchEvent(motionEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onLayoutChild(CoordinatorLayout coordinatorLayout, View view, int i) {
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
            ViewCompat.removeActionWithId(view, 1048576);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, 0);
            if (canSwipeDismissView(view)) {
                ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, new ConnectionPool(12, this));
            }
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean onTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.viewDragHelper == null) {
            return false;
        }
        if (this.requestingDisallowInterceptTouchEvent && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.viewDragHelper.processTouchEvent(motionEvent);
        return true;
    }
}
