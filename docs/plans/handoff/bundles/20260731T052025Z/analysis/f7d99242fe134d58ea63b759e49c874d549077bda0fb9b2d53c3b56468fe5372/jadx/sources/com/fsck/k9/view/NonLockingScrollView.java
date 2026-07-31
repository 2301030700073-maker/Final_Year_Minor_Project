package com.fsck.k9.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class NonLockingScrollView extends ScrollView {
    public final ArrayList mChildrenNeedingAllTouches;
    public boolean mInCustomDrag;
    public boolean mSkipWebViewScroll;
    public final Rect sHitFrame;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class HierarchyTreeChangeListener implements ViewGroup.OnHierarchyChangeListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ ViewGroup this$0;

        public /* synthetic */ HierarchyTreeChangeListener(ViewGroup viewGroup, int i) {
            this.$r8$classId = i;
            this.this$0 = viewGroup;
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            int i = this.$r8$classId;
            ViewGroup viewGroup = this.this$0;
            switch (i) {
                case 0:
                    if (view2 instanceof WebView) {
                        ((NonLockingScrollView) viewGroup).mChildrenNeedingAllTouches.add(view2);
                        break;
                    } else if (view2 instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) view2;
                        viewGroup2.setOnHierarchyChangeListener(this);
                        int childCount = viewGroup2.getChildCount();
                        for (int i2 = 0; i2 < childCount; i2++) {
                            onChildViewAdded(viewGroup2, viewGroup2.getChildAt(i2));
                        }
                        break;
                    }
                    break;
                default:
                    ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = ((CoordinatorLayout) viewGroup).mOnHierarchyChangeListener;
                    if (onHierarchyChangeListener != null) {
                        onHierarchyChangeListener.onChildViewAdded(view, view2);
                        break;
                    }
                    break;
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            int i = this.$r8$classId;
            ViewGroup viewGroup = this.this$0;
            switch (i) {
                case 0:
                    if (view2 instanceof WebView) {
                        ((NonLockingScrollView) viewGroup).mChildrenNeedingAllTouches.remove(view2);
                        break;
                    } else if (view2 instanceof ViewGroup) {
                        ViewGroup viewGroup2 = (ViewGroup) view2;
                        int childCount = viewGroup2.getChildCount();
                        for (int i2 = 0; i2 < childCount; i2++) {
                            onChildViewRemoved(viewGroup2, viewGroup2.getChildAt(i2));
                        }
                        viewGroup2.setOnHierarchyChangeListener(null);
                        break;
                    }
                    break;
                default:
                    CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewGroup;
                    coordinatorLayout.onChildViewsChanged(2);
                    ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.mOnHierarchyChangeListener;
                    if (onHierarchyChangeListener != null) {
                        onHierarchyChangeListener.onChildViewRemoved(view, view2);
                        break;
                    }
                    break;
            }
        }
    }

    public NonLockingScrollView(Context context) {
        super(context);
        this.mInCustomDrag = false;
        this.mChildrenNeedingAllTouches = new ArrayList();
        this.mSkipWebViewScroll = true;
        this.sHitFrame = new Rect();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        HierarchyTreeChangeListener hierarchyTreeChangeListener = new HierarchyTreeChangeListener(this, 0);
        setOnHierarchyChangeListener(hierarchyTreeChangeListener);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            hierarchyTreeChangeListener.onChildViewAdded(this, getChildAt(i));
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent.getAction() & 255) == 1 && this.mInCustomDrag) {
            this.mInCustomDrag = false;
            onTouchEvent(motionEvent);
            return true;
        }
        if (!this.mInCustomDrag) {
            int actionIndex = motionEvent.getActionIndex();
            float x = motionEvent.getX(actionIndex) + getScrollX();
            float y = motionEvent.getY(actionIndex) + getScrollY();
            Iterator it = this.mChildrenNeedingAllTouches.iterator();
            while (it.hasNext()) {
                View view = (View) it.next();
                if (view.getVisibility() == 0 || view.getAnimation() != null) {
                    Rect rect = this.sHitFrame;
                    view.getHitRect(rect);
                    if (rect.contains((int) x, (int) y)) {
                    }
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }
        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(motionEvent);
        this.mInCustomDrag = onInterceptTouchEvent;
        if (onInterceptTouchEvent) {
            onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (!this.mSkipWebViewScroll || !(view2 instanceof MessageWebView) || !view2.getGlobalVisibleRect(new Rect())) {
            super.requestChildFocus(view, view2);
            return;
        }
        this.mSkipWebViewScroll = false;
        super.requestChildFocus(view, view);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestChildFocus(this, view2);
        }
    }

    public NonLockingScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInCustomDrag = false;
        this.mChildrenNeedingAllTouches = new ArrayList();
        this.mSkipWebViewScroll = true;
        this.sHitFrame = new Rect();
    }

    public NonLockingScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInCustomDrag = false;
        this.mChildrenNeedingAllTouches = new ArrayList();
        this.mSkipWebViewScroll = true;
        this.sHitFrame = new Rect();
    }
}
