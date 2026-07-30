package com.android.quickstep.fallback;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.RecentsActivity;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class RecentsDragLayer extends BaseDragLayer {
    public RecentsDragLayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
    }

    @Override // com.android.launcher3.views.BaseDragLayer
    public void recreateControllers() {
        this.mControllers = new TouchController[]{new RecentsTaskController((RecentsActivity) this.mActivity), new FallbackNavBarTouchController((RecentsActivity) this.mActivity)};
    }

    @Override // com.android.launcher3.InsettableFrameLayout, com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        Drawable drawable;
        super.setInsets(rect);
        if (rect.top == 0 || !this.mAllowSysuiScrims) {
            drawable = null;
        } else {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.workspaceStatusBarScrim});
            drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
        }
        setBackground(drawable);
    }
}
