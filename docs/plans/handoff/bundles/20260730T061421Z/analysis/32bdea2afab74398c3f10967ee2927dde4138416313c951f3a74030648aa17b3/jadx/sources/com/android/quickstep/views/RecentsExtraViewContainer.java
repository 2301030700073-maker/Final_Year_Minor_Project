package com.android.quickstep.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public class RecentsExtraViewContainer extends FrameLayout implements RecentsView.PageCallbacks {
    public boolean mScrollable;

    public RecentsExtraViewContainer(Context context) {
        super(context);
        this.mScrollable = false;
    }

    public boolean isScrollable() {
        return this.mScrollable;
    }

    public void setScrollable(boolean z) {
        this.mScrollable = z;
    }

    public RecentsExtraViewContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScrollable = false;
    }

    public RecentsExtraViewContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mScrollable = false;
    }
}
