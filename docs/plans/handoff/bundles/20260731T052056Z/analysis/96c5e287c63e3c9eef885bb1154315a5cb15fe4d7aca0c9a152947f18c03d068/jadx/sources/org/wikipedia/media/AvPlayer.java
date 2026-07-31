package org.wikipedia.media;

import android.accounts.AccountAuthenticatorResponse;
import android.app.ActivityOptions;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.location.Location;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener;
import androidx.appcompat.widget.SearchView;
import androidx.collection.ArrayMap;
import androidx.compose.ui.unit.DpKt;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.Fragment;
import androidx.paging.HintHandler;
import androidx.palette.graphics.ColorCutQuantizer;
import androidx.palette.graphics.Palette;
import androidx.palette.graphics.Target;
import androidx.preference.ListPreferenceDialogFragmentCompat;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.SwitchPreferenceCompat;
import androidx.recyclerview.widget.RecyclerView;
import coil3.Image;
import coil3.UriKt;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.SuccessResult;
import coil3.size.ViewSizeResolver$CC;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Cache;
import okhttp3.Cookie;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.maplibre.android.maps.MapChangeReceiver;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EditAttemptStepEvent;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.captcha.CaptchaHandler;
import org.wikipedia.captcha.CaptchaResult;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.dataclient.Service;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.descriptions.DescriptionEditFragment;
import org.wikipedia.descriptions.DescriptionEditView;
import org.wikipedia.descriptions.DescriptionEditViewModel;
import org.wikipedia.edit.EditHandler;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.edit.templates.TemplatesSearchActivity;
import org.wikipedia.feed.news.NewsFragment;
import org.wikipedia.feed.onthisday.OnThisDayPagesViewHolder;
import org.wikipedia.feed.topread.TopReadFragment;
import org.wikipedia.feed.view.ListItemView;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.gallery.MediaDownloadReceiver;
import org.wikipedia.games.onthisday.OnThisDayGameResultFragment;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.login.LoginClient;
import org.wikipedia.login.LoginEmailAuthResult;
import org.wikipedia.login.LoginFailedException;
import org.wikipedia.login.LoginResult;
import org.wikipedia.login.ResetPasswordActivity;
import org.wikipedia.main.MainFragment;
import org.wikipedia.notifications.db.NotificationDao_Impl;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.leadimages.PageHeaderView;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListItemActionsView;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.SettingsPreferenceLoader;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsOnboardingActivity;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsActivity;
import org.wikipedia.suggestededits.SuggestedEditsTask;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragment;
import org.wikipedia.suggestededits.SuggestionsActivity;
import org.wikipedia.talk.ArchivedTalkPagesActivity;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.talk.db.TalkTemplateDao_Impl;
import org.wikipedia.util.GeoUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.FindInPageActionProvider;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.PageScrollerView;
import org.wikipedia.views.SearchActionProvider;
import org.wikipedia.views.SearchAndFilterActionProvider;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.imageservice.ImageLoadListener;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AvPlayer implements DescriptionEditView.Callback, PopupMenu$OnMenuItemClickListener, ImageLoadListener, SearchView.OnQueryTextListener, ListItemView.Callback, LongPressMenu.Callback, MediaDownloadReceiver.Callback, PageItemView.Callback, LoginClient.LoginCallback, PageScrollerView.Callback, PageHeaderView.Callback, ReadingListItemActionsView.Callback, Preference.OnPreferenceChangeListener, ImageRequest.Listener {
    public final /* synthetic */ int $r8$classId;
    public final Object player;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
        void onError(int i, int i2);

        void onSuccess();
    }

    public AvPlayer(int i) {
        this.$r8$classId = i;
        switch (i) {
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                this.player = new MediaPlayer();
                break;
            default:
                this.player = new AvPlayer(14);
                break;
        }
    }

    @Override // org.wikipedia.login.LoginClient.LoginCallback
    public void error(Throwable th) {
        th.getClass();
        ResetPasswordActivity resetPasswordActivity = (ResetPasswordActivity) this.player;
        int i = ResetPasswordActivity.$r8$clinit;
        resetPasswordActivity.showProgressBar$3(false);
        resetPasswordActivity.resetAuthState$1();
        Window window = resetPasswordActivity.getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i2 = Build.VERSION.SDK_INT;
        (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        if (th instanceof LoginFailedException) {
            ShareUtil.showError$default(resetPasswordActivity, th);
            return;
        }
        GsonBuilder gsonBuilder = resetPasswordActivity.binding;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        WikiErrorView wikiErrorView = (WikiErrorView) gsonBuilder.hierarchyFactories;
        int i3 = WikiErrorView.$r8$clinit;
        wikiErrorView.setError(th, null);
        GsonBuilder gsonBuilder2 = resetPasswordActivity.binding;
        if (gsonBuilder2 != null) {
            ((WikiErrorView) gsonBuilder2.hierarchyFactories).setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object fetchAndSave(java.lang.String r8, java.lang.String r9, kotlin.coroutines.jvm.internal.ContinuationImpl r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof org.wikipedia.notifications.NotificationRepository$fetchAndSave$1
            if (r0 == 0) goto L13
            r0 = r10
            org.wikipedia.notifications.NotificationRepository$fetchAndSave$1 r0 = (org.wikipedia.notifications.NotificationRepository$fetchAndSave$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.notifications.NotificationRepository$fetchAndSave$1 r0 = new org.wikipedia.notifications.NotificationRepository$fetchAndSave$1
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2e
            org.wikipedia.dataclient.mwapi.MwQueryResult$NotificationList r7 = r0.L$4
            kotlin.jvm.internal.Ref$ObjectRef r8 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L8e
        L2e:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L35:
            kotlin.jvm.internal.Ref$ObjectRef r8 = r0.L$2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L5d
        L3b:
            kotlin.jvm.internal.Ref$ObjectRef r10 = androidx.compose.animation.core.Animation.CC.m22m(r10)
            org.wikipedia.dataclient.ServiceFactory r2 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.WikipediaApp r2 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r2 = org.jsoup.Jsoup.getInstance()
            org.wikipedia.dataclient.WikiSite r2 = r2.getWikiSite()
            org.wikipedia.dataclient.Service r2 = org.wikipedia.dataclient.ServiceFactory.get(r2)
            r0.L$2 = r10
            r0.label = r4
            java.lang.Object r8 = r2.getAllNotifications(r8, r9, r0)
            if (r8 != r1) goto L5a
            goto L8c
        L5a:
            r6 = r10
            r10 = r8
            r8 = r6
        L5d:
            org.wikipedia.dataclient.mwapi.MwQueryResponse r10 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r10
            org.wikipedia.dataclient.mwapi.MwQueryResult r9 = r10.query
            if (r9 == 0) goto L92
            org.wikipedia.dataclient.mwapi.MwQueryResult$NotificationList r9 = r9.notifications
            if (r9 == 0) goto L92
            java.lang.Object r7 = r7.player
            org.wikipedia.notifications.db.NotificationDao_Impl r7 = (org.wikipedia.notifications.db.NotificationDao_Impl) r7
            java.util.List r10 = r9.list
            if (r10 != 0) goto L71
            kotlin.collections.EmptyList r10 = kotlin.collections.EmptyList.INSTANCE
        L71:
            r0.L$2 = r8
            r0.L$4 = r9
            r0.label = r3
            androidx.room.RoomDatabase r2 = r7.__db
            org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8 r3 = new org.wikipedia.games.GamesHubScreenKt$$ExternalSyntheticLambda8
            r5 = 21
            r3.<init>(r5, r7, r10)
            r7 = 0
            java.lang.Object r7 = kotlin.ExceptionsKt.performSuspending(r2, r7, r4, r3, r0)
            if (r7 != r1) goto L88
            goto L8a
        L88:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
        L8a:
            if (r7 != r1) goto L8d
        L8c:
            return r1
        L8d:
            r7 = r9
        L8e:
            java.lang.String r7 = r7.continueStr
            r8.element = r7
        L92:
            java.lang.Object r7 = r8.element
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.media.AvPlayer.fetchAndSave(java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object fetchUnreadWikiDbNames(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof org.wikipedia.notifications.NotificationRepository$fetchUnreadWikiDbNames$1
            if (r0 == 0) goto L13
            r0 = r5
            org.wikipedia.notifications.NotificationRepository$fetchUnreadWikiDbNames$1 r0 = (org.wikipedia.notifications.NotificationRepository$fetchUnreadWikiDbNames$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.notifications.NotificationRepository$fetchUnreadWikiDbNames$1 r0 = new org.wikipedia.notifications.NotificationRepository$fetchUnreadWikiDbNames$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r4 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r5 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L2e
            if (r1 != r3) goto L28
            kotlin.ResultKt.throwOnFailure(r4)
            goto L4a
        L28:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            return r2
        L2e:
            kotlin.ResultKt.throwOnFailure(r4)
            org.wikipedia.dataclient.ServiceFactory r4 = org.wikipedia.dataclient.ServiceFactory.INSTANCE
            org.wikipedia.WikipediaApp r4 = org.wikipedia.WikipediaApp.instance
            org.wikipedia.WikipediaApp r4 = org.jsoup.Jsoup.getInstance()
            org.wikipedia.dataclient.WikiSite r4 = r4.getWikiSite()
            org.wikipedia.dataclient.Service r4 = org.wikipedia.dataclient.ServiceFactory.get(r4)
            r0.label = r3
            java.lang.Object r4 = r4.unreadNotificationWikis(r0)
            if (r4 != r5) goto L4a
            return r5
        L4a:
            org.wikipedia.dataclient.mwapi.MwQueryResponse r4 = (org.wikipedia.dataclient.mwapi.MwQueryResponse) r4
            org.wikipedia.dataclient.mwapi.MwQueryResult r4 = r4.query
            if (r4 == 0) goto L53
            java.util.Map r4 = r4.unreadNotificationWikis
            goto L54
        L53:
            r4 = r2
        L54:
            r4.getClass()
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L64:
            boolean r0 = r4.hasNext()
            if (r0 == 0) goto L94
            java.lang.Object r0 = r4.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.getValue()
            org.wikipedia.notifications.db.Notification$UnreadNotificationWikiItem r0 = (org.wikipedia.notifications.db.Notification.UnreadNotificationWikiItem) r0
            org.wikipedia.notifications.db.Notification$Source r0 = r0.source
            if (r0 == 0) goto L8d
            org.wikipedia.dataclient.WikiSite r3 = new org.wikipedia.dataclient.WikiSite
            java.lang.String r0 = r0.base
            r3.<init>(r0)
            kotlin.Pair r0 = new kotlin.Pair
            r0.<init>(r1, r3)
            goto L8e
        L8d:
            r0 = r2
        L8e:
            if (r0 == 0) goto L64
            r5.add(r0)
            goto L64
        L94:
            java.util.Map r4 = kotlin.collections.MapsKt__MapsKt.toMap(r5)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.media.AvPlayer.fetchUnreadWikiDbNames(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getLastOrderNumber(kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof org.wikipedia.talk.template.TalkTemplatesRepository$getLastOrderNumber$1
            if (r0 == 0) goto L13
            r0 = r6
            org.wikipedia.talk.template.TalkTemplatesRepository$getLastOrderNumber$1 r0 = (org.wikipedia.talk.template.TalkTemplatesRepository$getLastOrderNumber$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.talk.template.TalkTemplatesRepository$getLastOrderNumber$1 r0 = new org.wikipedia.talk.template.TalkTemplatesRepository$getLastOrderNumber$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L2f
            if (r2 != r4) goto L28
            kotlin.ResultKt.throwOnFailure(r6)
            goto L46
        L28:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            r5 = 0
            return r5
        L2f:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r5 = r5.player
            org.wikipedia.talk.db.TalkTemplateDao_Impl r5 = (org.wikipedia.talk.db.TalkTemplateDao_Impl) r5
            r0.label = r4
            androidx.room.RoomDatabase r5 = r5.__db
            org.wikipedia.util.StringUtil$$ExternalSyntheticLambda0 r6 = new org.wikipedia.util.StringUtil$$ExternalSyntheticLambda0
            r6.<init>(r4)
            java.lang.Object r6 = kotlin.ExceptionsKt.performSuspending(r5, r4, r3, r6, r0)
            if (r6 != r1) goto L46
            return r1
        L46:
            java.lang.Integer r6 = (java.lang.Integer) r6
            if (r6 == 0) goto L4e
            int r3 = r6.intValue()
        L4e:
            java.lang.Integer r5 = new java.lang.Integer
            r5.<init>(r3)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.media.AvPlayer.getLastOrderNumber(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // org.wikipedia.login.LoginClient.LoginCallback
    public void hCaptchaPrompt(LoginResult loginResult, LoginFailedException loginFailedException, String str, String str2) {
        loginResult.getClass();
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public void onActionClick(View view, Object obj) {
        switch (this.$r8$classId) {
            case 11:
                break;
            default:
                break;
        }
    }

    @Override // org.wikipedia.feed.view.ListItemView.Callback
    public void onAddPageToList(HistoryEntry historyEntry, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.player;
        historyEntry.getClass();
        switch (i) {
            case 5:
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(((NewsFragment) obj).requireActivity(), historyEntry.getTitle(), z, Constants.InvokeSource.NEWS_ACTIVITY, null);
                break;
            default:
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(((TopReadFragment) obj).requireActivity(), historyEntry.getTitle(), z, Constants.InvokeSource.MOST_READ_ACTIVITY, null);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onAddRequest(HistoryEntry historyEntry, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.player;
        historyEntry.getClass();
        switch (i) {
            case 6:
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(((OnThisDayPagesViewHolder) obj).activity, historyEntry.getTitle(), z, Constants.InvokeSource.ON_THIS_DAY_ACTIVITY, null);
                break;
            case 7:
            default:
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(((PlacesFragment) obj).requireActivity(), historyEntry.getTitle(), z, Constants.InvokeSource.PLACES, null);
                break;
            case 8:
                ListItemView.Callback callback = ((ListItemView) obj).getCallback();
                if (callback != null) {
                    callback.onAddPageToList(historyEntry, z);
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public void onClick(Object obj) {
        ComponentCallbacks activity;
        int i = this.$r8$classId;
        Object obj2 = this.player;
        switch (i) {
            case 11:
                HistoryEntry historyEntry = (HistoryEntry) obj;
                HistoryFragment historyFragment = (HistoryFragment) obj2;
                if (!historyFragment.selectedEntries.isEmpty()) {
                    historyFragment.toggleSelectPage(historyEntry);
                    break;
                } else if (historyEntry != null) {
                    HistoryEntry historyEntry2 = new HistoryEntry(4, historyEntry.getTitle());
                    if (HistoryFragment.Callback.class.isInstance(historyFragment.getTargetFragment(true))) {
                        activity = historyFragment.getTargetFragment(true);
                    } else {
                        Fragment fragment = historyFragment.mParentFragment;
                        if (fragment != null) {
                            if (HistoryFragment.Callback.class.isInstance(fragment)) {
                                activity = historyFragment.mParentFragment;
                            } else if (HistoryFragment.Callback.class.isInstance(historyFragment.requireParentFragment().mParentFragment)) {
                                activity = historyFragment.requireParentFragment().mParentFragment;
                            }
                        }
                        activity = HistoryFragment.Callback.class.isInstance(historyFragment.getActivity()) ? historyFragment.getActivity() : null;
                    }
                    HistoryFragment.Callback callback = (HistoryFragment.Callback) activity;
                    if (callback != null) {
                        MainFragment mainFragment = (MainFragment) callback;
                        int i2 = PageActivity.$r8$clinit;
                        mainFragment.startActivity(LoginClient.newIntentForCurrentTab(mainFragment.requireContext(), historyEntry2, historyEntry2.getTitle(), true), null);
                        break;
                    }
                }
                break;
            default:
                PageTitle pageTitle = (PageTitle) obj;
                if (pageTitle != null) {
                    ArchivedTalkPagesActivity archivedTalkPagesActivity = (ArchivedTalkPagesActivity) obj2;
                    int i3 = TalkTopicsActivity.$r8$clinit;
                    archivedTalkPagesActivity.startActivity(Headers.Companion.newIntent(archivedTalkPagesActivity, pageTitle, Constants.InvokeSource.ARCHIVED_TALK_ACTIVITY));
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.views.imageservice.ImageLoadListener
    public void onError(Throwable th) {
        int i = this.$r8$classId;
        Object obj = this.player;
        switch (i) {
            case 3:
                InsertMediaActivity insertMediaActivity = (InsertMediaActivity) obj;
                if (insertMediaActivity.isDestroyed()) {
                    return;
                }
                FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                if (fragmentPlacesBinding != null) {
                    ((LinearProgressIndicator) fragmentPlacesBinding.listEmptyContainer).setVisibility(8);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 10:
                ((OnThisDayGameResultFragment) obj).loadedImagesForShare++;
                return;
            default:
                return;
        }
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public void onListChipClick(ReadingList readingList) {
        int i = this.$r8$classId;
    }

    @Override // org.wikipedia.views.PageItemView.Callback
    public boolean onLongClick(Object obj) {
        ActionMode actionMode;
        switch (this.$r8$classId) {
            case 11:
                HistoryEntry historyEntry = (HistoryEntry) obj;
                HistoryFragment historyFragment = (HistoryFragment) this.player;
                ActionMode actionMode2 = historyFragment.actionMode;
                if (actionMode2 != null) {
                    return false;
                }
                if ("searchActionMode".equals(actionMode2 != null ? actionMode2.mTag : null) && (actionMode = historyFragment.actionMode) != null) {
                    actionMode.finish();
                }
                historyFragment.toggleSelectPage(historyEntry);
                return true;
            default:
                return false;
        }
    }

    @Override // androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        HistoryEntry historyEntry;
        HistoryEntry historyEntry2;
        HistoryEntry historyEntry3;
        HistoryEntry historyEntry4;
        int i = this.$r8$classId;
        Object obj = this.player;
        int i2 = 1;
        switch (i) {
            case 2:
                EditHandler editHandler = (EditHandler) obj;
                menuItem.getClass();
                int itemId = menuItem.getItemId();
                if (itemId == R.id.menu_page_header_edit_description) {
                    editHandler.fragment.verifyBeforeEditingDescription(null, Constants.InvokeSource.PAGE_EDIT_PENCIL);
                } else if (itemId == R.id.menu_page_header_edit_lead_section) {
                    editHandler.startEditingSection(0, null);
                }
                break;
            default:
                menuItem.getClass();
                BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                LongPressMenu longPressMenu = (LongPressMenu) obj;
                Location location = longPressMenu.location;
                LongPressMenu.Callback callback = longPressMenu.callback;
                Context context = longPressMenu.anchorView.getContext();
                context.getClass();
                companion.getClass();
                BreadCrumbLogEvent.Companion.logClick(context, menuItem);
                int itemId2 = menuItem.getItemId();
                if (itemId2 == R.id.menu_long_press_open_page) {
                    HistoryEntry historyEntry5 = longPressMenu.entry;
                    if (historyEntry5 != null) {
                        callback.onOpenLink(historyEntry5);
                    }
                } else if (itemId2 == R.id.menu_long_press_open_in_places) {
                    if (location != null && (historyEntry4 = longPressMenu.entry) != null) {
                        callback.onOpenInPlaces(historyEntry4, location);
                    }
                } else if (itemId2 == R.id.menu_long_press_open_in_new_tab) {
                    longPressMenu.sendPlacesEvent("new_tab_click");
                    HistoryEntry historyEntry6 = longPressMenu.entry;
                    if (historyEntry6 != null) {
                        callback.onOpenInNewTab(historyEntry6);
                    }
                } else if (itemId2 == R.id.menu_long_press_add_to_default_list) {
                    longPressMenu.sendPlacesEvent("save_click");
                    HistoryEntry historyEntry7 = longPressMenu.entry;
                    if (historyEntry7 != null) {
                        callback.onAddRequest(historyEntry7, true);
                    }
                } else if (itemId2 == R.id.menu_long_press_add_to_another_list) {
                    longPressMenu.sendPlacesEvent("add_to_another_list_click");
                    if (longPressMenu.listsContainingPage != null && (historyEntry3 = longPressMenu.entry) != null) {
                        callback.onAddRequest(historyEntry3, false);
                    }
                } else if (itemId2 == R.id.menu_long_press_move_from_list_to_another_list) {
                    longPressMenu.sendPlacesEvent("move_from_list_to_another_list_click");
                    List list = longPressMenu.listsContainingPage;
                    if (list != null && (historyEntry2 = longPressMenu.entry) != null) {
                        callback.onMoveRequest((ReadingListPage) ((ReadingList) list.get(0)).pages.get(0), historyEntry2);
                    }
                } else if (itemId2 == R.id.menu_long_press_remove_from_lists) {
                    longPressMenu.sendPlacesEvent("remove_from_list_click");
                    List list2 = longPressMenu.listsContainingPage;
                    if (list2 != null) {
                        new Dispatcher$promoteAndExecute$Effects(list2).deleteOrShowDialog(longPressMenu.getActivity(), new SearchFragment$$ExternalSyntheticLambda1(i2, longPressMenu));
                    }
                    callback.onRemoveRequest();
                } else if (itemId2 == R.id.menu_long_press_share_page) {
                    longPressMenu.sendPlacesEvent("share_click");
                    HistoryEntry historyEntry8 = longPressMenu.entry;
                    if (historyEntry8 != null) {
                        callback.onShareRequest();
                        ShareUtil.shareText$default(longPressMenu.getActivity(), historyEntry8.getTitle());
                    }
                } else if (itemId2 == R.id.menu_long_press_copy_page) {
                    longPressMenu.sendPlacesEvent("copy_link_click");
                    HistoryEntry historyEntry9 = longPressMenu.entry;
                    if (historyEntry9 != null) {
                        AppCompatActivity activity = longPressMenu.getActivity();
                        String uri = historyEntry9.getTitle().getUri();
                        ClipboardManager clipboardManager = (ClipboardManager) activity.getSystemService(ClipboardManager.class);
                        if (clipboardManager != null) {
                            clipboardManager.setPrimaryClip(ClipData.newPlainText(null, uri));
                        }
                        ShareUtil.showMessage(longPressMenu.getActivity(), R.string.address_copied);
                    }
                } else if (itemId2 == R.id.menu_long_press_get_directions) {
                    longPressMenu.sendPlacesEvent("directions_click");
                    if (location != null && (historyEntry = longPressMenu.entry) != null) {
                        AppCompatActivity activity2 = longPressMenu.getActivity();
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        GeoUtil.sendGeoIntent(activity2, location, StringUtil.fromHtml(historyEntry.getTitle().getDisplayText()).toString());
                    }
                }
                break;
        }
        return true;
    }

    @Override // org.wikipedia.feed.view.ListItemView.Callback
    public void onMovePageToList(long j, HistoryEntry historyEntry) {
        int i = this.$r8$classId;
        Object obj = this.player;
        historyEntry.getClass();
        switch (i) {
            case 5:
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.moveToList(((NewsFragment) obj).requireActivity(), j, historyEntry.getTitle(), Constants.InvokeSource.NEWS_ACTIVITY, true, null);
                break;
            default:
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.moveToList(((TopReadFragment) obj).requireActivity(), j, historyEntry.getTitle(), Constants.InvokeSource.MOST_READ_ACTIVITY, true, null);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onMoveRequest(ReadingListPage readingListPage, HistoryEntry historyEntry) {
        ListItemView.Callback callback;
        int i = this.$r8$classId;
        Object obj = this.player;
        historyEntry.getClass();
        switch (i) {
            case 6:
                if (readingListPage != null) {
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.moveToList(((OnThisDayPagesViewHolder) obj).activity, readingListPage.listId, historyEntry.getTitle(), Constants.InvokeSource.ON_THIS_DAY_ACTIVITY, true, null);
                    break;
                }
                break;
            case 7:
            default:
                if (readingListPage != null) {
                    List list2 = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.moveToList(((PlacesFragment) obj).requireActivity(), readingListPage.listId, historyEntry.getTitle(), Constants.InvokeSource.PLACES, true, null);
                    break;
                }
                break;
            case 8:
                if (readingListPage != null && (callback = ((ListItemView) obj).getCallback()) != null) {
                    callback.onMovePageToList(readingListPage.listId, historyEntry);
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenInNewTab(HistoryEntry historyEntry) {
        ListItemView.Callback callback;
        int i = this.$r8$classId;
        Object obj = this.player;
        historyEntry.getClass();
        switch (i) {
            case 6:
                TabUtil.openInNewBackgroundTab(historyEntry);
                ShareUtil.showMessage(((OnThisDayPagesViewHolder) obj).activity, R.string.article_opened_in_background_tab);
                break;
            case 7:
            default:
                ((PlacesFragment) obj).onLinkPreviewLoadPage(historyEntry.getTitle(), historyEntry, true);
                break;
            case 8:
                ListItemView listItemView = (ListItemView) obj;
                PageTitle pageTitle = listItemView.title;
                if (pageTitle != null && (callback = listItemView.getCallback()) != null) {
                    callback.onSelectPage(pageTitle, historyEntry, true);
                    break;
                }
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public /* bridge */ void onOpenInPlaces(HistoryEntry historyEntry, Location location) {
        switch (this.$r8$classId) {
            case 6:
                Service.CC.$default$onOpenInPlaces(historyEntry, location);
                break;
            case 7:
            default:
                Service.CC.$default$onOpenInPlaces(historyEntry, location);
                break;
            case 8:
                Service.CC.$default$onOpenInPlaces(historyEntry, location);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenLink(HistoryEntry historyEntry) {
        ListItemView.Callback callback;
        int i = this.$r8$classId;
        Object obj = this.player;
        switch (i) {
            case 6:
                historyEntry.getClass();
                int i2 = PageActivity.$r8$clinit;
                LoginClient.newIntentForNewTab(((OnThisDayPagesViewHolder) obj).activity, historyEntry, historyEntry.getTitle());
                break;
            case 7:
            default:
                historyEntry.getClass();
                break;
            case 8:
                historyEntry.getClass();
                ListItemView listItemView = (ListItemView) obj;
                PageTitle pageTitle = listItemView.title;
                if (pageTitle != null && (callback = listItemView.getCallback()) != null) {
                    callback.onSelectPage(pageTitle, historyEntry, false);
                    break;
                }
                break;
        }
    }

    @Override // androidx.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        SettingsPreferenceLoader settingsPreferenceLoader = (SettingsPreferenceLoader) this.player;
        PreferenceFragmentCompat preferenceFragmentCompat = (PreferenceFragmentCompat) settingsPreferenceLoader.fragment;
        obj.getClass();
        if (!Headers.Companion.isLoggedIn()) {
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(preferenceFragmentCompat.requireActivity(), 0);
            materialAlertDialogBuilder.setTitle(R.string.reading_list_preference_login_to_enable_sync_dialog_title);
            materialAlertDialogBuilder.setMessage(R.string.reading_list_preference_login_to_enable_sync_dialog_text);
            materialAlertDialogBuilder.setPositiveButton(R.string.reading_list_preference_login_to_enable_sync_dialog_login, new PageFragment$$ExternalSyntheticLambda28(10, settingsPreferenceLoader));
            materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_preference_login_to_enable_sync_dialog_cancel, (DialogInterface.OnClickListener) null);
            materialAlertDialogBuilder.show();
            return false;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int i = 1;
        if (booleanValue) {
            ((SwitchPreferenceCompat) preference).setChecked(true);
            Path.Companion.setSyncEnabledWithSetup();
            return false;
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(preferenceFragmentCompat.requireActivity(), 0);
        AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder2.array;
        alertParams.mTitle = preferenceFragmentCompat.requireActivity().getString(R.string.preference_dialog_of_turning_off_reading_list_sync_title, Headers.Companion.getUserName());
        alertParams.mMessage = preferenceFragmentCompat.requireActivity().getString(R.string.preference_dialog_of_turning_off_reading_list_sync_text, Headers.Companion.getUserName());
        materialAlertDialogBuilder2.setPositiveButton(R.string.reading_lists_confirm_remote_delete_yes, new ListPreferenceDialogFragmentCompat.AnonymousClass1(i, preference));
        materialAlertDialogBuilder2.setNegativeButton(R.string.reading_lists_confirm_remote_delete_no, (DialogInterface.OnClickListener) null);
        materialAlertDialogBuilder2.show();
        return false;
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public void onQueryTextChange(String str) {
        int i = this.$r8$classId;
        Object obj = this.player;
        switch (i) {
            case 4:
                str.getClass();
                TemplatesSearchActivity templatesSearchActivity = (TemplatesSearchActivity) obj;
                GsonBuilder gsonBuilder = templatesSearchActivity.binding;
                if (gsonBuilder == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ((CabSearchView) gsonBuilder.fieldNamingPolicy).setCloseButtonVisibility(str);
                templatesSearchActivity.getViewModel().searchQuery = StringsKt.trim(str).toString();
                CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = templatesSearchActivity.templatesSearchAdapter;
                if (categoryMembersAdapter != null) {
                    categoryMembersAdapter.refresh();
                    return;
                }
                return;
            case 26:
                FindInPageActionProvider findInPageActionProvider = (FindInPageActionProvider) obj;
                str.getClass();
                if (str.length() == 0) {
                    Request.Builder builder = findInPageActionProvider._binding;
                    builder.getClass();
                    ((TextView) builder.headers).setVisibility(8);
                    findInPageActionProvider.setFindInPageChevronsEnabled(false);
                }
                FindInPageActionProvider.FindInPageListener findInPageListener = findInPageActionProvider.listener;
                if (findInPageListener != null) {
                    findInPageListener.onSearchTextChanged(str);
                    return;
                }
                return;
            case 27:
                str.getClass();
                SearchActionProvider searchActionProvider = (SearchActionProvider) obj;
                ((CabSearchView) searchActionProvider.binding.this$0).setCloseButtonVisibility(str);
                searchActionProvider.callback.onQueryTextChange(str);
                return;
            default:
                str.getClass();
                SearchAndFilterActionProvider searchAndFilterActionProvider = (SearchAndFilterActionProvider) obj;
                ((CabSearchView) searchAndFilterActionProvider.binding.sink).setCloseButtonVisibility(str);
                OkHttpCall.AnonymousClass1 anonymousClass1 = searchAndFilterActionProvider.callback;
                int i2 = anonymousClass1.$r8$classId;
                str.getClass();
                switch (i2) {
                    case VERTICAL_GRID_ITEM_VALUE:
                        ((TalkTopicActivity.SearchCallback) anonymousClass1.val$callback).onQueryChange(str);
                        return;
                    case RADIO_GROUP_VALUE:
                        ((TalkTopicActivity.SearchCallback) anonymousClass1.val$callback).onQueryChange(str);
                        return;
                    case SIZE_BOX_VALUE:
                        ((TalkTopicActivity.SearchCallback) anonymousClass1.val$callback).onQueryChange(str);
                        return;
                    case 24:
                        ((TalkTopicActivity.SearchCallback) anonymousClass1.val$callback).onQueryChange(str);
                        return;
                    default:
                        ((TalkTopicActivity.SearchCallback) anonymousClass1.val$callback).onQueryChange(str);
                        return;
                }
        }
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        int i = this.$r8$classId;
        str.getClass();
        switch (i) {
            case 4:
                Window window = ((TemplatesSearchActivity) this.player).getWindow();
                window.getClass();
                HintHandler hintHandler = new HintHandler(window.getDecorView());
                int i2 = Build.VERSION.SDK_INT;
                (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                return true;
            case 26:
            case 27:
            default:
                return false;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onRemoveRequest() {
        int i = this.$r8$classId;
    }

    public void onSaveClick() {
        String str;
        DescriptionEditFragment descriptionEditFragment = (DescriptionEditFragment) this.player;
        WikiGamesEvent wikiGamesEvent = descriptionEditFragment.analyticsHelper;
        OkHttpCall.AnonymousClass1 anonymousClass1 = descriptionEditFragment._binding;
        anonymousClass1.getClass();
        if (!((DescriptionEditView) anonymousClass1.this$0).showingReviewContent()) {
            if (descriptionEditFragment.getViewModel$1().action == DescriptionEditActivity.Action.ADD_DESCRIPTION) {
                Context requireContext = descriptionEditFragment.requireContext();
                wikiGamesEvent.getClass();
                wikiGamesEvent.log(requireContext, "machineSuggestions.end");
            }
            OkHttpCall.AnonymousClass1 anonymousClass12 = descriptionEditFragment._binding;
            anonymousClass12.getClass();
            ((DescriptionEditView) anonymousClass12.this$0).loadReviewContent(true);
            return;
        }
        Context requireContext2 = descriptionEditFragment.requireContext();
        PageTitle pageTitle = descriptionEditFragment.getViewModel$1().pageTitle;
        wikiGamesEvent.getClass();
        pageTitle.getClass();
        wikiGamesEvent.log(requireContext2, WikiGamesEvent.composeLogString(pageTitle).concat(".attempt"));
        EditAttemptStepEvent.Companion companion = EditAttemptStepEvent.Companion;
        PageTitle pageTitle2 = descriptionEditFragment.getViewModel$1().pageTitle;
        ViewSizeResolver$CC.m(companion, pageTitle2, "saveAttempt", "other", pageTitle2);
        DescriptionEditViewModel viewModel$1 = descriptionEditFragment.getViewModel$1();
        OkHttpCall.AnonymousClass1 anonymousClass13 = descriptionEditFragment._binding;
        anonymousClass13.getClass();
        String description = ((DescriptionEditView) anonymousClass13.this$0).getDescription();
        if (description == null) {
            description = "";
        }
        String str2 = description;
        String editComment = descriptionEditFragment.getEditComment();
        String editTags = descriptionEditFragment.getEditTags();
        CaptchaHandler captchaHandler = descriptionEditFragment.captchaHandler;
        String str3 = null;
        if (captchaHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        if (captchaHandler.isActive()) {
            CaptchaHandler captchaHandler2 = descriptionEditFragment.captchaHandler;
            if (captchaHandler2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                throw null;
            }
            CaptchaResult captchaResult = captchaHandler2.captchaResult;
            str = captchaResult != null ? captchaResult.captchaId : null;
        } else {
            str = null;
        }
        CaptchaHandler captchaHandler3 = descriptionEditFragment.captchaHandler;
        if (captchaHandler3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
            throw null;
        }
        if (captchaHandler3.isActive()) {
            CaptchaHandler captchaHandler4 = descriptionEditFragment.captchaHandler;
            if (captchaHandler4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("captchaHandler");
                throw null;
            }
            str3 = captchaHandler4.captchaWord();
        }
        viewModel$1.postDescription(str2, editComment, editTags, str, str3);
    }

    @Override // org.wikipedia.feed.view.ListItemView.Callback
    public void onSelectPage(PageTitle pageTitle, HistoryEntry historyEntry, Pair[] pairArr) {
        int i = this.$r8$classId;
        Bundle bundle = null;
        Object obj = this.player;
        pageTitle.getClass();
        historyEntry.getClass();
        pairArr.getClass();
        switch (i) {
            case 5:
                NewsFragment newsFragment = (NewsFragment) obj;
                ActivityOptions makeSceneTransitionAnimation = ActivityOptions.makeSceneTransitionAnimation(newsFragment.requireActivity(), (Pair[]) Arrays.copyOf(pairArr, pairArr.length));
                int i2 = PageActivity.$r8$clinit;
                Intent newIntentForNewTab = LoginClient.newIntentForNewTab(newsFragment.requireContext(), historyEntry, historyEntry.getTitle());
                if (pairArr.length != 0) {
                    newIntentForNewTab.putExtra("hasTransitionAnim", true);
                }
                if (newsFragment.requireContext().getResources().getConfiguration().orientation != 2 && pairArr.length != 0) {
                    bundle = makeSceneTransitionAnimation.toBundle();
                }
                newsFragment.startActivity(newIntentForNewTab, bundle);
                break;
            default:
                TopReadFragment topReadFragment = (TopReadFragment) obj;
                ActivityOptions makeSceneTransitionAnimation2 = ActivityOptions.makeSceneTransitionAnimation(topReadFragment.requireActivity(), (Pair[]) Arrays.copyOf(pairArr, pairArr.length));
                int i3 = PageActivity.$r8$clinit;
                Intent newIntentForNewTab2 = LoginClient.newIntentForNewTab(topReadFragment.requireContext(), historyEntry, historyEntry.getTitle());
                if (pairArr.length != 0) {
                    newIntentForNewTab2.putExtra("hasTransitionAnim", true);
                }
                if (topReadFragment.requireContext().getResources().getConfiguration().orientation != 2 && pairArr.length != 0) {
                    bundle = makeSceneTransitionAnimation2.toBundle();
                }
                topReadFragment.startActivity(newIntentForNewTab2, bundle);
                break;
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onShareRequest() {
        int i = this.$r8$classId;
    }

    @Override // org.wikipedia.views.imageservice.ImageLoadListener
    public void onSuccess(int i, int i2, Object obj) {
        Bitmap createBitmap;
        int i3;
        int i4 = this.$r8$classId;
        Object obj2 = this.player;
        boolean z = true;
        switch (i4) {
            case 3:
                InsertMediaActivity insertMediaActivity = (InsertMediaActivity) obj2;
                if (insertMediaActivity.isDestroyed()) {
                    return;
                }
                FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                if (fragmentPlacesBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                ViewGroup.LayoutParams layoutParams = fragmentPlacesBinding.backButton.getLayoutParams();
                layoutParams.getClass();
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                if (fragmentPlacesBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                float width = fragmentPlacesBinding2.langCodeButton.getWidth();
                if (insertMediaActivity.binding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                float f = i / i2;
                if (f > width / r6.langCodeButton.getHeight()) {
                    layoutParams2.setMarginEnd(Okio__OkioKt.roundedDpToPx(8.0f));
                } else {
                    if (insertMediaActivity.binding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    float height = r2.langCodeButton.getHeight() * f;
                    int roundedDpToPx = Okio__OkioKt.roundedDpToPx(8.0f);
                    FragmentPlacesBinding fragmentPlacesBinding3 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    layoutParams2.setMarginEnd(((fragmentPlacesBinding3.langCodeButton.getWidth() / 2) - (((int) height) / 2)) + roundedDpToPx);
                }
                FragmentPlacesBinding fragmentPlacesBinding4 = insertMediaActivity.binding;
                if (fragmentPlacesBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                fragmentPlacesBinding4.backButton.setLayoutParams(layoutParams2);
                FragmentPlacesBinding fragmentPlacesBinding5 = insertMediaActivity.binding;
                if (fragmentPlacesBinding5 != null) {
                    ((LinearProgressIndicator) fragmentPlacesBinding5.listEmptyContainer).setVisibility(8);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
            case 10:
                ((OnThisDayGameResultFragment) obj2).loadedImagesForShare++;
                return;
            default:
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = (SuggestedEditsImageRecsFragment) obj2;
                if (suggestedEditsImageRecsFragment.isAdded()) {
                    if (Okio__OkioKt._implementation == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("ImageService has not been set, call ImageService.setImplementation() before using ImageService");
                        return;
                    }
                    if (obj instanceof Image) {
                        createBitmap = UriKt.toBitmap$default((Image) obj);
                    } else if (obj instanceof Bitmap) {
                        createBitmap = (Bitmap) obj;
                    } else {
                        createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
                        createBitmap.getClass();
                    }
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    if (createBitmap == null || createBitmap.isRecycled()) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Bitmap is not valid");
                        return;
                    }
                    arrayList2.add(Palette.DEFAULT_FILTER);
                    arrayList.add(Target.LIGHT_VIBRANT);
                    arrayList.add(Target.VIBRANT);
                    arrayList.add(Target.DARK_VIBRANT);
                    arrayList.add(Target.LIGHT_MUTED);
                    arrayList.add(Target.MUTED);
                    arrayList.add(Target.DARK_MUTED);
                    int height2 = createBitmap.getHeight() * createBitmap.getWidth();
                    double sqrt = height2 > 12544 ? Math.sqrt(12544.0d / height2) : -1.0d;
                    int i5 = 0;
                    Bitmap createScaledBitmap = sqrt <= 0.0d ? createBitmap : Bitmap.createScaledBitmap(createBitmap, (int) Math.ceil(createBitmap.getWidth() * sqrt), (int) Math.ceil(createBitmap.getHeight() * sqrt), false);
                    int width2 = createScaledBitmap.getWidth();
                    int height3 = createScaledBitmap.getHeight();
                    int[] iArr = new int[width2 * height3];
                    createScaledBitmap.getPixels(iArr, 0, width2, 0, 0, width2, height3);
                    ColorCutQuantizer colorCutQuantizer = new ColorCutQuantizer(iArr, arrayList2.isEmpty() ? null : (Palette.AnonymousClass1[]) arrayList2.toArray(new Palette.AnonymousClass1[arrayList2.size()]));
                    if (createScaledBitmap != createBitmap) {
                        createScaledBitmap.recycle();
                    }
                    SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                    ArrayMap arrayMap = new ArrayMap(0);
                    ArrayList arrayList3 = colorCutQuantizer.mQuantizedColors;
                    int size = arrayList3.size();
                    int i6 = Integer.MIN_VALUE;
                    Palette.Swatch swatch = null;
                    for (int i7 = 0; i7 < size; i7++) {
                        Palette.Swatch swatch2 = (Palette.Swatch) arrayList3.get(i7);
                        int i8 = swatch2.mPopulation;
                        if (i8 > i6) {
                            swatch = swatch2;
                            i6 = i8;
                        }
                    }
                    int size2 = arrayList.size();
                    int i9 = 0;
                    while (i9 < size2) {
                        Target target = (Target) arrayList.get(i9);
                        float[] fArr = target.mWeights;
                        float[] fArr2 = target.mSaturationTargets;
                        int i10 = i5;
                        int length = fArr.length;
                        float f2 = 0.0f;
                        for (int i11 = i10; i11 < length; i11++) {
                            float f3 = fArr[i11];
                            if (f3 > RecyclerView.DECELERATION_RATE) {
                                f2 += f3;
                            }
                        }
                        if (f2 != RecyclerView.DECELERATION_RATE) {
                            int length2 = fArr.length;
                            for (int i12 = i10; i12 < length2; i12++) {
                                float f4 = fArr[i12];
                                if (f4 > RecyclerView.DECELERATION_RATE) {
                                    fArr[i12] = f4 / f2;
                                }
                            }
                        }
                        int size3 = arrayList3.size();
                        int i13 = i10;
                        Palette.Swatch swatch3 = null;
                        float f5 = 0.0f;
                        while (i13 < size3) {
                            boolean z2 = z;
                            Palette.Swatch swatch4 = (Palette.Swatch) arrayList3.get(i13);
                            float[] hsl = swatch4.getHsl();
                            float f6 = hsl[z2 ? 1 : 0];
                            ArrayList arrayList4 = arrayList;
                            float[] fArr3 = target.mLightnessTargets;
                            if (f6 >= fArr2[i10] && f6 <= fArr2[2]) {
                                float f7 = hsl[2];
                                if (f7 >= fArr3[i10] && f7 <= fArr3[2] && !sparseBooleanArray.get(swatch4.mRgb)) {
                                    float[] hsl2 = swatch4.getHsl();
                                    int i14 = swatch != null ? swatch.mPopulation : z2 ? 1 : 0;
                                    i3 = size2;
                                    float[] fArr4 = target.mWeights;
                                    float f8 = fArr4[i10];
                                    float abs = f8 > RecyclerView.DECELERATION_RATE ? (1.0f - Math.abs(hsl2[z2 ? 1 : 0] - fArr2[z2 ? 1 : 0])) * f8 : 0.0f;
                                    float f9 = fArr4[z2 ? 1 : 0];
                                    float abs2 = f9 > RecyclerView.DECELERATION_RATE ? (1.0f - Math.abs(hsl2[2] - fArr3[z2 ? 1 : 0])) * f9 : 0.0f;
                                    float f10 = fArr4[2];
                                    float f11 = abs + abs2 + (f10 > RecyclerView.DECELERATION_RATE ? (swatch4.mPopulation / i14) * f10 : 0.0f);
                                    if (swatch3 == null || f11 > f5) {
                                        swatch3 = swatch4;
                                        f5 = f11;
                                    }
                                    i13++;
                                    arrayList = arrayList4;
                                    z = z2 ? 1 : 0;
                                    size2 = i3;
                                }
                            }
                            i3 = size2;
                            i13++;
                            arrayList = arrayList4;
                            z = z2 ? 1 : 0;
                            size2 = i3;
                        }
                        ArrayList arrayList5 = arrayList;
                        int i15 = size2;
                        boolean z3 = z;
                        if (swatch3 != null) {
                            sparseBooleanArray.append(swatch3.mRgb, z3);
                        }
                        arrayMap.put(target, swatch3);
                        i9++;
                        z = true;
                        i5 = i10;
                        arrayList = arrayList5;
                        size2 = i15;
                    }
                    int i16 = i5;
                    sparseBooleanArray.clear();
                    int color = suggestedEditsImageRecsFragment.requireContext().getColor(R.color.gray600);
                    Palette.Swatch swatch5 = (Palette.Swatch) arrayMap.get(Target.LIGHT_VIBRANT);
                    if (swatch5 != null) {
                        color = swatch5.mRgb;
                    }
                    int color2 = suggestedEditsImageRecsFragment.requireContext().getColor(R.color.gray300);
                    Palette.Swatch swatch6 = (Palette.Swatch) arrayMap.get(Target.LIGHT_MUTED);
                    if (swatch6 != null) {
                        color2 = swatch6.mRgb;
                    }
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    if (Jsoup.getInstance().currentTheme.isDark()) {
                        color = ColorUtils.blendARGB(color, 0.3f, -16777216);
                        color2 = ColorUtils.blendARGB(color2, 0.3f, -16777216);
                    }
                    GradientDrawable.Orientation orientation = GradientDrawable.Orientation.TOP_BOTTOM;
                    Integer valueOf = Integer.valueOf(color);
                    Integer valueOf2 = Integer.valueOf(color2);
                    Integer[] numArr = new Integer[2];
                    numArr[i16] = valueOf;
                    numArr[1] = valueOf2;
                    int[] iArr2 = new int[2];
                    int i17 = i16;
                    for (int i18 = 2; i17 < i18; i18 = 2) {
                        iArr2[i17] = numArr[i17].intValue();
                        i17++;
                    }
                    GradientDrawable gradientDrawable = new GradientDrawable(orientation, iArr2);
                    MapChangeReceiver mapChangeReceiver = suggestedEditsImageRecsFragment._binding;
                    mapChangeReceiver.getClass();
                    ((FrameLayout) mapChangeReceiver.onGlyphsErrorList).setBackground(gradientDrawable);
                    MapChangeReceiver mapChangeReceiver2 = suggestedEditsImageRecsFragment._binding;
                    mapChangeReceiver2.getClass();
                    ViewGroup.LayoutParams layoutParams3 = ((ImageView) mapChangeReceiver2.onStyleImageMissingListenerList).getLayoutParams();
                    layoutParams3.getClass();
                    FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                    MapChangeReceiver mapChangeReceiver3 = suggestedEditsImageRecsFragment._binding;
                    mapChangeReceiver3.getClass();
                    float width3 = ((FrameLayout) mapChangeReceiver3.onGlyphsErrorList).getWidth();
                    suggestedEditsImageRecsFragment._binding.getClass();
                    float f12 = i / i2;
                    if (f12 > width3 / ((FrameLayout) r5.onGlyphsErrorList).getHeight()) {
                        layoutParams4.setMarginEnd(Okio__OkioKt.roundedDpToPx(8.0f));
                    } else {
                        suggestedEditsImageRecsFragment._binding.getClass();
                        float height4 = ((FrameLayout) r2.onGlyphsErrorList).getHeight() * f12;
                        int roundedDpToPx2 = Okio__OkioKt.roundedDpToPx(8.0f);
                        MapChangeReceiver mapChangeReceiver4 = suggestedEditsImageRecsFragment._binding;
                        mapChangeReceiver4.getClass();
                        layoutParams4.setMarginEnd(((((FrameLayout) mapChangeReceiver4.onGlyphsErrorList).getWidth() / 2) - (((int) height4) / 2)) + roundedDpToPx2);
                    }
                    MapChangeReceiver mapChangeReceiver5 = suggestedEditsImageRecsFragment._binding;
                    mapChangeReceiver5.getClass();
                    ((ImageView) mapChangeReceiver5.onStyleImageMissingListenerList).setLayoutParams(layoutParams4);
                    return;
                }
                return;
        }
    }

    public void onViewClick(SuggestedEditsTask suggestedEditsTask, boolean z) {
        SuggestedEditsTasksFragment suggestedEditsTasksFragment = (SuggestedEditsTasksFragment) this.player;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (((ArrayList) ViewSizeResolver$CC.m785m()).size() < 2 && z) {
            Fragment.AnonymousClass10 anonymousClass10 = suggestedEditsTasksFragment.requestAddLanguage;
            int i = WikipediaLanguagesActivity.$r8$clinit;
            anonymousClass10.launch(Cache.Companion.newIntent(suggestedEditsTasksFragment.requireActivity(), Constants.InvokeSource.SUGGESTED_EDITS), null);
            return;
        }
        SuggestedEditsTask suggestedEditsTask2 = suggestedEditsTasksFragment.addDescriptionsTask;
        if (suggestedEditsTask2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addDescriptionsTask");
            throw null;
        }
        if (suggestedEditsTask == suggestedEditsTask2) {
            WikiGamesEvent.submit$default("edit_home", z ? "desc_translate_click" : "desc_add_click", Integer.valueOf(suggestedEditsTasksFragment.getViewModel().totalContributions), null, null, null, null, null, null, null, null, null, 16372);
            int i2 = SuggestionsActivity.$r8$clinit;
            suggestedEditsTasksFragment.startActivity(Cookie.Companion.newIntent(suggestedEditsTasksFragment.requireActivity(), z ? DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION : DescriptionEditActivity.Action.ADD_DESCRIPTION), null);
            return;
        }
        SuggestedEditsTask suggestedEditsTask3 = suggestedEditsTasksFragment.addImageCaptionsTask;
        if (suggestedEditsTask3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addImageCaptionsTask");
            throw null;
        }
        if (suggestedEditsTask == suggestedEditsTask3) {
            WikiGamesEvent.submit$default("edit_home", z ? "caption_translate_click" : "caption_add_click", Integer.valueOf(suggestedEditsTasksFragment.getViewModel().totalContributions), null, null, null, null, null, null, null, null, null, 16372);
            int i3 = SuggestionsActivity.$r8$clinit;
            suggestedEditsTasksFragment.startActivity(Cookie.Companion.newIntent(suggestedEditsTasksFragment.requireActivity(), z ? DescriptionEditActivity.Action.TRANSLATE_CAPTION : DescriptionEditActivity.Action.ADD_CAPTION), null);
            return;
        }
        SuggestedEditsTask suggestedEditsTask4 = suggestedEditsTasksFragment.addImageTagsTask;
        if (suggestedEditsTask4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("addImageTagsTask");
            throw null;
        }
        if (suggestedEditsTask == suggestedEditsTask4) {
            WikiGamesEvent.submit$default("edit_home", "image_tag_add_click", Integer.valueOf(suggestedEditsTasksFragment.getViewModel().totalContributions), null, null, null, null, null, null, null, null, null, 16372);
            Prefs prefs = Prefs.INSTANCE;
            if (!Prefs.getShowImageTagsOnboarding()) {
                int i4 = SuggestionsActivity.$r8$clinit;
                suggestedEditsTasksFragment.startActivity(Cookie.Companion.newIntent(suggestedEditsTasksFragment.requireActivity(), DescriptionEditActivity.Action.ADD_IMAGE_TAGS), null);
                return;
            } else {
                Fragment.AnonymousClass10 anonymousClass102 = suggestedEditsTasksFragment.requestAddImageTags;
                int i5 = SuggestedEditsImageTagsOnboardingActivity.$r8$clinit;
                anonymousClass102.launch(new Intent(suggestedEditsTasksFragment.requireContext(), (Class<?>) SuggestedEditsImageTagsOnboardingActivity.class), null);
                return;
            }
        }
        SuggestedEditsTask suggestedEditsTask5 = suggestedEditsTasksFragment.imageRecommendationsTask;
        if (suggestedEditsTask5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("imageRecommendationsTask");
            throw null;
        }
        if (suggestedEditsTask == suggestedEditsTask5) {
            WikiGamesEvent.submit$default("edit_home", "image_add_click", Integer.valueOf(suggestedEditsTasksFragment.getViewModel().totalContributions), null, null, null, null, null, null, null, null, null, 16372);
            int i6 = SuggestionsActivity.$r8$clinit;
            suggestedEditsTasksFragment.startActivity(Cookie.Companion.newIntent(suggestedEditsTasksFragment.requireActivity(), DescriptionEditActivity.Action.IMAGE_RECOMMENDATIONS), null);
            return;
        }
        SuggestedEditsTask suggestedEditsTask6 = suggestedEditsTasksFragment.vandalismPatrolTask;
        if (suggestedEditsTask6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("vandalismPatrolTask");
            throw null;
        }
        if (suggestedEditsTask != suggestedEditsTask6) {
            return;
        }
        WikiGamesEvent.submit$default("edit_home", "edit_patrol_click", Integer.valueOf(suggestedEditsTasksFragment.getViewModel().totalContributions), null, null, null, null, null, null, null, null, null, 16372);
        int i7 = SuggestedEditsRecentEditsActivity.$r8$clinit;
        suggestedEditsTasksFragment.startActivity(new Intent(suggestedEditsTasksFragment.requireContext(), (Class<?>) SuggestedEditsRecentEditsActivity.class), null);
    }

    @Override // org.wikipedia.login.LoginClient.LoginCallback
    public void success(LoginResult loginResult) {
        loginResult.getClass();
        ResetPasswordActivity resetPasswordActivity = (ResetPasswordActivity) this.player;
        int i = ResetPasswordActivity.$r8$clinit;
        resetPasswordActivity.showProgressBar$3(false);
        String str = loginResult.status;
        if (!"PASS".equals(str)) {
            if ("FAIL".equals(str)) {
                String str2 = loginResult.message;
                str2.getClass();
                ShareUtil.showMessage(resetPasswordActivity, str2, 0);
                L.LEVEL_W.log("Login failed with result ".concat(str2), null);
                return;
            }
            return;
        }
        Intent intent = resetPasswordActivity.getIntent();
        intent.getClass();
        Headers.Companion.updateAccount((AccountAuthenticatorResponse) ((Parcelable) DpKt.getParcelableExtra(intent, "accountAuthenticatorResponse", AccountAuthenticatorResponse.class)), loginResult);
        Window window = resetPasswordActivity.getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i2 = Build.VERSION.SDK_INT;
        (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        resetPasswordActivity.setResult(-1);
        resetPasswordActivity.finish();
    }

    @Override // org.wikipedia.login.LoginClient.LoginCallback
    public void uiPrompt(LoginResult loginResult, LoginFailedException loginFailedException, String str, String str2) {
        loginResult.getClass();
        ResetPasswordActivity resetPasswordActivity = (ResetPasswordActivity) this.player;
        int i = ResetPasswordActivity.$r8$clinit;
        resetPasswordActivity.showProgressBar$3(false);
        if (str2 == null) {
            str2 = "";
        }
        resetPasswordActivity.firstStepToken = str2;
        resetPasswordActivity.uiPromptResult = loginResult;
        GsonBuilder gsonBuilder = resetPasswordActivity.binding;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) gsonBuilder.excluder).setHint(resetPasswordActivity.getString(loginResult instanceof LoginEmailAuthResult ? R.string.login_email_auth_hint : R.string.login_2fa_hint));
        GsonBuilder gsonBuilder2 = resetPasswordActivity.binding;
        if (gsonBuilder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) gsonBuilder2.excluder).setVisibility(0);
        GsonBuilder gsonBuilder3 = resetPasswordActivity.binding;
        if (gsonBuilder3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        EditText editText = ((TextInputLayout) gsonBuilder3.excluder).getEditText();
        if (editText != null) {
            editText.setText("");
        }
        GsonBuilder gsonBuilder4 = resetPasswordActivity.binding;
        if (gsonBuilder4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((TextInputLayout) gsonBuilder4.excluder).requestFocus();
        Window window = resetPasswordActivity.getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i2 = Build.VERSION.SDK_INT;
        (i2 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i2 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i2 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        ShareUtil.showError$default(resetPasswordActivity, loginFailedException);
    }

    private final void onRemoveRequest$org$wikipedia$feed$onthisday$OnThisDayPagesViewHolder$showOverflowMenu$1$1() {
    }

    private final void onRemoveRequest$org$wikipedia$feed$view$ListItemView$2$1() {
    }

    private final void onRemoveRequest$org$wikipedia$places$PlacesFragment$RecyclerViewItemHolder$onLongClick$1() {
    }

    private final void onShareRequest$org$wikipedia$feed$onthisday$OnThisDayPagesViewHolder$showOverflowMenu$1$1() {
    }

    private final void onShareRequest$org$wikipedia$feed$view$ListItemView$2$1() {
    }

    private final void onShareRequest$org$wikipedia$places$PlacesFragment$RecyclerViewItemHolder$onLongClick$1() {
    }

    private final void onError$org$wikipedia$suggestededits$SuggestedEditsImageRecsFragment$onLoadSuccess$1(Throwable th) {
    }

    private final void onListChipClick$org$wikipedia$history$HistoryFragment$ItemCallback(ReadingList readingList) {
    }

    private final void onListChipClick$org$wikipedia$talk$ArchivedTalkPagesActivity$ItemCallback(ReadingList readingList) {
    }

    @Override // org.wikipedia.login.LoginClient.LoginCallback
    public void passwordResetPrompt(String str) {
    }

    public /* synthetic */ AvPlayer(int i, Object obj) {
        this.$r8$classId = i;
        this.player = obj;
    }

    public AvPlayer(TalkTemplateDao_Impl talkTemplateDao_Impl) {
        this.$r8$classId = 25;
        talkTemplateDao_Impl.getClass();
        this.player = talkTemplateDao_Impl;
    }

    public AvPlayer(NotificationDao_Impl notificationDao_Impl) {
        this.$r8$classId = 15;
        notificationDao_Impl.getClass();
        this.player = notificationDao_Impl;
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onError(ImageRequest imageRequest, ErrorResult errorResult) {
        imageRequest.getClass();
        ((ImageLoadListener) this.player).onError(errorResult.throwable);
    }

    @Override // org.wikipedia.feed.view.ListItemView.Callback
    public void onSelectPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z) {
        int i = this.$r8$classId;
        Object obj = this.player;
        switch (i) {
            case 5:
                NewsFragment newsFragment = (NewsFragment) obj;
                pageTitle.getClass();
                historyEntry.getClass();
                if (z) {
                    TabUtil.openInNewBackgroundTab(historyEntry);
                    ShareUtil.showMessage(newsFragment.requireActivity(), R.string.article_opened_in_background_tab);
                    break;
                } else {
                    int i2 = PageActivity.$r8$clinit;
                    newsFragment.startActivity(LoginClient.newIntentForNewTab(newsFragment.requireContext(), historyEntry, historyEntry.getTitle()), null);
                    break;
                }
            default:
                TopReadFragment topReadFragment = (TopReadFragment) obj;
                pageTitle.getClass();
                historyEntry.getClass();
                if (z) {
                    TabUtil.openInNewBackgroundTab(historyEntry);
                    ShareUtil.showMessage(topReadFragment.requireActivity(), R.string.article_opened_in_background_tab);
                    break;
                } else {
                    int i3 = PageActivity.$r8$clinit;
                    topReadFragment.startActivity(LoginClient.newIntentForNewTab(topReadFragment.requireContext(), historyEntry, historyEntry.getTitle()), null);
                    break;
                }
        }
    }

    @Override // coil3.request.ImageRequest.Listener
    public void onSuccess(ImageRequest imageRequest, SuccessResult successResult) {
        imageRequest.getClass();
        ImageLoadListener imageLoadListener = (ImageLoadListener) this.player;
        Image image = successResult.image;
        imageLoadListener.onSuccess(image.getWidth(), image.getHeight(), successResult);
    }

    @Override // org.wikipedia.gallery.MediaDownloadReceiver.Callback
    public void onSuccess() {
        int i = this.$r8$classId;
        Object obj = this.player;
        switch (i) {
            case 9:
                ShareUtil.showMessage((GalleryActivity) obj, R.string.gallery_save_success);
                break;
            default:
                ShareUtil.showMessage(((MainFragment) obj).requireActivity(), R.string.gallery_save_success);
                break;
        }
    }
}
