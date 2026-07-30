package com.android.launcher3.allapps.search;

import android.content.Context;
import android.graphics.Rect;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.method.TextKeyListener;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.EditText;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Insettable;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.allapps.SearchUiManager;
import com.android.launcher3.allapps.search.AllAppsSearchBarController;
import com.android.launcher3.anim.PropertySetter;
import com.android.quickstep.fallback.RecentsState;
import com.android.systemui.shared.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AppsSearchContainerLayout extends ExtendedEditText implements SearchUiManager, AllAppsSearchBarController.Callbacks, AllAppsStore.OnUpdateListener, Insettable {
    public AlphabeticalAppsList mApps;
    public AllAppsContainerView mAppsView;
    public final int mContentOverlap;
    public final BaseDraggingActivity mLauncher;
    public final AllAppsSearchBarController mSearchBarController;
    public final SpannableStringBuilder mSearchQueryBuilder;

    public AppsSearchContainerLayout(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchBarController.Callbacks
    public void clearSearchResult() {
        if (this.mApps.setOrderedFilter(null)) {
            this.mAppsView.onSearchResultsChanged();
        }
        this.mSearchQueryBuilder.clear();
        this.mSearchQueryBuilder.clearSpans();
        Selection.setSelection(this.mSearchQueryBuilder, 0);
        AllAppsContainerView allAppsContainerView = this.mAppsView;
        if (allAppsContainerView.mSearchModeWhileUsingTabs) {
            allAppsContainerView.rebindAdapters(true, false);
            allAppsContainerView.mSearchModeWhileUsingTabs = false;
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public float getScrollRangeDelta(Rect rect) {
        return this.mLauncher.getDeviceProfile().isVerticalBarLayout() ? RecentsState.NO_OFFSET : rect.bottom + rect.top;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void initialize(AllAppsContainerView allAppsContainerView) {
        AlphabeticalAppsList apps = allAppsContainerView.getApps();
        this.mApps = apps;
        this.mAppsView = allAppsContainerView;
        this.mSearchBarController.initialize(new DefaultAppSearchAlgorithm(apps.mApps), this, this.mLauncher, this);
    }

    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public void onAppsUpdated() {
        this.mSearchBarController.refreshSearchResult();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mAppsView.mAllAppsStore.mUpdateListeners.add(this);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mAppsView.mAllAppsStore.mUpdateListeners.remove(this);
    }

    @Override // com.android.launcher3.ExtendedEditText, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        View view = (View) getParent();
        setTranslationX((((((view.getWidth() - view.getPaddingLeft()) - view.getPaddingRight()) - (i3 - i)) / 2) + view.getPaddingLeft()) - i);
        offsetTopAndBottom(this.mContentOverlap);
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        int size = (View.MeasureSpec.getSize(i) - this.mAppsView.getActiveRecyclerView().getPaddingLeft()) - this.mAppsView.getActiveRecyclerView().getPaddingRight();
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(getPaddingRight() + getPaddingLeft() + (size - ((size / deviceProfile.inv.numHotseatIcons) - Math.round(deviceProfile.iconSizePx * 0.92f))), 1073741824), i2);
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchBarController.Callbacks
    public void onSearchResult(String str, ArrayList arrayList) {
        if (arrayList != null) {
            this.mApps.setOrderedFilter(arrayList);
            this.mAppsView.onSearchResultsChanged();
            this.mAppsView.setLastSearchQuery(str);
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void preDispatchKeyEvent(KeyEvent keyEvent) {
        if (this.mSearchBarController.mInput.isFocused() || keyEvent.getAction() != 0) {
            return;
        }
        int unicodeChar = keyEvent.getUnicodeChar();
        if (((unicodeChar <= 0 || Character.isWhitespace(unicodeChar) || Character.isSpaceChar(unicodeChar)) ? false : true) && TextKeyListener.getInstance().onKeyDown(this, this.mSearchQueryBuilder, keyEvent.getKeyCode(), keyEvent) && this.mSearchQueryBuilder.length() > 0) {
            this.mSearchBarController.mInput.showKeyboard();
        }
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void resetSearch() {
        AllAppsSearchBarController allAppsSearchBarController = this.mSearchBarController;
        allAppsSearchBarController.mCb.clearSearchResult();
        allAppsSearchBarController.mInput.reset();
        allAppsSearchBarController.mQuery = null;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public void setContentVisibility(int i, PropertySetter propertySetter, Interpolator interpolator) {
        propertySetter.setViewAlpha(this, isQsbVisible(i) ? 1.0f : RecentsState.NO_OFFSET, interpolator);
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        ((ViewGroup.MarginLayoutParams) getLayoutParams()).topMargin = rect.top;
        requestLayout();
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public EditText setTextSearchEnabled(boolean z) {
        return this;
    }

    public AppsSearchContainerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppsSearchContainerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLauncher = (BaseDraggingActivity) BaseActivity.fromContext(context);
        this.mSearchBarController = new AllAppsSearchBarController();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        this.mSearchQueryBuilder = spannableStringBuilder;
        Selection.setSelection(spannableStringBuilder, 0);
        setHint(Utilities.prefixTextWithIcon(getContext(), R.drawable.ic_allapps_search, getHint()));
        this.mContentOverlap = getResources().getDimensionPixelSize(R.dimen.all_apps_search_bar_field_height) / 2;
    }
}
