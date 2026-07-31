package org.wikipedia.page;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ActionMode;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.SwitchPreferenceCompat;
import androidx.recyclerview.widget.RecyclerView;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.snackbar.Snackbar;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.AwaitKt;
import okio.Path;
import okio.internal.DefaultSocket;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.page.tabs.TabActivity;
import org.wikipedia.readinglist.ReadingListTitleDialog$Callback;
import org.wikipedia.search.RecentSearchesFragment;
import org.wikipedia.search.RecentSearchesFragment$onCreateView$1$1$1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.SettingsActivity;
import org.wikipedia.settings.SettingsPreferenceLoader;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.usercontrib.UserInformationDialog;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.AutoFitRecyclerView;
import org.wikipedia.views.CustomDatePicker;
import org.wikipedia.views.PlainPasteEditText;
import org.wikipedia.views.SuggestedArticleDescriptionsReportDialog;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.views.TextInputDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageFragment$$ExternalSyntheticLambda28 implements DialogInterface.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PageFragment$$ExternalSyntheticLambda28(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.$r8$classId;
        int i3 = 0;
        Continuation continuation = null;
        Object obj = this.f$0;
        switch (i2) {
            case 0:
                PageFragment pageFragment = (PageFragment) obj;
                int i4 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                int i5 = LoginActivity.$r8$clinit;
                pageFragment.startActivity(Path.Companion.newIntent(pageFragment.requireContext(), "edit", true), null);
                return;
            case 1:
                if (((Constants.InvokeSource) obj) == Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS) {
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String m = ViewSizeResolver$CC.m();
                    Prefs prefs = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("undo_cancel", "pt_edit", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    return;
                }
                return;
            case 2:
                int i6 = EditSectionActivity.$r8$clinit;
                ((EditSectionActivity) obj).doSave();
                dialogInterface.dismiss();
                return;
            case 3:
                int i7 = EditSectionActivity.$r8$clinit;
                dialogInterface.dismiss();
                ((Function0) obj).invoke();
                return;
            case 4:
                dialogInterface.dismiss();
                ((Runnable) obj).run();
                return;
            case 5:
                TabActivity tabActivity = (TabActivity) obj;
                int i8 = TabActivity.$r8$clinit;
                L.d("All tabs removed.");
                WikipediaApp wikipediaApp2 = tabActivity.app;
                ArrayList mutableList = CollectionsKt.toMutableList((Collection) wikipediaApp2.tabList);
                wikipediaApp2.tabList.clear();
                DefaultSocket defaultSocket = tabActivity.binding;
                if (defaultSocket == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((TabCountsView) defaultSocket.closeBits).updateTabCount(false);
                DefaultSocket defaultSocket2 = tabActivity.binding;
                if (defaultSocket2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                RecyclerView.Adapter adapter = ((AutoFitRecyclerView) defaultSocket2.source).getAdapter();
                if (adapter != null) {
                    adapter.mObservable.notifyItemRangeRemoved(0, mutableList.size());
                }
                tabActivity.setResult(10);
                String string = tabActivity.getString(R.string.all_tab_items_closed);
                string.getClass();
                Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(tabActivity, string, 0, 12);
                makeSnackbar$default.setAction(R.string.reading_list_item_delete_undo, new HomeFragment$$ExternalSyntheticLambda8(18, tabActivity, mutableList));
                makeSnackbar$default.show();
                return;
            case 6:
                Activity activity = (Activity) obj;
                WikiGamesEvent.submit$default("settings_click", "sync_off_prompt", null, null, null, null, null, null, 508);
                int i9 = SettingsActivity.$r8$clinit;
                activity.startActivity(new Intent(activity, (Class<?>) SettingsActivity.class));
                return;
            case 7:
                WikiGamesEvent.submit$default("built_cancel_click", (String) obj, null, null, null, null, null, null, 508);
                return;
            case 8:
                RecentSearchesFragment recentSearchesFragment = (RecentSearchesFragment) obj;
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(recentSearchesFragment), recentSearchesFragment.coroutineExceptionHandler, null, new RecentSearchesFragment$onCreateView$1$1$1(recentSearchesFragment, continuation, i3), 2);
                return;
            case 9:
                UriUtil.submit$default(238, null, "yir_off_confirm_click", null, "setting", null);
                Prefs prefs2 = Prefs.INSTANCE;
                Prefs.setYearInReviewModelData(EmptyMap.INSTANCE);
                ((SwitchPreferenceCompat) ((Preference) obj)).setChecked(false);
                return;
            case 10:
                dialogInterface.getClass();
                int i10 = LoginActivity.$r8$clinit;
                PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) ((SettingsPreferenceLoader) obj).fragment;
                preferenceFragmentCompat.requireActivity().startActivity(Path.Companion.newIntent((Context) preferenceFragmentCompat.requireActivity(), "settings", true));
                return;
            case 11:
                WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) obj;
                AppLanguageState languageState = wikipediaLanguagesFragment.app.getLanguageState();
                ArrayList arrayList = wikipediaLanguagesFragment.selectedCodes;
                languageState.getClass();
                arrayList.getClass();
                ArrayList arrayList2 = languageState._appLanguageCodes;
                if (arrayList2.size() > 1) {
                    arrayList2.removeAll(arrayList);
                    Prefs prefs3 = Prefs.INSTANCE;
                    Prefs.setAppLanguageCodeList(arrayList2);
                    WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                    Jsoup.getInstance().resetWikiSite();
                }
                wikipediaLanguagesFragment.prepareWikipediaLanguagesList();
                arrayList.clear();
                WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = wikipediaLanguagesFragment.adapter;
                if (wikipediaLanguageItemAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
                wikipediaLanguageItemAdapter.notifyDataSetChanged();
                ActionMode actionMode = wikipediaLanguagesFragment.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
                wikipediaLanguagesFragment.requireActivity().setResult(1);
                return;
            case 12:
                ((SuggestedEditsImageTagsFragment) obj).requireActivity().finish();
                return;
            case IMAGE_VALUE:
                TalkTopicActivity talkTopicActivity = (TalkTopicActivity) obj;
                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = talkTopicActivity.requestLogin;
                int i11 = LoginActivity.$r8$clinit;
                activityResultRegistry$register$2.launch(Path.Companion.newIntent((Context) talkTopicActivity, "subscribe", true), null);
                return;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp4 = WikipediaApp.instance;
                String m2 = ViewSizeResolver$CC.m();
                Prefs prefs4 = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("message_delete_click", "pt_templates", "", m2, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                ((TalkTemplatesFragment) obj).deleteSelectedTalkTemplates();
                return;
            case 15:
                ((UserInformationDialog) obj).dismissInternal(false, false);
                return;
            case LAZY_VERTICAL_GRID_VALUE:
                CustomDatePicker customDatePicker = (CustomDatePicker) obj;
                OnThisDayFragment onThisDayFragment = customDatePicker.callback;
                if (onThisDayFragment != null) {
                    Calendar calendar = customDatePicker.callbackDay;
                    calendar.getClass();
                    onThisDayFragment.onDatePicked(calendar);
                    return;
                }
                return;
            case VERTICAL_GRID_ITEM_VALUE:
                AlertDialog alertDialog = ((SuggestedArticleDescriptionsReportDialog) obj).dialog;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                    return;
                }
                return;
            default:
                TextInputDialog textInputDialog = (TextInputDialog) obj;
                dialogInterface.getClass();
                DefaultSocket defaultSocket3 = (DefaultSocket) textInputDialog.callback;
                DefaultSocket defaultSocket4 = (DefaultSocket) textInputDialog.binding;
                if (defaultSocket3 != null) {
                    ((ReadingListTitleDialog$Callback) defaultSocket3.sink).onSuccess(StringsKt.trim(String.valueOf(((PlainPasteEditText) defaultSocket4.source).getText()).toString()).toString(), StringsKt.trim(String.valueOf(((PlainPasteEditText) defaultSocket4.socket).getText()).toString()).toString());
                    return;
                }
                return;
        }
    }
}
