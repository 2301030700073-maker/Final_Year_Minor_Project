package com.google.android.material.expandable;

import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.core.view.ViewPropertyAnimatorListener;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExpandableWidgetHelper implements ViewPropertyAnimatorListener {
    public boolean expanded;
    public int expandedComponentIdHint;
    public final View widget;

    public ExpandableWidgetHelper(FloatingActionButton floatingActionButton) {
        this.expanded = false;
        this.expandedComponentIdHint = 0;
        this.widget = floatingActionButton;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationCancel() {
        this.expanded = true;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationEnd() {
        if (this.expanded) {
            return;
        }
        ActionBarContextView actionBarContextView = (ActionBarContextView) this.widget;
        actionBarContextView.mVisibilityAnim = null;
        super/*android.view.ViewGroup*/.setVisibility(this.expandedComponentIdHint);
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart() {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.expanded = false;
    }

    public ExpandableWidgetHelper(ActionBarContextView actionBarContextView) {
        this.widget = actionBarContextView;
        this.expanded = false;
    }
}
