package org.schabi.newpipe.fragments;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.preference.PreferenceManager;
import androidx.sqlite.SQLite;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import coil3.ComponentRegistry;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.material.tabs.TabLayout;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.Collection;
import java.util.ArrayList;
import okio.Options;
import org.jsoup.nodes.Printer;
import org.jsoup.parser.TagSet$$ExternalSyntheticLambda1;
import org.schabi.newpipe.BaseFragment;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda6;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;
import org.schabi.newpipe.settings.tabs.Tab;
import org.schabi.newpipe.util.ServiceHelper;
import org.schabi.newpipe.util.ZipHelper;
import org.schabi.newpipe.views.ScrollableTabLayout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class MainFragment extends BaseFragment implements TabLayout.OnTabSelectedListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public Printer binding;
    public boolean mainTabsPositionBottom;
    public String mainTabsPositionKey;
    public SelectedTabsPagerAdapter pagerAdapter;
    public SharedPreferences prefs;
    public ComponentRegistry.Builder tabsManager;
    public boolean youtubeRestrictedModeEnabled;
    public String youtubeRestrictedModeEnabledKey;
    public final ArrayList tabsList = new ArrayList();
    public boolean hasTabsChanged = false;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class SelectedTabsPagerAdapter extends PagerAdapter {
        public final Context context;
        public final ArrayList internalTabsList;
        public boolean mExecutingFinishUpdate;
        public final FragmentManager mFragmentManager;
        public BackStackRecord mCurTransaction = null;
        public final ArrayList mSavedState = new ArrayList();
        public final ArrayList mFragments = new ArrayList();
        public Fragment mCurrentPrimaryItem = null;
        public final int mBehavior = 1;
        public final ArrayList localPlaylistFragments = new ArrayList();

        public SelectedTabsPagerAdapter(Context context, FragmentManager fragmentManager, ArrayList arrayList) {
            this.mFragmentManager = fragmentManager;
            this.context = context;
            this.internalTabsList = new ArrayList(arrayList);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void destroyItem(int i, Object obj) {
            ArrayList arrayList;
            Fragment fragment = (Fragment) obj;
            BackStackRecord backStackRecord = this.mCurTransaction;
            FragmentManager fragmentManager = this.mFragmentManager;
            if (backStackRecord == null) {
                fragmentManager.getClass();
                this.mCurTransaction = new BackStackRecord(fragmentManager);
            }
            while (true) {
                arrayList = this.mSavedState;
                if (arrayList.size() > i) {
                    break;
                } else {
                    arrayList.add(null);
                }
            }
            arrayList.set(i, fragment.isAdded() ? fragmentManager.saveFragmentInstanceState(fragment) : null);
            this.mFragments.set(i, null);
            this.mCurTransaction.remove(fragment);
            if (fragment.equals(this.mCurrentPrimaryItem)) {
                this.mCurrentPrimaryItem = null;
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void finishUpdate() {
            BackStackRecord backStackRecord = this.mCurTransaction;
            if (backStackRecord != null) {
                if (!this.mExecutingFinishUpdate) {
                    try {
                        this.mExecutingFinishUpdate = true;
                        if (backStackRecord.mAddToBackStack) {
                            throw new IllegalStateException("This transaction is already being added to the back stack");
                        }
                        backStackRecord.mAllowAddToBackStack = false;
                        backStackRecord.mManager.execSingleAction(backStackRecord, true);
                    } finally {
                        this.mExecutingFinishUpdate = false;
                    }
                }
                this.mCurTransaction = null;
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final int getCount() {
            return this.internalTabsList.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final Fragment instantiateItem(ViewPager viewPager, int i) {
            Fragment blankFragment;
            Fragment.SavedState savedState;
            Fragment fragment;
            ArrayList arrayList = this.mFragments;
            if (arrayList.size() > i && (fragment = (Fragment) arrayList.get(i)) != null) {
                return fragment;
            }
            if (this.mCurTransaction == null) {
                FragmentManager fragmentManager = this.mFragmentManager;
                fragmentManager.getClass();
                this.mCurTransaction = new BackStackRecord(fragmentManager);
            }
            Tab tab = (Tab) this.internalTabsList.get(i);
            try {
                blankFragment = tab.getFragment();
                ((BaseFragment) blankFragment).useAsFrontPage(true);
                if (blankFragment instanceof LocalPlaylistFragment) {
                    this.localPlaylistFragments.add((LocalPlaylistFragment) blankFragment);
                }
            } catch (Throwable th) {
                blankFragment = new BlankFragment(new ErrorInfo(th, UserAction.GETTING_MAIN_SCREEN_TAB, "Tab " + tab.getClass().getSimpleName() + ":" + tab.getTabName(this.context), (Integer) null, 24));
            }
            ArrayList arrayList2 = this.mSavedState;
            if (arrayList2.size() > i && (savedState = (Fragment.SavedState) arrayList2.get(i)) != null) {
                blankFragment.setInitialSavedState(savedState);
            }
            while (arrayList.size() <= i) {
                arrayList.add(null);
            }
            blankFragment.setMenuVisibility(false);
            int i2 = this.mBehavior;
            if (i2 == 0) {
                blankFragment.setUserVisibleHint(false);
            }
            arrayList.set(i, blankFragment);
            this.mCurTransaction.doAddOp(viewPager.getId(), blankFragment, null, 1);
            if (i2 == 1) {
                this.mCurTransaction.setMaxLifecycle(blankFragment, Lifecycle.State.STARTED);
            }
            return blankFragment;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final boolean isViewFromObject(View view, Object obj) {
            return ((Fragment) obj).getView() == view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void restoreState(Parcelable parcelable, ClassLoader classLoader) {
            Fragment findActiveFragment;
            if (parcelable != null) {
                Bundle bundle = (Bundle) parcelable;
                bundle.setClassLoader(classLoader);
                ArrayList parcelableArrayList = Build.VERSION.SDK_INT >= 34 ? ZipHelper.getParcelableArrayList(bundle, "states", Fragment.SavedState.class) : bundle.getParcelableArrayList("states");
                ArrayList arrayList = this.mSavedState;
                arrayList.clear();
                ArrayList arrayList2 = this.mFragments;
                arrayList2.clear();
                if (parcelableArrayList != null) {
                    arrayList.addAll(parcelableArrayList);
                }
                for (String str : bundle.keySet()) {
                    if (str.startsWith("f")) {
                        int parseInt = Integer.parseInt(str.substring(1));
                        FragmentManager fragmentManager = this.mFragmentManager;
                        fragmentManager.getClass();
                        String string = bundle.getString(str);
                        if (string == null) {
                            findActiveFragment = null;
                        } else {
                            findActiveFragment = fragmentManager.mFragmentStore.findActiveFragment(string);
                            if (findActiveFragment == null) {
                                fragmentManager.throwException(new IllegalStateException(Owner.CC.m("Fragment no longer exists for key ", str, ": unique id ", string)));
                                throw null;
                            }
                        }
                        if (findActiveFragment != null) {
                            while (arrayList2.size() <= parseInt) {
                                arrayList2.add(null);
                            }
                            findActiveFragment.setMenuVisibility(bundle.getString("selected_fragment", "").equals(str));
                            arrayList2.set(parseInt, findActiveFragment);
                        } else {
                            Log.w("FragmentStatePagerAdapt", "Bad fragment at key ".concat(str));
                        }
                    }
                }
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final Parcelable saveState() {
            Bundle bundle;
            ArrayList<? extends Parcelable> arrayList = this.mSavedState;
            if (arrayList.isEmpty()) {
                bundle = null;
            } else {
                bundle = new Bundle();
                bundle.putParcelableArrayList("states", arrayList);
            }
            int i = 0;
            while (true) {
                ArrayList arrayList2 = this.mFragments;
                if (i >= arrayList2.size()) {
                    return bundle;
                }
                Fragment fragment = (Fragment) arrayList2.get(i);
                if (fragment != null && fragment.isAdded()) {
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    String m = Modifier.CC.m(i, "f");
                    this.mFragmentManager.putFragment(bundle, m, fragment);
                    if (fragment == this.mCurrentPrimaryItem) {
                        bundle.putString("selected_fragment", m);
                    }
                }
                i++;
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void setPrimaryItem(Object obj) {
            Fragment fragment = (Fragment) obj;
            Fragment fragment2 = this.mCurrentPrimaryItem;
            if (fragment != fragment2) {
                FragmentManager fragmentManager = this.mFragmentManager;
                int i = this.mBehavior;
                if (fragment2 != null) {
                    fragment2.setMenuVisibility(false);
                    if (i == 1) {
                        if (this.mCurTransaction == null) {
                            fragmentManager.getClass();
                            this.mCurTransaction = new BackStackRecord(fragmentManager);
                        }
                        this.mCurTransaction.setMaxLifecycle(this.mCurrentPrimaryItem, Lifecycle.State.STARTED);
                    } else {
                        this.mCurrentPrimaryItem.setUserVisibleHint(false);
                    }
                }
                fragment.setMenuVisibility(true);
                if (i == 1) {
                    if (this.mCurTransaction == null) {
                        fragmentManager.getClass();
                        this.mCurTransaction = new BackStackRecord(fragmentManager);
                    }
                    this.mCurTransaction.setMaxLifecycle(fragment, Lifecycle.State.RESUMED);
                } else {
                    fragment.setUserVisibleHint(true);
                }
                this.mCurrentPrimaryItem = fragment;
            }
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public final void startUpdate(ViewPager viewPager) {
            if (viewPager.getId() != -1) {
                return;
            }
            DecodeUtils$$ExternalSyntheticBUOutline0.m$3(this, " requires a view id", "ViewPager with adapter ");
        }
    }

    public final void commitPlaylistTabs() {
        Collection.EL.stream(this.pagerAdapter.localPlaylistFragments).forEach(new TagSet$$ExternalSyntheticLambda1(14));
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        int i = R.id.main_tab_layout;
        ScrollableTabLayout scrollableTabLayout = (ScrollableTabLayout) Options.Companion.findChildViewById(R.id.main_tab_layout, view);
        if (scrollableTabLayout != null) {
            i = R.id.pager;
            ViewPager viewPager = (ViewPager) Options.Companion.findChildViewById(R.id.pager, view);
            if (viewPager != null) {
                this.binding = new Printer(6, (RelativeLayout) view, scrollableTabLayout, viewPager);
                scrollableTabLayout.setupWithViewPager(viewPager);
                ArrayList arrayList = ((ScrollableTabLayout) this.binding.accum).selectedListeners;
                if (!arrayList.contains(this)) {
                    arrayList.add(this);
                }
                setupTabs();
                updateTabLayoutPosition();
                return;
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = 1;
        setHasOptionsMenu(true);
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(this.activity, 18);
        this.tabsManager = builder;
        OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 = new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 11);
        SharedPreferences sharedPreferences = (SharedPreferences) builder.interceptors;
        FeedFragment$$ExternalSyntheticLambda6 feedFragment$$ExternalSyntheticLambda6 = (FeedFragment$$ExternalSyntheticLambda6) builder.lazyDecoderFactories;
        if (feedFragment$$ExternalSyntheticLambda6 != null) {
            sharedPreferences.unregisterOnSharedPreferenceChangeListener(feedFragment$$ExternalSyntheticLambda6);
        }
        builder.lazyFetcherFactories = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        FeedFragment$$ExternalSyntheticLambda6 feedFragment$$ExternalSyntheticLambda62 = new FeedFragment$$ExternalSyntheticLambda6(builder, i);
        builder.lazyDecoderFactories = feedFragment$$ExternalSyntheticLambda62;
        sharedPreferences.registerOnSharedPreferenceChangeListener(feedFragment$$ExternalSyntheticLambda62);
        this.prefs = PreferenceManager.getDefaultSharedPreferences(requireContext());
        String string = getString(R.string.youtube_restricted_mode_enabled);
        this.youtubeRestrictedModeEnabledKey = string;
        this.youtubeRestrictedModeEnabled = this.prefs.getBoolean(string, false);
        String string2 = getString(R.string.main_tabs_position_key);
        this.mainTabsPositionKey = string2;
        this.mainTabsPositionBottom = this.prefs.getBoolean(string2, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_main_fragment, menu);
        Options.Companion supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_main, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        ComponentRegistry.Builder builder = this.tabsManager;
        FeedFragment$$ExternalSyntheticLambda6 feedFragment$$ExternalSyntheticLambda6 = (FeedFragment$$ExternalSyntheticLambda6) builder.lazyDecoderFactories;
        if (feedFragment$$ExternalSyntheticLambda6 != null) {
            ((SharedPreferences) builder.interceptors).unregisterOnSharedPreferenceChangeListener(feedFragment$$ExternalSyntheticLambda6);
        }
        builder.lazyDecoderFactories = null;
        builder.lazyFetcherFactories = null;
        Printer printer = this.binding;
        if (printer != null) {
            ((ViewPager) printer.settings).setAdapter(null);
            this.binding = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != R.id.action_search) {
            return false;
        }
        try {
            SQLite.openSearchFragment(getFM(), ServiceHelper.getSelectedServiceId(this.activity), "");
            return true;
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(this, "Opening search fragment", e);
            return true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        boolean z = this.prefs.getBoolean(this.youtubeRestrictedModeEnabledKey, false);
        if (this.youtubeRestrictedModeEnabled != z || this.hasTabsChanged) {
            this.youtubeRestrictedModeEnabled = z;
            setupTabs();
        }
        boolean z2 = this.prefs.getBoolean(this.mainTabsPositionKey, false);
        if (this.mainTabsPositionBottom != z2) {
            this.mainTabsPositionBottom = z2;
            updateTabLayoutPosition();
        }
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public final void onTabReselected(TabLayout.Tab tab) {
        updateTitleForTab(tab.position);
    }

    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
    public final void onTabSelected(TabLayout.Tab tab) {
        updateTitleForTab(tab.position);
    }

    public final void setupTabs() {
        ArrayList arrayList = this.tabsList;
        arrayList.clear();
        arrayList.addAll(this.tabsManager.getTabs());
        SelectedTabsPagerAdapter selectedTabsPagerAdapter = this.pagerAdapter;
        if (selectedTabsPagerAdapter == null || !selectedTabsPagerAdapter.internalTabsList.equals(arrayList)) {
            this.pagerAdapter = new SelectedTabsPagerAdapter(requireContext(), getChildFragmentManager(), arrayList);
        }
        ((ViewPager) this.binding.settings).setAdapter(null);
        ((ViewPager) this.binding.settings).setAdapter(this.pagerAdapter);
        int i = 0;
        while (true) {
            int size = arrayList.size();
            Printer printer = this.binding;
            if (i >= size) {
                updateTitleForTab(((ViewPager) printer.settings).getCurrentItem());
                this.hasTabsChanged = false;
                return;
            }
            TabLayout.Tab tabAt = ((ScrollableTabLayout) printer.accum).getTabAt(i);
            if (tabAt != null) {
                Tab tab = (Tab) arrayList.get(i);
                tabAt.setIcon(tab.getTabIconRes(requireContext()));
                tabAt.contentDesc = tab.getTabName(requireContext());
                tabAt.updateView();
            }
            i++;
        }
    }

    public final void updateTabLayoutPosition() {
        Printer printer = this.binding;
        ScrollableTabLayout scrollableTabLayout = (ScrollableTabLayout) printer.accum;
        ViewPager viewPager = (ViewPager) printer.settings;
        boolean z = this.mainTabsPositionBottom;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) scrollableTabLayout.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewPager.getLayoutParams();
        layoutParams.removeRule(z ? 10 : 12);
        layoutParams.addRule(z ? 12 : 10);
        layoutParams2.removeRule(z ? 3 : 2);
        layoutParams2.addRule(z ? 2 : 3, R.id.main_tab_layout);
        scrollableTabLayout.setSelectedTabIndicatorGravity(z ? 2 : 0);
        scrollableTabLayout.setLayoutParams(layoutParams);
        viewPager.setLayoutParams(layoutParams2);
        scrollableTabLayout.setBackgroundColor(Options.Companion.resolveColorFromAttr(requireContext(), z ? android.R.attr.windowBackground : R.attr.colorPrimary));
        int resolveColorFromAttr = z ? Options.Companion.resolveColorFromAttr(requireContext(), android.R.attr.colorAccent) : -1;
        scrollableTabLayout.setTabRippleColor(ColorStateList.valueOf(resolveColorFromAttr).withAlpha(32));
        scrollableTabLayout.setTabIconTint(ColorStateList.valueOf(resolveColorFromAttr));
        scrollableTabLayout.setSelectedTabIndicatorColor(resolveColorFromAttr);
    }

    public final void updateTitleForTab(int i) {
        setTitle(((Tab) this.tabsList.get(i)).getTabName(requireContext()));
    }
}
