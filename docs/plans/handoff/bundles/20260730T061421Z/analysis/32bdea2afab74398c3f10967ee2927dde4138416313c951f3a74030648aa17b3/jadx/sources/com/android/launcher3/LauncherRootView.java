package com.android.launcher3;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.WindowInsets;
import c.b.a.b.b.l.K;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.statemanager.StatefulActivity;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class LauncherRootView extends InsettableFrameLayout {

    @ViewDebug.ExportedProperty(category = "launcher")
    public static final List SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());
    public final StatefulActivity mActivity;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mDisallowBackGesture;

    @ViewDebug.ExportedProperty(category = "launcher")
    public boolean mForceHideBackArrow;
    public final Rect mTempRect;
    public K mWindowStateListener;

    public LauncherRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        this.mActivity = (StatefulActivity) BaseActivity.fromContext(context);
    }

    public void dispatchInsets() {
        this.mActivity.getDeviceProfile().updateInsets(this.mInsets);
        super.setInsets(this.mInsets);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        this.mTempRect.set(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        Rect rect = this.mTempRect;
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        deviceProfile.mInsets.set(rect);
        deviceProfile.updateWorkspacePadding();
        boolean z = !rect.equals(this.mInsets);
        setInsets(rect);
        if (z) {
            this.mActivity.getStateManager().reapplyState(true);
        }
        return windowInsets;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        ((Rect) SYSTEM_GESTURE_EXCLUSION_RECT.get(0)).set(i, i2, i3, i4);
        setDisallowBackGesture(this.mDisallowBackGesture);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        K k = this.mWindowStateListener;
        if (k != null) {
            Objects.requireNonNull(k);
            if (z || !k.f2632d) {
                if (z) {
                    k.a(true);
                }
            } else {
                k.f2632d = false;
                k.f2631c = true;
                k.c(true, true);
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        K k = this.mWindowStateListener;
        if (k != null) {
            k.a(false);
        }
    }

    @TargetApi(29)
    public void setDisallowBackGesture(boolean z) {
        if (!Utilities.ATLEAST_Q || FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            return;
        }
        this.mDisallowBackGesture = z;
        setSystemGestureExclusionRects((this.mForceHideBackArrow || z) ? SYSTEM_GESTURE_EXCLUSION_RECT : Collections.emptyList());
    }

    @Override // com.android.launcher3.InsettableFrameLayout, com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        if (rect.equals(this.mInsets)) {
            return;
        }
        super.setInsets(rect);
    }

    public void setWindowStateListener(K k) {
        this.mWindowStateListener = k;
    }
}
