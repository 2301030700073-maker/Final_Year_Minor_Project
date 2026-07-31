package org.wikipedia.search;

import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.platform.ComposeView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.tabs.TabLayout;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cache;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.context.MediawikiData;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.login.LoginClient;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda10;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.FeedbackUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UiState;
import org.wikipedia.util.log.L;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.LangCodeView;
import org.wikipedia.views.LanguageScrollView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/search/SearchFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SearchFragment extends Fragment {
    public FragmentNewsBinding _binding;
    public final WikipediaApp app;
    public String articleTitle;
    public String initialLanguageList;
    public boolean initiateHybridSearch;
    public Constants.InvokeSource invokeSource;
    public boolean isSearchActive;
    public boolean langBtnClicked;
    public String query;
    public RecentSearchesFragment recentSearchesFragment;
    public final Fragment.AnonymousClass10 requestAddLanguageLauncher;
    public boolean returnLink;
    public final SearchFragment$$ExternalSyntheticLambda0 searchCloseListener;
    public String searchLanguageCode;
    public final SearchResultLongPressHandler searchQueryListener;
    public SearchResultsFragment searchResultsFragment;

    public SearchFragment() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        WikipediaApp jsoup = Jsoup.getInstance();
        this.app = jsoup;
        this.searchLanguageCode = jsoup.getLanguageState().getAppLanguageCode();
        int i = 0;
        this.searchCloseListener = new SearchFragment$$ExternalSyntheticLambda0(this, i);
        this.searchQueryListener = new SearchResultLongPressHandler(this);
        this.requestAddLanguageLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new SearchFragment$$ExternalSyntheticLambda1(i, this), new FragmentManager$FragmentIntentSenderContract(3));
    }

    public final void closeSearch$1() {
        this.isSearchActive = false;
        String str = this.query;
        if (str == null || StringsKt.isBlank(str)) {
            return;
        }
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 10), null, new PageActivity$onCreate$1$1$1(str, this, null, 29), 2);
    }

    public final void navigateToTitle(PageTitle pageTitle, boolean z, Location location) {
        Intent newIntentForCurrentTab;
        pageTitle.getClass();
        if (isAdded()) {
            if (this.returnLink) {
                Constants.InvokeSource invokeSource = this.invokeSource;
                if (invokeSource == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                    throw null;
                }
                Constants.InvokeSource invokeSource2 = Constants.InvokeSource.PLACES;
                if (invokeSource != invokeSource2 || location != null) {
                    if (invokeSource == invokeSource2) {
                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String m = ViewSizeResolver$CC.m();
                        Prefs prefs = Prefs.INSTANCE;
                        EventPlatformClient.submit(new AppInteractionEvent("search_result_click", "search_view", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                    }
                    Intent putExtra = new Intent().putExtra("returnLinkTitle", pageTitle).putExtra("location", location);
                    putExtra.getClass();
                    requireActivity().setResult(97, putExtra);
                    requireActivity().finish();
                    closeSearch$1();
                    View requireView = requireView();
                    Object systemService = requireView.getContext().getSystemService("input_method");
                    systemService.getClass();
                    ((InputMethodManager) systemService).hideSoftInputFromWindow(requireView.getWindowToken(), 0);
                }
            }
            HistoryEntry historyEntry = new HistoryEntry(1, pageTitle);
            if (z) {
                int i = PageActivity.$r8$clinit;
                newIntentForCurrentTab = LoginClient.newIntentForNewTab(requireContext(), historyEntry, historyEntry.getTitle());
            } else {
                int i2 = PageActivity.$r8$clinit;
                newIntentForCurrentTab = LoginClient.newIntentForCurrentTab(requireContext(), historyEntry, historyEntry.getTitle(), false);
            }
            startActivity(newIntentForCurrentTab, null);
            closeSearch$1();
            View requireView2 = requireView();
            Object systemService2 = requireView2.getContext().getSystemService("input_method");
            systemService2.getClass();
            ((InputMethodManager) systemService2).hideSoftInputFromWindow(requireView2.getWindowToken(), 0);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            Intent intent = requireActivity().getIntent();
            intent.getClass();
            if ("android.intent.action.SEND".equals(intent.getAction()) && "text/plain".equals(intent.getType())) {
                requireArguments().putString("lastQuery", intent.getStringExtra("android.intent.extra.TEXT"));
                requireArguments().putSerializable("invokeSource", Constants.InvokeSource.INTENT_SHARE);
            } else if ("android.intent.action.PROCESS_TEXT".equals(intent.getAction()) && "text/plain".equals(intent.getType())) {
                requireArguments().putString("lastQuery", intent.getStringExtra("android.intent.extra.PROCESS_TEXT"));
                requireArguments().putSerializable("invokeSource", Constants.InvokeSource.INTENT_PROCESS_TEXT);
            }
        }
        Serializable serializable = requireArguments().getSerializable("invokeSource");
        serializable.getClass();
        this.invokeSource = (Constants.InvokeSource) serializable;
        this.query = requireArguments().getString("lastQuery");
        this.articleTitle = requireArguments().getString("articleTitle");
        this.returnLink = requireArguments().getBoolean("returnLink", false);
        this.initiateHybridSearch = requireArguments().getBoolean("showHybridSearch", false);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String str;
        String string;
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_search, viewGroup, false);
        int i = R.id.fragment_search_results;
        if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.fragment_search_results)) != null) {
            int i2 = R.id.search_cab_view;
            CabSearchView cabSearchView = (CabSearchView) Room.findChildViewById(inflate, R.id.search_cab_view);
            if (cabSearchView != null) {
                LinearLayout linearLayout = (LinearLayout) inflate;
                i2 = R.id.search_lang_button;
                LangCodeView langCodeView = (LangCodeView) Room.findChildViewById(inflate, R.id.search_lang_button);
                if (langCodeView != null) {
                    i2 = R.id.search_lang_button_container;
                    if (((LinearLayout) Room.findChildViewById(inflate, R.id.search_lang_button_container)) != null) {
                        i2 = R.id.search_language_scroll_view;
                        LanguageScrollView languageScrollView = (LanguageScrollView) Room.findChildViewById(inflate, R.id.search_language_scroll_view);
                        if (languageScrollView != null) {
                            i2 = R.id.search_language_scroll_view_container;
                            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.search_language_scroll_view_container);
                            if (linearLayout2 != null) {
                                i2 = R.id.search_panel_recent;
                                if (((FragmentContainerView) Room.findChildViewById(inflate, R.id.search_panel_recent)) != null) {
                                    int i3 = R.id.search_progress_bar;
                                    LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.search_progress_bar);
                                    if (linearProgressIndicator != null) {
                                        i3 = R.id.search_toolbar;
                                        MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.search_toolbar);
                                        if (materialToolbar != null) {
                                            this._binding = new FragmentNewsBinding(linearLayout, cabSearchView, linearLayout, langCodeView, languageScrollView, linearLayout2, linearProgressIndicator, materialToolbar);
                                            FragmentManagerImpl childFragmentManager = getChildFragmentManager();
                                            childFragmentManager.getClass();
                                            Fragment findFragmentById = childFragmentManager.findFragmentById(R.id.search_panel_recent);
                                            findFragmentById.getClass();
                                            RecentSearchesFragment recentSearchesFragment = (RecentSearchesFragment) findFragmentById;
                                            this.recentSearchesFragment = recentSearchesFragment;
                                            recentSearchesFragment.callback = this;
                                            Fragment findFragmentById2 = childFragmentManager.findFragmentById(R.id.fragment_search_results);
                                            findFragmentById2.getClass();
                                            SearchResultsFragment searchResultsFragment = (SearchResultsFragment) findFragmentById2;
                                            this.searchResultsFragment = searchResultsFragment;
                                            Constants.InvokeSource invokeSource = this.invokeSource;
                                            if (invokeSource == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                                                throw null;
                                            }
                                            searchResultsFragment.getViewModel().invokeSource = invokeSource;
                                            AppCompatActivity activity = getActivity();
                                            if (!Animation.CC.m23m((Object) activity)) {
                                                activity = null;
                                            }
                                            if (activity != null) {
                                                FragmentNewsBinding fragmentNewsBinding = this._binding;
                                                fragmentNewsBinding.getClass();
                                                activity.setSupportActionBar((MaterialToolbar) fragmentNewsBinding.toolbar);
                                            }
                                            FragmentNewsBinding fragmentNewsBinding2 = this._binding;
                                            fragmentNewsBinding2.getClass();
                                            ((MaterialToolbar) fragmentNewsBinding2.toolbar).setNavigationOnClickListener(new SearchFragment$$ExternalSyntheticLambda0(this, 1));
                                            JsonImpl jsonImpl = JsonUtil.json;
                                            WikipediaApp wikipediaApp = this.app;
                                            List appLanguageCodes = wikipediaApp.getLanguageState().getAppLanguageCodes();
                                            try {
                                                JsonImpl jsonImpl2 = JsonUtil.json;
                                                jsonImpl2.getClass();
                                                str = jsonImpl2.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 1), appLanguageCodes);
                                            } catch (Exception e) {
                                                L.w(e);
                                                str = null;
                                            }
                                            if (str == null) {
                                                str = "";
                                            }
                                            this.initialLanguageList = str;
                                            FragmentNewsBinding fragmentNewsBinding3 = this._binding;
                                            fragmentNewsBinding3.getClass();
                                            ((LinearLayout) fragmentNewsBinding3.gradientView).setOnClickListener(new FeedbackUtil$$ExternalSyntheticLambda0(this));
                                            FragmentNewsBinding fragmentNewsBinding4 = this._binding;
                                            fragmentNewsBinding4.getClass();
                                            ((LangCodeView) fragmentNewsBinding4.headerImageView).setOnClickListener(new SearchFragment$$ExternalSyntheticLambda0(this, 2));
                                            FragmentNewsBinding fragmentNewsBinding5 = this._binding;
                                            fragmentNewsBinding5.getClass();
                                            ((CabSearchView) fragmentNewsBinding5.appBarLayout).setOnQueryTextListener(this.searchQueryListener);
                                            FragmentNewsBinding fragmentNewsBinding6 = this._binding;
                                            fragmentNewsBinding6.getClass();
                                            ((CabSearchView) fragmentNewsBinding6.appBarLayout).setCloseButtonClickListener(this.searchCloseListener);
                                            FragmentNewsBinding fragmentNewsBinding7 = this._binding;
                                            fragmentNewsBinding7.getClass();
                                            CabSearchView cabSearchView2 = (CabSearchView) fragmentNewsBinding7.appBarLayout;
                                            Context requireContext = requireContext();
                                            TypedValue typedValue = new TypedValue();
                                            if (!requireContext.getTheme().resolveAttribute(R.attr.secondary_color, typedValue, true)) {
                                                typedValue = null;
                                            }
                                            if (typedValue == null) {
                                                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
                                                return null;
                                            }
                                            cabSearchView2.setSearchHintTextColor(typedValue.data);
                                            FragmentNewsBinding fragmentNewsBinding8 = this._binding;
                                            fragmentNewsBinding8.getClass();
                                            CabSearchView cabSearchView3 = (CabSearchView) fragmentNewsBinding8.appBarLayout;
                                            Constants.InvokeSource invokeSource2 = this.invokeSource;
                                            if (invokeSource2 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                                                throw null;
                                            }
                                            Constants.InvokeSource invokeSource3 = Constants.InvokeSource.PLACES;
                                            if (invokeSource2 == invokeSource3) {
                                                string = getString(R.string.places_search_hint);
                                            } else {
                                                Prefs prefs = Prefs.INSTANCE;
                                                if (Prefs.isHybridSearchOnboardingShown()) {
                                                    HybridSearchAbCTest hybridSearchAbCTest = new HybridSearchAbCTest();
                                                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                                    if (hybridSearchAbCTest.isHybridSearchEnabled(Jsoup.getInstance().getLanguageState().getAppLanguageCode())) {
                                                        String str2 = this.articleTitle;
                                                        if (str2 == null || str2.length() == 0) {
                                                            string = getString(R.string.hybrid_search_search_hint);
                                                        } else {
                                                            StringUtil stringUtil = StringUtil.INSTANCE;
                                                            string = getString(R.string.hybrid_search_article_search_hint, StringUtil.fromHtml(this.articleTitle));
                                                        }
                                                    }
                                                }
                                                string = getString(R.string.search_hint);
                                            }
                                            cabSearchView3.setQueryHint(string);
                                            FragmentNewsBinding fragmentNewsBinding9 = this._binding;
                                            fragmentNewsBinding9.getClass();
                                            ((CabSearchView) fragmentNewsBinding9.appBarLayout).findViewById(R.id.search_plate).setBackgroundColor(0);
                                            Constants.InvokeSource invokeSource4 = this.invokeSource;
                                            if (invokeSource4 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                                                throw null;
                                            }
                                            if (invokeSource4 == invokeSource3) {
                                                Prefs prefs2 = Prefs.INSTANCE;
                                                PrefsIoUtil.setInt(R.string.preference_key_selected_language_position_in_search, ((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).indexOf(Prefs.getPlacesWikiCode()));
                                                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                                WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                                EventPlatformClient.submit(new AppInteractionEvent("impression", "search_view", "", ViewSizeResolver$CC.m(), Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            }
                                            SVGAndroidRenderer instrument = ContextKt.getInstrument(requireActivity());
                                            if (instrument != null) {
                                                Constants.InvokeSource invokeSource5 = this.invokeSource;
                                                if (invokeSource5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                                                    throw null;
                                                }
                                                SVGAndroidRenderer.submitInteraction$default(instrument, "search_impression", invokeSource5.getValue(), null, null, null, null, 252);
                                            }
                                            FragmentNewsBinding fragmentNewsBinding10 = this._binding;
                                            fragmentNewsBinding10.getClass();
                                            LinearLayout linearLayout3 = (LinearLayout) fragmentNewsBinding10.rootView;
                                            linearLayout3.getClass();
                                            return linearLayout3;
                                        }
                                    }
                                    i = i3;
                                }
                            }
                        }
                    }
                }
            }
            i = i2;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        FragmentNewsBinding fragmentNewsBinding = this._binding;
        fragmentNewsBinding.getClass();
        ((CabSearchView) fragmentNewsBinding.appBarLayout).setOnCloseListener(null);
        FragmentNewsBinding fragmentNewsBinding2 = this._binding;
        fragmentNewsBinding2.getClass();
        ((CabSearchView) fragmentNewsBinding2.appBarLayout).setOnQueryTextListener(null);
        this._binding = null;
        this.mCalled = true;
    }

    public final void onLangButtonClick() {
        this.langBtnClicked = true;
        int i = WikipediaLanguagesActivity.$r8$clinit;
        this.requestAddLanguageLauncher.launch(Cache.Companion.newIntent(requireActivity(), Constants.InvokeSource.SEARCH), null);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        Prefs prefs = Prefs.INSTANCE;
        FragmentNewsBinding fragmentNewsBinding = this._binding;
        fragmentNewsBinding.getClass();
        PrefsIoUtil.setInt(R.string.preference_key_selected_language_position_in_search, ((LanguageScrollView) fragmentNewsBinding.newsStoryItemsRecyclerview).getSelectedPosition());
        SearchResultsFragment searchResultsFragment = this.searchResultsFragment;
        if (searchResultsFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
            throw null;
        }
        if (!searchResultsFragment.getShowHybridSearch() || new HybridSearchAbCTest().isHybridSearchEnabled(this.searchLanguageCode)) {
            return;
        }
        SearchResultsFragment searchResultsFragment2 = this.searchResultsFragment;
        if (searchResultsFragment2 != null) {
            searchResultsFragment2.setShowHybridSearch(false);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStart() {
        int i;
        this.mCalled = true;
        boolean z = this.initiateHybridSearch && new HybridSearchAbCTest().isHybridSearchEnabled(this.searchLanguageCode);
        if (z) {
            WikipediaApp wikipediaApp = this.app;
            i = ((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).indexOf(wikipediaApp.getLanguageState().getAppLanguageCode());
        } else {
            Prefs prefs = Prefs.INSTANCE;
            i = PrefsIoUtil.getInt(R.string.preference_key_selected_language_position_in_search, 0);
        }
        setUpLanguageScroll(i);
        startSearch(this.query, this.langBtnClicked, false);
        FragmentNewsBinding fragmentNewsBinding = this._binding;
        fragmentNewsBinding.getClass();
        ((CabSearchView) fragmentNewsBinding.appBarLayout).setCloseButtonVisibility(this.query);
        RecentSearchesFragment recentSearchesFragment = this.recentSearchesFragment;
        if (recentSearchesFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recentSearchesFragment");
            throw null;
        }
        NodeChain nodeChain = recentSearchesFragment._binding;
        nodeChain.getClass();
        LinearLayout linearLayout = (LinearLayout) nodeChain.innerCoordinator;
        Constants.InvokeSource invokeSource = this.invokeSource;
        if (invokeSource == null) {
            Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
            throw null;
        }
        linearLayout.setVisibility(invokeSource == Constants.InvokeSource.PLACES ? 8 : 0);
        String str = this.query;
        if (str != null && str.length() != 0) {
            showPanel(1);
        }
        if (z) {
            SearchResultsFragment searchResultsFragment = this.searchResultsFragment;
            if (searchResultsFragment != null) {
                searchResultsFragment.setShowHybridSearch(true);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
                throw null;
            }
        }
    }

    public final void setUpLanguageScroll(int i) {
        WikipediaApp wikipediaApp = this.app;
        this.searchLanguageCode = wikipediaApp.getLanguageState().getAppLanguageCode();
        Continuation continuation = null;
        int i2 = 1;
        if (((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).size() <= 1) {
            FragmentNewsBinding fragmentNewsBinding = this._binding;
            fragmentNewsBinding.getClass();
            ((LinearLayout) fragmentNewsBinding.storyTextView).setVisibility(8);
            FragmentNewsBinding fragmentNewsBinding2 = this._binding;
            fragmentNewsBinding2.getClass();
            ((LangCodeView) fragmentNewsBinding2.headerImageView).setVisibility(0);
            FragmentNewsBinding fragmentNewsBinding3 = this._binding;
            fragmentNewsBinding3.getClass();
            LangCodeView langCodeView = (LangCodeView) fragmentNewsBinding3.headerImageView;
            String appLanguageCode = wikipediaApp.getLanguageState().getAppLanguageCode();
            Locale locale = Locale.ENGLISH;
            locale.getClass();
            String upperCase = appLanguageCode.toUpperCase(locale);
            upperCase.getClass();
            langCodeView.setLangCode(upperCase);
            FragmentNewsBinding fragmentNewsBinding4 = this._binding;
            fragmentNewsBinding4.getClass();
            View view = new View[]{(LangCodeView) fragmentNewsBinding4.headerImageView}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
            RecentSearchesFragment recentSearchesFragment = this.recentSearchesFragment;
            if (recentSearchesFragment != null) {
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(recentSearchesFragment), recentSearchesFragment.coroutineExceptionHandler, null, new RecentSearchesFragment$onCreateView$1$1$1(recentSearchesFragment, continuation, i2), 2);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("recentSearchesFragment");
                throw null;
            }
        }
        if (((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).size() <= i) {
            i = 0;
        }
        FragmentNewsBinding fragmentNewsBinding5 = this._binding;
        fragmentNewsBinding5.getClass();
        ((LinearLayout) fragmentNewsBinding5.storyTextView).setVisibility(0);
        FragmentNewsBinding fragmentNewsBinding6 = this._binding;
        fragmentNewsBinding6.getClass();
        LanguageScrollView languageScrollView = (LanguageScrollView) fragmentNewsBinding6.newsStoryItemsRecyclerview;
        List appLanguageCodes = wikipediaApp.getLanguageState().getAppLanguageCodes();
        languageScrollView.callback = this;
        languageScrollView.languageCodes = appLanguageCodes;
        languageScrollView.allowSelect = false;
        TabLayout tabLayout = (TabLayout) languageScrollView.binding.delegate;
        if (tabLayout.getChildCount() != 0) {
            tabLayout.removeAllTabs();
        }
        Iterator it = ((ArrayList) appLanguageCodes).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            TabLayout.Tab newTab = tabLayout.newTab();
            View inflate = LayoutInflater.from(languageScrollView.getContext()).inflate(R.layout.view_custom_language_tab, (ViewGroup) languageScrollView, false);
            inflate.getClass();
            LanguageScrollView.updateTabLanguageCode$default(languageScrollView, inflate, str, null, null, 28);
            LanguageScrollView.updateTabLanguageLabel$default(languageScrollView, inflate, str, null, 4);
            newTab.customView = inflate;
            newTab.updateView();
            tabLayout.addTab(newTab, tabLayout.tabs.isEmpty());
            TabLayout tabLayout2 = newTab.parent;
            if (tabLayout2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Tab not attached to a TabLayout");
                return;
            } else {
                int selectedTabPosition = tabLayout2.getSelectedTabPosition();
                languageScrollView.updateTabView(newTab, selectedTabPosition != -1 && selectedTabPosition == newTab.position);
            }
        }
        languageScrollView.allowSelect = true;
        tabLayout.post(new TalkTopicActivity$$ExternalSyntheticLambda10(i, 7, languageScrollView));
        FragmentNewsBinding fragmentNewsBinding7 = this._binding;
        fragmentNewsBinding7.getClass();
        ((LangCodeView) fragmentNewsBinding7.headerImageView).setVisibility(8);
    }

    public final void showPanel(int i) {
        if (i == 0) {
            SearchResultsFragment searchResultsFragment = this.searchResultsFragment;
            if (searchResultsFragment == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
                throw null;
            }
            ComposeView composeView = searchResultsFragment.composeView;
            if (composeView != null) {
                composeView.setVisibility(8);
            }
            RecentSearchesFragment recentSearchesFragment = this.recentSearchesFragment;
            if (recentSearchesFragment == null) {
                Intrinsics.throwUninitializedPropertyAccessException("recentSearchesFragment");
                throw null;
            }
            NodeChain nodeChain = recentSearchesFragment._binding;
            nodeChain.getClass();
            ((ConstraintLayout) nodeChain.head).setVisibility(0);
            return;
        }
        if (i != 1) {
            return;
        }
        RecentSearchesFragment recentSearchesFragment2 = this.recentSearchesFragment;
        if (recentSearchesFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("recentSearchesFragment");
            throw null;
        }
        NodeChain nodeChain2 = recentSearchesFragment2._binding;
        nodeChain2.getClass();
        ((ConstraintLayout) nodeChain2.head).setVisibility(8);
        SearchResultsFragment searchResultsFragment2 = this.searchResultsFragment;
        if (searchResultsFragment2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
            throw null;
        }
        ComposeView composeView2 = searchResultsFragment2.composeView;
        if (composeView2 != null) {
            composeView2.setVisibility(0);
        }
    }

    public final void startSearch(final String str, final boolean z, final boolean z2) {
        if (!this.isSearchActive) {
            this.isSearchActive = true;
            FragmentNewsBinding fragmentNewsBinding = this._binding;
            fragmentNewsBinding.getClass();
            ((CabSearchView) fragmentNewsBinding.appBarLayout).setIconified(false);
            String str2 = this.query;
            if (str2 != null && !StringsKt.isBlank(str2)) {
                FragmentNewsBinding fragmentNewsBinding2 = this._binding;
                fragmentNewsBinding2.getClass();
                ((CabSearchView) fragmentNewsBinding2.appBarLayout).setQuery(this.query, false);
            }
            if (this.initiateHybridSearch) {
                FragmentNewsBinding fragmentNewsBinding3 = this._binding;
                fragmentNewsBinding3.getClass();
                ((CabSearchView) fragmentNewsBinding3.appBarLayout).clearFocus();
            }
        }
        if (str == null || str.length() == 0) {
            showPanel(0);
        } else {
            SearchResultsFragment searchResultsFragment = this.searchResultsFragment;
            if (searchResultsFragment == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
                throw null;
            }
            ComposeView composeView = searchResultsFragment.composeView;
            if (composeView == null || composeView.getVisibility() != 0) {
                showPanel(1);
            }
        }
        this.query = str;
        if ((str == null || StringsKt.isBlank(str)) && !z) {
            return;
        }
        FragmentNewsBinding fragmentNewsBinding4 = this._binding;
        fragmentNewsBinding4.getClass();
        LinearLayout linearLayout = (LinearLayout) fragmentNewsBinding4.gradientView;
        Runnable runnable = new Runnable() { // from class: org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                SearchFragment searchFragment = SearchFragment.this;
                if (searchFragment.isAdded()) {
                    SearchResultsFragment searchResultsFragment2 = searchFragment.searchResultsFragment;
                    if (searchResultsFragment2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
                        throw null;
                    }
                    ComposeView composeView2 = searchResultsFragment2.composeView;
                    if (composeView2 == null || composeView2.getVisibility() != 0) {
                        return;
                    }
                    SearchResultsFragment searchResultsFragment3 = searchFragment.searchResultsFragment;
                    if (searchResultsFragment3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
                        throw null;
                    }
                    String str3 = str;
                    boolean z3 = z;
                    if (!z3 && Intrinsics.areEqual(searchResultsFragment3.getViewModel().searchTerm.$$delegate_0.getValue(), str3) && Intrinsics.areEqual(searchResultsFragment3.getViewModel().languageCode.$$delegate_0.getValue(), searchResultsFragment3.getSearchLanguageCode$1())) {
                        return;
                    }
                    SVGAndroidRenderer instrument = ContextKt.getInstrument(searchResultsFragment3.requireActivity());
                    if (instrument != null) {
                        WikiSite.Companion companion = WikiSite.Companion;
                        String searchLanguageCode$1 = searchResultsFragment3.getSearchLanguageCode$1();
                        companion.getClass();
                        instrument.matrixStack = new MediawikiData(WikiSite.Companion.forLanguageCode(searchLanguageCode$1).dbName());
                    }
                    SearchResultsViewModel viewModel = searchResultsFragment3.getViewModel();
                    String searchLanguageCode$12 = searchResultsFragment3.getSearchLanguageCode$1();
                    searchLanguageCode$12.getClass();
                    StateFlowImpl stateFlowImpl = viewModel._languageCode;
                    stateFlowImpl.getClass();
                    stateFlowImpl.updateState(null, searchLanguageCode$12);
                    SearchResultsViewModel viewModel2 = searchResultsFragment3.getViewModel();
                    if (str3 == null || StringsKt.isBlank(str3)) {
                        str3 = "";
                    }
                    StateFlowImpl stateFlowImpl2 = viewModel2._searchTerm;
                    stateFlowImpl2.getClass();
                    stateFlowImpl2.updateState(null, str3);
                    searchResultsFragment3.setShowHybridSearch(!z2 && searchResultsFragment3.getShowHybridSearch() && searchResultsFragment3.getViewModel().isHybridSearchExperimentOn());
                    if (!searchResultsFragment3.getShowHybridSearch()) {
                        if (z3) {
                            searchResultsFragment3.getViewModel().refreshSearchResults();
                        }
                    } else {
                        StateFlowImpl stateFlowImpl3 = searchResultsFragment3.getViewModel()._hybridSearchResultState;
                        stateFlowImpl3.getClass();
                        stateFlowImpl3.updateState(null, UiState.Loading.INSTANCE);
                        SearchResultsViewModel viewModel3 = searchResultsFragment3.getViewModel();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(viewModel3), null, new SearchResultsViewModel$loadHybridSearchResults$2(null, viewModel3), 2);
                    }
                }
            }
        };
        Constants.InvokeSource invokeSource = this.invokeSource;
        if (invokeSource != null) {
            linearLayout.postDelayed(runnable, (invokeSource == Constants.InvokeSource.PLACES || invokeSource == Constants.InvokeSource.VOICE || invokeSource == Constants.InvokeSource.INTENT_SHARE || invokeSource == Constants.InvokeSource.INTENT_PROCESS_TEXT) ? 500L : 0L);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
            throw null;
        }
    }

    public final void switchToSearch(String str) {
        str.getClass();
        startSearch(str, true, false);
        FragmentNewsBinding fragmentNewsBinding = this._binding;
        fragmentNewsBinding.getClass();
        ((CabSearchView) fragmentNewsBinding.appBarLayout).setOnQueryTextListener(null);
        FragmentNewsBinding fragmentNewsBinding2 = this._binding;
        fragmentNewsBinding2.getClass();
        ((CabSearchView) fragmentNewsBinding2.appBarLayout).setQuery(str, false);
        FragmentNewsBinding fragmentNewsBinding3 = this._binding;
        fragmentNewsBinding3.getClass();
        ((CabSearchView) fragmentNewsBinding3.appBarLayout).setOnQueryTextListener(this.searchQueryListener);
        FragmentNewsBinding fragmentNewsBinding4 = this._binding;
        fragmentNewsBinding4.getClass();
        ((CabSearchView) fragmentNewsBinding4.appBarLayout).setCloseButtonVisibility(str);
    }
}
