package com.android.quickstep.views;

import android.content.Context;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.widget.Button;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.views.RecentsView;

/* loaded from: classes.dex */
public class ClearAllButton extends Button implements RecentsView.PageCallbacks {
    public static final FloatProperty VISIBILITY_ALPHA = new FloatProperty("visibilityAlpha") { // from class: com.android.quickstep.views.ClearAllButton.1
        @Override // android.util.Property
        public Float get(ClearAllButton clearAllButton) {
            return Float.valueOf(clearAllButton.mVisibilityAlpha);
        }

        @Override // android.util.FloatProperty
        public void setValue(ClearAllButton clearAllButton, float f) {
            clearAllButton.setVisibilityAlpha(f);
        }
    };
    public float mContentAlpha;
    public boolean mIsRtl;
    public float mScrollAlpha;
    public int mScrollOffset;
    public float mVisibilityAlpha;

    public ClearAllButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScrollAlpha = 1.0f;
        this.mContentAlpha = 1.0f;
        this.mVisibilityAlpha = 1.0f;
        this.mIsRtl = getLayoutDirection() == 1;
    }

    private RecentsView getRecentsView() {
        return (RecentsView) getParent();
    }

    private void updateAlpha() {
        float f = this.mScrollAlpha * this.mContentAlpha * this.mVisibilityAlpha;
        setAlpha(f);
        setClickable(f == 1.0f);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mScrollOffset = getRecentsView().getPagedOrientationHandler().getClearAllScrollOffset(getRecentsView(), this.mIsRtl);
    }

    @Override // com.android.quickstep.views.RecentsView.PageCallbacks
    public void onPageScroll(RecentsView.ScrollState scrollState) {
        PagedOrientationHandler pagedOrientationHandler = getRecentsView().getPagedOrientationHandler();
        float primaryValue = pagedOrientationHandler.getPrimaryValue(getWidth(), getHeight());
        if (primaryValue == RecentsState.NO_OFFSET) {
            return;
        }
        float min = Math.min(scrollState.scrollFromEdge, primaryValue);
        pagedOrientationHandler.setPrimaryAndResetSecondaryTranslate(this, this.mIsRtl ? this.mScrollOffset - min : this.mScrollOffset + min);
        this.mScrollAlpha = 1.0f - (min / primaryValue);
        updateAlpha();
    }

    @Override // android.widget.TextView, android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        this.mIsRtl = getLayoutDirection() == 1;
    }

    public void setContentAlpha(float f) {
        if (this.mContentAlpha != f) {
            this.mContentAlpha = f;
            updateAlpha();
        }
    }

    public void setVisibilityAlpha(float f) {
        if (this.mVisibilityAlpha != f) {
            this.mVisibilityAlpha = f;
            updateAlpha();
        }
    }
}
