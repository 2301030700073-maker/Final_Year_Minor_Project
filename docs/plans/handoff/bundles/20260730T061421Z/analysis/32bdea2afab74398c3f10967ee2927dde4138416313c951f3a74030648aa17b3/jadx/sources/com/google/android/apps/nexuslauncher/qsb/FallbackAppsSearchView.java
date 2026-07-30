package com.google.android.apps.nexuslauncher.qsb;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.allapps.AllAppsContainerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.AlphabeticalAppsList;
import com.android.launcher3.allapps.FloatingHeaderView;
import com.android.launcher3.allapps.search.AllAppsSearchBarController;
import com.android.launcher3.statemanager.BaseState;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class FallbackAppsSearchView extends ExtendedEditText implements AllAppsSearchBarController.Callbacks, AllAppsStore.OnUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final AllAppsSearchBarController f3307a;

    /* renamed from: b, reason: collision with root package name */
    public AlphabeticalAppsList f3308b;

    /* renamed from: c, reason: collision with root package name */
    public AllAppsQsbLayout f3309c;

    /* renamed from: d, reason: collision with root package name */
    public AllAppsContainerView f3310d;

    public FallbackAppsSearchView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchBarController.Callbacks
    public void clearSearchResult() {
        AlphabeticalAppsList alphabeticalAppsList;
        if (getParent() == null || (alphabeticalAppsList = this.f3308b) == null || !alphabeticalAppsList.setOrderedFilter(null)) {
            return;
        }
        this.f3309c.y(0);
        this.f3310d.onSearchResultsChanged();
        FloatingHeaderView floatingHeaderView = this.f3310d.mHeader;
        if (floatingHeaderView != null && floatingHeaderView.mCollapsed) {
            floatingHeaderView.mCollapsed = false;
            floatingHeaderView.onHeightUpdated();
        }
        AllAppsContainerView allAppsContainerView = this.f3310d;
        if (allAppsContainerView.mSearchModeWhileUsingTabs) {
            allAppsContainerView.rebindAdapters(true, false);
            allAppsContainerView.mSearchModeWhileUsingTabs = false;
        }
    }

    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public void onAppsUpdated() {
        this.f3307a.refreshSearchResult();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Launcher.getLauncher(getContext()).mAppsView.mAllAppsStore.mUpdateListeners.add(this);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Launcher.getLauncher(getContext()).mAppsView.mAllAppsStore.mUpdateListeners.remove(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            Launcher.getLauncher(getContext()).getStateManager().goToState((BaseState) LauncherState.ALL_APPS, false);
        }
        super.onFocusChanged(z, i, rect);
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchBarController.Callbacks
    public void onSearchResult(String str, ArrayList arrayList) {
        if (this.f3308b == null || getParent() == null) {
            return;
        }
        this.f3308b.setOrderedFilter(arrayList);
        this.f3309c.y(0);
        this.f3310d.onSearchResultsChanged();
        FloatingHeaderView floatingHeaderView = this.f3310d.mHeader;
        if (floatingHeaderView != null && !floatingHeaderView.mCollapsed) {
            floatingHeaderView.mCollapsed = true;
            floatingHeaderView.onHeightUpdated();
        }
        this.f3310d.setLastSearchQuery(str);
    }

    public FallbackAppsSearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FallbackAppsSearchView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3307a = new AllAppsSearchBarController();
    }
}
