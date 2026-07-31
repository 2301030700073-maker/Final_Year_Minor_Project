package org.wikipedia.search;

import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.util.Collections;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function6;
import okhttp3.Cache;
import org.wikipedia.R;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.DeviceUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResultsFragment$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SearchResultsFragment f$0;

    public /* synthetic */ SearchResultsFragment$$ExternalSyntheticLambda0(SearchResultsFragment searchResultsFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = searchResultsFragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        boolean z;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        final SearchResultsFragment searchResultsFragment = this.f$0;
        final int i2 = 2;
        final int i3 = 1;
        final int i4 = 0;
        switch (i) {
            case 0:
                boolean z2 = false;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                if (!gapComposer.shouldExecute(intValue & 1, z2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(260388147, new SearchResultsFragment$$ExternalSyntheticLambda0(searchResultsFragment, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            case 1:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                SearchResult searchResult = (SearchResult) obj2;
                searchResult.getClass();
                SVGAndroidRenderer instrument = ContextKt.getInstrument(searchResultsFragment.requireActivity());
                if (instrument != null) {
                    String str = booleanValue ? "thumb_up" : "thumb_down";
                    DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda1 = TestKitchenAdapter.flushEventsRunnable;
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, str, TestKitchenAdapter.getPageData$default(searchResult.pageTitle), searchResultsFragment.getViewModel().getHybridEventActionContext(searchResult), 86);
                    break;
                }
                break;
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean showHybridSearch = searchResultsFragment.getShowHybridSearch();
                    final int i5 = 5;
                    final int i6 = 3;
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (!showHybridSearch || !searchResultsFragment.getViewModel().isHybridSearchExperimentOn()) {
                        gapComposer2.startReplaceGroup(517757258);
                        SearchResultsViewModel viewModel = searchResultsFragment.getViewModel();
                        FillElement fillElement = SizeKt.FillWholeMaxSize;
                        boolean changedInstance = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue = gapComposer2.rememberedValue();
                        if (changedInstance || rememberedValue == neverEqualPolicy) {
                            rememberedValue = new Function4() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda2
                                @Override // kotlin.jvm.functions.Function4
                                public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                                    int i7 = i3;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    SearchResult searchResult2 = (SearchResult) obj3;
                                    boolean booleanValue2 = ((Boolean) obj4).booleanValue();
                                    ((Integer) obj5).getClass();
                                    Location location = (Location) obj6;
                                    switch (i7) {
                                        case 0:
                                            searchResult2.getClass();
                                            PageTitle pageTitle = searchResult2.pageTitle;
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_result_click", null, null, "lexical_search_result", TestKitchenAdapter.getPageData$default(pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                            }
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                callback.navigateToTitle(pageTitle, booleanValue2, location);
                                                break;
                                            }
                                            break;
                                        default:
                                            searchResult2.getClass();
                                            PageTitle pageTitle2 = searchResult2.pageTitle;
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda13 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "search_result_click", null, null, null, TestKitchenAdapter.getPageData$default(pageTitle2), searchResultsFragment2.getViewModel().getStandardEventActionContext(searchResult2), 94);
                                            }
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                callback2.navigateToTitle(pageTitle2, booleanValue2, location);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue);
                        }
                        Function4 function4 = (Function4) rememberedValue;
                        boolean changedInstance2 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue2 = gapComposer2.rememberedValue();
                        if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                            final int i7 = 0;
                            rememberedValue2 = new Function3() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda7
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                                    int i8 = i7;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            View view = (View) obj3;
                                            SearchResult searchResult2 = (SearchResult) obj4;
                                            int intValue3 = ((Integer) obj5).intValue();
                                            view.getClass();
                                            searchResult2.getClass();
                                            new LongPressMenu(view, 0, null, new SearchResultLongPressHandler(searchResultsFragment2.callback(), intValue3), 30).show(new HistoryEntry(1, searchResult2.pageTitle));
                                            break;
                                        case 1:
                                            View view2 = (View) obj3;
                                            SearchResult searchResult3 = (SearchResult) obj4;
                                            int intValue4 = ((Integer) obj5).intValue();
                                            view2.getClass();
                                            searchResult3.getClass();
                                            new LongPressMenu(view2, 0, null, new SearchResultLongPressHandler(searchResultsFragment2.callback(), intValue4), 30).show(new HistoryEntry(1, searchResult3.pageTitle));
                                            break;
                                        default:
                                            SearchResult searchResult4 = (SearchResult) obj3;
                                            String str2 = (String) obj4;
                                            boolean booleanValue2 = ((Boolean) obj5).booleanValue();
                                            str2.getClass();
                                            if (booleanValue2) {
                                                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                                if (instrument2 != null) {
                                                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "semantic_search_explicit", null, searchResultsFragment2.getViewModel().getStandardEventActionContext(null), 118);
                                                }
                                            } else {
                                                SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                                if (instrument3 != null) {
                                                    SVGAndroidRenderer.submitInteraction$default(instrument3, "search_result_click", null, null, null, null, searchResultsFragment2.getViewModel().getStandardEventActionContext(searchResult4), 126);
                                                }
                                            }
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj6 = StringUtil.fromHtml(str2).toString();
                                                obj6.getClass();
                                                callback.switchToSearch(obj6);
                                            }
                                            searchResultsFragment2.setShowHybridSearch(true);
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue2);
                        }
                        Function3 function3 = (Function3) rememberedValue2;
                        boolean changedInstance3 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue3 = gapComposer2.rememberedValue();
                        if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                            rememberedValue3 = new Function3() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda7
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                                    int i8 = i2;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            View view = (View) obj3;
                                            SearchResult searchResult2 = (SearchResult) obj4;
                                            int intValue3 = ((Integer) obj5).intValue();
                                            view.getClass();
                                            searchResult2.getClass();
                                            new LongPressMenu(view, 0, null, new SearchResultLongPressHandler(searchResultsFragment2.callback(), intValue3), 30).show(new HistoryEntry(1, searchResult2.pageTitle));
                                            break;
                                        case 1:
                                            View view2 = (View) obj3;
                                            SearchResult searchResult3 = (SearchResult) obj4;
                                            int intValue4 = ((Integer) obj5).intValue();
                                            view2.getClass();
                                            searchResult3.getClass();
                                            new LongPressMenu(view2, 0, null, new SearchResultLongPressHandler(searchResultsFragment2.callback(), intValue4), 30).show(new HistoryEntry(1, searchResult3.pageTitle));
                                            break;
                                        default:
                                            SearchResult searchResult4 = (SearchResult) obj3;
                                            String str2 = (String) obj4;
                                            boolean booleanValue2 = ((Boolean) obj5).booleanValue();
                                            str2.getClass();
                                            if (booleanValue2) {
                                                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                                if (instrument2 != null) {
                                                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "semantic_search_explicit", null, searchResultsFragment2.getViewModel().getStandardEventActionContext(null), 118);
                                                }
                                            } else {
                                                SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                                if (instrument3 != null) {
                                                    SVGAndroidRenderer.submitInteraction$default(instrument3, "search_result_click", null, null, null, null, searchResultsFragment2.getViewModel().getStandardEventActionContext(searchResult4), 126);
                                                }
                                            }
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj6 = StringUtil.fromHtml(str2).toString();
                                                obj6.getClass();
                                                callback.switchToSearch(obj6);
                                            }
                                            searchResultsFragment2.setShowHybridSearch(true);
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue3);
                        }
                        Function3 function32 = (Function3) rememberedValue3;
                        boolean changedInstance4 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue4 = gapComposer2.rememberedValue();
                        if (changedInstance4 || rememberedValue4 == neverEqualPolicy) {
                            rememberedValue4 = new Function1() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i8 = i5;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            Throwable th = (Throwable) obj3;
                                            th.getClass();
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                String message = th.getMessage();
                                                if (message == null) {
                                                    message = "";
                                                }
                                                Map singletonMap = Collections.singletonMap("error", message);
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, null, null, null, singletonMap, 126);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                FragmentNewsBinding fragmentNewsBinding = callback._binding;
                                                fragmentNewsBinding.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding.toolbarContainer).setVisibility(booleanValue2 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SearchResult searchResult2 = (SearchResult) obj3;
                                            searchResult2.getClass();
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "impression", null, null, "semantic_search_card", TestKitchenAdapter.getPageData$default(searchResult2.pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            String str2 = (String) obj3;
                                            str2.getClass();
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "hybrid_search_opt_out", null, null, 246);
                                            }
                                            Prefs prefs = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_enabled, false);
                                            searchResultsFragment2.setShowHybridSearch(false);
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj4 = StringUtil.fromHtml(str2).toString();
                                                obj4.getClass();
                                                callback2.switchToSearch(obj4);
                                                break;
                                            }
                                            break;
                                        case 4:
                                            boolean booleanValue3 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback3 = searchResultsFragment2.callback();
                                            if (callback3 != null) {
                                                FragmentNewsBinding fragmentNewsBinding2 = callback3._binding;
                                                fragmentNewsBinding2.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding2.toolbarContainer).setVisibility(booleanValue3 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            if (searchResultsFragment2.isAdded() && intValue3 >= 0) {
                                                ((SearchFragment) searchResultsFragment2.requireParentFragment()).setUpLanguageScroll(intValue3);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue4);
                        }
                        Function1 function1 = (Function1) rememberedValue4;
                        boolean changedInstance5 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue5 = gapComposer2.rememberedValue();
                        if (changedInstance5 || rememberedValue5 == neverEqualPolicy) {
                            rememberedValue5 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i8 = i3;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue5);
                        }
                        Function0 function0 = (Function0) rememberedValue5;
                        boolean changedInstance6 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue6 = gapComposer2.rememberedValue();
                        if (changedInstance6 || rememberedValue6 == neverEqualPolicy) {
                            rememberedValue6 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i8 = i2;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue6);
                        }
                        Function0 function02 = (Function0) rememberedValue6;
                        boolean changedInstance7 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue7 = gapComposer2.rememberedValue();
                        if (changedInstance7 || rememberedValue7 == neverEqualPolicy) {
                            rememberedValue7 = new Function1() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i8 = i3;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            Throwable th = (Throwable) obj3;
                                            th.getClass();
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                String message = th.getMessage();
                                                if (message == null) {
                                                    message = "";
                                                }
                                                Map singletonMap = Collections.singletonMap("error", message);
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, null, null, null, singletonMap, 126);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                FragmentNewsBinding fragmentNewsBinding = callback._binding;
                                                fragmentNewsBinding.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding.toolbarContainer).setVisibility(booleanValue2 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SearchResult searchResult2 = (SearchResult) obj3;
                                            searchResult2.getClass();
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "impression", null, null, "semantic_search_card", TestKitchenAdapter.getPageData$default(searchResult2.pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            String str2 = (String) obj3;
                                            str2.getClass();
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "hybrid_search_opt_out", null, null, 246);
                                            }
                                            Prefs prefs = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_enabled, false);
                                            searchResultsFragment2.setShowHybridSearch(false);
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj4 = StringUtil.fromHtml(str2).toString();
                                                obj4.getClass();
                                                callback2.switchToSearch(obj4);
                                                break;
                                            }
                                            break;
                                        case 4:
                                            boolean booleanValue3 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback3 = searchResultsFragment2.callback();
                                            if (callback3 != null) {
                                                FragmentNewsBinding fragmentNewsBinding2 = callback3._binding;
                                                fragmentNewsBinding2.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding2.toolbarContainer).setVisibility(booleanValue3 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            if (searchResultsFragment2.isAdded() && intValue3 >= 0) {
                                                ((SearchFragment) searchResultsFragment2.requireParentFragment()).setUpLanguageScroll(intValue3);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue7);
                        }
                        Function1 function12 = (Function1) rememberedValue7;
                        boolean changedInstance8 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue8 = gapComposer2.rememberedValue();
                        if (changedInstance8 || rememberedValue8 == neverEqualPolicy) {
                            rememberedValue8 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i8 = i6;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue8);
                        }
                        NoSearchResultsKt.SearchResultsScreen(fillElement, viewModel, function4, function3, function32, function1, function0, function02, function12, (Function0) rememberedValue8, gapComposer2, 6);
                        gapComposer2.end(false);
                        break;
                    } else {
                        gapComposer2.startReplaceGroup(512620713);
                        SearchResultsViewModel viewModel2 = searchResultsFragment.getViewModel();
                        FillElement fillElement2 = SizeKt.FillWholeMaxSize;
                        boolean changedInstance9 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue9 = gapComposer2.rememberedValue();
                        if (changedInstance9 || rememberedValue9 == neverEqualPolicy) {
                            rememberedValue9 = new Function4() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda2
                                @Override // kotlin.jvm.functions.Function4
                                public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                                    int i72 = i4;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    SearchResult searchResult2 = (SearchResult) obj3;
                                    boolean booleanValue2 = ((Boolean) obj4).booleanValue();
                                    ((Integer) obj5).getClass();
                                    Location location = (Location) obj6;
                                    switch (i72) {
                                        case 0:
                                            searchResult2.getClass();
                                            PageTitle pageTitle = searchResult2.pageTitle;
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_result_click", null, null, "lexical_search_result", TestKitchenAdapter.getPageData$default(pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                            }
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                callback.navigateToTitle(pageTitle, booleanValue2, location);
                                                break;
                                            }
                                            break;
                                        default:
                                            searchResult2.getClass();
                                            PageTitle pageTitle2 = searchResult2.pageTitle;
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda13 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "search_result_click", null, null, null, TestKitchenAdapter.getPageData$default(pageTitle2), searchResultsFragment2.getViewModel().getStandardEventActionContext(searchResult2), 94);
                                            }
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                callback2.navigateToTitle(pageTitle2, booleanValue2, location);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue9);
                        }
                        Function4 function42 = (Function4) rememberedValue9;
                        boolean changedInstance10 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue10 = gapComposer2.rememberedValue();
                        if (changedInstance10 || rememberedValue10 == neverEqualPolicy) {
                            rememberedValue10 = new Function1() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i8 = i2;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            Throwable th = (Throwable) obj3;
                                            th.getClass();
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                String message = th.getMessage();
                                                if (message == null) {
                                                    message = "";
                                                }
                                                Map singletonMap = Collections.singletonMap("error", message);
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, null, null, null, singletonMap, 126);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                FragmentNewsBinding fragmentNewsBinding = callback._binding;
                                                fragmentNewsBinding.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding.toolbarContainer).setVisibility(booleanValue2 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SearchResult searchResult2 = (SearchResult) obj3;
                                            searchResult2.getClass();
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "impression", null, null, "semantic_search_card", TestKitchenAdapter.getPageData$default(searchResult2.pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            String str2 = (String) obj3;
                                            str2.getClass();
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "hybrid_search_opt_out", null, null, 246);
                                            }
                                            Prefs prefs = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_enabled, false);
                                            searchResultsFragment2.setShowHybridSearch(false);
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj4 = StringUtil.fromHtml(str2).toString();
                                                obj4.getClass();
                                                callback2.switchToSearch(obj4);
                                                break;
                                            }
                                            break;
                                        case 4:
                                            boolean booleanValue3 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback3 = searchResultsFragment2.callback();
                                            if (callback3 != null) {
                                                FragmentNewsBinding fragmentNewsBinding2 = callback3._binding;
                                                fragmentNewsBinding2.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding2.toolbarContainer).setVisibility(booleanValue3 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            if (searchResultsFragment2.isAdded() && intValue3 >= 0) {
                                                ((SearchFragment) searchResultsFragment2.requireParentFragment()).setUpLanguageScroll(intValue3);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue10);
                        }
                        Function1 function13 = (Function1) rememberedValue10;
                        boolean changedInstance11 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue11 = gapComposer2.rememberedValue();
                        if (changedInstance11 || rememberedValue11 == neverEqualPolicy) {
                            rememberedValue11 = new SearchResultsFragment$$ExternalSyntheticLambda15(i4, searchResultsFragment);
                            gapComposer2.updateRememberedValue(rememberedValue11);
                        }
                        Function6 function6 = (Function6) rememberedValue11;
                        boolean changedInstance12 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue12 = gapComposer2.rememberedValue();
                        if (changedInstance12 || rememberedValue12 == neverEqualPolicy) {
                            rememberedValue12 = new Function3() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda7
                                @Override // kotlin.jvm.functions.Function3
                                public final Object invoke(Object obj3, Object obj4, Object obj5) {
                                    int i8 = i3;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i8) {
                                        case 0:
                                            View view = (View) obj3;
                                            SearchResult searchResult2 = (SearchResult) obj4;
                                            int intValue3 = ((Integer) obj5).intValue();
                                            view.getClass();
                                            searchResult2.getClass();
                                            new LongPressMenu(view, 0, null, new SearchResultLongPressHandler(searchResultsFragment2.callback(), intValue3), 30).show(new HistoryEntry(1, searchResult2.pageTitle));
                                            break;
                                        case 1:
                                            View view2 = (View) obj3;
                                            SearchResult searchResult3 = (SearchResult) obj4;
                                            int intValue4 = ((Integer) obj5).intValue();
                                            view2.getClass();
                                            searchResult3.getClass();
                                            new LongPressMenu(view2, 0, null, new SearchResultLongPressHandler(searchResultsFragment2.callback(), intValue4), 30).show(new HistoryEntry(1, searchResult3.pageTitle));
                                            break;
                                        default:
                                            SearchResult searchResult4 = (SearchResult) obj3;
                                            String str2 = (String) obj4;
                                            boolean booleanValue2 = ((Boolean) obj5).booleanValue();
                                            str2.getClass();
                                            if (booleanValue2) {
                                                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                                if (instrument2 != null) {
                                                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "semantic_search_explicit", null, searchResultsFragment2.getViewModel().getStandardEventActionContext(null), 118);
                                                }
                                            } else {
                                                SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                                if (instrument3 != null) {
                                                    SVGAndroidRenderer.submitInteraction$default(instrument3, "search_result_click", null, null, null, null, searchResultsFragment2.getViewModel().getStandardEventActionContext(searchResult4), 126);
                                                }
                                            }
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj6 = StringUtil.fromHtml(str2).toString();
                                                obj6.getClass();
                                                callback.switchToSearch(obj6);
                                            }
                                            searchResultsFragment2.setShowHybridSearch(true);
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue12);
                        }
                        Function3 function33 = (Function3) rememberedValue12;
                        boolean changedInstance13 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue13 = gapComposer2.rememberedValue();
                        final int i8 = 4;
                        if (changedInstance13 || rememberedValue13 == neverEqualPolicy) {
                            rememberedValue13 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i82 = i8;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue13);
                        }
                        Function0 function03 = (Function0) rememberedValue13;
                        boolean changedInstance14 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue14 = gapComposer2.rememberedValue();
                        if (changedInstance14 || rememberedValue14 == neverEqualPolicy) {
                            rememberedValue14 = new Function1() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i82 = i6;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            Throwable th = (Throwable) obj3;
                                            th.getClass();
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                String message = th.getMessage();
                                                if (message == null) {
                                                    message = "";
                                                }
                                                Map singletonMap = Collections.singletonMap("error", message);
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, null, null, null, singletonMap, 126);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                FragmentNewsBinding fragmentNewsBinding = callback._binding;
                                                fragmentNewsBinding.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding.toolbarContainer).setVisibility(booleanValue2 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SearchResult searchResult2 = (SearchResult) obj3;
                                            searchResult2.getClass();
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "impression", null, null, "semantic_search_card", TestKitchenAdapter.getPageData$default(searchResult2.pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            String str2 = (String) obj3;
                                            str2.getClass();
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "hybrid_search_opt_out", null, null, 246);
                                            }
                                            Prefs prefs = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_enabled, false);
                                            searchResultsFragment2.setShowHybridSearch(false);
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj4 = StringUtil.fromHtml(str2).toString();
                                                obj4.getClass();
                                                callback2.switchToSearch(obj4);
                                                break;
                                            }
                                            break;
                                        case 4:
                                            boolean booleanValue3 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback3 = searchResultsFragment2.callback();
                                            if (callback3 != null) {
                                                FragmentNewsBinding fragmentNewsBinding2 = callback3._binding;
                                                fragmentNewsBinding2.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding2.toolbarContainer).setVisibility(booleanValue3 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            if (searchResultsFragment2.isAdded() && intValue3 >= 0) {
                                                ((SearchFragment) searchResultsFragment2.requireParentFragment()).setUpLanguageScroll(intValue3);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue14);
                        }
                        Function1 function14 = (Function1) rememberedValue14;
                        boolean changedInstance15 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue15 = gapComposer2.rememberedValue();
                        if (changedInstance15 || rememberedValue15 == neverEqualPolicy) {
                            rememberedValue15 = new SearchResultsFragment$$ExternalSyntheticLambda0(searchResultsFragment, i3);
                            gapComposer2.updateRememberedValue(rememberedValue15);
                        }
                        Function2 function2 = (Function2) rememberedValue15;
                        boolean changedInstance16 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue16 = gapComposer2.rememberedValue();
                        if (changedInstance16 || rememberedValue16 == neverEqualPolicy) {
                            rememberedValue16 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i82 = i5;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i9 = Build.VERSION.SDK_INT;
                                            (i9 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i9 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i9 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue16);
                        }
                        Function0 function04 = (Function0) rememberedValue16;
                        boolean changedInstance17 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue17 = gapComposer2.rememberedValue();
                        if (changedInstance17 || rememberedValue17 == neverEqualPolicy) {
                            final int i9 = 6;
                            rememberedValue17 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i82 = i9;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i92 = Build.VERSION.SDK_INT;
                                            (i92 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i92 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i92 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue17);
                        }
                        Function0 function05 = (Function0) rememberedValue17;
                        boolean changedInstance18 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue18 = gapComposer2.rememberedValue();
                        if (changedInstance18 || rememberedValue18 == neverEqualPolicy) {
                            final int i10 = 4;
                            rememberedValue18 = new Function1() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i82 = i10;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            Throwable th = (Throwable) obj3;
                                            th.getClass();
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                String message = th.getMessage();
                                                if (message == null) {
                                                    message = "";
                                                }
                                                Map singletonMap = Collections.singletonMap("error", message);
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, null, null, null, singletonMap, 126);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                FragmentNewsBinding fragmentNewsBinding = callback._binding;
                                                fragmentNewsBinding.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding.toolbarContainer).setVisibility(booleanValue2 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SearchResult searchResult2 = (SearchResult) obj3;
                                            searchResult2.getClass();
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "impression", null, null, "semantic_search_card", TestKitchenAdapter.getPageData$default(searchResult2.pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            String str2 = (String) obj3;
                                            str2.getClass();
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "hybrid_search_opt_out", null, null, 246);
                                            }
                                            Prefs prefs = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_enabled, false);
                                            searchResultsFragment2.setShowHybridSearch(false);
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj4 = StringUtil.fromHtml(str2).toString();
                                                obj4.getClass();
                                                callback2.switchToSearch(obj4);
                                                break;
                                            }
                                            break;
                                        case 4:
                                            boolean booleanValue3 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback3 = searchResultsFragment2.callback();
                                            if (callback3 != null) {
                                                FragmentNewsBinding fragmentNewsBinding2 = callback3._binding;
                                                fragmentNewsBinding2.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding2.toolbarContainer).setVisibility(booleanValue3 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            if (searchResultsFragment2.isAdded() && intValue3 >= 0) {
                                                ((SearchFragment) searchResultsFragment2.requireParentFragment()).setUpLanguageScroll(intValue3);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue18);
                        }
                        Function1 function15 = (Function1) rememberedValue18;
                        boolean changedInstance19 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue19 = gapComposer2.rememberedValue();
                        if (changedInstance19 || rememberedValue19 == neverEqualPolicy) {
                            final int i11 = 0;
                            rememberedValue19 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i82 = i11;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i92 = Build.VERSION.SDK_INT;
                                            (i92 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i92 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i92 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue19);
                        }
                        Function0 function06 = (Function0) rememberedValue19;
                        boolean changedInstance20 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue20 = gapComposer2.rememberedValue();
                        if (changedInstance20 || rememberedValue20 == neverEqualPolicy) {
                            final int i12 = 7;
                            rememberedValue20 = new Function0() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda3
                                @Override // kotlin.jvm.functions.Function0
                                public final Object invoke() {
                                    int i82 = i12;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                Map singletonMap = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_lexical_search_results_empty));
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, "lexical_search_error", null, null, singletonMap, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_lexical_search_results_empty);
                                            break;
                                        case 1:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 2:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        case 3:
                                            Window window = searchResultsFragment2.requireActivity().getWindow();
                                            window.getClass();
                                            HintHandler hintHandler = new HintHandler(window.getDecorView());
                                            int i92 = Build.VERSION.SDK_INT;
                                            (i92 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i92 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i92 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).show();
                                            break;
                                        case 4:
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "learn_more", null, null, 246);
                                            }
                                            AppCompatActivity requireActivity = searchResultsFragment2.requireActivity();
                                            String string = searchResultsFragment2.getString(R.string.hybrid_search_info_link);
                                            string.getClass();
                                            Uri parse = Uri.parse(string);
                                            parse.getClass();
                                            UriUtil.visitInExternalBrowser(requireActivity, parse);
                                            break;
                                        case 5:
                                            searchResultsFragment2.requireActivity().finish();
                                            break;
                                        case 6:
                                            searchResultsFragment2.getViewModel().refreshSearchResults();
                                            break;
                                        default:
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                Map singletonMap2 = Collections.singletonMap("error", searchResultsFragment2.getString(R.string.hybrid_search_results_empty));
                                                singletonMap2.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "search_error", null, "semantic_search_error", null, null, singletonMap2, 122);
                                            }
                                            ShareUtil.showMessage(searchResultsFragment2.requireActivity(), R.string.hybrid_search_results_empty);
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue20);
                        }
                        Function0 function07 = (Function0) rememberedValue20;
                        boolean changedInstance21 = gapComposer2.changedInstance(searchResultsFragment);
                        Object rememberedValue21 = gapComposer2.rememberedValue();
                        if (changedInstance21 || rememberedValue21 == neverEqualPolicy) {
                            z = false;
                            final Object[] objArr = 0 == true ? 1 : 0;
                            rememberedValue21 = new Function1() { // from class: org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda5
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int i82 = objArr;
                                    Unit unit2 = Unit.INSTANCE;
                                    SearchResultsFragment searchResultsFragment2 = searchResultsFragment;
                                    switch (i82) {
                                        case 0:
                                            Throwable th = (Throwable) obj3;
                                            th.getClass();
                                            SVGAndroidRenderer instrument2 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument2 != null) {
                                                String message = th.getMessage();
                                                if (message == null) {
                                                    message = "";
                                                }
                                                Map singletonMap = Collections.singletonMap("error", message);
                                                singletonMap.getClass();
                                                SVGAndroidRenderer.submitInteraction$default(instrument2, "search_error", null, null, null, null, singletonMap, 126);
                                                break;
                                            }
                                            break;
                                        case 1:
                                            boolean booleanValue2 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback = searchResultsFragment2.callback();
                                            if (callback != null) {
                                                FragmentNewsBinding fragmentNewsBinding = callback._binding;
                                                fragmentNewsBinding.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding.toolbarContainer).setVisibility(booleanValue2 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        case 2:
                                            SearchResult searchResult2 = (SearchResult) obj3;
                                            searchResult2.getClass();
                                            SVGAndroidRenderer instrument3 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument3 != null) {
                                                DeviceUtil$$ExternalSyntheticLambda1 deviceUtil$$ExternalSyntheticLambda12 = TestKitchenAdapter.flushEventsRunnable;
                                                SVGAndroidRenderer.submitInteraction$default(instrument3, "impression", null, null, "semantic_search_card", TestKitchenAdapter.getPageData$default(searchResult2.pageTitle), searchResultsFragment2.getViewModel().getHybridEventActionContext(searchResult2), 86);
                                                break;
                                            }
                                            break;
                                        case 3:
                                            String str2 = (String) obj3;
                                            str2.getClass();
                                            SVGAndroidRenderer instrument4 = ContextKt.getInstrument(searchResultsFragment2.requireActivity());
                                            if (instrument4 != null) {
                                                SVGAndroidRenderer.submitInteraction$default(instrument4, "click", null, null, "hybrid_search_opt_out", null, null, 246);
                                            }
                                            Prefs prefs = Prefs.INSTANCE;
                                            PrefsIoUtil.setBoolean(R.string.preference_key_hybrid_search_enabled, false);
                                            searchResultsFragment2.setShowHybridSearch(false);
                                            SearchFragment callback2 = searchResultsFragment2.callback();
                                            if (callback2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                String obj4 = StringUtil.fromHtml(str2).toString();
                                                obj4.getClass();
                                                callback2.switchToSearch(obj4);
                                                break;
                                            }
                                            break;
                                        case 4:
                                            boolean booleanValue3 = ((Boolean) obj3).booleanValue();
                                            SearchFragment callback3 = searchResultsFragment2.callback();
                                            if (callback3 != null) {
                                                FragmentNewsBinding fragmentNewsBinding2 = callback3._binding;
                                                fragmentNewsBinding2.getClass();
                                                ((LinearProgressIndicator) fragmentNewsBinding2.toolbarContainer).setVisibility(booleanValue3 ? 0 : 8);
                                                break;
                                            }
                                            break;
                                        default:
                                            int intValue3 = ((Integer) obj3).intValue();
                                            if (searchResultsFragment2.isAdded() && intValue3 >= 0) {
                                                ((SearchFragment) searchResultsFragment2.requireParentFragment()).setUpLanguageScroll(intValue3);
                                                break;
                                            }
                                            break;
                                    }
                                    return unit2;
                                }
                            };
                            gapComposer2.updateRememberedValue(rememberedValue21);
                        } else {
                            z = false;
                        }
                        NoSearchResultsKt.HybridSearchResultsScreen(fillElement2, viewModel2, function42, function13, function6, function33, function03, function14, function2, function04, function05, function15, function06, function07, (Function1) rememberedValue21, gapComposer2, 6);
                        gapComposer2.end(z);
                        break;
                    }
                }
                break;
        }
        return unit;
    }
}
