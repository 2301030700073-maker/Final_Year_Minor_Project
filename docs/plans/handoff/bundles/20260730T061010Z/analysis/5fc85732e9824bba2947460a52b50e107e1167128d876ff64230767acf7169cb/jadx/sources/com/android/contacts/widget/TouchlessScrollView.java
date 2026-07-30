package com.android.contacts.widget;

import android.content.Context;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class TouchlessScrollView extends ScrollView {
    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public TouchlessScrollView(Context context) {
        this(context, null);
    }

    public TouchlessScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TouchlessScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        int scrollY = getScrollY();
        setScrollY(0);
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        setScrollY(scrollY);
        return onSaveInstanceState;
    }
}
