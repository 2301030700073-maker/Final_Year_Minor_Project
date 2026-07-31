package com.fsck.k9.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ViewAnimator;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class ToolableViewAnimator extends ViewAnimator {
    public ToolableViewAnimator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        isInEditMode();
    }

    @Override // android.widget.ViewAnimator, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        isInEditMode();
        super.addView(view, i, layoutParams);
    }

    public int getDisplayedChildId() {
        return getChildAt(getDisplayedChild()).getId();
    }

    @Override // android.widget.ViewAnimator
    public void setDisplayedChild(int i) {
        if (i != getDisplayedChild()) {
            super.setDisplayedChild(i);
        }
    }

    public void setDisplayedChildId(int i) {
        if (getDisplayedChildId() == i) {
            return;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (getChildAt(i2).getId() == i) {
                setDisplayedChild(i2);
                return;
            }
        }
        UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("No view with ID ", getResources().getResourceEntryName(i)));
    }

    public ToolableViewAnimator(Context context) {
        super(context);
    }

    public ToolableViewAnimator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        isInEditMode();
    }
}
