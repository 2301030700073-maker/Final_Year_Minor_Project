package androidx.compose.foundation.text;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import androidx.appcompat.app.AlertDialog;
import androidx.compose.foundation.lazy.layout.Averages;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.concurrent.futures.ResolvableFuture;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.work.DirectExecutor;
import androidx.work.WorkerKt$$ExternalSyntheticLambda1;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import java.io.Serializable;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Path;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditFragment$$ExternalSyntheticLambda0;
import org.wikipedia.descriptions.DescriptionEditLicenseView;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.feed.didyouknow.DidYouKnowActivity;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainFragment;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.Page;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.random.RandomActivity;
import org.wikipedia.random.RandomActivity$onSaveClick$1;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.dev.DeveloperSettingsPreferenceLoader;
import org.wikipedia.staticdata.UserAliasData;
import org.wikipedia.suggestededits.SuggestedEditsSnackbars;
import org.wikipedia.talk.TalkReplyActivity;
import org.wikipedia.talk.TalkReplyActivity$special$$inlined$lruCache$default$1;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.EditHistoryStatsView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextLinkScope$$ExternalSyntheticLambda3 implements ShouldPauseCallback, CallbackToFutureAdapter$Resolver, LinkMovementMethodExt.UrlHandler, RemoveFromReadingListsDialog$Callback, SuggestedEditsSnackbars.OpenPageListener, ReadingListBehaviorsUtil.SearchCallback, ReadingListBehaviorsUtil.Callback, Preference.OnPreferenceChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ TextLinkScope$$ExternalSyntheticLambda3(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        Executor executor = (Executor) this.f$0;
        Function0 function0 = (Function0) this.f$1;
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        WorkerKt$$ExternalSyntheticLambda1 workerKt$$ExternalSyntheticLambda1 = new WorkerKt$$ExternalSyntheticLambda1(atomicBoolean, 0);
        DirectExecutor directExecutor = DirectExecutor.INSTANCE;
        ResolvableFuture resolvableFuture = callbackToFutureAdapter$Completer.cancellationFuture;
        if (resolvableFuture != null) {
            resolvableFuture.addListener(workerKt$$ExternalSyntheticLambda1, directExecutor);
        }
        executor.execute(new WorkerKt$$ExternalSyntheticLambda2(atomicBoolean, callbackToFutureAdapter$Completer, function0, 0));
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00de  */
    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCompleted() {
        /*
            r10 = this;
            java.lang.Object r0 = r10.f$0
            org.wikipedia.readinglist.ReadingListsFragment r0 = (org.wikipedia.readinglist.ReadingListsFragment) r0
            java.lang.Object r10 = r10.f$1
            java.util.ArrayList r10 = (java.util.ArrayList) r10
            java.util.List r1 = org.wikipedia.readinglist.ReadingListBehaviorsUtil.allReadingLists
            androidx.appcompat.app.AppCompatActivity r1 = r0.requireActivity()
            org.wikipedia.readinglist.ReadingListsFragment$$ExternalSyntheticLambda1 r2 = new org.wikipedia.readinglist.ReadingListsFragment$$ExternalSyntheticLambda1
            r3 = 6
            r2.<init>(r0, r3)
            boolean r3 = r10.isEmpty()
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L1e
            goto L95
        L1e:
            java.util.Iterator r3 = r10.iterator()
        L22:
            boolean r6 = r3.hasNext()
            if (r6 == 0) goto L95
            java.lang.Object r6 = r3.next()
            org.wikipedia.readinglist.database.ReadingList r6 = (org.wikipedia.readinglist.database.ReadingList) r6
            boolean r6 = r6.isDefault()
            if (r6 == 0) goto L22
            int r3 = r10.size()
            r6 = 2131886332(0x7f1200fc, float:1.940724E38)
            if (r3 == r5) goto L82
            r7 = 2
            if (r3 == r7) goto L50
            java.lang.String r3 = r1.getString(r6)
            java.lang.Object[] r6 = new java.lang.Object[r5]
            r6[r4] = r3
            r3 = 2131888050(0x7f1207b2, float:1.9410724E38)
            java.lang.String r3 = r1.getString(r3, r6)
            goto L91
        L50:
            java.util.Iterator r3 = r10.iterator()
        L54:
            boolean r8 = r3.hasNext()
            if (r8 == 0) goto L7c
            java.lang.Object r8 = r3.next()
            org.wikipedia.readinglist.database.ReadingList r8 = (org.wikipedia.readinglist.database.ReadingList) r8
            boolean r9 = r8.isDefault()
            if (r9 != 0) goto L54
            java.lang.String r3 = r8.getTitle()
            java.lang.String r6 = r1.getString(r6)
            java.lang.Object[] r7 = new java.lang.Object[r7]
            r7[r4] = r3
            r7[r5] = r6
            r3 = 2131888051(0x7f1207b3, float:1.9410726E38)
            java.lang.String r3 = r1.getString(r3, r7)
            goto L91
        L7c:
            java.lang.String r10 = "Collection contains no element matching the predicate."
            com.google.gson.Gson$$ExternalSyntheticBUOutline0.m$3(r10)
            return
        L82:
            java.lang.String r3 = r1.getString(r6)
            java.lang.Object[] r6 = new java.lang.Object[r5]
            r6[r4] = r3
            r3 = 2131888049(0x7f1207b1, float:1.9410722E38)
            java.lang.String r3 = r1.getString(r3, r6)
        L91:
            r3.getClass()
            goto Lb3
        L95:
            android.content.res.Resources r3 = r1.getResources()
            int r6 = r10.size()
            int r7 = r10.size()
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.Object[] r8 = new java.lang.Object[r5]
            r8[r4] = r7
            r7 = 2131755048(0x7f100028, float:1.9140964E38)
            java.lang.String r3 = r3.getQuantityString(r7, r6, r8)
            r3.getClass()
        Lb3:
            r6 = 12
            com.google.android.material.snackbar.Snackbar r3 = org.wikipedia.util.ShareUtil.makeSnackbar$default(r1, r3, r4, r6)
            int r6 = r10.size()
            if (r6 != r5) goto Lcb
            java.lang.Object r4 = r10.get(r4)
            org.wikipedia.readinglist.database.ReadingList r4 = (org.wikipedia.readinglist.database.ReadingList) r4
            boolean r4 = r4.isDefault()
            if (r4 != 0) goto Ld7
        Lcb:
            org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda1 r4 = new org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda1
            r5 = 3
            r4.<init>(r10, r1, r2, r5)
            r10 = 2131887989(0x7f120775, float:1.94106E38)
            r3.setAction(r10, r4)
        Ld7:
            r3.show()
            androidx.appcompat.view.ActionMode r10 = r0.actionMode
            if (r10 == 0) goto Le1
            r10.finish()
        Le1:
            r0.updateLists()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3.onCompleted():void");
    }

    @Override // org.wikipedia.readinglist.RemoveFromReadingListsDialog$Callback
    public void onDeleted(List list, ReadingListPage readingListPage) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 6:
                DidYouKnowActivity.onCreate$lambda$0$0$3$0$4$0((DidYouKnowActivity) obj2, (HistoryEntry) obj, list, readingListPage);
                break;
            case 7:
                MainFragment.onFeedRemovePageFromList$lambda$0((MainFragment) obj2, (HistoryEntry) obj, list, readingListPage);
                break;
            default:
                RandomActivity$onSaveClick$1.invokeSuspend$lambda$0((RandomActivity) obj2, (PageTitle) obj, list);
                break;
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        ListPreference listPreference = (ListPreference) this.f$0;
        DeveloperSettingsPreferenceLoader developerSettingsPreferenceLoader = (DeveloperSettingsPreferenceLoader) this.f$1;
        obj.getClass();
        String str = (String) obj;
        RecommendedReadingListUpdateFrequency recommendedReadingListUpdateFrequency = str.equals("DAILY") ? RecommendedReadingListUpdateFrequency.DAILY : str.equals("WEEKLY") ? RecommendedReadingListUpdateFrequency.WEEKLY : RecommendedReadingListUpdateFrequency.MONTHLY;
        Prefs prefs = Prefs.INSTANCE;
        recommendedReadingListUpdateFrequency.getClass();
        PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_update_frequency, recommendedReadingListUpdateFrequency.name());
        Context context = listPreference.mContext;
        context.getClass();
        RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(context);
        RecommendedReadingListSourceScreenKt.showNotification(((PreferenceFragmentCompat) developerSettingsPreferenceLoader.fragment).requireActivity(), recommendedReadingListUpdateFrequency);
        return true;
    }

    @Override // org.wikipedia.page.LinkMovementMethodExt.UrlHandler
    public void onUrlClick(String str) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 3:
                DescriptionEditLicenseView descriptionEditLicenseView = (DescriptionEditLicenseView) obj2;
                Context context = (Context) obj;
                int i2 = DescriptionEditLicenseView.$r8$clinit;
                if (!str.equals("https://#login")) {
                    Uri parse = Uri.parse(str);
                    parse.getClass();
                    UriUtil.visitInExternalBrowser(context, parse);
                    break;
                } else {
                    DescriptionEditLicenseView.Callback callback = descriptionEditLicenseView.callback;
                    if (callback != null) {
                        DescriptionEditFragment descriptionEditFragment = ((DescriptionEditFragment$$ExternalSyntheticLambda0) callback).f$0;
                        int i3 = LoginActivity.$r8$clinit;
                        descriptionEditFragment.loginLauncher.launch(Path.Companion.newIntent((Context) descriptionEditFragment.requireActivity(), "edit", true), null);
                        break;
                    }
                }
                break;
            case 5:
                EditSectionActivity editSectionActivity = (EditSectionActivity) obj2;
                AlertDialog alertDialog = (AlertDialog) obj;
                int i4 = EditSectionActivity.$r8$clinit;
                if (StringsKt.contains(str, "#login", false) || StringsKt.contains(str, "#createaccount", false)) {
                    editSectionActivity.launchLogin(StringsKt.contains(str, "#createaccount", false));
                } else {
                    Uri parse2 = Uri.parse(str);
                    parse2.getClass();
                    UriUtil.visitInExternalBrowser(editSectionActivity, parse2);
                }
                alertDialog.dismiss();
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                PageTitle pageTitle = (PageTitle) obj2;
                TalkReplyActivity talkReplyActivity = (TalkReplyActivity) obj;
                TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
                pageTitle.getClass();
                PageTitle copy$default = PageTitle.copy$default(pageTitle);
                if (pageTitle.namespace() == Namespace.USER_TALK) {
                    copy$default.setNamespace(UserAliasData.valueFor(pageTitle.wikiSite.languageCode));
                } else if (pageTitle.namespace() == Namespace.TALK) {
                    copy$default.setNamespace("");
                }
                HistoryEntry historyEntry = new HistoryEntry(31, copy$default);
                Intent putExtra = new Intent("org.wikipedia.load_in_new_tab").setClass(talkReplyActivity, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", historyEntry.getTitle());
                putExtra.getClass();
                talkReplyActivity.startActivity(putExtra);
                break;
            default:
                EditHistoryStatsView editHistoryStatsView = (EditHistoryStatsView) obj2;
                PageTitle pageTitle2 = (PageTitle) obj;
                Context context2 = editHistoryStatsView.getContext();
                int i5 = PageActivity.$r8$clinit;
                Context context3 = editHistoryStatsView.getContext();
                context3.getClass();
                context2.startActivity(LoginClient.newIntentForNewTab(context3, new HistoryEntry(35, pageTitle2), pageTitle2));
                break;
        }
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsSnackbars.OpenPageListener
    public void open(View view) {
        String str;
        PageActivity pageActivity = (PageActivity) this.f$0;
        DescriptionEditActivity.Action action = (DescriptionEditActivity.Action) this.f$1;
        int i = PageActivity.$r8$clinit;
        PageFragment pageFragment = pageActivity.pageFragment;
        if (pageFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
            throw null;
        }
        Page page = (Page) pageFragment.model.page;
        if (page == null || (str = page.pageProperties.leadImageName) == null) {
            return;
        }
        WikiSite.Companion companion = WikiSite.Companion;
        String leadImageEditLang = pageFragment.getLeadImageEditLang();
        if (leadImageEditLang == null) {
            leadImageEditLang = "";
        }
        if (leadImageEditLang.length() == 0) {
            WikipediaApp wikipediaApp = pageActivity.app;
            if (wikipediaApp == null) {
                Intrinsics.throwUninitializedPropertyAccessException("app");
                throw null;
            }
            leadImageEditLang = wikipediaApp.getAppOrSystemLanguageCode();
        }
        companion.getClass();
        WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(leadImageEditLang);
        StringUtil stringUtil = StringUtil.INSTANCE;
        PageTitle pageTitle = new PageTitle("File:".concat(StringsKt.substringAfter$default(str, ':')), forLanguageCode, (String) null);
        if (action == DescriptionEditActivity.Action.ADD_IMAGE_TAGS) {
            Intent putExtra = new Intent(pageActivity, (Class<?>) FilePageActivity.class).putExtra("title", pageTitle).putExtra("allowEdit", true);
            putExtra.getClass();
            pageActivity.startActivity(putExtra);
        } else if (action == DescriptionEditActivity.Action.ADD_CAPTION || action == DescriptionEditActivity.Action.TRANSLATE_CAPTION) {
            PageFragment pageFragment2 = pageActivity.pageFragment;
            if (pageFragment2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
            PageTitle pageTitle2 = (PageTitle) pageFragment2.model.title;
            if (pageTitle2 != null) {
                Intent putExtra2 = new Intent(pageActivity, (Class<?>) GalleryActivity.class).putExtra("wikiSite", forLanguageCode).putExtra("title", pageTitle2).putExtra("filename", pageTitle.getPrefixedText()).putExtra("revision", (Serializable) null);
                putExtra2.getClass();
                pageActivity.startActivity(putExtra2);
            }
        }
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean shouldPause() {
        PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl = (PrefetchHandleProvider$HandleAndRequestImpl) this.f$0;
        Averages averages = (Averages) this.f$1;
        boolean z = prefetchHandleProvider$HandleAndRequestImpl.pauseRequested;
        if (z) {
            return z;
        }
        prefetchHandleProvider$HandleAndRequestImpl.updateElapsedAndAvailableTime();
        long calculateAverageTime = Averages.calculateAverageTime(prefetchHandleProvider$HandleAndRequestImpl.elapsedTimeNanos, averages.resumeTimeNanos);
        averages.resumeTimeNanos = calculateAverageTime;
        boolean z2 = !prefetchHandleProvider$HandleAndRequestImpl.shouldExecute(prefetchHandleProvider$HandleAndRequestImpl.availableTimeNanos, calculateAverageTime + averages.pauseTimeNanos);
        prefetchHandleProvider$HandleAndRequestImpl.pauseRequested = z2;
        return z2;
    }

    @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.SearchCallback
    public void onCompleted(List list) {
        ReadingListFragment readingListFragment = (ReadingListFragment) this.f$0;
        String str = (String) this.f$1;
        list.getClass();
        readingListFragment.displayedLists = list;
        readingListFragment.adapter.notifyDataSetChanged();
        readingListFragment.updateEmptyState(str);
    }
}
