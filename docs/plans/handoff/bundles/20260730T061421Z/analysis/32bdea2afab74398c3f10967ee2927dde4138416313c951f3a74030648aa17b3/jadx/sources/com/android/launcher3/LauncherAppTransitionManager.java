package com.android.launcher3;

import android.app.ActivityOptions;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.util.ResourceBasedOverride;

/* loaded from: classes.dex */
public class LauncherAppTransitionManager implements ResourceBasedOverride {
    public ActivityOptions getActivityLaunchOptions(Launcher launcher, View view) {
        int i;
        Drawable drawable;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = 0;
        if (!(view instanceof BubbleTextView) || (drawable = ((BubbleTextView) view).mIcon) == null) {
            i = 0;
        } else {
            Rect bounds = drawable.getBounds();
            i2 = (measuredWidth - bounds.width()) / 2;
            int paddingTop = view.getPaddingTop();
            int width = bounds.width();
            measuredHeight = bounds.height();
            i = paddingTop;
            measuredWidth = width;
        }
        return ActivityOptions.makeClipRevealAnimation(view, i2, i, measuredWidth, measuredHeight);
    }

    public void registerRemoteAnimations() {
    }

    public boolean supportsAdaptiveIconAnimation() {
        return false;
    }

    public void unregisterRemoteAnimations() {
    }
}
