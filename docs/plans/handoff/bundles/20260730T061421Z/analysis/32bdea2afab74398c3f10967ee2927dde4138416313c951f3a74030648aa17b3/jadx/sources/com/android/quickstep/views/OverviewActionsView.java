package com.android.quickstep.views;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.Insettable;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.MultiValueAlpha;
import com.android.quickstep.SysUINavigationMode;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.util.LayoutUtils;
import com.android.systemui.shared.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class OverviewActionsView extends FrameLayout implements View.OnClickListener, Insettable {
    public static final int DISABLED_ROTATED = 2;
    public static final int DISABLED_SCROLLING = 1;
    public static final int HIDDEN_DISABLED_FEATURE = 2;
    public static final int HIDDEN_GESTURE_RUNNING = 16;
    public static final int HIDDEN_NON_ZERO_ROTATION = 4;
    public static final int HIDDEN_NO_RECENTS = 32;
    public static final int HIDDEN_NO_TASKS = 8;
    public static final int HIDDEN_UNSUPPORTED_NAVIGATION = 1;
    public static final int INDEX_CONTENT_ALPHA = 0;
    public static final int INDEX_FULLSCREEN_ALPHA = 2;
    public static final int INDEX_HIDDEN_FLAGS_ALPHA = 3;
    public static final int INDEX_VISIBILITY_ALPHA = 1;
    public TaskOverlayFactory.OverlayUICallbacks mCallbacks;
    public int mDisabledFlags;
    public int mHiddenFlags;
    public final Rect mInsets;
    public final MultiValueAlpha mMultiValueAlpha;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActionsDisabledFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActionsHiddenFlags {
    }

    public OverviewActionsView(Context context) {
        this(context, null);
    }

    public MultiValueAlpha.AlphaProperty getContentAlpha() {
        return this.mMultiValueAlpha.mMyProperties[0];
    }

    public MultiValueAlpha.AlphaProperty getFullscreenAlpha() {
        return this.mMultiValueAlpha.mMyProperties[2];
    }

    public MultiValueAlpha.AlphaProperty getVisibilityAlpha() {
        return this.mMultiValueAlpha.mMyProperties[1];
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateHiddenFlags(2, !FeatureFlags.ENABLE_OVERVIEW_ACTIONS.get());
        updateHiddenFlags(1, !SysUINavigationMode.removeShelfFromOverview(getContext()));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.mCallbacks == null) {
            return;
        }
        int id = view.getId();
        if (id == R.id.action_share) {
            this.mCallbacks.onShare();
        } else if (id == R.id.action_screenshot) {
            this.mCallbacks.onScreenshot();
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateVerticalMargin(SysUINavigationMode.getMode(getContext()));
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(R.id.action_share);
        findViewById.setOnClickListener(this);
        findViewById(R.id.action_screenshot).setOnClickListener(this);
        if (FeatureFlags.ENABLE_OVERVIEW_SHARE.get()) {
            findViewById.setVisibility(0);
            findViewById(R.id.share_space).setVisibility(0);
        }
    }

    public void setCallbacks(TaskOverlayFactory.OverlayUICallbacks overlayUICallbacks) {
        this.mCallbacks = overlayUICallbacks;
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        this.mInsets.set(rect);
        updateVerticalMargin(SysUINavigationMode.getMode(getContext()));
    }

    public void updateDisabledFlags(int i, boolean z) {
        if (z) {
            this.mDisabledFlags = i | this.mDisabledFlags;
        } else {
            this.mDisabledFlags = (~i) & this.mDisabledFlags;
        }
        LayoutUtils.setViewEnabled(this, (this.mDisabledFlags & (-3)) == 0);
    }

    public void updateHiddenFlags(int i, boolean z) {
        if (z) {
            this.mHiddenFlags = i | this.mHiddenFlags;
        } else {
            this.mHiddenFlags = (~i) & this.mHiddenFlags;
        }
        boolean z2 = this.mHiddenFlags != 0;
        this.mMultiValueAlpha.mMyProperties[3].setValue(z2 ? RecentsState.NO_OFFSET : 1.0f);
        setVisibility(z2 ? 4 : 0);
    }

    public void updateVerticalMargin(SysUINavigationMode.Mode mode) {
        int dimensionPixelSize = (getResources().getConfiguration().orientation == 2 ? 0 : mode == SysUINavigationMode.Mode.THREE_BUTTONS ? getResources().getDimensionPixelSize(R.dimen.overview_actions_bottom_margin_three_button) : getResources().getDimensionPixelSize(R.dimen.overview_actions_bottom_margin_gesture)) + this.mInsets.bottom;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(layoutParams.leftMargin, layoutParams.topMargin, layoutParams.rightMargin, dimensionPixelSize);
    }

    public OverviewActionsView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OverviewActionsView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
        this.mInsets = new Rect();
        this.mMultiValueAlpha = new MultiValueAlpha(this, 4);
    }
}
