package com.android.launcher3.appprediction;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import b.e.b.b;
import b.l.W;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.FloatingHeaderRow;
import com.android.launcher3.allapps.FloatingHeaderView;
import com.android.launcher3.anim.PropertySetter;
import com.android.launcher3.statemanager.StateManager;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class AppsDividerView extends View implements StateManager.StateListener, FloatingHeaderRow {
    public Layout mAllAppsLabelLayout;
    public final int mAllAppsLabelTextColor;
    public DividerType mDividerType;
    public boolean mIsScrolledOut;
    public final Launcher mLauncher;
    public final TextPaint mPaint;
    public FloatingHeaderView mParent;
    public FloatingHeaderRow[] mRows;
    public boolean mShowAllAppsLabel;
    public final int mStrokeColor;
    public boolean mTabsHidden;

    public enum DividerType {
        NONE,
        LINE,
        ALL_APPS_LABEL
    }

    public AppsDividerView(Context context) {
        this(context, null);
    }

    public final Layout getAllAppsLabelLayout() {
        if (this.mAllAppsLabelLayout == null) {
            this.mPaint.setAntiAlias(true);
            this.mPaint.setTypeface(Typeface.create("sans-serif-medium", 0));
            this.mPaint.setTextSize(getResources().getDimensionPixelSize(R.dimen.all_apps_label_text_size));
            CharSequence text = getResources().getText(R.string.all_apps_label);
            int length = text.length();
            TextPaint textPaint = this.mPaint;
            this.mAllAppsLabelLayout = StaticLayout.Builder.obtain(text, 0, length, textPaint, Math.round(textPaint.measureText(text.toString()))).setAlignment(Layout.Alignment.ALIGN_CENTER).setMaxLines(1).setIncludePad(true).build();
        }
        return this.mAllAppsLabelLayout;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public int getExpectedHeight() {
        return getPaddingBottom() + getPaddingTop();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public Class getTypeClass() {
        return AppsDividerView.class;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public boolean hasVisibleContent() {
        return false;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (shouldShowAllAppsLabel()) {
            this.mShowAllAppsLabel = true;
            this.mLauncher.getStateManager().mListeners.add(this);
            updateDividerType();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mLauncher.getStateManager().mListeners.remove(this);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        DividerType dividerType = this.mDividerType;
        if (dividerType == DividerType.LINE) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
            float height = getHeight() - (getPaddingBottom() / 2);
            canvas.drawLine(getPaddingLeft() + dimensionPixelSize, height, (getWidth() - getPaddingRight()) - dimensionPixelSize, height, this.mPaint);
            return;
        }
        if (dividerType == DividerType.ALL_APPS_LABEL) {
            Layout allAppsLabelLayout = getAllAppsLabelLayout();
            canvas.translate((getWidth() / 2) - (allAppsLabelLayout.getWidth() / 2), (getHeight() - getPaddingBottom()) - allAppsLabelLayout.getHeight());
            allAppsLabelLayout.draw(canvas);
            canvas.translate(-r1, -r2);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(View.getDefaultSize(getSuggestedMinimumWidth(), i), getPaddingTop() + getPaddingBottom());
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public void onStateTransitionComplete(Object obj) {
        if (((LauncherState) obj) == LauncherState.ALL_APPS) {
            this.mLauncher.getSharedPrefs().edit().putInt("launcher.all_apps_visited_count", this.mLauncher.getSharedPrefs().getInt("launcher.all_apps_visited_count", 0) + 1).apply();
            return;
        }
        if (this.mShowAllAppsLabel != shouldShowAllAppsLabel()) {
            this.mShowAllAppsLabel = !this.mShowAllAppsLabel;
            updateDividerType();
        }
        if (this.mShowAllAppsLabel) {
            return;
        }
        this.mLauncher.getStateManager().mListeners.remove(this);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setContentVisibility(boolean z, boolean z2, PropertySetter propertySetter, Interpolator interpolator, Interpolator interpolator2) {
        propertySetter.setFloat(this, LauncherAnimUtils.VIEW_ALPHA, z2 ? 1.0f : RecentsState.NO_OFFSET, interpolator2);
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setInsets(Rect rect, DeviceProfile deviceProfile) {
        int i = deviceProfile.desiredWorkspaceLeftRightMarginPx + deviceProfile.cellLayoutPaddingLeftRightPx;
        setPadding(i, getPaddingTop(), i, getPaddingBottom());
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setVerticalScroll(int i, boolean z) {
        setTranslationY(i);
        this.mIsScrolledOut = z;
        updateViewVisibility();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public void setup(FloatingHeaderView floatingHeaderView, FloatingHeaderRow[] floatingHeaderRowArr, boolean z) {
        this.mParent = floatingHeaderView;
        this.mTabsHidden = z;
        this.mRows = floatingHeaderRowArr;
        updateDividerType();
    }

    @Override // com.android.launcher3.allapps.FloatingHeaderRow
    public boolean shouldDraw() {
        return this.mDividerType != DividerType.NONE;
    }

    public final boolean shouldShowAllAppsLabel() {
        return this.mLauncher.getSharedPrefs().getInt("launcher.all_apps_visited_count", 0) < 20;
    }

    public final void updateDividerType() {
        int dimensionPixelSize;
        DividerType dividerType = DividerType.NONE;
        int i = 0;
        if (this.mTabsHidden) {
            int i2 = 0;
            for (FloatingHeaderRow floatingHeaderRow : this.mRows) {
                if (floatingHeaderRow == this) {
                    break;
                }
                if (floatingHeaderRow.shouldDraw()) {
                    i2++;
                }
            }
            if (this.mShowAllAppsLabel && i2 > 0) {
                dividerType = DividerType.ALL_APPS_LABEL;
            } else if (i2 == 1) {
                dividerType = DividerType.LINE;
            }
        }
        if (this.mDividerType != dividerType) {
            this.mDividerType = dividerType;
            int ordinal = dividerType.ordinal();
            if (ordinal == 1) {
                dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.all_apps_prediction_row_divider_height);
                this.mPaint.setColor(this.mStrokeColor);
            } else if (ordinal != 2) {
                dimensionPixelSize = 0;
            } else {
                i = getResources().getDimensionPixelSize(R.dimen.all_apps_label_top_padding) + getAllAppsLabelLayout().getHeight();
                dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.all_apps_label_bottom_padding);
                this.mPaint.setColor(this.mAllAppsLabelTextColor);
            }
            setPadding(getPaddingLeft(), i, getPaddingRight(), dimensionPixelSize);
            updateViewVisibility();
            invalidate();
            requestLayout();
            FloatingHeaderView floatingHeaderView = this.mParent;
            if (floatingHeaderView != null) {
                floatingHeaderView.onHeightUpdated();
            }
        }
    }

    public final void updateViewVisibility() {
        setVisibility(this.mDividerType == DividerType.NONE ? 8 : this.mIsScrolledOut ? 4 : 0);
    }

    public AppsDividerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppsDividerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new TextPaint();
        this.mDividerType = DividerType.NONE;
        this.mRows = FloatingHeaderRow.NO_ROWS;
        this.mIsScrolledOut = false;
        this.mLauncher = Launcher.getLauncher(context);
        boolean attrBoolean = W.getAttrBoolean(context, R.attr.isMainColorDark);
        this.mPaint.setStrokeWidth(getResources().getDimensionPixelSize(R.dimen.all_apps_divider_height));
        this.mStrokeColor = b.c(context, attrBoolean ? R.color.all_apps_prediction_row_separator_dark : R.color.all_apps_prediction_row_separator);
        this.mAllAppsLabelTextColor = context.getColor(attrBoolean ? R.color.all_apps_label_text_dark : R.color.all_apps_label_text);
    }
}
