package org.wikipedia.page;

import android.app.assist.AssistContent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.compose.ui.unit.DpKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ActivityOptionsCompat$ActivityOptionsCompatImpl;
import androidx.core.view.ViewCompat;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.drawerlayout.widget.FixedDrawerLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.FragmentManager$1;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.Schedulers$$ExternalSyntheticLambda1;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textview.MaterialTextView;
import j$.time.LocalDateTime;
import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.wikimedia.testkitchen.TestKitchenClient;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent;
import org.wikipedia.analytics.testkitchen.TestKitchenAdapter;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.databinding.ViewWikiArticleCardBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.descriptions.DescriptionEditRevertHelpView;
import org.wikipedia.donate.DonationResult;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.action.PageActionItem;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.page.shareafact.ShareHandler;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.page.tabs.TabActivity;
import org.wikipedia.readinglist.ReadingListActivity;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.search.HybridSearchAbCTest;
import org.wikipedia.search.SearchActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.MainPageNameData;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.suggestededits.SuggestedEditsSnackbars;
import org.wikipedia.talk.TalkTopicActivity$showUndoSnackbar$2;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.FrameLayoutNavMenuTriggerer;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.PageActionOverflowView;
import org.wikipedia.views.PageScrollerView;
import org.wikipedia.views.SwipeableListView;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.views.ViewUtil$$ExternalSyntheticLambda0;
import org.wikipedia.views.WikiArticleCardView;
import org.wikipedia.wiktionary.WiktionaryDialog;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u0007\bB\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lorg/wikipedia/page/PageActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/page/PageFragment$Callback;", "Lorg/wikipedia/page/linkpreview/LinkPreviewDialog$LoadPageCallback;", "Lorg/wikipedia/views/FrameLayoutNavMenuTriggerer$Callback;", "<init>", "()V", "TabPosition", "org/wikipedia/login/LoginClient", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PageActivity extends BaseActivity implements PageFragment.Callback, LinkPreviewDialog.LoadPageCallback, FrameLayoutNavMenuTriggerer.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public WikipediaApp app;
    public ActivityPageBinding binding;
    public PageActivity$$ExternalSyntheticLambda12 exclusiveTooltipRunnable;
    public boolean hasTransitionAnimation;
    public boolean isTooltipShowing;
    public PageFragment pageFragment;
    public final ActivityResultRegistry$register$2 requestBrowseTabLauncher;
    public final ActivityResultRegistry$register$2 requestEditSectionLauncher;
    public final ActivityResultRegistry$register$2 requestGalleryEditLauncher;
    public final ActivityResultRegistry$register$2 requestHandleIntentLauncher;
    public final ActivityResultRegistry$register$2 requestSuggestedEditsLauncher;
    public ViewHideHandler toolbarHideHandler;
    public boolean wasTransitionShown;
    public final LinkedHashSet currentActionModes = new LinkedHashSet();
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(8, this);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TabPosition {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TabPosition[] $VALUES;
        public static final TabPosition CURRENT_TAB;
        public static final TabPosition CURRENT_TAB_SQUASH;
        public static final TabPosition EXISTING_TAB;
        public static final TabPosition NEW_TAB_BACKGROUND;
        public static final TabPosition NEW_TAB_FOREGROUND;

        static {
            TabPosition tabPosition = new TabPosition("CURRENT_TAB", 0);
            CURRENT_TAB = tabPosition;
            TabPosition tabPosition2 = new TabPosition("CURRENT_TAB_SQUASH", 1);
            CURRENT_TAB_SQUASH = tabPosition2;
            TabPosition tabPosition3 = new TabPosition("NEW_TAB_BACKGROUND", 2);
            NEW_TAB_BACKGROUND = tabPosition3;
            TabPosition tabPosition4 = new TabPosition("NEW_TAB_FOREGROUND", 3);
            NEW_TAB_FOREGROUND = tabPosition4;
            TabPosition tabPosition5 = new TabPosition("EXISTING_TAB", 4);
            EXISTING_TAB = tabPosition5;
            TabPosition[] tabPositionArr = {tabPosition, tabPosition2, tabPosition3, tabPosition4, tabPosition5};
            $VALUES = tabPositionArr;
            $ENTRIES = new EnumEntriesList(tabPositionArr);
        }

        public static TabPosition valueOf(String str) {
            return (TabPosition) Enum.valueOf(TabPosition.class, str);
        }

        public static TabPosition[] values() {
            return (TabPosition[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TabPosition.values().length];
            try {
                iArr[TabPosition.CURRENT_TAB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TabPosition.CURRENT_TAB_SQUASH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TabPosition.NEW_TAB_BACKGROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TabPosition.NEW_TAB_FOREGROUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PageActivity() {
        final int i = 3;
        final int i2 = 0;
        this.requestEditSectionLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ PageActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                HistoryEntry historyEntry;
                Intent intent;
                int i3 = i2;
                PageActivity pageActivity = this.f$0;
                DescriptionEditActivity.Action action = null;
                int i4 = 1;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i3) {
                    case 0:
                        int i5 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == 1) {
                            String string = pageActivity.getString(R.string.edit_saved_successfully);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(pageActivity, string, 0, 12);
                            makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(pageActivity, i4));
                            makeSnackbar$default.show();
                            PageFragment pageFragment = pageActivity.pageFragment;
                            if (pageFragment == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageViewModel pageViewModel = pageFragment.model;
                            PageTitle pageTitle = (PageTitle) pageViewModel.title;
                            if (pageTitle == null || (historyEntry = (HistoryEntry) pageViewModel.curEntry) == null) {
                                return;
                            }
                            pageFragment.loadPage(pageTitle, historyEntry, false, false, true);
                            return;
                        }
                        return;
                    case 1:
                        int i6 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i7 = activityResult.resultCode;
                        if ((i7 == 1 || i7 == 1) && (intent = activityResult.data) != null) {
                            ((FrameLayout) pageActivity.getBinding().pageToolbarContainer).post(new Processor$$ExternalSyntheticLambda2(24, pageActivity, intent));
                            return;
                        }
                        return;
                    case 2:
                        int i8 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i9 = activityResult.resultCode;
                        if (i9 == 2 || i9 == 3) {
                            PageFragment pageFragment2 = pageActivity.pageFragment;
                            if (pageFragment2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                            pageFragment2.reloadFromBackstack(true);
                            return;
                        }
                        return;
                    case 3:
                        int i11 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i12 = activityResult.resultCode;
                        WikipediaApp wikipediaApp = pageActivity.app;
                        if (wikipediaApp == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("app");
                            throw null;
                        }
                        if (wikipediaApp.getTabCount() == 0 && i12 != 11) {
                            pageActivity.finish();
                            return;
                        }
                        if (i12 == 11) {
                            pageActivity.loadMainPage(PageActivity.TabPosition.NEW_TAB_FOREGROUND);
                            ViewHideHandler viewHideHandler = pageActivity.toolbarHideHandler;
                            if (viewHideHandler == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                                throw null;
                            }
                            viewHideHandler.ensureDisplayed();
                            ((TabCountsView) pageActivity.getBinding().pageToolbarButtonTabs).updateTabCount(true);
                            return;
                        }
                        if (i12 == 10) {
                            PageFragment pageFragment3 = pageActivity.pageFragment;
                            if (pageFragment3 != null) {
                                pageFragment3.reloadFromBackstack(false);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                        }
                        return;
                    default:
                        int i13 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i14 = activityResult.resultCode;
                        if (i14 == -1 || i14 == 1) {
                            PageActivity pageActivity2 = this.f$0;
                            PageFragment pageFragment4 = pageActivity2.pageFragment;
                            if (pageFragment4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageFragment.refreshPage$default(pageFragment4);
                            Intent intent2 = activityResult.data;
                            PageFragment pageFragment5 = pageActivity2.pageFragment;
                            if (pageFragment5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            String leadImageEditLang = pageFragment5.getLeadImageEditLang();
                            if (leadImageEditLang == null) {
                                leadImageEditLang = "";
                            }
                            if (leadImageEditLang.length() == 0) {
                                WikipediaApp wikipediaApp2 = pageActivity2.app;
                                if (wikipediaApp2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("app");
                                    throw null;
                                }
                                leadImageEditLang = wikipediaApp2.getLanguageState().getAppLanguageCode();
                            }
                            String str = leadImageEditLang;
                            if (intent2 != null && intent2.hasExtra("intentAction")) {
                                action = (DescriptionEditActivity.Action) intent2.getSerializableExtra("intentAction");
                            }
                            DescriptionEditActivity.Action action2 = action;
                            LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                            SuggestedEditsSnackbars.show(pageActivity2, action2, i14 != 1, str, (action2 == DescriptionEditActivity.Action.ADD_DESCRIPTION || action2 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) ? false : true, new TextLinkScope$$ExternalSyntheticLambda3(9, pageActivity2, action2));
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i));
        final int i3 = 1;
        this.requestHandleIntentLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ PageActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                HistoryEntry historyEntry;
                Intent intent;
                int i32 = i3;
                PageActivity pageActivity = this.f$0;
                DescriptionEditActivity.Action action = null;
                int i4 = 1;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i32) {
                    case 0:
                        int i5 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == 1) {
                            String string = pageActivity.getString(R.string.edit_saved_successfully);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(pageActivity, string, 0, 12);
                            makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(pageActivity, i4));
                            makeSnackbar$default.show();
                            PageFragment pageFragment = pageActivity.pageFragment;
                            if (pageFragment == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageViewModel pageViewModel = pageFragment.model;
                            PageTitle pageTitle = (PageTitle) pageViewModel.title;
                            if (pageTitle == null || (historyEntry = (HistoryEntry) pageViewModel.curEntry) == null) {
                                return;
                            }
                            pageFragment.loadPage(pageTitle, historyEntry, false, false, true);
                            return;
                        }
                        return;
                    case 1:
                        int i6 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i7 = activityResult.resultCode;
                        if ((i7 == 1 || i7 == 1) && (intent = activityResult.data) != null) {
                            ((FrameLayout) pageActivity.getBinding().pageToolbarContainer).post(new Processor$$ExternalSyntheticLambda2(24, pageActivity, intent));
                            return;
                        }
                        return;
                    case 2:
                        int i8 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i9 = activityResult.resultCode;
                        if (i9 == 2 || i9 == 3) {
                            PageFragment pageFragment2 = pageActivity.pageFragment;
                            if (pageFragment2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                            pageFragment2.reloadFromBackstack(true);
                            return;
                        }
                        return;
                    case 3:
                        int i11 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i12 = activityResult.resultCode;
                        WikipediaApp wikipediaApp = pageActivity.app;
                        if (wikipediaApp == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("app");
                            throw null;
                        }
                        if (wikipediaApp.getTabCount() == 0 && i12 != 11) {
                            pageActivity.finish();
                            return;
                        }
                        if (i12 == 11) {
                            pageActivity.loadMainPage(PageActivity.TabPosition.NEW_TAB_FOREGROUND);
                            ViewHideHandler viewHideHandler = pageActivity.toolbarHideHandler;
                            if (viewHideHandler == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                                throw null;
                            }
                            viewHideHandler.ensureDisplayed();
                            ((TabCountsView) pageActivity.getBinding().pageToolbarButtonTabs).updateTabCount(true);
                            return;
                        }
                        if (i12 == 10) {
                            PageFragment pageFragment3 = pageActivity.pageFragment;
                            if (pageFragment3 != null) {
                                pageFragment3.reloadFromBackstack(false);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                        }
                        return;
                    default:
                        int i13 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i14 = activityResult.resultCode;
                        if (i14 == -1 || i14 == 1) {
                            PageActivity pageActivity2 = this.f$0;
                            PageFragment pageFragment4 = pageActivity2.pageFragment;
                            if (pageFragment4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageFragment.refreshPage$default(pageFragment4);
                            Intent intent2 = activityResult.data;
                            PageFragment pageFragment5 = pageActivity2.pageFragment;
                            if (pageFragment5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            String leadImageEditLang = pageFragment5.getLeadImageEditLang();
                            if (leadImageEditLang == null) {
                                leadImageEditLang = "";
                            }
                            if (leadImageEditLang.length() == 0) {
                                WikipediaApp wikipediaApp2 = pageActivity2.app;
                                if (wikipediaApp2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("app");
                                    throw null;
                                }
                                leadImageEditLang = wikipediaApp2.getLanguageState().getAppLanguageCode();
                            }
                            String str = leadImageEditLang;
                            if (intent2 != null && intent2.hasExtra("intentAction")) {
                                action = (DescriptionEditActivity.Action) intent2.getSerializableExtra("intentAction");
                            }
                            DescriptionEditActivity.Action action2 = action;
                            LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                            SuggestedEditsSnackbars.show(pageActivity2, action2, i14 != 1, str, (action2 == DescriptionEditActivity.Action.ADD_DESCRIPTION || action2 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) ? false : true, new TextLinkScope$$ExternalSyntheticLambda3(9, pageActivity2, action2));
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i));
        final int i4 = 2;
        this.requestGalleryEditLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ PageActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                HistoryEntry historyEntry;
                Intent intent;
                int i32 = i4;
                PageActivity pageActivity = this.f$0;
                DescriptionEditActivity.Action action = null;
                int i42 = 1;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i32) {
                    case 0:
                        int i5 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == 1) {
                            String string = pageActivity.getString(R.string.edit_saved_successfully);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(pageActivity, string, 0, 12);
                            makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(pageActivity, i42));
                            makeSnackbar$default.show();
                            PageFragment pageFragment = pageActivity.pageFragment;
                            if (pageFragment == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageViewModel pageViewModel = pageFragment.model;
                            PageTitle pageTitle = (PageTitle) pageViewModel.title;
                            if (pageTitle == null || (historyEntry = (HistoryEntry) pageViewModel.curEntry) == null) {
                                return;
                            }
                            pageFragment.loadPage(pageTitle, historyEntry, false, false, true);
                            return;
                        }
                        return;
                    case 1:
                        int i6 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i7 = activityResult.resultCode;
                        if ((i7 == 1 || i7 == 1) && (intent = activityResult.data) != null) {
                            ((FrameLayout) pageActivity.getBinding().pageToolbarContainer).post(new Processor$$ExternalSyntheticLambda2(24, pageActivity, intent));
                            return;
                        }
                        return;
                    case 2:
                        int i8 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i9 = activityResult.resultCode;
                        if (i9 == 2 || i9 == 3) {
                            PageFragment pageFragment2 = pageActivity.pageFragment;
                            if (pageFragment2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                            pageFragment2.reloadFromBackstack(true);
                            return;
                        }
                        return;
                    case 3:
                        int i11 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i12 = activityResult.resultCode;
                        WikipediaApp wikipediaApp = pageActivity.app;
                        if (wikipediaApp == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("app");
                            throw null;
                        }
                        if (wikipediaApp.getTabCount() == 0 && i12 != 11) {
                            pageActivity.finish();
                            return;
                        }
                        if (i12 == 11) {
                            pageActivity.loadMainPage(PageActivity.TabPosition.NEW_TAB_FOREGROUND);
                            ViewHideHandler viewHideHandler = pageActivity.toolbarHideHandler;
                            if (viewHideHandler == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                                throw null;
                            }
                            viewHideHandler.ensureDisplayed();
                            ((TabCountsView) pageActivity.getBinding().pageToolbarButtonTabs).updateTabCount(true);
                            return;
                        }
                        if (i12 == 10) {
                            PageFragment pageFragment3 = pageActivity.pageFragment;
                            if (pageFragment3 != null) {
                                pageFragment3.reloadFromBackstack(false);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                        }
                        return;
                    default:
                        int i13 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i14 = activityResult.resultCode;
                        if (i14 == -1 || i14 == 1) {
                            PageActivity pageActivity2 = this.f$0;
                            PageFragment pageFragment4 = pageActivity2.pageFragment;
                            if (pageFragment4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageFragment.refreshPage$default(pageFragment4);
                            Intent intent2 = activityResult.data;
                            PageFragment pageFragment5 = pageActivity2.pageFragment;
                            if (pageFragment5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            String leadImageEditLang = pageFragment5.getLeadImageEditLang();
                            if (leadImageEditLang == null) {
                                leadImageEditLang = "";
                            }
                            if (leadImageEditLang.length() == 0) {
                                WikipediaApp wikipediaApp2 = pageActivity2.app;
                                if (wikipediaApp2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("app");
                                    throw null;
                                }
                                leadImageEditLang = wikipediaApp2.getLanguageState().getAppLanguageCode();
                            }
                            String str = leadImageEditLang;
                            if (intent2 != null && intent2.hasExtra("intentAction")) {
                                action = (DescriptionEditActivity.Action) intent2.getSerializableExtra("intentAction");
                            }
                            DescriptionEditActivity.Action action2 = action;
                            LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                            SuggestedEditsSnackbars.show(pageActivity2, action2, i14 != 1, str, (action2 == DescriptionEditActivity.Action.ADD_DESCRIPTION || action2 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) ? false : true, new TextLinkScope$$ExternalSyntheticLambda3(9, pageActivity2, action2));
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i));
        this.requestBrowseTabLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ PageActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                HistoryEntry historyEntry;
                Intent intent;
                int i32 = i;
                PageActivity pageActivity = this.f$0;
                DescriptionEditActivity.Action action = null;
                int i42 = 1;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i32) {
                    case 0:
                        int i5 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == 1) {
                            String string = pageActivity.getString(R.string.edit_saved_successfully);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(pageActivity, string, 0, 12);
                            makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(pageActivity, i42));
                            makeSnackbar$default.show();
                            PageFragment pageFragment = pageActivity.pageFragment;
                            if (pageFragment == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageViewModel pageViewModel = pageFragment.model;
                            PageTitle pageTitle = (PageTitle) pageViewModel.title;
                            if (pageTitle == null || (historyEntry = (HistoryEntry) pageViewModel.curEntry) == null) {
                                return;
                            }
                            pageFragment.loadPage(pageTitle, historyEntry, false, false, true);
                            return;
                        }
                        return;
                    case 1:
                        int i6 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i7 = activityResult.resultCode;
                        if ((i7 == 1 || i7 == 1) && (intent = activityResult.data) != null) {
                            ((FrameLayout) pageActivity.getBinding().pageToolbarContainer).post(new Processor$$ExternalSyntheticLambda2(24, pageActivity, intent));
                            return;
                        }
                        return;
                    case 2:
                        int i8 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i9 = activityResult.resultCode;
                        if (i9 == 2 || i9 == 3) {
                            PageFragment pageFragment2 = pageActivity.pageFragment;
                            if (pageFragment2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                            pageFragment2.reloadFromBackstack(true);
                            return;
                        }
                        return;
                    case 3:
                        int i11 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i12 = activityResult.resultCode;
                        WikipediaApp wikipediaApp = pageActivity.app;
                        if (wikipediaApp == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("app");
                            throw null;
                        }
                        if (wikipediaApp.getTabCount() == 0 && i12 != 11) {
                            pageActivity.finish();
                            return;
                        }
                        if (i12 == 11) {
                            pageActivity.loadMainPage(PageActivity.TabPosition.NEW_TAB_FOREGROUND);
                            ViewHideHandler viewHideHandler = pageActivity.toolbarHideHandler;
                            if (viewHideHandler == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                                throw null;
                            }
                            viewHideHandler.ensureDisplayed();
                            ((TabCountsView) pageActivity.getBinding().pageToolbarButtonTabs).updateTabCount(true);
                            return;
                        }
                        if (i12 == 10) {
                            PageFragment pageFragment3 = pageActivity.pageFragment;
                            if (pageFragment3 != null) {
                                pageFragment3.reloadFromBackstack(false);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                        }
                        return;
                    default:
                        int i13 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i14 = activityResult.resultCode;
                        if (i14 == -1 || i14 == 1) {
                            PageActivity pageActivity2 = this.f$0;
                            PageFragment pageFragment4 = pageActivity2.pageFragment;
                            if (pageFragment4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageFragment.refreshPage$default(pageFragment4);
                            Intent intent2 = activityResult.data;
                            PageFragment pageFragment5 = pageActivity2.pageFragment;
                            if (pageFragment5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            String leadImageEditLang = pageFragment5.getLeadImageEditLang();
                            if (leadImageEditLang == null) {
                                leadImageEditLang = "";
                            }
                            if (leadImageEditLang.length() == 0) {
                                WikipediaApp wikipediaApp2 = pageActivity2.app;
                                if (wikipediaApp2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("app");
                                    throw null;
                                }
                                leadImageEditLang = wikipediaApp2.getLanguageState().getAppLanguageCode();
                            }
                            String str = leadImageEditLang;
                            if (intent2 != null && intent2.hasExtra("intentAction")) {
                                action = (DescriptionEditActivity.Action) intent2.getSerializableExtra("intentAction");
                            }
                            DescriptionEditActivity.Action action2 = action;
                            LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                            SuggestedEditsSnackbars.show(pageActivity2, action2, i14 != 1, str, (action2 == DescriptionEditActivity.Action.ADD_DESCRIPTION || action2 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) ? false : true, new TextLinkScope$$ExternalSyntheticLambda3(9, pageActivity2, action2));
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i));
        final int i5 = 4;
        this.requestSuggestedEditsLauncher = (ActivityResultRegistry$register$2) registerForActivityResult(new ActivityResultCallback(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ PageActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                HistoryEntry historyEntry;
                Intent intent;
                int i32 = i5;
                PageActivity pageActivity = this.f$0;
                DescriptionEditActivity.Action action = null;
                int i42 = 1;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i32) {
                    case 0:
                        int i52 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        if (activityResult.resultCode == 1) {
                            String string = pageActivity.getString(R.string.edit_saved_successfully);
                            string.getClass();
                            Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(pageActivity, string, 0, 12);
                            makeSnackbar$default.addCallback(new TalkTopicActivity$showUndoSnackbar$2(pageActivity, i42));
                            makeSnackbar$default.show();
                            PageFragment pageFragment = pageActivity.pageFragment;
                            if (pageFragment == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageViewModel pageViewModel = pageFragment.model;
                            PageTitle pageTitle = (PageTitle) pageViewModel.title;
                            if (pageTitle == null || (historyEntry = (HistoryEntry) pageViewModel.curEntry) == null) {
                                return;
                            }
                            pageFragment.loadPage(pageTitle, historyEntry, false, false, true);
                            return;
                        }
                        return;
                    case 1:
                        int i6 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i7 = activityResult.resultCode;
                        if ((i7 == 1 || i7 == 1) && (intent = activityResult.data) != null) {
                            ((FrameLayout) pageActivity.getBinding().pageToolbarContainer).post(new Processor$$ExternalSyntheticLambda2(24, pageActivity, intent));
                            return;
                        }
                        return;
                    case 2:
                        int i8 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i9 = activityResult.resultCode;
                        if (i9 == 2 || i9 == 3) {
                            PageFragment pageFragment2 = pageActivity.pageFragment;
                            if (pageFragment2 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                            pageFragment2.reloadFromBackstack(true);
                            return;
                        }
                        return;
                    case 3:
                        int i11 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i12 = activityResult.resultCode;
                        WikipediaApp wikipediaApp = pageActivity.app;
                        if (wikipediaApp == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("app");
                            throw null;
                        }
                        if (wikipediaApp.getTabCount() == 0 && i12 != 11) {
                            pageActivity.finish();
                            return;
                        }
                        if (i12 == 11) {
                            pageActivity.loadMainPage(PageActivity.TabPosition.NEW_TAB_FOREGROUND);
                            ViewHideHandler viewHideHandler = pageActivity.toolbarHideHandler;
                            if (viewHideHandler == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                                throw null;
                            }
                            viewHideHandler.ensureDisplayed();
                            ((TabCountsView) pageActivity.getBinding().pageToolbarButtonTabs).updateTabCount(true);
                            return;
                        }
                        if (i12 == 10) {
                            PageFragment pageFragment3 = pageActivity.pageFragment;
                            if (pageFragment3 != null) {
                                pageFragment3.reloadFromBackstack(false);
                                return;
                            } else {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                        }
                        return;
                    default:
                        int i13 = PageActivity.$r8$clinit;
                        activityResult.getClass();
                        int i14 = activityResult.resultCode;
                        if (i14 == -1 || i14 == 1) {
                            PageActivity pageActivity2 = this.f$0;
                            PageFragment pageFragment4 = pageActivity2.pageFragment;
                            if (pageFragment4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            PageFragment.refreshPage$default(pageFragment4);
                            Intent intent2 = activityResult.data;
                            PageFragment pageFragment5 = pageActivity2.pageFragment;
                            if (pageFragment5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                throw null;
                            }
                            String leadImageEditLang = pageFragment5.getLeadImageEditLang();
                            if (leadImageEditLang == null) {
                                leadImageEditLang = "";
                            }
                            if (leadImageEditLang.length() == 0) {
                                WikipediaApp wikipediaApp2 = pageActivity2.app;
                                if (wikipediaApp2 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("app");
                                    throw null;
                                }
                                leadImageEditLang = wikipediaApp2.getLanguageState().getAppLanguageCode();
                            }
                            String str = leadImageEditLang;
                            if (intent2 != null && intent2.hasExtra("intentAction")) {
                                action = (DescriptionEditActivity.Action) intent2.getSerializableExtra("intentAction");
                            }
                            DescriptionEditActivity.Action action2 = action;
                            LinkedHashMap linkedHashMap = SuggestedEditsSnackbars.snackbarSessionMap;
                            SuggestedEditsSnackbars.show(pageActivity2, action2, i14 != 1, str, (action2 == DescriptionEditActivity.Action.ADD_DESCRIPTION || action2 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) ? false : true, new TextLinkScope$$ExternalSyntheticLambda3(9, pageActivity2, action2));
                            return;
                        }
                        return;
                }
            }
        }, new FragmentManager$FragmentIntentSenderContract(i));
    }

    public final ActivityPageBinding getBinding() {
        ActivityPageBinding activityPageBinding = this.binding;
        if (activityPageBinding != null) {
            return activityPageBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        throw null;
    }

    public final void handleIntent$1(Intent intent) {
        String str;
        char c = 2;
        if ("android.intent.action.VIEW".equals(intent.getAction()) && intent.getData() != null) {
            TestKitchenClient testKitchenClient = TestKitchenAdapter.client;
            testKitchenClient.getClass();
            SVGAndroidRenderer.submitInteraction$default(new SVGAndroidRenderer("apps-open", testKitchenClient), "app_open", "external_link", null, null, null, null, 252);
            Uri data = intent.getData();
            if (StringsKt.contains("org.wikipedia", "beta", false)) {
                c = 1;
            } else if (!StringsKt.contains("org.wikipedia", "alpha", false)) {
                c = StringsKt.contains("org.wikipedia", "dev", false) ? (char) 3 : (char) 0;
            }
            if (c == 0 || c == 1) {
                if ((data != null ? data.getScheme() : null) != null && Intrinsics.areEqual(data.getScheme(), "http")) {
                    data = data.buildUpon().scheme("https").build();
                }
            }
            if (data != null) {
                String authority = data.getAuthority();
                if (authority == null || authority.length() == 0 || !(authority.equals("wikipedia.org") || StringsKt__StringsJVMKt.endsWith(authority, ".wikipedia.org", false) || authority.equals("wikimedia.org") || StringsKt__StringsJVMKt.endsWith(authority, ".wikimedia.org", false) || authority.equals("wikidata.org") || StringsKt__StringsJVMKt.endsWith(authority, ".wikidata.org", false))) {
                    UriUtil.visitInExternalBrowser(this, data);
                    finish();
                    return;
                }
                WikiSite wikiSite = new WikiSite(data);
                PageTitle.Companion.getClass();
                PageTitle titleForUri = PageTitle.Companion.titleForUri(data, wikiSite);
                HistoryEntry historyEntry = new HistoryEntry(intent.hasExtra("notificationId") ? 26 : 3, titleForUri);
                Uri referrer = getReferrer();
                if (referrer != null) {
                    historyEntry.referrer = referrer.toString();
                }
                if (titleForUri.namespace() == Namespace.SPECIAL && StringsKt__StringsJVMKt.startsWith(titleForUri.getPrefixedText(), "Special:ReadingLists", false)) {
                    L.d("Received shareable reading lists");
                    String queryParameter = data.getQueryParameter("limport");
                    Prefs prefs = Prefs.INSTANCE;
                    PrefsIoUtil.setBoolean(R.string.preference_key_import_reading_lists_dialog_shown, false);
                    PrefsIoUtil.setString(R.string.preference_key_receive_reading_lists_data, queryParameter);
                    ReadingListMode readingListMode = ReadingListMode.PREVIEW;
                    readingListMode.getClass();
                    Intent putExtra = new Intent(this, (Class<?>) ReadingListActivity.class).putExtra("readingListMode", readingListMode).putExtra("invokeSource", (Serializable) null);
                    putExtra.getClass();
                    startActivity(putExtra.addFlags(67108864));
                    finish();
                    return;
                }
                String str2 = wikiSite.languageCode;
                Locale locale = Locale.getDefault();
                locale.getClass();
                String lowerCase = str2.toLowerCase(locale);
                lowerCase.getClass();
                if (!Constants.NON_LANGUAGE_SUBDOMAINS.contains(lowerCase) && (!titleForUri.isSpecial() || titleForUri.isContributions())) {
                    loadPage(titleForUri, historyEntry, TabPosition.NEW_TAB_FOREGROUND);
                    return;
                }
                if (lowerCase.equals("thankyou") && data.getQueryParameter("order_id") != null) {
                    String queryParameter2 = data.getQueryParameter("amount");
                    float parseFloat = queryParameter2 != null ? Float.parseFloat(queryParameter2) : RecyclerView.DECELERATION_RATE;
                    String queryParameter3 = data.getQueryParameter("currency");
                    String str3 = queryParameter3 != null ? queryParameter3 : "";
                    boolean areEqual = Intrinsics.areEqual(data.getQueryParameter("recurring"), "1");
                    Prefs prefs2 = Prefs.INSTANCE;
                    List donationResults = Prefs.getDonationResults();
                    String localDateTime = LocalDateTime.now().toString();
                    localDateTime.getClass();
                    Prefs.setDonationResults(CollectionsKt.plus((Collection) donationResults, (Object) new DonationResult(localDateTime, parseFloat, str3, areEqual)));
                    String queryParameter4 = data.getQueryParameter("wmf_campaign");
                    if (queryParameter4 != null && queryParameter4.equals("Android")) {
                        String str4 = YearInReviewViewModel.currentCampaignId;
                        if (str4 != null) {
                            UriUtil.submit$default(230, null, "impression", str4, "webpay_processed", null);
                            str = "yearInReview";
                        } else {
                            Cache.Companion.logAction$default(8, "impression", "webpay_processed", wikiSite.languageCode, null);
                            str = "donorExperience";
                        }
                        String uri = data.toString();
                        uri.getClass();
                        PageFragment pageFragment = this.pageFragment;
                        if (pageFragment == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                        startActivity(LoginClient.newIntent$default(this, uri, (PageTitle) pageFragment.model.title, str, 32));
                        finish();
                        return;
                    }
                }
                UriUtil.visitInExternalBrowser(this, data);
                finish();
                return;
            }
            return;
        }
        if ((!"org.wikipedia.load_in_new_tab".equals(intent.getAction()) && !"org.wikipedia.load_in_current_tab".equals(intent.getAction()) && !"org.wikipedia.load_in_current_tab_squash".equals(intent.getAction())) || !intent.hasExtra("org.wikipedia.history.historyentry")) {
            if ("org.wikipedia.load_from_existing_tab".equals(intent.getAction()) && intent.hasExtra("org.wikipedia.history.historyentry")) {
                loadPage((PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class)), (HistoryEntry) ((Parcelable) DpKt.getParcelableExtra(intent, "org.wikipedia.history.historyentry", HistoryEntry.class)), TabPosition.EXISTING_TAB);
                return;
            }
            if (!"org.wikipedia.resume_reading".equals(intent.getAction()) && !intent.hasExtra("appShortcutContinueReading")) {
                if (!"android.intent.action.SEARCH".equals(intent.getAction())) {
                    if ("org.wikipedia.create_new_tab".equals(intent.getAction())) {
                        loadMainPage(TabPosition.NEW_TAB_FOREGROUND);
                        return;
                    } else {
                        loadMainPage(TabPosition.CURRENT_TAB);
                        return;
                    }
                }
                String stringExtra = intent.getStringExtra("query");
                WikipediaApp wikipediaApp = this.app;
                if (wikipediaApp == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("app");
                    throw null;
                }
                PageTitle pageTitle = new PageTitle(stringExtra, wikipediaApp.getWikiSite(), (String) null);
                loadPage(pageTitle, new HistoryEntry(1, pageTitle), TabPosition.EXISTING_TAB);
                return;
            }
            PageFragment pageFragment2 = this.pageFragment;
            if (pageFragment2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
            if (pageFragment2.getCurrentTab().backStack.isEmpty()) {
                return;
            }
            PageFragment pageFragment3 = this.pageFragment;
            if (pageFragment3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
            List list = pageFragment3.getCurrentTab().backStack;
            PageFragment pageFragment4 = this.pageFragment;
            if (pageFragment4 != null) {
                loadNonArticlePageIfNeeded(((PageBackStackItem) list.get(pageFragment4.getCurrentTab().getBackStackPosition())).title);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
        }
        PageTitle pageTitle2 = (PageTitle) ((Parcelable) DpKt.getParcelableExtra(intent, "title", PageTitle.class));
        HistoryEntry historyEntry2 = (HistoryEntry) ((Parcelable) DpKt.getParcelableExtra(intent, "org.wikipedia.history.historyentry", HistoryEntry.class));
        String action = intent.getAction();
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode != -628680044) {
                if (hashCode != 803882705) {
                    if (hashCode == 1653562093 && action.equals("org.wikipedia.load_in_current_tab")) {
                        loadPage(pageTitle2, historyEntry2, TabPosition.CURRENT_TAB);
                    }
                } else if (action.equals("org.wikipedia.load_in_current_tab_squash")) {
                    loadPage(pageTitle2, historyEntry2, TabPosition.CURRENT_TAB_SQUASH);
                }
            } else if (action.equals("org.wikipedia.load_in_new_tab")) {
                loadPage(pageTitle2, historyEntry2, TabPosition.NEW_TAB_FOREGROUND);
            }
        }
        if (intent.getStringExtra("revertQNumber") != null) {
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(this, 0);
            materialAlertDialogBuilder.setTitle(R.string.notification_reverted_title);
            DescriptionEditRevertHelpView descriptionEditRevertHelpView = new DescriptionEditRevertHelpView(this, null);
            LayoutInflater.from(this).inflate(R.layout.view_description_edit_revert_help, descriptionEditRevertHelpView);
            TextView textView = (TextView) Room.findChildViewById(descriptionEditRevertHelpView, R.id.helpText);
            if (textView == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(descriptionEditRevertHelpView.getResources().getResourceName(R.id.helpText)));
                return;
            }
            textView.setMovementMethod(new LinkMovementMethod());
            StringUtil stringUtil = StringUtil.INSTANCE;
            String string = getString(R.string.description_edit_revert_help_body);
            string.getClass();
            Pattern compile = Pattern.compile(":revertSubtitle");
            compile.getClass();
            String string2 = getString(R.string.description_edit_revert_subtitle);
            string2.getClass();
            String replaceAll = compile.matcher(string).replaceAll(string2);
            replaceAll.getClass();
            Pattern compile2 = Pattern.compile(":revertIntro");
            compile2.getClass();
            String string3 = getString(R.string.description_edit_revert_intro);
            string3.getClass();
            String replaceAll2 = compile2.matcher(replaceAll).replaceAll(string3);
            replaceAll2.getClass();
            Pattern compile3 = Pattern.compile(":revertHistory");
            compile3.getClass();
            Uri.Builder builder = new Uri.Builder();
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            Uri build = builder.scheme(Jsoup.getInstance().getWikiSite().scheme()).authority("m.wikidata.org").appendPath("wiki").appendPath("Special:History").appendPath("").build();
            build.getClass();
            String string4 = getString(R.string.description_edit_revert_history, build);
            string4.getClass();
            String replaceAll3 = compile3.matcher(replaceAll2).replaceAll(string4);
            replaceAll3.getClass();
            Spanned fromHtml = StringUtil.fromHtml(replaceAll3);
            String string5 = getString(R.string.description_edit_revert_reason1, getString(R.string.wikidata_description_guide_url));
            string5.getClass();
            SpannedString createReason = DescriptionEditRevertHelpView.createReason(string5);
            String string6 = getString(R.string.description_edit_revert_reason2);
            string6.getClass();
            textView.setText(new SpannableString(TextUtils.expandTemplate(fromHtml, createReason, DescriptionEditRevertHelpView.createReason(string6))));
            ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = descriptionEditRevertHelpView;
            materialAlertDialogBuilder.setPositiveButton(R.string.reverted_edit_dialog_ok_button_text, (DialogInterface.OnClickListener) null);
            materialAlertDialogBuilder.show();
        }
    }

    public final void loadMainPage(TabPosition tabPosition) {
        WikipediaApp wikipediaApp = this.app;
        if (wikipediaApp == null) {
            Intrinsics.throwUninitializedPropertyAccessException("app");
            throw null;
        }
        String valueFor = MainPageNameData.valueFor(wikipediaApp.getAppOrSystemLanguageCode());
        WikipediaApp wikipediaApp2 = this.app;
        if (wikipediaApp2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("app");
            throw null;
        }
        PageTitle pageTitle = new PageTitle(valueFor, wikipediaApp2.getWikiSite(), (String) null);
        loadPage(pageTitle, new HistoryEntry(8, pageTitle), tabPosition);
    }

    public final boolean loadNonArticlePageIfNeeded(PageTitle pageTitle) {
        String str;
        if (pageTitle != null) {
            if (pageTitle.isFilePage()) {
                Intent putExtra = new Intent(this, (Class<?>) FilePageActivity.class).putExtra("title", pageTitle).putExtra("allowEdit", true);
                putExtra.getClass();
                startActivity(putExtra);
                finish();
                return true;
            }
            if (pageTitle.namespace() == Namespace.USER_TALK || pageTitle.namespace() == Namespace.TALK) {
                Constants.InvokeSource invokeSource = Constants.InvokeSource.PAGE_ACTIVITY;
                invokeSource.getClass();
                Intent putExtra2 = new Intent(this, (Class<?>) TalkTopicsActivity.class).putExtra("title", pageTitle);
                String str2 = pageTitle.fragment;
                Intent putExtra3 = putExtra2.putExtra("goToTopic", !(str2 == null || str2.length() == 0)).putExtra("invokeSource", invokeSource);
                putExtra3.getClass();
                startActivity(putExtra3);
                finish();
                return true;
            }
            if (pageTitle.isSpecial()) {
                if (!pageTitle.isContributions() || (str = (String) CollectionsKt.lastOrNull(StringsKt.split$default(pageTitle.getDisplayText(), new char[]{'/'}))) == null) {
                    Uri parse = Uri.parse(pageTitle.getUri());
                    parse.getClass();
                    UriUtil.visitInExternalBrowser(this, parse);
                    finish();
                    return true;
                }
                Intent putExtra4 = new Intent(this, (Class<?>) UserContribListActivity.class).putExtra("userName", str);
                putExtra4.getClass();
                startActivity(putExtra4);
                finish();
                return true;
            }
        }
        return false;
    }

    public final void loadPage(PageTitle pageTitle, HistoryEntry historyEntry, TabPosition tabPosition) {
        Uri uri;
        if (isDestroyed() || pageTitle == null || historyEntry == null) {
            return;
        }
        if (this.hasTransitionAnimation && !this.wasTransitionShown) {
            ((FragmentContainerView) getBinding().pageFragment).setVisibility(8);
            WikiArticleCardView wikiArticleCardView = (WikiArticleCardView) getBinding().wikiArticleCardView;
            ViewWikiArticleCardBinding viewWikiArticleCardBinding = wikiArticleCardView.binding;
            String str = pageTitle.thumbUrl;
            if (str != null) {
                uri = Uri.parse(str);
                uri.getClass();
            } else {
                uri = null;
            }
            if (uri != null) {
                Context context = wikiArticleCardView.getContext();
                context.getClass();
                if (!Okio__OkioKt.isLandscape(context)) {
                    Prefs prefs = Prefs.INSTANCE;
                    if (Prefs.isImageDownloadEnabled()) {
                        FrameLayout frameLayout = viewWikiArticleCardBinding.articleImageContainer;
                        Context context2 = wikiArticleCardView.getContext();
                        context2.getClass();
                        int leadImageHeightForDevice = Okio__OkioKt.leadImageHeightForDevice(context2);
                        Context context3 = wikiArticleCardView.getContext();
                        context3.getClass();
                        frameLayout.setLayoutParams(new ConstraintLayout.LayoutParams(-1, leadImageHeightForDevice - Okio__OkioKt.getToolbarHeightPx(context3)));
                        viewWikiArticleCardBinding.articleImageContainer.setVisibility(0);
                        FaceAndColorDetectImageView faceAndColorDetectImageView = viewWikiArticleCardBinding.articleImage;
                        int i = FaceAndColorDetectImageView.$r8$clinit;
                        faceAndColorDetectImageView.loadImage(uri, null);
                        int i2 = DonationReminderHelper.validReadCountOnSeconds;
                        if (Prefs.getDonationReminderConfig().userEnabled || !Prefs.getDonationReminderConfig().isReminderReady || !DonationReminderHelper.isInEligibleCountry()) {
                            wikiArticleCardView.setTitle(pageTitle.getDisplayText());
                            wikiArticleCardView.setDescription(pageTitle.description);
                        }
                        viewWikiArticleCardBinding.articleDivider.setVisibility(8);
                        BitmapsKt.setLayoutDirectionByLang(wikiArticleCardView, pageTitle.wikiSite.languageCode);
                        this.wasTransitionShown = true;
                    }
                }
            }
            viewWikiArticleCardBinding.articleImageContainer.setVisibility(8);
            int i22 = DonationReminderHelper.validReadCountOnSeconds;
            if (Prefs.getDonationReminderConfig().userEnabled) {
            }
            wikiArticleCardView.setTitle(pageTitle.getDisplayText());
            wikiArticleCardView.setDescription(pageTitle.description);
            viewWikiArticleCardBinding.articleDivider.setVisibility(8);
            BitmapsKt.setLayoutDirectionByLang(wikiArticleCardView, pageTitle.wikiSite.languageCode);
            this.wasTransitionShown = true;
        }
        if (loadNonArticlePageIfNeeded(pageTitle)) {
            return;
        }
        setTitle(getString(R.string.page_content_description, pageTitle.getDisplayText()));
        ((FrameLayout) getBinding().pageToolbarContainer).post(new Schedulers$$ExternalSyntheticLambda1(this, tabPosition, pageTitle, historyEntry, 1));
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        actionMode.getClass();
        super.onActionModeFinished(actionMode);
        this.currentActionModes.remove(actionMode);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        actionMode.getClass();
        super.onActionModeStarted(actionMode);
        LinkedHashSet linkedHashSet = this.currentActionModes;
        if (linkedHashSet.isEmpty() && actionMode.getTag() == null) {
            Menu menu = actionMode.getMenu();
            menu.getClass();
            int i = 0;
            int i2 = 0;
            while (i2 < menu.size()) {
                int i3 = i2 + 1;
                MenuItem item = menu.getItem(i2);
                if (item == null) {
                    throw new IndexOutOfBoundsException();
                }
                String valueOf = String.valueOf(item.getTitle());
                String string = getString(R.string.search_hint);
                string.getClass();
                if (!StringsKt.contains(valueOf, string, false)) {
                    String valueOf2 = String.valueOf(item.getTitle());
                    String string2 = getString(R.string.menu_text_select_define);
                    string2.getClass();
                    if (StringsKt.contains(valueOf2, string2, false)) {
                        PageFragment pageFragment = this.pageFragment;
                        if (pageFragment == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                            throw null;
                        }
                        ShareHandler shareHandler = pageFragment.shareHandler;
                        if (shareHandler == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("shareHandler");
                            throw null;
                        }
                        PageTitle pageTitle = (PageTitle) ((PageFragment) shareHandler.fragment).model.title;
                        if (!(pageTitle != null ? WiktionaryDialog.enabledLanguages.contains(pageTitle.wikiSite.languageCode) : false)) {
                        }
                    } else {
                        continue;
                    }
                    i2 = i3;
                }
                item.setVisible(false);
                i2 = i3;
            }
            actionMode.getMenuInflater().inflate(R.menu.menu_text_select, menu);
            PageFragment pageFragment2 = this.pageFragment;
            if (pageFragment2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
            View inflate = LayoutInflater.from(pageFragment2.requireContext()).inflate(R.layout.view_action_mode_close_button, (ViewGroup) null, false);
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.close_button);
            if (imageView == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.close_button)));
                return;
            }
            actionMode.setCustomView((LinearLayout) inflate);
            imageView.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(i, actionMode));
            PageFragment pageFragment3 = this.pageFragment;
            if (pageFragment3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
            if (((Page) pageFragment3.model.page) != null) {
                ShareHandler shareHandler2 = pageFragment3.shareHandler;
                if (shareHandler2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("shareHandler");
                    throw null;
                }
                PageFragment pageFragment4 = (PageFragment) shareHandler2.fragment;
                shareHandler2.webViewActionMode = actionMode;
                MenuItem findItem = actionMode.getMenu().findItem(R.id.menu_text_select_define);
                int i4 = 1;
                if (findItem != null) {
                    PageTitle pageTitle2 = (PageTitle) pageFragment4.model.title;
                    if (pageTitle2 != null ? WiktionaryDialog.enabledLanguages.contains(pageTitle2.wikiSite.languageCode) : false) {
                        findItem.setVisible(true);
                        findItem.setOnMenuItemClickListener(new MenuItemWrapperICS.OnMenuItemClickListenerWrapper(i4, shareHandler2, "define"));
                    }
                }
                MenuItem findItem2 = actionMode.getMenu().findItem(R.id.menu_text_edit_here);
                if (findItem2 != null) {
                    findItem2.setOnMenuItemClickListener(new MenuItemWrapperICS.OnMenuItemClickListenerWrapper(i4, shareHandler2, "edit_here"));
                    Page page = (Page) pageFragment4.model.page;
                    if (page != null && !page.isArticle) {
                        findItem2.setVisible(false);
                    }
                }
                actionMode.invalidateContentRect();
            }
        }
        linkedHashSet.add(actionMode);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getApplicationContext() instanceof WikipediaApp) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            this.app = Jsoup.getInstance();
            String defaultSharedPreferencesName = PreferenceManager.getDefaultSharedPreferencesName(this);
            final int i = 0;
            SharedPreferences sharedPreferences = getSharedPreferences("_has_set_default_values", 0);
            Continuation continuation = null;
            final int i2 = 1;
            if (!sharedPreferences.getBoolean("_has_set_default_values", false)) {
                PreferenceManager preferenceManager = new PreferenceManager(this);
                preferenceManager.mSharedPreferencesName = defaultSharedPreferencesName;
                preferenceManager.mSharedPreferences = null;
                preferenceManager.inflateFromResource(this, R.xml.preferences, null);
                sharedPreferences.edit().putBoolean("_has_set_default_values", true).apply();
            }
            View inflate = getLayoutInflater().inflate(R.layout.activity_page, (ViewGroup) null, false);
            int i3 = R.id.container_with_nav_trigger;
            FrameLayoutNavMenuTriggerer frameLayoutNavMenuTriggerer = (FrameLayoutNavMenuTriggerer) Room.findChildViewById(inflate, R.id.container_with_nav_trigger);
            if (frameLayoutNavMenuTriggerer != null) {
                FixedDrawerLayout fixedDrawerLayout = (FixedDrawerLayout) inflate;
                i3 = R.id.page_fragment;
                FragmentContainerView fragmentContainerView = (FragmentContainerView) Room.findChildViewById(inflate, R.id.page_fragment);
                if (fragmentContainerView != null) {
                    int i4 = R.id.page_progress_bar;
                    LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.page_progress_bar);
                    if (linearProgressIndicator != null) {
                        i4 = R.id.page_scroller_button;
                        PageScrollerView pageScrollerView = (PageScrollerView) Room.findChildViewById(inflate, R.id.page_scroller_button);
                        if (pageScrollerView != null) {
                            i4 = R.id.page_toolbar;
                            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.page_toolbar);
                            if (materialToolbar != null) {
                                i4 = R.id.page_toolbar_button_notifications;
                                NotificationButtonView notificationButtonView = (NotificationButtonView) Room.findChildViewById(inflate, R.id.page_toolbar_button_notifications);
                                if (notificationButtonView != null) {
                                    i4 = R.id.page_toolbar_button_search;
                                    MaterialTextView materialTextView = (MaterialTextView) Room.findChildViewById(inflate, R.id.page_toolbar_button_search);
                                    if (materialTextView != null) {
                                        i4 = R.id.page_toolbar_button_show_overflow_menu;
                                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.page_toolbar_button_show_overflow_menu);
                                        if (imageView != null) {
                                            i4 = R.id.page_toolbar_button_tabs;
                                            TabCountsView tabCountsView = (TabCountsView) Room.findChildViewById(inflate, R.id.page_toolbar_button_tabs);
                                            if (tabCountsView != null) {
                                                i4 = R.id.page_toolbar_container;
                                                FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.page_toolbar_container);
                                                if (frameLayout != null) {
                                                    i4 = R.id.side_panel_container;
                                                    FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.side_panel_container);
                                                    if (frameLayout2 != null) {
                                                        i4 = R.id.toc_list;
                                                        SwipeableListView swipeableListView = (SwipeableListView) Room.findChildViewById(inflate, R.id.toc_list);
                                                        if (swipeableListView != null) {
                                                            i4 = R.id.wiki_article_card_view;
                                                            WikiArticleCardView wikiArticleCardView = (WikiArticleCardView) Room.findChildViewById(inflate, R.id.wiki_article_card_view);
                                                            if (wikiArticleCardView != null) {
                                                                this.binding = new ActivityPageBinding(fixedDrawerLayout, frameLayoutNavMenuTriggerer, fixedDrawerLayout, fragmentContainerView, linearProgressIndicator, pageScrollerView, materialToolbar, notificationButtonView, materialTextView, imageView, tabCountsView, frameLayout, frameLayout2, swipeableListView, wikiArticleCardView);
                                                                setContentView((FixedDrawerLayout) getBinding().rootView);
                                                                getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
                                                                final int i5 = 3;
                                                                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new PageActivity$onCreate$1(this, continuation, i), 3);
                                                                updateProgressBar$1(false);
                                                                Fragment findFragmentById = getSupportFragmentManager().findFragmentById(R.id.page_fragment);
                                                                findFragmentById.getClass();
                                                                this.pageFragment = (PageFragment) findFragmentById;
                                                                setSupportActionBar((MaterialToolbar) getBinding().pageToolbar);
                                                                ContextsKt supportActionBar = getSupportActionBar();
                                                                if (supportActionBar != null) {
                                                                    supportActionBar.setTitle("");
                                                                }
                                                                ContextsKt supportActionBar2 = getSupportActionBar();
                                                                if (supportActionBar2 != null) {
                                                                    supportActionBar2.setDisplayHomeAsUpEnabled(true);
                                                                }
                                                                ((MaterialTextView) getBinding().pageToolbarButtonSearch).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda6
                                                                    public final /* synthetic */ PageActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // android.view.View.OnClickListener
                                                                    public final void onClick(View view) {
                                                                        String str;
                                                                        int i6 = i;
                                                                        PageActivity pageActivity = this.f$0;
                                                                        switch (i6) {
                                                                            case 0:
                                                                                PageFragment pageFragment = pageActivity.pageFragment;
                                                                                if (pageFragment == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                                                                                if (articleInteractionEvent != null) {
                                                                                    articleInteractionEvent.submitEvent("search_wikipedia");
                                                                                }
                                                                                PageFragment pageFragment2 = pageActivity.pageFragment;
                                                                                if (pageFragment2 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                PageTitle pageTitle = (PageTitle) pageFragment2.model.title;
                                                                                if ((pageTitle != null ? pageTitle.namespace() : null) == Namespace.MAIN) {
                                                                                    PageFragment pageFragment3 = pageActivity.pageFragment;
                                                                                    if (pageFragment3 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                        throw null;
                                                                                    }
                                                                                    PageTitle pageTitle2 = (PageTitle) pageFragment3.model.title;
                                                                                    if (pageTitle2 != null) {
                                                                                        str = pageTitle2.getDisplayText();
                                                                                        int i7 = SearchActivity.$r8$clinit;
                                                                                        pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                        return;
                                                                                    }
                                                                                }
                                                                                str = null;
                                                                                int i72 = SearchActivity.$r8$clinit;
                                                                                pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                return;
                                                                            case 1:
                                                                                PageFragment pageFragment4 = pageActivity.pageFragment;
                                                                                if (pageFragment4 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent2 = pageFragment4.articleInteractionEvent;
                                                                                if (articleInteractionEvent2 != null) {
                                                                                    articleInteractionEvent2.submitEvent("notification");
                                                                                }
                                                                                if (Headers.Companion.isLoggedIn()) {
                                                                                    pageActivity.startActivity(new Intent(pageActivity, (Class<?>) NotificationActivity.class));
                                                                                    return;
                                                                                }
                                                                                long time = new Date().getTime();
                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                if (time - PrefsIoUtil.getLong(0L, R.string.preference_key_last_anon_notification_time) < 604800000) {
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    String string = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    if (string == null || string.length() == 0) {
                                                                                        return;
                                                                                    }
                                                                                    WikiSite.Companion companion = WikiSite.Companion;
                                                                                    String string2 = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    string2.getClass();
                                                                                    companion.getClass();
                                                                                    WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(string2);
                                                                                    PageTitle pageTitle3 = new PageTitle(Animation.CC.m(UserTalkAliasData.valueFor(forLanguageCode.languageCode), ":", PrefsIoUtil.getString(R.string.preference_key_last_anon_user_with_messages, "")), forLanguageCode, (String) null);
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PAGE_ACTIVITY;
                                                                                    invokeSource.getClass();
                                                                                    Intent putExtra = new Intent(pageActivity, (Class<?>) TalkTopicsActivity.class).putExtra("title", pageTitle3);
                                                                                    String str2 = pageTitle3.fragment;
                                                                                    Intent putExtra2 = putExtra.putExtra("goToTopic", !(str2 == null || str2.length() == 0)).putExtra("invokeSource", invokeSource);
                                                                                    putExtra2.getClass();
                                                                                    pageActivity.startActivity(putExtra2);
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            case 2:
                                                                                PageFragment pageFragment5 = pageActivity.pageFragment;
                                                                                if (pageFragment5 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent3 = pageFragment5.articleInteractionEvent;
                                                                                if (articleInteractionEvent3 != null) {
                                                                                    articleInteractionEvent3.submitEvent("tabs");
                                                                                }
                                                                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = pageActivity.requestBrowseTabLauncher;
                                                                                Intent putExtra3 = new Intent(pageActivity, (Class<?>) TabActivity.class).putExtra("launchedFromPageActivity", true);
                                                                                putExtra3.getClass();
                                                                                activityResultRegistry$register$2.launch(putExtra3, null);
                                                                                return;
                                                                            default:
                                                                                PageFragment pageFragment6 = pageActivity.pageFragment;
                                                                                if (pageFragment6 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                view.getClass();
                                                                                Context requireContext = pageFragment6.requireContext();
                                                                                PageActionOverflowView pageActionOverflowView = new PageActionOverflowView(requireContext);
                                                                                View inflate2 = LayoutInflater.from(requireContext).inflate(R.layout.view_page_action_overflow, (ViewGroup) pageActionOverflowView, false);
                                                                                pageActionOverflowView.addView(inflate2);
                                                                                int i8 = R.id.customize_toolbar;
                                                                                MaterialTextView materialTextView2 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.customize_toolbar);
                                                                                if (materialTextView2 != null) {
                                                                                    i8 = R.id.overflow_forward;
                                                                                    MaterialTextView materialTextView3 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.overflow_forward);
                                                                                    if (materialTextView3 != null) {
                                                                                        i8 = R.id.overflowList;
                                                                                        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate2, R.id.overflowList);
                                                                                        if (linearLayout != null) {
                                                                                            pageActionOverflowView.binding = new MultipartBody.Builder(materialTextView2, materialTextView3, linearLayout);
                                                                                            materialTextView3.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(3, pageActionOverflowView));
                                                                                            Prefs prefs3 = Prefs.INSTANCE;
                                                                                            Iterator it = Prefs.getCustomizeToolbarMenuOrder().iterator();
                                                                                            while (it.hasNext()) {
                                                                                                int intValue = ((Number) it.next()).intValue();
                                                                                                View inflate3 = LayoutInflater.from(requireContext).inflate(R.layout.item_customize_toolbar_menu, (ViewGroup) null, false);
                                                                                                if (inflate3 == null) {
                                                                                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
                                                                                                    return;
                                                                                                }
                                                                                                TextView textView = (TextView) inflate3;
                                                                                                PageActionItem.Companion.getClass();
                                                                                                PageActionItem find = PageActionItem.Companion.find(intValue);
                                                                                                textView.setId(find.getViewId());
                                                                                                textView.setText(requireContext.getString(find.getTitleResId()));
                                                                                                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(find.getIconResId(), 0, 0, 0);
                                                                                                textView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(28, pageActionOverflowView, find));
                                                                                                ((LinearLayout) pageActionOverflowView.binding.parts).addView(textView);
                                                                                            }
                                                                                            ((MaterialTextView) pageActionOverflowView.binding.boundary).setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(29, pageActionOverflowView, requireContext));
                                                                                            PageFragment.AvCallback avCallback = pageFragment6.pageActionItemCallback;
                                                                                            Tab currentTab = pageFragment6.getCurrentTab();
                                                                                            PageViewModel pageViewModel = pageFragment6.model;
                                                                                            avCallback.getClass();
                                                                                            currentTab.getClass();
                                                                                            pageViewModel.getClass();
                                                                                            pageActionOverflowView.setCallback(avCallback);
                                                                                            PopupWindow popupWindow = new PopupWindow((View) pageActionOverflowView, -2, -2, true);
                                                                                            pageActionOverflowView.popupWindowHost = popupWindow;
                                                                                            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                                                                            popupWindow.setOverlapAnchor(true);
                                                                                            popupWindow.showAsDropDown(view, 0, 0, 8388613);
                                                                                            MultipartBody.Builder builder = pageActionOverflowView.binding;
                                                                                            MaterialTextView materialTextView4 = (MaterialTextView) builder.type;
                                                                                            LinearLayout linearLayout2 = (LinearLayout) builder.parts;
                                                                                            materialTextView4.setVisibility(currentTab.getBackStackPosition() < currentTab.backStack.size() - 1 ? 0 : 8);
                                                                                            int childCount = linearLayout2.getChildCount();
                                                                                            for (int i9 = 1; i9 < childCount; i9++) {
                                                                                                View childAt = linearLayout2.getChildAt(i9);
                                                                                                childAt.getClass();
                                                                                                MaterialTextView materialTextView5 = (MaterialTextView) childAt;
                                                                                                PageActionItem.Companion companion2 = PageActionItem.Companion;
                                                                                                int id = materialTextView5.getId();
                                                                                                companion2.getClass();
                                                                                                PageActionItem find2 = PageActionItem.Companion.find(id);
                                                                                                boolean z = ((Page) pageViewModel.page) != null && (!pageViewModel.getShouldLoadAsMobileWeb() || (pageViewModel.getShouldLoadAsMobileWeb() && find2.isAvailableOnMobileWeb()));
                                                                                                int i10 = PageActionOverflowView.WhenMappings.$EnumSwitchMapping$0[find2.ordinal()];
                                                                                                if (i10 == 1) {
                                                                                                    materialTextView5.setText(pageViewModel.isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch);
                                                                                                    boolean z2 = pageViewModel.isWatched;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds((!z2 || pageViewModel.hasWatchlistExpiry) ? !z2 ? R.drawable.ic_baseline_star_outline_24 : R.drawable.ic_baseline_star_half_24 : R.drawable.ic_star_24, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility((z && Headers.Companion.isLoggedIn()) ? 0 : 8);
                                                                                                } else if (i10 == 2) {
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(((ReadingListPage) pageViewModel.readingListPage) != null ? R.drawable.ic_bookmark_white_24dp : R.drawable.ic_bookmark_border_white_24dp, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else if (i10 == 3) {
                                                                                                    Page page = (Page) pageViewModel.page;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(!(page != null && page.pageProperties.canEdit) ? R.drawable.ic_edit_pencil_locked : R.drawable.ic_mode_edit_white_24dp, 0, 0, 0);
                                                                                                } else if (i10 != 4) {
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else {
                                                                                                    Page page2 = (Page) pageViewModel.page;
                                                                                                    boolean z3 = (page2 != null ? page2.pageProperties.geo : null) != null;
                                                                                                    Context context = pageActionOverflowView.getContext();
                                                                                                    context.getClass();
                                                                                                    ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, z3 ? R.attr.primary_color : R.attr.inactive_color);
                                                                                                    materialTextView5.setTextColor(themedColorStateList);
                                                                                                    UuidKt.setCompoundDrawableTintList(materialTextView5, themedColorStateList);
                                                                                                }
                                                                                            }
                                                                                            if (view.isAttachedToWindow()) {
                                                                                                view.addOnAttachStateChangeListener(new SystemBarStateMonitor.AnonymousClass3(3, view, pageActionOverflowView));
                                                                                            } else {
                                                                                                pageActionOverflowView.dismissPopupWindowHost();
                                                                                            }
                                                                                            PageFragment pageFragment7 = pageActivity.pageFragment;
                                                                                            if (pageFragment7 == null) {
                                                                                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                                throw null;
                                                                                            }
                                                                                            ArticleInteractionEvent articleInteractionEvent4 = pageFragment7.articleInteractionEvent;
                                                                                            if (articleInteractionEvent4 != null) {
                                                                                                articleInteractionEvent4.submitEvent("more");
                                                                                            }
                                                                                            Prefs prefs4 = Prefs.INSTANCE;
                                                                                            PrefsIoUtil.setBoolean(R.string.preference_key_customize_toolbar_tooltip, false);
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i8)));
                                                                                return;
                                                                        }
                                                                    }
                                                                });
                                                                ((TabCountsView) getBinding().pageToolbarButtonTabs).updateTabCount(false);
                                                                final int i6 = 2;
                                                                ((TabCountsView) getBinding().pageToolbarButtonTabs).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda6
                                                                    public final /* synthetic */ PageActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // android.view.View.OnClickListener
                                                                    public final void onClick(View view) {
                                                                        String str;
                                                                        int i62 = i6;
                                                                        PageActivity pageActivity = this.f$0;
                                                                        switch (i62) {
                                                                            case 0:
                                                                                PageFragment pageFragment = pageActivity.pageFragment;
                                                                                if (pageFragment == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                                                                                if (articleInteractionEvent != null) {
                                                                                    articleInteractionEvent.submitEvent("search_wikipedia");
                                                                                }
                                                                                PageFragment pageFragment2 = pageActivity.pageFragment;
                                                                                if (pageFragment2 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                PageTitle pageTitle = (PageTitle) pageFragment2.model.title;
                                                                                if ((pageTitle != null ? pageTitle.namespace() : null) == Namespace.MAIN) {
                                                                                    PageFragment pageFragment3 = pageActivity.pageFragment;
                                                                                    if (pageFragment3 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                        throw null;
                                                                                    }
                                                                                    PageTitle pageTitle2 = (PageTitle) pageFragment3.model.title;
                                                                                    if (pageTitle2 != null) {
                                                                                        str = pageTitle2.getDisplayText();
                                                                                        int i72 = SearchActivity.$r8$clinit;
                                                                                        pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                        return;
                                                                                    }
                                                                                }
                                                                                str = null;
                                                                                int i722 = SearchActivity.$r8$clinit;
                                                                                pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                return;
                                                                            case 1:
                                                                                PageFragment pageFragment4 = pageActivity.pageFragment;
                                                                                if (pageFragment4 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent2 = pageFragment4.articleInteractionEvent;
                                                                                if (articleInteractionEvent2 != null) {
                                                                                    articleInteractionEvent2.submitEvent("notification");
                                                                                }
                                                                                if (Headers.Companion.isLoggedIn()) {
                                                                                    pageActivity.startActivity(new Intent(pageActivity, (Class<?>) NotificationActivity.class));
                                                                                    return;
                                                                                }
                                                                                long time = new Date().getTime();
                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                if (time - PrefsIoUtil.getLong(0L, R.string.preference_key_last_anon_notification_time) < 604800000) {
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    String string = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    if (string == null || string.length() == 0) {
                                                                                        return;
                                                                                    }
                                                                                    WikiSite.Companion companion = WikiSite.Companion;
                                                                                    String string2 = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    string2.getClass();
                                                                                    companion.getClass();
                                                                                    WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(string2);
                                                                                    PageTitle pageTitle3 = new PageTitle(Animation.CC.m(UserTalkAliasData.valueFor(forLanguageCode.languageCode), ":", PrefsIoUtil.getString(R.string.preference_key_last_anon_user_with_messages, "")), forLanguageCode, (String) null);
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PAGE_ACTIVITY;
                                                                                    invokeSource.getClass();
                                                                                    Intent putExtra = new Intent(pageActivity, (Class<?>) TalkTopicsActivity.class).putExtra("title", pageTitle3);
                                                                                    String str2 = pageTitle3.fragment;
                                                                                    Intent putExtra2 = putExtra.putExtra("goToTopic", !(str2 == null || str2.length() == 0)).putExtra("invokeSource", invokeSource);
                                                                                    putExtra2.getClass();
                                                                                    pageActivity.startActivity(putExtra2);
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            case 2:
                                                                                PageFragment pageFragment5 = pageActivity.pageFragment;
                                                                                if (pageFragment5 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent3 = pageFragment5.articleInteractionEvent;
                                                                                if (articleInteractionEvent3 != null) {
                                                                                    articleInteractionEvent3.submitEvent("tabs");
                                                                                }
                                                                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = pageActivity.requestBrowseTabLauncher;
                                                                                Intent putExtra3 = new Intent(pageActivity, (Class<?>) TabActivity.class).putExtra("launchedFromPageActivity", true);
                                                                                putExtra3.getClass();
                                                                                activityResultRegistry$register$2.launch(putExtra3, null);
                                                                                return;
                                                                            default:
                                                                                PageFragment pageFragment6 = pageActivity.pageFragment;
                                                                                if (pageFragment6 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                view.getClass();
                                                                                Context requireContext = pageFragment6.requireContext();
                                                                                PageActionOverflowView pageActionOverflowView = new PageActionOverflowView(requireContext);
                                                                                View inflate2 = LayoutInflater.from(requireContext).inflate(R.layout.view_page_action_overflow, (ViewGroup) pageActionOverflowView, false);
                                                                                pageActionOverflowView.addView(inflate2);
                                                                                int i8 = R.id.customize_toolbar;
                                                                                MaterialTextView materialTextView2 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.customize_toolbar);
                                                                                if (materialTextView2 != null) {
                                                                                    i8 = R.id.overflow_forward;
                                                                                    MaterialTextView materialTextView3 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.overflow_forward);
                                                                                    if (materialTextView3 != null) {
                                                                                        i8 = R.id.overflowList;
                                                                                        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate2, R.id.overflowList);
                                                                                        if (linearLayout != null) {
                                                                                            pageActionOverflowView.binding = new MultipartBody.Builder(materialTextView2, materialTextView3, linearLayout);
                                                                                            materialTextView3.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(3, pageActionOverflowView));
                                                                                            Prefs prefs3 = Prefs.INSTANCE;
                                                                                            Iterator it = Prefs.getCustomizeToolbarMenuOrder().iterator();
                                                                                            while (it.hasNext()) {
                                                                                                int intValue = ((Number) it.next()).intValue();
                                                                                                View inflate3 = LayoutInflater.from(requireContext).inflate(R.layout.item_customize_toolbar_menu, (ViewGroup) null, false);
                                                                                                if (inflate3 == null) {
                                                                                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
                                                                                                    return;
                                                                                                }
                                                                                                TextView textView = (TextView) inflate3;
                                                                                                PageActionItem.Companion.getClass();
                                                                                                PageActionItem find = PageActionItem.Companion.find(intValue);
                                                                                                textView.setId(find.getViewId());
                                                                                                textView.setText(requireContext.getString(find.getTitleResId()));
                                                                                                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(find.getIconResId(), 0, 0, 0);
                                                                                                textView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(28, pageActionOverflowView, find));
                                                                                                ((LinearLayout) pageActionOverflowView.binding.parts).addView(textView);
                                                                                            }
                                                                                            ((MaterialTextView) pageActionOverflowView.binding.boundary).setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(29, pageActionOverflowView, requireContext));
                                                                                            PageFragment.AvCallback avCallback = pageFragment6.pageActionItemCallback;
                                                                                            Tab currentTab = pageFragment6.getCurrentTab();
                                                                                            PageViewModel pageViewModel = pageFragment6.model;
                                                                                            avCallback.getClass();
                                                                                            currentTab.getClass();
                                                                                            pageViewModel.getClass();
                                                                                            pageActionOverflowView.setCallback(avCallback);
                                                                                            PopupWindow popupWindow = new PopupWindow((View) pageActionOverflowView, -2, -2, true);
                                                                                            pageActionOverflowView.popupWindowHost = popupWindow;
                                                                                            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                                                                            popupWindow.setOverlapAnchor(true);
                                                                                            popupWindow.showAsDropDown(view, 0, 0, 8388613);
                                                                                            MultipartBody.Builder builder = pageActionOverflowView.binding;
                                                                                            MaterialTextView materialTextView4 = (MaterialTextView) builder.type;
                                                                                            LinearLayout linearLayout2 = (LinearLayout) builder.parts;
                                                                                            materialTextView4.setVisibility(currentTab.getBackStackPosition() < currentTab.backStack.size() - 1 ? 0 : 8);
                                                                                            int childCount = linearLayout2.getChildCount();
                                                                                            for (int i9 = 1; i9 < childCount; i9++) {
                                                                                                View childAt = linearLayout2.getChildAt(i9);
                                                                                                childAt.getClass();
                                                                                                MaterialTextView materialTextView5 = (MaterialTextView) childAt;
                                                                                                PageActionItem.Companion companion2 = PageActionItem.Companion;
                                                                                                int id = materialTextView5.getId();
                                                                                                companion2.getClass();
                                                                                                PageActionItem find2 = PageActionItem.Companion.find(id);
                                                                                                boolean z = ((Page) pageViewModel.page) != null && (!pageViewModel.getShouldLoadAsMobileWeb() || (pageViewModel.getShouldLoadAsMobileWeb() && find2.isAvailableOnMobileWeb()));
                                                                                                int i10 = PageActionOverflowView.WhenMappings.$EnumSwitchMapping$0[find2.ordinal()];
                                                                                                if (i10 == 1) {
                                                                                                    materialTextView5.setText(pageViewModel.isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch);
                                                                                                    boolean z2 = pageViewModel.isWatched;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds((!z2 || pageViewModel.hasWatchlistExpiry) ? !z2 ? R.drawable.ic_baseline_star_outline_24 : R.drawable.ic_baseline_star_half_24 : R.drawable.ic_star_24, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility((z && Headers.Companion.isLoggedIn()) ? 0 : 8);
                                                                                                } else if (i10 == 2) {
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(((ReadingListPage) pageViewModel.readingListPage) != null ? R.drawable.ic_bookmark_white_24dp : R.drawable.ic_bookmark_border_white_24dp, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else if (i10 == 3) {
                                                                                                    Page page = (Page) pageViewModel.page;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(!(page != null && page.pageProperties.canEdit) ? R.drawable.ic_edit_pencil_locked : R.drawable.ic_mode_edit_white_24dp, 0, 0, 0);
                                                                                                } else if (i10 != 4) {
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else {
                                                                                                    Page page2 = (Page) pageViewModel.page;
                                                                                                    boolean z3 = (page2 != null ? page2.pageProperties.geo : null) != null;
                                                                                                    Context context = pageActionOverflowView.getContext();
                                                                                                    context.getClass();
                                                                                                    ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, z3 ? R.attr.primary_color : R.attr.inactive_color);
                                                                                                    materialTextView5.setTextColor(themedColorStateList);
                                                                                                    UuidKt.setCompoundDrawableTintList(materialTextView5, themedColorStateList);
                                                                                                }
                                                                                            }
                                                                                            if (view.isAttachedToWindow()) {
                                                                                                view.addOnAttachStateChangeListener(new SystemBarStateMonitor.AnonymousClass3(3, view, pageActionOverflowView));
                                                                                            } else {
                                                                                                pageActionOverflowView.dismissPopupWindowHost();
                                                                                            }
                                                                                            PageFragment pageFragment7 = pageActivity.pageFragment;
                                                                                            if (pageFragment7 == null) {
                                                                                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                                throw null;
                                                                                            }
                                                                                            ArticleInteractionEvent articleInteractionEvent4 = pageFragment7.articleInteractionEvent;
                                                                                            if (articleInteractionEvent4 != null) {
                                                                                                articleInteractionEvent4.submitEvent("more");
                                                                                            }
                                                                                            Prefs prefs4 = Prefs.INSTANCE;
                                                                                            PrefsIoUtil.setBoolean(R.string.preference_key_customize_toolbar_tooltip, false);
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i8)));
                                                                                return;
                                                                        }
                                                                    }
                                                                });
                                                                this.toolbarHideHandler = new ViewHideHandler((FrameLayout) getBinding().pageToolbarContainer, 48, true, new PageActivity$$ExternalSyntheticLambda8(this, i));
                                                                View[] viewArr = {(NotificationButtonView) getBinding().pageToolbarButtonNotifications, (TabCountsView) getBinding().pageToolbarButtonTabs, (ImageView) getBinding().pageToolbarButtonShowOverflowMenu};
                                                                for (int i7 = 0; i7 < 3; i7++) {
                                                                    View view = viewArr[i7];
                                                                    RegexKt.setTooltipText(view, view.getContentDescription());
                                                                }
                                                                ((ImageView) getBinding().pageToolbarButtonShowOverflowMenu).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda6
                                                                    public final /* synthetic */ PageActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // android.view.View.OnClickListener
                                                                    public final void onClick(View view2) {
                                                                        String str;
                                                                        int i62 = i5;
                                                                        PageActivity pageActivity = this.f$0;
                                                                        switch (i62) {
                                                                            case 0:
                                                                                PageFragment pageFragment = pageActivity.pageFragment;
                                                                                if (pageFragment == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                                                                                if (articleInteractionEvent != null) {
                                                                                    articleInteractionEvent.submitEvent("search_wikipedia");
                                                                                }
                                                                                PageFragment pageFragment2 = pageActivity.pageFragment;
                                                                                if (pageFragment2 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                PageTitle pageTitle = (PageTitle) pageFragment2.model.title;
                                                                                if ((pageTitle != null ? pageTitle.namespace() : null) == Namespace.MAIN) {
                                                                                    PageFragment pageFragment3 = pageActivity.pageFragment;
                                                                                    if (pageFragment3 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                        throw null;
                                                                                    }
                                                                                    PageTitle pageTitle2 = (PageTitle) pageFragment3.model.title;
                                                                                    if (pageTitle2 != null) {
                                                                                        str = pageTitle2.getDisplayText();
                                                                                        int i722 = SearchActivity.$r8$clinit;
                                                                                        pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                        return;
                                                                                    }
                                                                                }
                                                                                str = null;
                                                                                int i7222 = SearchActivity.$r8$clinit;
                                                                                pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                return;
                                                                            case 1:
                                                                                PageFragment pageFragment4 = pageActivity.pageFragment;
                                                                                if (pageFragment4 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent2 = pageFragment4.articleInteractionEvent;
                                                                                if (articleInteractionEvent2 != null) {
                                                                                    articleInteractionEvent2.submitEvent("notification");
                                                                                }
                                                                                if (Headers.Companion.isLoggedIn()) {
                                                                                    pageActivity.startActivity(new Intent(pageActivity, (Class<?>) NotificationActivity.class));
                                                                                    return;
                                                                                }
                                                                                long time = new Date().getTime();
                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                if (time - PrefsIoUtil.getLong(0L, R.string.preference_key_last_anon_notification_time) < 604800000) {
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    String string = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    if (string == null || string.length() == 0) {
                                                                                        return;
                                                                                    }
                                                                                    WikiSite.Companion companion = WikiSite.Companion;
                                                                                    String string2 = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    string2.getClass();
                                                                                    companion.getClass();
                                                                                    WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(string2);
                                                                                    PageTitle pageTitle3 = new PageTitle(Animation.CC.m(UserTalkAliasData.valueFor(forLanguageCode.languageCode), ":", PrefsIoUtil.getString(R.string.preference_key_last_anon_user_with_messages, "")), forLanguageCode, (String) null);
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PAGE_ACTIVITY;
                                                                                    invokeSource.getClass();
                                                                                    Intent putExtra = new Intent(pageActivity, (Class<?>) TalkTopicsActivity.class).putExtra("title", pageTitle3);
                                                                                    String str2 = pageTitle3.fragment;
                                                                                    Intent putExtra2 = putExtra.putExtra("goToTopic", !(str2 == null || str2.length() == 0)).putExtra("invokeSource", invokeSource);
                                                                                    putExtra2.getClass();
                                                                                    pageActivity.startActivity(putExtra2);
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            case 2:
                                                                                PageFragment pageFragment5 = pageActivity.pageFragment;
                                                                                if (pageFragment5 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent3 = pageFragment5.articleInteractionEvent;
                                                                                if (articleInteractionEvent3 != null) {
                                                                                    articleInteractionEvent3.submitEvent("tabs");
                                                                                }
                                                                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = pageActivity.requestBrowseTabLauncher;
                                                                                Intent putExtra3 = new Intent(pageActivity, (Class<?>) TabActivity.class).putExtra("launchedFromPageActivity", true);
                                                                                putExtra3.getClass();
                                                                                activityResultRegistry$register$2.launch(putExtra3, null);
                                                                                return;
                                                                            default:
                                                                                PageFragment pageFragment6 = pageActivity.pageFragment;
                                                                                if (pageFragment6 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                view2.getClass();
                                                                                Context requireContext = pageFragment6.requireContext();
                                                                                PageActionOverflowView pageActionOverflowView = new PageActionOverflowView(requireContext);
                                                                                View inflate2 = LayoutInflater.from(requireContext).inflate(R.layout.view_page_action_overflow, (ViewGroup) pageActionOverflowView, false);
                                                                                pageActionOverflowView.addView(inflate2);
                                                                                int i8 = R.id.customize_toolbar;
                                                                                MaterialTextView materialTextView2 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.customize_toolbar);
                                                                                if (materialTextView2 != null) {
                                                                                    i8 = R.id.overflow_forward;
                                                                                    MaterialTextView materialTextView3 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.overflow_forward);
                                                                                    if (materialTextView3 != null) {
                                                                                        i8 = R.id.overflowList;
                                                                                        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate2, R.id.overflowList);
                                                                                        if (linearLayout != null) {
                                                                                            pageActionOverflowView.binding = new MultipartBody.Builder(materialTextView2, materialTextView3, linearLayout);
                                                                                            materialTextView3.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(3, pageActionOverflowView));
                                                                                            Prefs prefs3 = Prefs.INSTANCE;
                                                                                            Iterator it = Prefs.getCustomizeToolbarMenuOrder().iterator();
                                                                                            while (it.hasNext()) {
                                                                                                int intValue = ((Number) it.next()).intValue();
                                                                                                View inflate3 = LayoutInflater.from(requireContext).inflate(R.layout.item_customize_toolbar_menu, (ViewGroup) null, false);
                                                                                                if (inflate3 == null) {
                                                                                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
                                                                                                    return;
                                                                                                }
                                                                                                TextView textView = (TextView) inflate3;
                                                                                                PageActionItem.Companion.getClass();
                                                                                                PageActionItem find = PageActionItem.Companion.find(intValue);
                                                                                                textView.setId(find.getViewId());
                                                                                                textView.setText(requireContext.getString(find.getTitleResId()));
                                                                                                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(find.getIconResId(), 0, 0, 0);
                                                                                                textView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(28, pageActionOverflowView, find));
                                                                                                ((LinearLayout) pageActionOverflowView.binding.parts).addView(textView);
                                                                                            }
                                                                                            ((MaterialTextView) pageActionOverflowView.binding.boundary).setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(29, pageActionOverflowView, requireContext));
                                                                                            PageFragment.AvCallback avCallback = pageFragment6.pageActionItemCallback;
                                                                                            Tab currentTab = pageFragment6.getCurrentTab();
                                                                                            PageViewModel pageViewModel = pageFragment6.model;
                                                                                            avCallback.getClass();
                                                                                            currentTab.getClass();
                                                                                            pageViewModel.getClass();
                                                                                            pageActionOverflowView.setCallback(avCallback);
                                                                                            PopupWindow popupWindow = new PopupWindow((View) pageActionOverflowView, -2, -2, true);
                                                                                            pageActionOverflowView.popupWindowHost = popupWindow;
                                                                                            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                                                                            popupWindow.setOverlapAnchor(true);
                                                                                            popupWindow.showAsDropDown(view2, 0, 0, 8388613);
                                                                                            MultipartBody.Builder builder = pageActionOverflowView.binding;
                                                                                            MaterialTextView materialTextView4 = (MaterialTextView) builder.type;
                                                                                            LinearLayout linearLayout2 = (LinearLayout) builder.parts;
                                                                                            materialTextView4.setVisibility(currentTab.getBackStackPosition() < currentTab.backStack.size() - 1 ? 0 : 8);
                                                                                            int childCount = linearLayout2.getChildCount();
                                                                                            for (int i9 = 1; i9 < childCount; i9++) {
                                                                                                View childAt = linearLayout2.getChildAt(i9);
                                                                                                childAt.getClass();
                                                                                                MaterialTextView materialTextView5 = (MaterialTextView) childAt;
                                                                                                PageActionItem.Companion companion2 = PageActionItem.Companion;
                                                                                                int id = materialTextView5.getId();
                                                                                                companion2.getClass();
                                                                                                PageActionItem find2 = PageActionItem.Companion.find(id);
                                                                                                boolean z = ((Page) pageViewModel.page) != null && (!pageViewModel.getShouldLoadAsMobileWeb() || (pageViewModel.getShouldLoadAsMobileWeb() && find2.isAvailableOnMobileWeb()));
                                                                                                int i10 = PageActionOverflowView.WhenMappings.$EnumSwitchMapping$0[find2.ordinal()];
                                                                                                if (i10 == 1) {
                                                                                                    materialTextView5.setText(pageViewModel.isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch);
                                                                                                    boolean z2 = pageViewModel.isWatched;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds((!z2 || pageViewModel.hasWatchlistExpiry) ? !z2 ? R.drawable.ic_baseline_star_outline_24 : R.drawable.ic_baseline_star_half_24 : R.drawable.ic_star_24, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility((z && Headers.Companion.isLoggedIn()) ? 0 : 8);
                                                                                                } else if (i10 == 2) {
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(((ReadingListPage) pageViewModel.readingListPage) != null ? R.drawable.ic_bookmark_white_24dp : R.drawable.ic_bookmark_border_white_24dp, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else if (i10 == 3) {
                                                                                                    Page page = (Page) pageViewModel.page;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(!(page != null && page.pageProperties.canEdit) ? R.drawable.ic_edit_pencil_locked : R.drawable.ic_mode_edit_white_24dp, 0, 0, 0);
                                                                                                } else if (i10 != 4) {
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else {
                                                                                                    Page page2 = (Page) pageViewModel.page;
                                                                                                    boolean z3 = (page2 != null ? page2.pageProperties.geo : null) != null;
                                                                                                    Context context = pageActionOverflowView.getContext();
                                                                                                    context.getClass();
                                                                                                    ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, z3 ? R.attr.primary_color : R.attr.inactive_color);
                                                                                                    materialTextView5.setTextColor(themedColorStateList);
                                                                                                    UuidKt.setCompoundDrawableTintList(materialTextView5, themedColorStateList);
                                                                                                }
                                                                                            }
                                                                                            if (view2.isAttachedToWindow()) {
                                                                                                view2.addOnAttachStateChangeListener(new SystemBarStateMonitor.AnonymousClass3(3, view2, pageActionOverflowView));
                                                                                            } else {
                                                                                                pageActionOverflowView.dismissPopupWindowHost();
                                                                                            }
                                                                                            PageFragment pageFragment7 = pageActivity.pageFragment;
                                                                                            if (pageFragment7 == null) {
                                                                                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                                throw null;
                                                                                            }
                                                                                            ArticleInteractionEvent articleInteractionEvent4 = pageFragment7.articleInteractionEvent;
                                                                                            if (articleInteractionEvent4 != null) {
                                                                                                articleInteractionEvent4.submitEvent("more");
                                                                                            }
                                                                                            Prefs prefs4 = Prefs.INSTANCE;
                                                                                            PrefsIoUtil.setBoolean(R.string.preference_key_customize_toolbar_tooltip, false);
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i8)));
                                                                                return;
                                                                        }
                                                                    }
                                                                });
                                                                ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setVisibility(Headers.Companion.isLoggedIn() ? 0 : 8);
                                                                ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.PageActivity$$ExternalSyntheticLambda6
                                                                    public final /* synthetic */ PageActivity f$0;

                                                                    {
                                                                        this.f$0 = this;
                                                                    }

                                                                    @Override // android.view.View.OnClickListener
                                                                    public final void onClick(View view2) {
                                                                        String str;
                                                                        int i62 = i2;
                                                                        PageActivity pageActivity = this.f$0;
                                                                        switch (i62) {
                                                                            case 0:
                                                                                PageFragment pageFragment = pageActivity.pageFragment;
                                                                                if (pageFragment == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                                                                                if (articleInteractionEvent != null) {
                                                                                    articleInteractionEvent.submitEvent("search_wikipedia");
                                                                                }
                                                                                PageFragment pageFragment2 = pageActivity.pageFragment;
                                                                                if (pageFragment2 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                PageTitle pageTitle = (PageTitle) pageFragment2.model.title;
                                                                                if ((pageTitle != null ? pageTitle.namespace() : null) == Namespace.MAIN) {
                                                                                    PageFragment pageFragment3 = pageActivity.pageFragment;
                                                                                    if (pageFragment3 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                        throw null;
                                                                                    }
                                                                                    PageTitle pageTitle2 = (PageTitle) pageFragment3.model.title;
                                                                                    if (pageTitle2 != null) {
                                                                                        str = pageTitle2.getDisplayText();
                                                                                        int i7222 = SearchActivity.$r8$clinit;
                                                                                        pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                        return;
                                                                                    }
                                                                                }
                                                                                str = null;
                                                                                int i72222 = SearchActivity.$r8$clinit;
                                                                                pageActivity.startActivity(LoginClient.newIntent$default(pageActivity, Constants.InvokeSource.TOOLBAR, (String) null, str, 40));
                                                                                return;
                                                                            case 1:
                                                                                PageFragment pageFragment4 = pageActivity.pageFragment;
                                                                                if (pageFragment4 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent2 = pageFragment4.articleInteractionEvent;
                                                                                if (articleInteractionEvent2 != null) {
                                                                                    articleInteractionEvent2.submitEvent("notification");
                                                                                }
                                                                                if (Headers.Companion.isLoggedIn()) {
                                                                                    pageActivity.startActivity(new Intent(pageActivity, (Class<?>) NotificationActivity.class));
                                                                                    return;
                                                                                }
                                                                                long time = new Date().getTime();
                                                                                Prefs prefs = Prefs.INSTANCE;
                                                                                if (time - PrefsIoUtil.getLong(0L, R.string.preference_key_last_anon_notification_time) < 604800000) {
                                                                                    Prefs prefs2 = Prefs.INSTANCE;
                                                                                    String string = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    if (string == null || string.length() == 0) {
                                                                                        return;
                                                                                    }
                                                                                    WikiSite.Companion companion = WikiSite.Companion;
                                                                                    String string2 = PrefsIoUtil.getString(R.string.preference_key_last_anon_notification_lang, "");
                                                                                    string2.getClass();
                                                                                    companion.getClass();
                                                                                    WikiSite forLanguageCode = WikiSite.Companion.forLanguageCode(string2);
                                                                                    PageTitle pageTitle3 = new PageTitle(Animation.CC.m(UserTalkAliasData.valueFor(forLanguageCode.languageCode), ":", PrefsIoUtil.getString(R.string.preference_key_last_anon_user_with_messages, "")), forLanguageCode, (String) null);
                                                                                    Constants.InvokeSource invokeSource = Constants.InvokeSource.PAGE_ACTIVITY;
                                                                                    invokeSource.getClass();
                                                                                    Intent putExtra = new Intent(pageActivity, (Class<?>) TalkTopicsActivity.class).putExtra("title", pageTitle3);
                                                                                    String str2 = pageTitle3.fragment;
                                                                                    Intent putExtra2 = putExtra.putExtra("goToTopic", !(str2 == null || str2.length() == 0)).putExtra("invokeSource", invokeSource);
                                                                                    putExtra2.getClass();
                                                                                    pageActivity.startActivity(putExtra2);
                                                                                    return;
                                                                                }
                                                                                return;
                                                                            case 2:
                                                                                PageFragment pageFragment5 = pageActivity.pageFragment;
                                                                                if (pageFragment5 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                ArticleInteractionEvent articleInteractionEvent3 = pageFragment5.articleInteractionEvent;
                                                                                if (articleInteractionEvent3 != null) {
                                                                                    articleInteractionEvent3.submitEvent("tabs");
                                                                                }
                                                                                ActivityResultRegistry$register$2 activityResultRegistry$register$2 = pageActivity.requestBrowseTabLauncher;
                                                                                Intent putExtra3 = new Intent(pageActivity, (Class<?>) TabActivity.class).putExtra("launchedFromPageActivity", true);
                                                                                putExtra3.getClass();
                                                                                activityResultRegistry$register$2.launch(putExtra3, null);
                                                                                return;
                                                                            default:
                                                                                PageFragment pageFragment6 = pageActivity.pageFragment;
                                                                                if (pageFragment6 == null) {
                                                                                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                    throw null;
                                                                                }
                                                                                view2.getClass();
                                                                                Context requireContext = pageFragment6.requireContext();
                                                                                PageActionOverflowView pageActionOverflowView = new PageActionOverflowView(requireContext);
                                                                                View inflate2 = LayoutInflater.from(requireContext).inflate(R.layout.view_page_action_overflow, (ViewGroup) pageActionOverflowView, false);
                                                                                pageActionOverflowView.addView(inflate2);
                                                                                int i8 = R.id.customize_toolbar;
                                                                                MaterialTextView materialTextView2 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.customize_toolbar);
                                                                                if (materialTextView2 != null) {
                                                                                    i8 = R.id.overflow_forward;
                                                                                    MaterialTextView materialTextView3 = (MaterialTextView) Room.findChildViewById(inflate2, R.id.overflow_forward);
                                                                                    if (materialTextView3 != null) {
                                                                                        i8 = R.id.overflowList;
                                                                                        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate2, R.id.overflowList);
                                                                                        if (linearLayout != null) {
                                                                                            pageActionOverflowView.binding = new MultipartBody.Builder(materialTextView2, materialTextView3, linearLayout);
                                                                                            materialTextView3.setOnClickListener(new ViewUtil$$ExternalSyntheticLambda0(3, pageActionOverflowView));
                                                                                            Prefs prefs3 = Prefs.INSTANCE;
                                                                                            Iterator it = Prefs.getCustomizeToolbarMenuOrder().iterator();
                                                                                            while (it.hasNext()) {
                                                                                                int intValue = ((Number) it.next()).intValue();
                                                                                                View inflate3 = LayoutInflater.from(requireContext).inflate(R.layout.item_customize_toolbar_menu, (ViewGroup) null, false);
                                                                                                if (inflate3 == null) {
                                                                                                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
                                                                                                    return;
                                                                                                }
                                                                                                TextView textView = (TextView) inflate3;
                                                                                                PageActionItem.Companion.getClass();
                                                                                                PageActionItem find = PageActionItem.Companion.find(intValue);
                                                                                                textView.setId(find.getViewId());
                                                                                                textView.setText(requireContext.getString(find.getTitleResId()));
                                                                                                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(find.getIconResId(), 0, 0, 0);
                                                                                                textView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(28, pageActionOverflowView, find));
                                                                                                ((LinearLayout) pageActionOverflowView.binding.parts).addView(textView);
                                                                                            }
                                                                                            ((MaterialTextView) pageActionOverflowView.binding.boundary).setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(29, pageActionOverflowView, requireContext));
                                                                                            PageFragment.AvCallback avCallback = pageFragment6.pageActionItemCallback;
                                                                                            Tab currentTab = pageFragment6.getCurrentTab();
                                                                                            PageViewModel pageViewModel = pageFragment6.model;
                                                                                            avCallback.getClass();
                                                                                            currentTab.getClass();
                                                                                            pageViewModel.getClass();
                                                                                            pageActionOverflowView.setCallback(avCallback);
                                                                                            PopupWindow popupWindow = new PopupWindow((View) pageActionOverflowView, -2, -2, true);
                                                                                            pageActionOverflowView.popupWindowHost = popupWindow;
                                                                                            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                                                                            popupWindow.setOverlapAnchor(true);
                                                                                            popupWindow.showAsDropDown(view2, 0, 0, 8388613);
                                                                                            MultipartBody.Builder builder = pageActionOverflowView.binding;
                                                                                            MaterialTextView materialTextView4 = (MaterialTextView) builder.type;
                                                                                            LinearLayout linearLayout2 = (LinearLayout) builder.parts;
                                                                                            materialTextView4.setVisibility(currentTab.getBackStackPosition() < currentTab.backStack.size() - 1 ? 0 : 8);
                                                                                            int childCount = linearLayout2.getChildCount();
                                                                                            for (int i9 = 1; i9 < childCount; i9++) {
                                                                                                View childAt = linearLayout2.getChildAt(i9);
                                                                                                childAt.getClass();
                                                                                                MaterialTextView materialTextView5 = (MaterialTextView) childAt;
                                                                                                PageActionItem.Companion companion2 = PageActionItem.Companion;
                                                                                                int id = materialTextView5.getId();
                                                                                                companion2.getClass();
                                                                                                PageActionItem find2 = PageActionItem.Companion.find(id);
                                                                                                boolean z = ((Page) pageViewModel.page) != null && (!pageViewModel.getShouldLoadAsMobileWeb() || (pageViewModel.getShouldLoadAsMobileWeb() && find2.isAvailableOnMobileWeb()));
                                                                                                int i10 = PageActionOverflowView.WhenMappings.$EnumSwitchMapping$0[find2.ordinal()];
                                                                                                if (i10 == 1) {
                                                                                                    materialTextView5.setText(pageViewModel.isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch);
                                                                                                    boolean z2 = pageViewModel.isWatched;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds((!z2 || pageViewModel.hasWatchlistExpiry) ? !z2 ? R.drawable.ic_baseline_star_outline_24 : R.drawable.ic_baseline_star_half_24 : R.drawable.ic_star_24, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility((z && Headers.Companion.isLoggedIn()) ? 0 : 8);
                                                                                                } else if (i10 == 2) {
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(((ReadingListPage) pageViewModel.readingListPage) != null ? R.drawable.ic_bookmark_white_24dp : R.drawable.ic_bookmark_border_white_24dp, 0, 0, 0);
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else if (i10 == 3) {
                                                                                                    Page page = (Page) pageViewModel.page;
                                                                                                    materialTextView5.setCompoundDrawablesRelativeWithIntrinsicBounds(!(page != null && page.pageProperties.canEdit) ? R.drawable.ic_edit_pencil_locked : R.drawable.ic_mode_edit_white_24dp, 0, 0, 0);
                                                                                                } else if (i10 != 4) {
                                                                                                    materialTextView5.setVisibility(z ? 0 : 8);
                                                                                                } else {
                                                                                                    Page page2 = (Page) pageViewModel.page;
                                                                                                    boolean z3 = (page2 != null ? page2.pageProperties.geo : null) != null;
                                                                                                    Context context = pageActionOverflowView.getContext();
                                                                                                    context.getClass();
                                                                                                    ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context, z3 ? R.attr.primary_color : R.attr.inactive_color);
                                                                                                    materialTextView5.setTextColor(themedColorStateList);
                                                                                                    UuidKt.setCompoundDrawableTintList(materialTextView5, themedColorStateList);
                                                                                                }
                                                                                            }
                                                                                            if (view2.isAttachedToWindow()) {
                                                                                                view2.addOnAttachStateChangeListener(new SystemBarStateMonitor.AnonymousClass3(3, view2, pageActionOverflowView));
                                                                                            } else {
                                                                                                pageActionOverflowView.dismissPopupWindowHost();
                                                                                            }
                                                                                            PageFragment pageFragment7 = pageActivity.pageFragment;
                                                                                            if (pageFragment7 == null) {
                                                                                                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                                                                                                throw null;
                                                                                            }
                                                                                            ArticleInteractionEvent articleInteractionEvent4 = pageFragment7.articleInteractionEvent;
                                                                                            if (articleInteractionEvent4 != null) {
                                                                                                articleInteractionEvent4.submitEvent("more");
                                                                                            }
                                                                                            Prefs prefs4 = Prefs.INSTANCE;
                                                                                            PrefsIoUtil.setBoolean(R.string.preference_key_customize_toolbar_tooltip, false);
                                                                                            return;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i8)));
                                                                                return;
                                                                        }
                                                                    }
                                                                });
                                                                ((FixedDrawerLayout) getBinding().navigationDrawer).setScrimColor(0);
                                                                ((FrameLayoutNavMenuTriggerer) getBinding().containerWithNavTrigger).setCallback(this);
                                                                FixedDrawerLayout fixedDrawerLayout2 = (FixedDrawerLayout) getBinding().navigationDrawer;
                                                                _UtilJvmKt$$ExternalSyntheticLambda0 _utiljvmkt__externalsyntheticlambda0 = new _UtilJvmKt$$ExternalSyntheticLambda0();
                                                                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                                                                ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(fixedDrawerLayout2, _utiljvmkt__externalsyntheticlambda0);
                                                                this.hasTransitionAnimation = getIntent().getBooleanExtra("hasTransitionAnim", false);
                                                                ((WikiArticleCardView) getBinding().wikiArticleCardView).setVisibility(this.hasTransitionAnimation ? 0 : 8);
                                                                if (bundle != null) {
                                                                    WikipediaApp wikipediaApp2 = this.app;
                                                                    if (wikipediaApp2 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("app");
                                                                        throw null;
                                                                    }
                                                                    String appOrSystemLanguageCode = wikipediaApp2.getAppOrSystemLanguageCode();
                                                                    String string = bundle.getString("language");
                                                                    i = !Intrinsics.areEqual(appOrSystemLanguageCode, string != null ? string : "") ? 1 : 0;
                                                                }
                                                                if (i != 0) {
                                                                    WikipediaApp wikipediaApp3 = this.app;
                                                                    if (wikipediaApp3 == null) {
                                                                        Intrinsics.throwUninitializedPropertyAccessException("app");
                                                                        throw null;
                                                                    }
                                                                    wikipediaApp3.resetWikiSite();
                                                                    loadMainPage(TabPosition.EXISTING_TAB);
                                                                }
                                                                if (bundle == null) {
                                                                    Intent intent = getIntent();
                                                                    intent.getClass();
                                                                    handleIntent$1(intent);
                                                                    return;
                                                                }
                                                                return;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i3 = i4;
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
        }
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onDestroy() {
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_visited_article_page, true);
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        keyEvent.getClass();
        if (!(keyEvent.isCtrlPressed() && i == 34) && (keyEvent.isCtrlPressed() || i != 133)) {
            return super.onKeyDown(i, keyEvent);
        }
        PageFragment pageFragment = this.pageFragment;
        if (pageFragment != null) {
            pageFragment.showFindInPage();
            return true;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
        throw null;
    }

    @Override // org.wikipedia.page.linkpreview.LinkPreviewDialog.LoadPageCallback
    public final void onLinkPreviewLoadPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z) {
        pageTitle.getClass();
        historyEntry.getClass();
        loadPage(pageTitle, historyEntry, z ? TabPosition.NEW_TAB_BACKGROUND : TabPosition.CURRENT_TAB);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        intent.getClass();
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent$1(intent);
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        WikipediaApp wikipediaApp = this.app;
        if (wikipediaApp == null) {
            Intrinsics.throwUninitializedPropertyAccessException("app");
            throw null;
        }
        if (wikipediaApp.activityLifecycleHandler.haveMainActivity) {
            getOnBackPressedDispatcher().onBackPressed();
            return true;
        }
        PageFragment pageFragment = this.pageFragment;
        if (pageFragment != null) {
            pageFragment.goToMainActivity(NavTab.HOME);
            return true;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
        throw null;
    }

    public final void onPageCloseActionMode() {
        LinkedHashSet linkedHashSet = this.currentActionModes;
        Iterator it = new HashSet(linkedHashSet).iterator();
        it.getClass();
        while (it.hasNext()) {
            ((ActionMode) it.next()).finish();
        }
        linkedHashSet.clear();
    }

    public final void onPageLoadComplete() {
        removeTransitionAnimState();
        Prefs prefs = Prefs.INSTANCE;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        int i = 1;
        if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_customize_toolbar_tooltip), true)) {
            PageActivity$$ExternalSyntheticLambda12 pageActivity$$ExternalSyntheticLambda12 = new PageActivity$$ExternalSyntheticLambda12(this, i);
            if (this.exclusiveTooltipRunnable == null) {
                this.exclusiveTooltipRunnable = pageActivity$$ExternalSyntheticLambda12;
                ((MaterialToolbar) getBinding().pageToolbar).postDelayed(new Processor$$ExternalSyntheticLambda2(25, this, pageActivity$$ExternalSyntheticLambda12), 500L);
            }
        }
        Prefs prefs2 = Prefs.INSTANCE;
        Continuation continuation = null;
        if (Prefs.isHybridSearchOnboardingShown() && new HybridSearchAbCTest().isHybridSearchEnabled(Jsoup.getInstance().getLanguageState().getAppLanguageCode())) {
            PageFragment pageFragment = this.pageFragment;
            if (pageFragment == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
            PageTitle pageTitle = (PageTitle) pageFragment.model.title;
            if ((pageTitle != null ? pageTitle.namespace() : null) == Namespace.MAIN) {
                StringUtil stringUtil = StringUtil.INSTANCE;
                PageFragment pageFragment2 = this.pageFragment;
                if (pageFragment2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                    throw null;
                }
                PageTitle pageTitle2 = (PageTitle) pageFragment2.model.title;
                ((MaterialTextView) getBinding().pageToolbarButtonSearch).setText(getString(R.string.hybrid_search_article_search_hint, StringUtil.fromHtml(pageTitle2 != null ? pageTitle2.getDisplayText() : null)));
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new PageActivity$onCreate$1(this, continuation, 2), 3);
            }
        }
        ((MaterialTextView) getBinding().pageToolbarButtonSearch).setText(getString(R.string.search_hint));
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new PageActivity$onCreate$1(this, continuation, 2), 3);
    }

    public final void onPageRequestEditDescription(String str, PageTitle pageTitle, PageSummaryForEdit pageSummaryForEdit, PageSummaryForEdit pageSummaryForEdit2, DescriptionEditActivity.Action action, Constants.InvokeSource invokeSource) {
        pageTitle.getClass();
        action.getClass();
        invokeSource.getClass();
        Intent putExtra = new Intent(this, (Class<?>) DescriptionEditActivity.class).putExtra("title", pageTitle).putExtra("highlightText", str).putExtra("sourceSummary", pageSummaryForEdit).putExtra("targetSummary", pageSummaryForEdit2).putExtra("intentAction", action).putExtra("invokeSource", invokeSource);
        putExtra.getClass();
        this.requestSuggestedEditsLauncher.launch(putExtra, null);
    }

    public final void onPageRequestGallery(PageTitle pageTitle, String str, WikiSite wikiSite, long j, boolean z, ActivityOptionsCompat$ActivityOptionsCompatImpl activityOptionsCompat$ActivityOptionsCompatImpl) {
        pageTitle.getClass();
        wikiSite.getClass();
        if (z) {
            WikiSite wikiSite2 = pageTitle.wikiSite;
            Long valueOf = Long.valueOf(j);
            wikiSite2.getClass();
            Intent putExtra = new Intent(this, (Class<?>) GalleryActivity.class).putExtra("wikiSite", wikiSite2).putExtra("title", pageTitle).putExtra("filename", str).putExtra("revision", valueOf);
            putExtra.getClass();
            this.requestGalleryEditLauncher.launch(putExtra, activityOptionsCompat$ActivityOptionsCompatImpl);
            return;
        }
        WikiSite wikiSite3 = pageTitle.wikiSite;
        Long valueOf2 = Long.valueOf(j);
        wikiSite3.getClass();
        Intent putExtra2 = new Intent(this, (Class<?>) GalleryActivity.class).putExtra("wikiSite", wikiSite3).putExtra("title", pageTitle).putExtra("filename", str).putExtra("revision", valueOf2);
        putExtra2.getClass();
        this.requestHandleIntentLauncher.launch(putExtra2, activityOptionsCompat$ActivityOptionsCompatImpl);
    }

    public final void onPageSetToolbarElevationEnabled(boolean z) {
        ((FrameLayout) getBinding().pageToolbarContainer).setElevation(Okio__OkioKt.dpToPx(z ? Okio__OkioKt.getDimension(R.dimen.toolbar_default_elevation) : RecyclerView.DECELERATION_RATE));
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPause() {
        if (!this.currentActionModes.isEmpty()) {
            onPageCloseActionMode();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public final boolean onPrepareOptionsMenu(Menu menu) {
        menu.getClass();
        if (!isDestroyed()) {
            ((TabCountsView) getBinding().pageToolbarButtonTabs).updateTabCount(false);
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onProvideAssistContent(AssistContent assistContent) {
        assistContent.getClass();
        super.onProvideAssistContent(assistContent);
        PageFragment pageFragment = this.pageFragment;
        if (pageFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
            throw null;
        }
        PageTitle pageTitle = (PageTitle) pageFragment.model.title;
        if (pageTitle != null) {
            Uri parse = Uri.parse(pageTitle.getUri());
            parse.getClass();
            assistContent.setWebUri(parse);
        }
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        WikipediaApp wikipediaApp = this.app;
        if (wikipediaApp == null) {
            Intrinsics.throwUninitializedPropertyAccessException("app");
            throw null;
        }
        wikipediaApp.resetWikiSite();
        updateNotificationsButton(false);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setString(R.string.preference_key_temporary_wikitext_storage, null);
        YearInReviewDialog.maybeShowYearInReviewFeedbackDialog(this);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        WikipediaApp wikipediaApp = this.app;
        if (wikipediaApp != null) {
            bundle.putString("language", wikipediaApp.getAppOrSystemLanguageCode());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("app");
            throw null;
        }
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onStart() {
        try {
            super.onStart();
        } catch (Exception e) {
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            if (!StringsKt.contains(message, "webview", true)) {
                Throwable th = e;
                while (th.getCause() != null) {
                    th = th.getCause();
                    th.getClass();
                }
                String message2 = th.getMessage();
                if (!StringsKt.contains(message2 != null ? message2 : "", "webview", true)) {
                    throw e;
                }
            }
            WikipediaApp wikipediaApp = this.app;
            if (wikipediaApp == null) {
                Intrinsics.throwUninitializedPropertyAccessException("app");
                throw null;
            }
            Toast.makeText(wikipediaApp, R.string.error_webview_updating, 1).show();
            finish();
        }
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onUnreadNotification() {
        updateNotificationsButton(true);
    }

    public final void removeTransitionAnimState() {
        int i = 0;
        if (((FragmentContainerView) getBinding().pageFragment).getVisibility() != 0) {
            ((FragmentContainerView) getBinding().pageFragment).setVisibility(0);
        }
        if (((WikiArticleCardView) getBinding().wikiArticleCardView).getVisibility() != 8) {
            ((WikiArticleCardView) getBinding().wikiArticleCardView).postDelayed(new PageActivity$$ExternalSyntheticLambda12(this, i), 250L);
        }
    }

    public final void updateNotificationsButton(boolean z) {
        if (Headers.Companion.isLoggedIn()) {
            ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setVisibility(0);
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getNotificationUnreadCount() <= 0) {
                ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setUnreadCount(0);
                return;
            }
            ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setUnreadCount(Prefs.getNotificationUnreadCount());
            if (z) {
                ViewHideHandler viewHideHandler = this.toolbarHideHandler;
                if (viewHideHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                    throw null;
                }
                viewHideHandler.ensureDisplayed();
                ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).runAnimation();
                return;
            }
            return;
        }
        if (!Headers.Companion.isLoggedIn()) {
            long time = new Date().getTime();
            Prefs prefs2 = Prefs.INSTANCE;
            if (time - PrefsIoUtil.getLong(0L, R.string.preference_key_last_anon_notification_time) < 604800000) {
                ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setVisibility(0);
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_anon_user_has_notification), false)) {
                    ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setUnreadCount(0);
                    return;
                }
                ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setUnreadCount(1);
                if (z) {
                    ViewHideHandler viewHideHandler2 = this.toolbarHideHandler;
                    if (viewHideHandler2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                        throw null;
                    }
                    viewHideHandler2.ensureDisplayed();
                    ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).runAnimation();
                    return;
                }
                return;
            }
        }
        ((NotificationButtonView) getBinding().pageToolbarButtonNotifications).setVisibility(8);
    }

    public final void updateProgressBar$1(boolean z) {
        ((LinearProgressIndicator) getBinding().pageProgressBar).setVisibility(z ? 0 : 8);
    }
}
