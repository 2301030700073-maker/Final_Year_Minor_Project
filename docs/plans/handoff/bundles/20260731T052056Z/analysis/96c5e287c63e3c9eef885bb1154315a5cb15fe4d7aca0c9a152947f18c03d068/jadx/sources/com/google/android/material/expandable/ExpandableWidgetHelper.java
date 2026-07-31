package com.google.android.material.expandable;

import androidx.appcompat.widget.ActionBarContextView;
import androidx.core.view.ViewPropertyAnimatorListener;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ExpandableWidgetHelper implements ViewPropertyAnimatorListener {
    public boolean expanded;
    public int expandedComponentIdHint;
    public Object widget;

    public ExpandableWidgetHelper(SimpleType simpleType, int i, boolean z) {
        this.widget = simpleType;
        this.expandedComponentIdHint = i;
        this.expanded = z;
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
}
