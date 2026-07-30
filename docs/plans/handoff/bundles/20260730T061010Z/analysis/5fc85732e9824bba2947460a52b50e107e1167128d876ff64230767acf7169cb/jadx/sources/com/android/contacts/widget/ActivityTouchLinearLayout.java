package com.android.contacts.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.android.contacts.interactions.TouchPointManager;

/* loaded from: classes.dex */
public class ActivityTouchLinearLayout extends LinearLayout {
    public ActivityTouchLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        TouchPointManager.getInstance().setPoint((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
        return false;
    }
}
