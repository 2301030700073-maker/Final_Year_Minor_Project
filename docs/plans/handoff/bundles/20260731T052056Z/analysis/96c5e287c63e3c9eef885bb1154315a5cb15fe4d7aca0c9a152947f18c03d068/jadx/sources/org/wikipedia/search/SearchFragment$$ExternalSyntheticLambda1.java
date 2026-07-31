package org.wikipedia.search;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.unit.DpKt;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.io.FileTreeWalk;
import kotlin.io.LinesSequence;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonImpl;
import okhttp3.Cookie;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.databinding.ActivityWatchlistFiltersBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageAvailableOfflineHandler$Callback;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsViewModel;
import org.wikipedia.settings.PreferenceMultiLine;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.SettingsPreferenceLoader;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFilterActivity;
import org.wikipedia.talk.ArchivedTalkPagesActivity;
import org.wikipedia.talk.ArchivedTalkPagesViewModel;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.TalkTopicsViewModel$$ExternalSyntheticLambda0;
import org.wikipedia.usercontrib.UserContribFilterActivity;
import org.wikipedia.util.Resource;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.EditNoticesDialog;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.SearchActionProvider;
import org.wikipedia.watchlist.WatchlistFilterActivity;
import org.wikipedia.yearinreview.YearInReviewOnboardingActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchFragment$$ExternalSyntheticLambda1 implements RemoveFromReadingListsDialog$Callback, PageAvailableOfflineHandler$Callback, LinkMovementMethodExt.UrlHandler, ActivityResultCallback, Preference.OnPreferenceClickListener, SearchActionProvider.Callback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ SearchFragment$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        String str;
        int i;
        int i2 = this.$r8$classId;
        Object obj2 = this.f$0;
        switch (i2) {
            case 0:
                SearchFragment searchFragment = (SearchFragment) obj2;
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.resultCode == -1) {
                    JsonImpl jsonImpl = JsonUtil.json;
                    WikipediaApp wikipediaApp = searchFragment.app;
                    List appLanguageCodes = wikipediaApp.getLanguageState().getAppLanguageCodes();
                    try {
                        JsonImpl jsonImpl2 = JsonUtil.json;
                        jsonImpl2.getClass();
                        str = jsonImpl2.encodeToString(new HashSetSerializer(StringSerializer.INSTANCE, 1), appLanguageCodes);
                    } catch (Exception e) {
                        L.w(e);
                        str = null;
                    }
                    String str2 = searchFragment.initialLanguageList;
                    if (str2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("initialLanguageList");
                        throw null;
                    }
                    if (!Intrinsics.areEqual(str, str2)) {
                        searchFragment.requireActivity().setResult(98);
                    }
                    Intent intent = activityResult.data;
                    if (intent != null) {
                        if (intent.hasExtra("activity_result_lang_position_data")) {
                            i = intent.getIntExtra("activity_result_lang_position_data", 0);
                        } else {
                            if (((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).contains(searchFragment.searchLanguageCode)) {
                                i = ((ArrayList) wikipediaApp.getLanguageState().getAppLanguageCodes()).indexOf(searchFragment.searchLanguageCode);
                            }
                        }
                        Prefs prefs = Prefs.INSTANCE;
                        PrefsIoUtil.setInt(R.string.preference_key_selected_language_position_in_search, i);
                        searchFragment.setUpLanguageScroll(PrefsIoUtil.getInt(R.string.preference_key_selected_language_position_in_search, 0));
                        return;
                    }
                    i = 0;
                    Prefs prefs2 = Prefs.INSTANCE;
                    PrefsIoUtil.setInt(R.string.preference_key_selected_language_position_in_search, i);
                    searchFragment.setUpLanguageScroll(PrefsIoUtil.getInt(R.string.preference_key_selected_language_position_in_search, 0));
                    return;
                }
                return;
            case 5:
                RecommendedReadingListInterestsFragment recommendedReadingListInterestsFragment = (RecommendedReadingListInterestsFragment) obj2;
                ActivityResult activityResult2 = (ActivityResult) obj;
                activityResult2.getClass();
                if (activityResult2.resultCode == 97) {
                    Intent intent2 = activityResult2.data;
                    PageTitle pageTitle = intent2 != null ? (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent2, "returnLinkTitle", PageTitle.class)) : null;
                    pageTitle.getClass();
                    WikiGamesEvent.submit$default("search_click", "rrl_interests_select", null, null, null, null, null, null, 508);
                    StateFlowImpl stateFlowImpl = recommendedReadingListInterestsFragment.getViewModel()._uiState;
                    Object value = stateFlowImpl.getValue();
                    Resource.Success success = value instanceof Resource.Success ? (Resource.Success) value : null;
                    if (success != null) {
                        RecommendedReadingListInterestsViewModel.UiState uiState = (RecommendedReadingListInterestsViewModel.UiState) success.data;
                        stateFlowImpl.updateState(null, new Resource.Success(RecommendedReadingListInterestsViewModel.UiState.copy$default(uiState, CollectionsKt.plus((Collection) Room.listOf(pageTitle), (Iterable) uiState.items), UuidKt.plus(uiState.selectedItems, pageTitle), 57)));
                        return;
                    }
                    return;
                }
                return;
            case 8:
                SuggestedEditsRecentEditsFilterActivity suggestedEditsRecentEditsFilterActivity = (SuggestedEditsRecentEditsFilterActivity) obj2;
                int i3 = SuggestedEditsRecentEditsFilterActivity.$r8$clinit;
                ((ActivityResult) obj).getClass();
                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                LinesSequence linesSequence = new LinesSequence(2, ViewSizeResolver$CC.m785m());
                ArrayList arrayList = suggestedEditsRecentEditsFilterActivity.appLanguagesPreFilterList;
                Cookie.Companion.submitPatrollerActivityEvent("filters_state_change", "pt_filters", Cookie.Companion.getActionDataString$default(null, null, null, null, null, null, null, SequencesKt.toList(new TransformingSequence(new FileTreeWalk(2, CollectionsKt.toSet(arrayList), linesSequence), new TalkTopicsViewModel$$ExternalSyntheticLambda0(26))).toString(), Jsoup.getInstance().getLanguageState().getAppLanguageCodes().toString(), 255));
                arrayList.clear();
                List appLanguageCodes2 = Jsoup.getInstance().getLanguageState().getAppLanguageCodes();
                Prefs prefs3 = Prefs.INSTANCE;
                if (!((ArrayList) appLanguageCodes2).contains(Prefs.getRecentEditsWikiCode())) {
                    String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                    appOrSystemLanguageCode.getClass();
                    PrefsIoUtil.setString(R.string.preference_key_recent_edits_wiki_code, appOrSystemLanguageCode);
                }
                suggestedEditsRecentEditsFilterActivity.setUpRecyclerView$2();
                return;
            case 12:
                UserContribFilterActivity userContribFilterActivity = (UserContribFilterActivity) obj2;
                List list = UserContribFilterActivity.NAMESPACE_LIST;
                ((ActivityResult) obj).getClass();
                WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                List m785m = ViewSizeResolver$CC.m785m();
                Prefs prefs4 = Prefs.INSTANCE;
                if (!((ArrayList) m785m).contains(Prefs.getUserContribFilterLangCode()) && !Prefs.getUserContribFilterLangCode().equals("commons") && !Prefs.getUserContribFilterLangCode().equals("wikidata")) {
                    String appOrSystemLanguageCode2 = Jsoup.getInstance().getAppOrSystemLanguageCode();
                    appOrSystemLanguageCode2.getClass();
                    PrefsIoUtil.setString(R.string.preference_key_user_contrib_filter_lang_code, appOrSystemLanguageCode2);
                }
                ActivityWatchlistFiltersBinding activityWatchlistFiltersBinding = userContribFilterActivity.binding;
                if (activityWatchlistFiltersBinding != null) {
                    activityWatchlistFiltersBinding.watchlistFiltersRecyclerView.setAdapter(new OnThisDayFragment.RecyclerAdapter(userContribFilterActivity, userContribFilterActivity));
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                int i4 = WatchlistFilterActivity.$r8$clinit;
                ((ActivityResult) obj).getClass();
                ((WatchlistFilterActivity) obj2).setUpRecyclerView$3();
                return;
            default:
                YearInReviewOnboardingActivity yearInReviewOnboardingActivity = (YearInReviewOnboardingActivity) obj2;
                ActivityResult activityResult3 = (ActivityResult) obj;
                int i5 = YearInReviewOnboardingActivity.$r8$clinit;
                activityResult3.getClass();
                if (activityResult3.resultCode == 1) {
                    Prefs prefs5 = Prefs.INSTANCE;
                    Prefs.setYearInReviewModelData(EmptyMap.INSTANCE);
                    yearInReviewOnboardingActivity.proceed();
                    return;
                }
                return;
        }
    }

    @Override // org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback
    public void onDeleted(List list, ReadingListPage readingListPage) {
        LongPressMenu.deleteOrShowDialog$lambda$0$0((LongPressMenu) this.f$0, list, readingListPage);
    }

    @Override // org.wikipedia.page.PageAvailableOfflineHandler$Callback
    public void onFinish(boolean z) {
        View view = ((ReadingListFragment.ReadingListPageItemHolder) this.f$0).itemView;
        view.getClass();
        ((PageItemView) view).setViewsRead(z);
    }

    @Override // androidx.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 6:
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) ((SettingsPreferenceLoader) obj).fragment;
                AppCompatActivity requireActivity = preferenceFragmentCompat.requireActivity();
                Intent intent = new Intent();
                if (Build.VERSION.SDK_INT >= 26) {
                    intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
                    intent.putExtra("android.provider.extra.APP_PACKAGE", preferenceFragmentCompat.requireActivity().getPackageName());
                } else {
                    intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
                    intent.putExtra("app_package", preferenceFragmentCompat.requireActivity().getPackageName());
                    intent.putExtra("app_uid", preferenceFragmentCompat.requireActivity().getApplicationInfo().uid);
                }
                requireActivity.startActivity(intent);
                break;
            default:
                Context context = ((PreferenceMultiLine) obj).mContext;
                Intent intent2 = preference.mIntent;
                if (intent2 != null) {
                    try {
                        context.startActivity(intent2);
                        break;
                    } catch (ActivityNotFoundException unused) {
                        Toast.makeText(context, context.getString(R.string.error_browser_not_found), 1).show();
                        return true;
                    }
                }
                break;
        }
        return true;
    }

    @Override // org.wikipedia.views.SearchActionProvider.Callback
    public void onQueryTextChange(String str) {
        int i = this.$r8$classId;
        TalkTopicActivity.SearchCallback searchCallback = (TalkTopicActivity.SearchCallback) this.f$0;
        switch (i) {
            case 10:
                str.getClass();
                searchCallback.onQueryChange(str);
                break;
            default:
                str.getClass();
                searchCallback.onQueryChange(str);
                break;
        }
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 3:
                Activity activity = (Activity) obj;
                String string = activity.getString(R.string.android_app_faq_url);
                string.getClass();
                Uri parse = Uri.parse(string);
                parse.getClass();
                UriUtil.visitInExternalBrowser(activity, parse);
                break;
            case 4:
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj;
                String string2 = appCompatActivity.getString(R.string.android_app_faq_url);
                string2.getClass();
                Uri parse2 = Uri.parse(string2);
                parse2.getClass();
                UriUtil.visitInExternalBrowser(appCompatActivity, parse2);
                break;
            case 9:
                ArchivedTalkPagesActivity archivedTalkPagesActivity = (ArchivedTalkPagesActivity) obj;
                int i2 = ArchivedTalkPagesActivity.$r8$clinit;
                PageTitle pageTitle = ((ArchivedTalkPagesViewModel) archivedTalkPagesActivity.viewModel$delegate.getValue()).pageTitle;
                pageTitle.getClass();
                PageTitle copy$default = PageTitle.copy$default(pageTitle);
                if (pageTitle.namespace() == Namespace.USER_TALK) {
                    copy$default.setNamespace(UserAliasData.valueFor(pageTitle.wikiSite.languageCode));
                } else if (pageTitle.namespace() == Namespace.TALK) {
                    copy$default.setNamespace("");
                }
                HistoryEntry historyEntry = new HistoryEntry(37, copy$default);
                Intent putExtra = new Intent("org.wikipedia.load_in_new_tab").setClass(archivedTalkPagesActivity, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", historyEntry.getTitle());
                putExtra.getClass();
                archivedTalkPagesActivity.startActivity(putExtra);
                break;
            default:
                EditNoticesDialog editNoticesDialog = (EditNoticesDialog) obj;
                L.LEVEL_V.log("Link clicked was ".concat(str), null);
                ContextThemeWrapper contextThemeWrapper = ((AlertController.AlertParams) editNoticesDialog.array).mContext;
                Uri parse3 = Uri.parse(UriUtil.resolveProtocolRelativeUrl(str, (WikiSite) editNoticesDialog.wikiSite));
                parse3.getClass();
                UriUtil.visitInExternalBrowser(contextThemeWrapper, parse3);
                break;
        }
    }
}
