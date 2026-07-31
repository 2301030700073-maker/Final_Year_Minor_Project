package org.wikipedia.page;

import android.animation.ObjectAnimator;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.location.Location;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ActionProvider;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.ActivityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.drawerlayout.widget.FixedDrawerLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.textview.MaterialTextView;
import com.google.gson.GsonBuilder;
import j$.time.Duration;
import j$.time.Instant;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.SocketException;
import java.net.URLDecoder;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.JsonObject;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__JvmOkioKt;
import okio.Okio__OkioKt;
import okio.Options;
import org.jsoup.Jsoup;
import org.wikipedia.BackPressedHandler;
import org.wikipedia.Constants;
import org.wikipedia.LongPressHandler;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.bridge.CommunicationBridge;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.dataclient.Service;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.donate.donationreminder.DonationReminderConfig;
import org.wikipedia.donate.donationreminder.DonationReminderHelper;
import org.wikipedia.edit.EditHandler;
import org.wikipedia.edit.EditSectionActivity;
import org.wikipedia.games.GamesHubActivity;
import org.wikipedia.games.WikiGames;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.json.JsonUtil;
import org.wikipedia.language.LangLinksActivity;
import org.wikipedia.login.LoginClient;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.main.MainActivity;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.media.MediaPlayerImplementation$CallbackWrapper;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageFragment.AvCallback;
import org.wikipedia.page.PageFragment.FindReferenceInPageActionProvider;
import org.wikipedia.page.action.PageActionItem;
import org.wikipedia.page.campaign.CampaignDialog;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.page.leadimages.LeadImagesHandler;
import org.wikipedia.page.leadimages.PageHeaderView;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.page.references.PageReferences;
import org.wikipedia.page.references.ReferenceDialog;
import org.wikipedia.page.shareafact.ShareHandler;
import org.wikipedia.page.tabs.Tab;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.random.RandomViewModel$loadMore$2;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.theme.ThemeChooserDialog;
import org.wikipedia.util.ActiveTimer;
import org.wikipedia.util.FeedbackUtil$$ExternalSyntheticLambda1;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.TabUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.ConfigurableTabLayout$DisabledTag;
import org.wikipedia.views.EditNoticesDialog;
import org.wikipedia.views.ObservableWebView;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.watchlist.WatchlistExpiry;
import org.wikipedia.watchlist.WatchlistExpiryDialog;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0005\t\n\u000b\f\nB\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lorg/wikipedia/page/PageFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/BackPressedHandler;", "Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;", "Lorg/wikipedia/theme/ThemeChooserDialog$Callback;", "Lorg/wikipedia/page/references/ReferenceDialog$Callback;", "Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;", "<init>", "()V", "Callback", "AvCallback", "WebViewScrollTriggerListener", "FindReferenceInPageActionProvider", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PageFragment extends Fragment implements BackPressedHandler, CommunicationBridge.CommunicationBridgeListener, ThemeChooserDialog.Callback, ReferenceDialog.Callback, WatchlistExpiryDialog.Callback {
    public static final int REFRESH_SPINNER_ADDITIONAL_OFFSET;
    public GsonBuilder _binding;
    public final WikipediaApp app;
    public ArticleInteractionEvent articleInteractionEvent;
    public AvCallback avCallback;
    public AvPlayer avPlayer;
    public ViewHideHandler bottomBarHideHandler;
    public CommunicationBridge bridge;
    public CampaignDialog campaignDialog;
    public EditHandler editHandler;
    public boolean errorState;
    public LeadImagesHandler leadImagesHandler;
    public PageFragment$setupMessageHandlers$1 linkHandler;
    public final PageViewModel model;
    public GsonBuilder pageFragmentLoadState;
    public boolean pageRefreshed;
    public PageReferences references;
    public long revision;
    public boolean scrolledUpForThemeChange;
    public ShareHandler shareHandler;
    public SidePanelHandler sidePanelHandler;
    public ObservableWebView webView;
    public final Fragment.AnonymousClass10 donationReminderLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new PageFragment$$ExternalSyntheticLambda23(this), new FragmentManager$FragmentIntentSenderContract(3));
    public final ActiveTimer activeTimer = new ActiveTimer();
    public final WebViewScrollTriggerListener scrollTriggerListener = new WebViewScrollTriggerListener();
    public final PageFragment$$ExternalSyntheticLambda23 pageRefreshListener = new PageFragment$$ExternalSyntheticLambda23(this);
    public final AvCallback pageActionItemCallback = new AvCallback();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FindReferenceInPageActionProvider extends ActionProvider implements View.OnClickListener {
        public final ArrayList backLinksList;
        public final Request.Builder binding;
        public int currentPos;
        public final String referenceAnchor;
        public final String referenceText;

        public FindReferenceInPageActionProvider(Context context, String str, String str2, ArrayList arrayList) {
            super(context);
            this.referenceAnchor = str;
            this.referenceText = str2;
            this.backLinksList = arrayList;
            View inflate = LayoutInflater.from(context).inflate(R.layout.group_find_references_in_page, (ViewGroup) null, false);
            LinearLayout linearLayout = (LinearLayout) inflate;
            int i = R.id.find_in_page_next;
            ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.find_in_page_next);
            if (imageView != null) {
                i = R.id.find_in_page_prev;
                ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.find_in_page_prev);
                if (imageView2 != null) {
                    i = R.id.reference_count;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.reference_count);
                    if (textView != null) {
                        i = R.id.reference_label;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.reference_label);
                        if (textView2 != null) {
                            this.binding = new Request.Builder(linearLayout, imageView, imageView2, textView, textView2);
                            return;
                        }
                    }
                }
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
            throw null;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            Request.Builder builder = this.binding;
            boolean equals = view.equals((ImageView) builder.headers);
            ArrayList arrayList = this.backLinksList;
            if (equals) {
                if (arrayList.isEmpty()) {
                    return;
                }
                int i = this.currentPos - 1;
                this.currentPos = i;
                if (i < 0) {
                    i = arrayList.size() - 1;
                }
                this.currentPos = i;
                scrollTo(i);
                return;
            }
            if (view.equals((ImageView) builder.method)) {
                if (arrayList.isEmpty()) {
                    return;
                }
                int i2 = this.currentPos + 1;
                this.currentPos = i2;
                int i3 = i2 >= arrayList.size() ? 0 : this.currentPos;
                this.currentPos = i3;
                scrollTo(i3);
                return;
            }
            if (view.equals((TextView) builder.tags)) {
                PageFragment pageFragment = PageFragment.this;
                CommunicationBridge communicationBridge = pageFragment.bridge;
                if (communicationBridge == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge.execute("var el = document.getElementById('" + StringsKt.substringAfter$default(this.referenceAnchor, '#') + "');window.scrollTo(0, el.offsetTop - (screen.height / 2));setTimeout(function(){ el.style.backgroundColor='#fc3';    setTimeout(function(){ el.style.backgroundColor=null; }, 500);}, 250);");
                Callback callback = pageFragment.callback();
                if (callback != null) {
                    ((PageActivity) callback).onPageCloseActionMode();
                }
            }
        }

        @Override // android.view.ActionProvider
        public final View onCreateActionView() {
            Request.Builder builder = this.binding;
            ((ImageView) builder.headers).setOnClickListener(this);
            ((ImageView) builder.method).setOnClickListener(this);
            TextView textView = (TextView) builder.tags;
            textView.setOnClickListener(this);
            textView.setText(PageFragment.this.getString(R.string.reference_list_title) + " " + this.referenceText);
            if (!this.backLinksList.isEmpty()) {
                scrollTo(0);
            }
            LinearLayout linearLayout = (LinearLayout) builder.url;
            linearLayout.getClass();
            return linearLayout;
        }

        @Override // android.view.ActionProvider
        public final boolean overridesItemVisibility() {
            return true;
        }

        public final void scrollTo(int i) {
            ArrayList arrayList = this.backLinksList;
            String str = (String) arrayList.get(i);
            if (str != null) {
                TextView textView = (TextView) this.binding.body;
                Object[] objArr = {Integer.valueOf(i + 1), Integer.valueOf(arrayList.isEmpty() ? 0 : arrayList.size())};
                PageFragment pageFragment = PageFragment.this;
                textView.setText(pageFragment.getString(R.string.find_in_page_result, objArr));
                CommunicationBridge communicationBridge = pageFragment.bridge;
                if (communicationBridge == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge.execute("pcs.c1.Page.prepareForScrollToAnchor(\"" + StringsKt__StringsJVMKt.replace$default(str, "\"", "\\\"") + "\", { highlight: true } )");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WebViewScrollTriggerListener implements ObservableWebView.OnContentHeightChangedListener {
        public int stagedScrollY;

        public WebViewScrollTriggerListener() {
        }

        @Override // org.wikipedia.views.ObservableWebView.OnContentHeightChangedListener
        public final void onContentHeightChanged(int i) {
            if (this.stagedScrollY > 0) {
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                Resources resources = Jsoup.getInstance().getResources();
                resources.getClass();
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                displayMetrics.getClass();
                float f = i * displayMetrics.density;
                PageFragment pageFragment = PageFragment.this;
                if (f - pageFragment.getWebView().getHeight() > this.stagedScrollY) {
                    pageFragment.getWebView().setScrollY(this.stagedScrollY);
                    this.stagedScrollY = 0;
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PageActionItem.values().length];
            try {
                iArr[PageActionItem.ADD_TO_WATCHLIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PageActionItem.SAVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PageActionItem.EDIT_ARTICLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PageActionItem.VIEW_ON_MAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        Resources resources = Jsoup.getInstance().getResources();
        resources.getClass();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        displayMetrics.getClass();
        REFRESH_SPINNER_ADDITIONAL_OFFSET = (int) (16.0f * displayMetrics.density);
    }

    public PageFragment() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        this.app = Jsoup.getInstance();
        this.model = new PageViewModel();
    }

    public static void refreshPage$default(PageFragment pageFragment) {
        HistoryEntry historyEntry;
        PageViewModel pageViewModel = pageFragment.model;
        CommunicationBridge communicationBridge = pageFragment.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        if (!communicationBridge.isMetadataReady || !communicationBridge.isPcsReady) {
            GsonBuilder gsonBuilder = pageFragment._binding;
            gsonBuilder.getClass();
            ((WikiSwipeRefreshLayout) gsonBuilder.reflectionFilters).setRefreshing(false);
            return;
        }
        PageTitle pageTitle = (PageTitle) pageViewModel.title;
        if (pageTitle == null || (historyEntry = (HistoryEntry) pageViewModel.curEntry) == null) {
            return;
        }
        GsonBuilder gsonBuilder2 = pageFragment._binding;
        gsonBuilder2.getClass();
        ((WikiErrorView) gsonBuilder2.instanceCreators).setVisibility(8);
        GsonBuilder gsonBuilder3 = pageFragment._binding;
        gsonBuilder3.getClass();
        PageActionTabLayout pageActionTabLayout = (PageActionTabLayout) gsonBuilder3.fieldNamingPolicy;
        int childCount = pageActionTabLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = pageActionTabLayout.getChildAt(i);
            childAt.getClass();
            childAt.setTag(null);
        }
        pageFragment.errorState = false;
        pageViewModel.curEntry = new HistoryEntry(4, pageTitle);
        pageFragment.loadPage(pageTitle, historyEntry, false, 0, pageFragment.app.isOnline());
    }

    public final void addTimeSpentReading(int i) {
        int i2;
        HistoryEntry historyEntry = (HistoryEntry) this.model.curEntry;
        if (historyEntry != null) {
            AwaitKt.launch$default(AwaitKt.MainScope(), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 16), null, new RandomViewModel$loadMore$2(historyEntry, i, null, 4), 2);
            int i3 = DonationReminderHelper.validReadCountOnSeconds;
            if (!DonationReminderHelper.isEnabled() || i < DonationReminderHelper.validReadCountOnSeconds) {
                return;
            }
            Prefs prefs = Prefs.INSTANCE;
            DonationReminderConfig donationReminderConfig = Prefs.getDonationReminderConfig();
            if (!donationReminderConfig.userEnabled || donationReminderConfig.setupTimestamp == 0 || (i2 = donationReminderConfig.articleFrequency) <= 0) {
                return;
            }
            int i4 = donationReminderConfig.articleVisit + 1;
            if (i4 >= i2) {
                Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(donationReminderConfig, false, 0L, 0L, 0, 0, RecyclerView.DECELERATION_RATE, true, 0, donationReminderConfig.goalReachedCount + 1, 55));
            } else {
                Prefs.setDonationReminderConfig(DonationReminderConfig.copy$default(donationReminderConfig, false, 0L, 0L, i4, 0, RecyclerView.DECELERATION_RATE, false, 0, 0, 503));
            }
        }
    }

    public final Callback callback() {
        ComponentCallbacks activity;
        if (Callback.class.isInstance(getTargetFragment(true))) {
            activity = getTargetFragment(true);
        } else {
            Fragment fragment = this.mParentFragment;
            if (fragment != null) {
                if (Callback.class.isInstance(fragment)) {
                    activity = this.mParentFragment;
                } else if (Callback.class.isInstance(requireParentFragment().mParentFragment)) {
                    activity = requireParentFragment().mParentFragment;
                }
            }
            activity = Callback.class.isInstance(getActivity()) ? getActivity() : null;
        }
        return (Callback) activity;
    }

    public final void dismissBottomSheet() {
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        DialogFragment dialogFragment = null;
        DialogFragment dialogFragment2 = (childFragmentManager.isStateSaved() || childFragmentManager.mDestroyed) ? null : (DialogFragment) childFragmentManager.findFragmentByTag("bottom_sheet_fragment");
        if (dialogFragment2 != null) {
            dialogFragment2.dismiss();
        }
        Callback callback = callback();
        if (callback != null) {
            FragmentManagerImpl supportFragmentManager = ((PageActivity) callback).getSupportFragmentManager();
            if (!supportFragmentManager.isStateSaved() && !supportFragmentManager.mDestroyed) {
                dialogFragment = (DialogFragment) supportFragmentManager.findFragmentByTag("bottom_sheet_fragment");
            }
            if (dialogFragment != null) {
                dialogFragment.dismiss();
            }
        }
    }

    public final Tab getCurrentTab() {
        return (Tab) CollectionsKt.last((List) this.app.tabList);
    }

    public final String getLeadImageEditLang() {
        PageTitle pageTitle;
        WikiSite wikiSite;
        PageTitle pageTitle2;
        WikiSite wikiSite2;
        LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
        if (leadImagesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
            throw null;
        }
        if (leadImagesHandler.callToActionIsTranslation) {
            PageSummaryForEdit pageSummaryForEdit = leadImagesHandler.callToActionTargetSummary;
            if (pageSummaryForEdit != null && (pageTitle2 = pageSummaryForEdit.pageTitle) != null && (wikiSite2 = pageTitle2.wikiSite) != null) {
                return wikiSite2.languageCode;
            }
        } else {
            PageSummaryForEdit pageSummaryForEdit2 = leadImagesHandler.callToActionSourceSummary;
            if (pageSummaryForEdit2 != null && (pageTitle = pageSummaryForEdit2.pageTitle) != null && (wikiSite = pageTitle.wikiSite) != null) {
                return wikiSite.languageCode;
            }
        }
        return null;
    }

    @Override // org.wikipedia.page.references.ReferenceDialog.Callback
    public final LinkHandler getLinkHandler() {
        PageFragment$setupMessageHandlers$1 pageFragment$setupMessageHandlers$1 = this.linkHandler;
        if (pageFragment$setupMessageHandlers$1 != null) {
            return pageFragment$setupMessageHandlers$1;
        }
        Intrinsics.throwUninitializedPropertyAccessException("linkHandler");
        throw null;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    public final int getMessageCardHeight() {
        LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
        if (leadImagesHandler != null) {
            return leadImagesHandler.getDonationReminderCardViewHeight(false);
        }
        Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
        throw null;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    public final PageViewModel getModel() {
        return this.model;
    }

    @Override // org.wikipedia.page.references.ReferenceDialog.Callback
    public final List getReferencesGroup() {
        PageReferences pageReferences = this.references;
        if (pageReferences != null) {
            return pageReferences.referencesGroup;
        }
        return null;
    }

    @Override // org.wikipedia.page.references.ReferenceDialog.Callback
    public final int getSelectedReferenceIndex() {
        PageReferences pageReferences = this.references;
        if (pageReferences != null) {
            return pageReferences.selectedIndex;
        }
        return 0;
    }

    public final SidePanelHandler getSidePanelHandler() {
        SidePanelHandler sidePanelHandler = this.sidePanelHandler;
        if (sidePanelHandler != null) {
            return sidePanelHandler;
        }
        Intrinsics.throwUninitializedPropertyAccessException("sidePanelHandler");
        throw null;
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    public final int getToolbarMargin() {
        return ((FrameLayout) ((PageActivity) requireActivity()).getBinding().pageToolbarContainer).getHeight();
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    /* renamed from: getWebView$1, reason: merged with bridge method [inline-methods] */
    public final ObservableWebView getWebView() {
        ObservableWebView observableWebView = this.webView;
        if (observableWebView != null) {
            return observableWebView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("webView");
        throw null;
    }

    public final void goToMainActivity(NavTab navTab) {
        navTab.getClass();
        int i = MainActivity.$r8$clinit;
        startActivity(UriUtil.newIntent(requireActivity()).addFlags(67108864).putExtra("returnToMain", true).putExtra("goToMainTab", navTab.ordinal()), null);
        requireActivity().finish();
    }

    @Override // org.wikipedia.bridge.CommunicationBridge.CommunicationBridgeListener
    /* renamed from: isPreview */
    public final boolean getIsPreview() {
        return false;
    }

    public final void loadPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z, int i, boolean z2) {
        ContextsKt supportActionBar;
        pageTitle.getClass();
        historyEntry.getClass();
        AppCompatActivity requireActivity = requireActivity();
        if ((requireActivity instanceof PageActivity) && (supportActionBar = ((PageActivity) requireActivity).getSupportActionBar()) != null) {
            supportActionBar.setTitle("");
        }
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        if (!(((childFragmentManager.isStateSaved() || childFragmentManager.mDestroyed) ? null : (DialogFragment) childFragmentManager.findFragmentByTag("bottom_sheet_fragment")) instanceof ThemeChooserDialog)) {
            dismissBottomSheet();
        }
        if (Headers.Companion.isLoggedIn()) {
            Okio__JvmOkioKt.schedulePollNotificationJob(requireContext());
        }
        TabUtil.PAGEVIEW_ID = null;
        ActiveTimer activeTimer = this.activeTimer;
        addTimeSpentReading((int) (((activeTimer.isPaused ? activeTimer.pauseMillis : System.currentTimeMillis()) - activeTimer.startMillis) / 1000));
        long currentTimeMillis = System.currentTimeMillis();
        activeTimer.startMillis = currentTimeMillis;
        activeTimer.pauseMillis = currentTimeMillis;
        Callback callback = callback();
        if (callback != null) {
            ((PageActivity) callback).onPageSetToolbarElevationEnabled(false);
        }
        getSidePanelHandler().setEnabled(false);
        this.errorState = false;
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((WikiErrorView) gsonBuilder.instanceCreators).setVisibility(8);
        PageViewModel pageViewModel = this.model;
        pageViewModel.title = pageTitle;
        pageViewModel.curEntry = historyEntry;
        pageViewModel.page = null;
        pageViewModel.readingListPage = null;
        pageViewModel.forceNetwork = z2;
        getWebView().setVisibility(0);
        GsonBuilder gsonBuilder2 = this._binding;
        gsonBuilder2.getClass();
        ((PageActionTabLayout) gsonBuilder2.fieldNamingPolicy).setVisibility(0);
        GsonBuilder gsonBuilder3 = this._binding;
        gsonBuilder3.getClass();
        PageActionTabLayout pageActionTabLayout = (PageActionTabLayout) gsonBuilder3.fieldNamingPolicy;
        int childCount = pageActionTabLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = pageActionTabLayout.getChildAt(i2);
            childAt.getClass();
            childAt.setTag(null);
        }
        updateProgressBar(true);
        this.pageRefreshed = z2;
        this.references = null;
        this.revision = 0L;
        GsonBuilder gsonBuilder4 = this.pageFragmentLoadState;
        if (gsonBuilder4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
            throw null;
        }
        PageViewModel pageViewModel2 = (PageViewModel) gsonBuilder4.excluder;
        if (z && ((PageTitle) pageViewModel2.title) != null && ((HistoryEntry) pageViewModel2.curEntry) != null) {
            gsonBuilder4.updateCurrentBackStackItem();
            Tab tab = (Tab) gsonBuilder4.hierarchyFactories;
            PageTitle pageTitle2 = (PageTitle) pageViewModel2.title;
            pageTitle2.getClass();
            HistoryEntry historyEntry2 = (HistoryEntry) pageViewModel2.curEntry;
            historyEntry2.getClass();
            PageBackStackItem pageBackStackItem = new PageBackStackItem(pageTitle2, historyEntry2);
            List list = tab.backStack;
            while (list.size() > tab.getBackStackPosition() + 1) {
                list.remove(tab.getBackStackPosition() + 1);
            }
            list.add(pageBackStackItem);
            tab.backStackPosition = list.size() - 1;
        }
        StandaloneCoroutine standaloneCoroutine = (StandaloneCoroutine) gsonBuilder4.reflectionFilters;
        if (standaloneCoroutine != null && standaloneCoroutine.isActive()) {
            standaloneCoroutine.cancel(null);
        }
        gsonBuilder4.reflectionFilters = AwaitKt.launch$default(ViewModelKt.getLifecycleScope((PageFragment) gsonBuilder4.longSerializationPolicy), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(gsonBuilder4), null, new PageFragmentLoadState$pageLoad$3(gsonBuilder4, null), 2);
        this.scrollTriggerListener.stagedScrollY = i;
    }

    @Override // org.wikipedia.BackPressedHandler
    public final boolean onBackPressed() {
        ArticleInteractionEvent articleInteractionEvent = this.articleInteractionEvent;
        if (articleInteractionEvent != null) {
            articleInteractionEvent.submitEvent("back");
        }
        ActivityPageBinding activityPageBinding = getSidePanelHandler().binding;
        FixedDrawerLayout fixedDrawerLayout = (FixedDrawerLayout) activityPageBinding.navigationDrawer;
        FrameLayout frameLayout = (FrameLayout) activityPageBinding.sidePanelContainer;
        fixedDrawerLayout.getClass();
        if (DrawerLayout.isDrawerOpen(frameLayout)) {
            getSidePanelHandler().hide();
            return true;
        }
        GsonBuilder gsonBuilder = this.pageFragmentLoadState;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
            throw null;
        }
        if (((Tab) gsonBuilder.hierarchyFactories).getBackStackPosition() > 0) {
            Tab tab = (Tab) gsonBuilder.hierarchyFactories;
            if (tab.getBackStackPosition() > 0) {
                tab.backStackPosition = tab.getBackStackPosition() - 1;
            }
            if (!((Tab) gsonBuilder.hierarchyFactories).backStack.isEmpty()) {
                gsonBuilder.loadFromBackStack();
                return true;
            }
        }
        WikipediaApp wikipediaApp = this.app;
        if (wikipediaApp.tabList.isEmpty()) {
            return false;
        }
        ArrayList arrayList = wikipediaApp.tabList;
        arrayList.remove(arrayList.size() - 1);
        wikipediaApp.commitTabState();
        return false;
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onCancelThemeChooser() {
        if (this.scrolledUpForThemeChange) {
            ObjectAnimator.ofInt(getWebView(), "scrollY", getWebView().getScrollY(), 0).setDuration(250L).start();
        }
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        configuration.getClass();
        this.mCalled = true;
        CommunicationBridge communicationBridge = this.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        if (communicationBridge.isMetadataReady && communicationBridge.isPcsReady && !this.errorState) {
            GsonBuilder gsonBuilder = this.pageFragmentLoadState;
            if (gsonBuilder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
            LeadImagesHandler leadImagesHandler = (LeadImagesHandler) gsonBuilder.factories;
            leadImagesHandler.loadLeadImage();
            ((CommunicationBridge) gsonBuilder.instanceCreators).execute("pcs.c1.Page.setMargins({ top:'" + (leadImagesHandler.getTopMargin() + 16) + "px', bottom:'48px' })");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_page, viewGroup, false);
        int i = R.id.fragment_page_coordinator;
        if (((CoordinatorLayout) Room.findChildViewById(inflate, R.id.fragment_page_coordinator)) != null) {
            i = R.id.page_actions_tab_container;
            FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.page_actions_tab_container);
            if (frameLayout != null) {
                i = R.id.page_actions_tab_layout;
                PageActionTabLayout pageActionTabLayout = (PageActionTabLayout) Room.findChildViewById(inflate, R.id.page_actions_tab_layout);
                if (pageActionTabLayout != null) {
                    i = R.id.page_contents_container;
                    if (((CoordinatorLayout) Room.findChildViewById(inflate, R.id.page_contents_container)) != null) {
                        i = R.id.page_error;
                        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.page_error);
                        if (wikiErrorView != null) {
                            i = R.id.page_header_view;
                            PageHeaderView pageHeaderView = (PageHeaderView) Room.findChildViewById(inflate, R.id.page_header_view);
                            if (pageHeaderView != null) {
                                i = R.id.page_image_transition_holder;
                                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.page_image_transition_holder);
                                if (imageView != null) {
                                    WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) inflate;
                                    i = R.id.page_web_view;
                                    ObservableWebView observableWebView = (ObservableWebView) Room.findChildViewById(inflate, R.id.page_web_view);
                                    if (observableWebView != null) {
                                        this._binding = new GsonBuilder(wikiSwipeRefreshLayout, frameLayout, pageActionTabLayout, wikiErrorView, pageHeaderView, imageView, wikiSwipeRefreshLayout, observableWebView);
                                        this.webView = observableWebView;
                                        getWebView().onUpOrCancelMotionEventListeners.add(new ObservableWebView.OnUpOrCancelMotionEventListener() { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda19
                                            @Override // org.wikipedia.views.ObservableWebView.OnUpOrCancelMotionEventListener
                                            public final void onUpOrCancelMotionEvent() {
                                                PageFragment.this.app.getAppSessionEvent().touchSession();
                                            }
                                        });
                                        ObservableWebView webView = getWebView();
                                        WebViewScrollTriggerListener webViewScrollTriggerListener = this.scrollTriggerListener;
                                        webViewScrollTriggerListener.getClass();
                                        webView.onContentHeightChangedListeners.add(webViewScrollTriggerListener);
                                        getWebView().setWebViewClient(new PageFragment$initWebViewListeners$2(this));
                                        GsonBuilder gsonBuilder = this._binding;
                                        gsonBuilder.getClass();
                                        ((WikiSwipeRefreshLayout) gsonBuilder.reflectionFilters).setScrollableChild(getWebView());
                                        GsonBuilder gsonBuilder2 = this._binding;
                                        gsonBuilder2.getClass();
                                        ((WikiSwipeRefreshLayout) gsonBuilder2.reflectionFilters).setOnRefreshListener(this.pageRefreshListener);
                                        int roundedDpToPx = Okio__OkioKt.roundedDpToPx(Okio__OkioKt.roundedPxToDp(Okio__OkioKt.getToolbarHeightPx(requireActivity()))) + REFRESH_SPINNER_ADDITIONAL_OFFSET;
                                        GsonBuilder gsonBuilder3 = this._binding;
                                        gsonBuilder3.getClass();
                                        WikiSwipeRefreshLayout wikiSwipeRefreshLayout2 = (WikiSwipeRefreshLayout) gsonBuilder3.reflectionFilters;
                                        wikiSwipeRefreshLayout2.getClass();
                                        wikiSwipeRefreshLayout2.mOriginalOffsetTop = -roundedDpToPx;
                                        wikiSwipeRefreshLayout2.mSpinnerOffsetEnd = roundedDpToPx;
                                        wikiSwipeRefreshLayout2.mUsingCustomStart = true;
                                        wikiSwipeRefreshLayout2.reset$1();
                                        wikiSwipeRefreshLayout2.mRefreshing = false;
                                        GsonBuilder gsonBuilder4 = this._binding;
                                        gsonBuilder4.getClass();
                                        ((PageActionTabLayout) gsonBuilder4.fieldNamingPolicy).setCallback(this.pageActionItemCallback);
                                        if (bundle != null) {
                                            this.scrolledUpForThemeChange = bundle.getBoolean("themeChangeScrolled", false);
                                        }
                                        GsonBuilder gsonBuilder5 = this._binding;
                                        gsonBuilder5.getClass();
                                        WikiSwipeRefreshLayout wikiSwipeRefreshLayout3 = (WikiSwipeRefreshLayout) gsonBuilder5.excluder;
                                        wikiSwipeRefreshLayout3.getClass();
                                        return wikiSwipeRefreshLayout3;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        AvPlayer avPlayer = this.avPlayer;
        if (avPlayer != null) {
            ((MediaPlayer) ((AvPlayer) avPlayer.player).player).release();
            this.avPlayer = null;
        }
        CommunicationBridge communicationBridge = this.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge.cleanup();
        getSidePanelHandler().log();
        LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
        if (leadImagesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
            throw null;
        }
        StandaloneCoroutine standaloneCoroutine = leadImagesHandler.handlerJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        leadImagesHandler.callToActionSourceSummary = null;
        leadImagesHandler.callToActionTargetSummary = null;
        leadImagesHandler.callToActionIsTranslation = false;
        getWebView().clearAllListeners();
        ViewParent parent = getWebView().getParent();
        parent.getClass();
        ((ViewGroup) parent).removeView(getWebView());
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_highest_priority_enabled, false);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // org.wikipedia.watchlist.WatchlistExpiryDialog.Callback
    public final void onExpiryChanged(WatchlistExpiry watchlistExpiry) {
        Callback callback = callback();
        if (callback != null) {
            PageFragment pageFragment = ((PageActivity) callback).pageFragment;
            if (pageFragment == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragment");
                throw null;
            }
            pageFragment.model.hasWatchlistExpiry = watchlistExpiry != WatchlistExpiry.NEVER;
        }
        dismissBottomSheet();
    }

    public final void onPageLoadError(Throwable th) {
        PageTitle pageTitle;
        th.getClass();
        if (isAdded() && (pageTitle = (PageTitle) this.model.title) != null) {
            boolean z = false;
            updateProgressBar(false);
            GsonBuilder gsonBuilder = this._binding;
            gsonBuilder.getClass();
            ((WikiSwipeRefreshLayout) gsonBuilder.reflectionFilters).setRefreshing(false);
            if (this.pageRefreshed) {
                this.pageRefreshed = false;
            }
            LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
            if (leadImagesHandler == null) {
                Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
                throw null;
            }
            leadImagesHandler.pageHeaderView.setVisibility(8);
            CommunicationBridge communicationBridge = this.bridge;
            if (communicationBridge == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
            communicationBridge.communicationBridgeListener.getWebView().loadUrl("about:blank");
            getWebView().setVisibility(4);
            CommunicationBridge communicationBridge2 = this.bridge;
            if (communicationBridge2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
            communicationBridge2.isMetadataReady = true;
            communicationBridge2.flushMessages();
            GsonBuilder gsonBuilder2 = this._binding;
            gsonBuilder2.getClass();
            if (((WikiErrorView) gsonBuilder2.instanceCreators).getVisibility() != 0) {
                GsonBuilder gsonBuilder3 = this._binding;
                gsonBuilder3.getClass();
                ((WikiErrorView) gsonBuilder3.instanceCreators).setError(th, pageTitle);
            }
            GsonBuilder gsonBuilder4 = this._binding;
            gsonBuilder4.getClass();
            ((WikiErrorView) gsonBuilder4.instanceCreators).setVisibility(0);
            GsonBuilder gsonBuilder5 = this._binding;
            gsonBuilder5.getClass();
            ((WikiErrorView) gsonBuilder5.instanceCreators).getContentTopOffset().setLayoutParams(new LinearLayout.LayoutParams(-1, Okio__OkioKt.roundedDpToPx(Okio__OkioKt.roundedPxToDp(Okio__OkioKt.getToolbarHeightPx(requireContext())))));
            GsonBuilder gsonBuilder6 = this._binding;
            gsonBuilder6.getClass();
            ((WikiErrorView) gsonBuilder6.instanceCreators).getContentTopOffset().setVisibility(0);
            GsonBuilder gsonBuilder7 = this._binding;
            gsonBuilder7.getClass();
            Space tabLayoutOffset = ((WikiErrorView) gsonBuilder7.instanceCreators).getTabLayoutOffset();
            GsonBuilder gsonBuilder8 = this._binding;
            gsonBuilder8.getClass();
            tabLayoutOffset.setLayoutParams(new LinearLayout.LayoutParams(-1, ((PageActionTabLayout) gsonBuilder8.fieldNamingPolicy).getHeight()));
            GsonBuilder gsonBuilder9 = this._binding;
            gsonBuilder9.getClass();
            ((WikiErrorView) gsonBuilder9.instanceCreators).getTabLayoutOffset().setVisibility(0);
            boolean z2 = (th instanceof UnknownHostException) || (th instanceof SocketException);
            GsonBuilder gsonBuilder10 = this._binding;
            gsonBuilder10.getClass();
            int childCount = ((PageActionTabLayout) gsonBuilder10.fieldNamingPolicy).getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (!z2) {
                    GsonBuilder gsonBuilder11 = this._binding;
                    gsonBuilder11.getClass();
                    View childAt = ((PageActionTabLayout) gsonBuilder11.fieldNamingPolicy).getChildAt(i);
                    if (childAt != null) {
                        childAt.setTag(new ConfigurableTabLayout$DisabledTag());
                    }
                }
            }
            GsonBuilder gsonBuilder12 = this._binding;
            gsonBuilder12.getClass();
            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) gsonBuilder12.reflectionFilters;
            if ((th instanceof HttpStatusException) && ((HttpStatusException) th).code == 404) {
                z = true;
            }
            wikiSwipeRefreshLayout.setEnabled(!z);
            this.errorState = true;
            Callback callback = callback();
            if (callback != null) {
                PageActivity pageActivity = (PageActivity) callback;
                ContextsKt supportActionBar = pageActivity.getSupportActionBar();
                if (supportActionBar != null) {
                    supportActionBar.setTitle(pageTitle.getDisplayText());
                }
                pageActivity.removeTransitionAnimState();
            }
        }
    }

    public final void onPageMetadataLoaded(String str) {
        WikiSite wikiSite;
        String str2;
        String appOrSystemLanguageCode;
        WikiSite wikiSite2;
        PageTitle pageTitle;
        PageTitle pageTitle2;
        WikiSite wikiSite3;
        Job.Key key = Job.Key.$$INSTANCE$1;
        updateQuickActionsAndMenuOptions();
        PageViewModel pageViewModel = this.model;
        Page page = (Page) pageViewModel.page;
        if (page == null) {
            return;
        }
        PageTitle pageTitle3 = (PageTitle) pageViewModel.title;
        Continuation continuation = null;
        String dbName = (pageTitle3 == null || (wikiSite3 = pageTitle3.wikiSite) == null) ? null : wikiSite3.dbName();
        dbName.getClass();
        this.articleInteractionEvent = new ArticleInteractionEvent(page.pageProperties.pageId, dbName);
        EditHandler editHandler = this.editHandler;
        if (editHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("editHandler");
            throw null;
        }
        Page page2 = (Page) pageViewModel.page;
        if (page2 != null) {
            editHandler.currentPage = page2;
        }
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((WikiSwipeRefreshLayout) gsonBuilder.reflectionFilters).setEnabled(true);
        GsonBuilder gsonBuilder2 = this._binding;
        gsonBuilder2.getClass();
        final int i = 0;
        ((WikiSwipeRefreshLayout) gsonBuilder2.reflectionFilters).setRefreshing(false);
        requireActivity().invalidateOptionsMenu();
        if (str != null) {
            AppCompatActivity requireActivity = requireActivity();
            String string = getString(R.string.redirected_from_snackbar, str);
            string.getClass();
            ShareUtil.showMessage(requireActivity, string, -1);
        }
        ReadingListPage readingListPage = (ReadingListPage) pageViewModel.readingListPage;
        if (readingListPage != null && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(key, 18), null, new PageActivity$onCreate$1$1$1(readingListPage, pageTitle2, continuation, 22), 2);
        }
        if (!this.errorState) {
            EditHandler editHandler2 = this.editHandler;
            if (editHandler2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editHandler");
                throw null;
            }
            Page page3 = (Page) pageViewModel.page;
            if (page3 != null) {
                editHandler2.currentPage = page3;
            }
            getWebView().setVisibility(0);
        }
        if (this.mLifecycleRegistry.state.isAtLeast(Lifecycle$State.RESUMED) && (pageTitle = (PageTitle) pageViewModel.title) != null) {
            Prefs prefs = Prefs.INSTANCE;
            Duration between = Duration.between(Instant.ofEpochMilli(PrefsIoUtil.getLong(0L, R.string.preference_key_announcement_pause_time)), Instant.now());
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_visited_article_page), false) && between.toDays() >= 1) {
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(key, 17), null, new PageActivity$onCreate$1$1$1(this, pageTitle, continuation, 21), 2);
            }
        }
        final AppCompatActivity requireActivity2 = requireActivity();
        Constants.InvokeSource invokeSource = Constants.InvokeSource.PAGE_ACTIVITY;
        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
        if (pageTitle4 == null || (wikiSite = pageTitle4.wikiSite) == null) {
            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
            wikiSite = Jsoup.getInstance().getWikiSite();
        }
        invokeSource.getClass();
        WikipediaApp wikipediaApp3 = WikipediaApp.instance;
        WikiSite wikiSite4 = Jsoup.getInstance().getWikiSite();
        Prefs prefs2 = Prefs.INSTANCE;
        if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_otd_entry_dialog_shown), false)) {
            WikiGames wikiGames = WikiGames.WHICH_CAME_FIRST;
            if (wikiGames.isLangSupported(wikiSite4.languageCode) && wikiGames.isLangSupported(wikiSite.languageCode) && (invokeSource != Constants.InvokeSource.FEED || PrefsIoUtil.getInt(R.string.preference_key_explore_feed_visit_count, 0) >= 2)) {
                PrefsIoUtil.setBoolean(R.string.preference_key_otd_entry_dialog_shown, true);
                WikiGamesEvent.submit$default(1020, null, null, "impression", "game_modal", null, null, null);
                View inflate = requireActivity2.getLayoutInflater().inflate(R.layout.dialog_on_this_day_game, (ViewGroup) null);
                MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity2, 0);
                AlertController.AlertParams alertParams = (AlertController.AlertParams) materialAlertDialogBuilder.array;
                alertParams.mView = inflate;
                alertParams.mCancelable = false;
                final AlertDialog show = materialAlertDialogBuilder.show();
                ((Button) inflate.findViewById(R.id.playGameButton)).setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.games.onthisday.OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i2 = i;
                        AlertDialog alertDialog = show;
                        AppCompatActivity appCompatActivity = requireActivity2;
                        switch (i2) {
                            case 0:
                                WikiGamesEvent.submit$default(1020, null, null, "enter_click", "game_modal", null, null, null);
                                int i3 = GamesHubActivity.$r8$clinit;
                                appCompatActivity.startActivityForResult(new Intent(appCompatActivity, (Class<?>) GamesHubActivity.class), 0);
                                alertDialog.dismiss();
                                break;
                            default:
                                String string2 = appCompatActivity.getString(R.string.on_this_day_game_entry_dialog_snackbar_message);
                                string2.getClass();
                                ShareUtil.showMessage(appCompatActivity, string2, 0);
                                alertDialog.dismiss();
                                break;
                        }
                    }
                });
                ((ImageView) inflate.findViewById(R.id.closeButton)).setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.games.onthisday.OnThisDayGameMainMenuFragment$Companion$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i2 = r3;
                        AlertDialog alertDialog = show;
                        AppCompatActivity appCompatActivity = requireActivity2;
                        switch (i2) {
                            case 0:
                                WikiGamesEvent.submit$default(1020, null, null, "enter_click", "game_modal", null, null, null);
                                int i3 = GamesHubActivity.$r8$clinit;
                                appCompatActivity.startActivityForResult(new Intent(appCompatActivity, (Class<?>) GamesHubActivity.class), 0);
                                alertDialog.dismiss();
                                break;
                            default:
                                String string2 = appCompatActivity.getString(R.string.on_this_day_game_entry_dialog_snackbar_message);
                                string2.getClass();
                                ShareUtil.showMessage(appCompatActivity, string2, 0);
                                alertDialog.dismiss();
                                break;
                        }
                    }
                });
            }
        }
        CommunicationBridge communicationBridge = this.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge.isMetadataReady = true;
        communicationBridge.flushMessages();
        CommunicationBridge communicationBridge2 = this.bridge;
        if (communicationBridge2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
        if (leadImagesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
            throw null;
        }
        communicationBridge2.execute("pcs.c1.Page.setMargins({ top:'" + (leadImagesHandler.getTopMargin() + 16) + "px', bottom:'48px' })");
        CommunicationBridge communicationBridge3 = this.bridge;
        if (communicationBridge3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        Page page4 = (Page) pageViewModel.page;
        str2 = "";
        if (page4 != null) {
            boolean z = page4.title.namespace() != Namespace.TALK;
            Page page5 = (Page) pageViewModel.page;
            page5.getClass();
            r5 = page5.pageProperties.geo == null ? 0 : 1;
            long time = new Date().getTime();
            Page page6 = (Page) pageViewModel.page;
            page6.getClass();
            long time2 = (time - page6.pageProperties.lastModified.getTime()) / 86400000;
            PageTitle pageTitle5 = (PageTitle) pageViewModel.title;
            if (pageTitle5 == null || (wikiSite2 = pageTitle5.wikiSite) == null || (appOrSystemLanguageCode = wikiSite2.languageCode) == null) {
                appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
            }
            str2 = "pcs.c1.Footer.add({   platform: \"android\",   clientVersion: \"r/50598-r-2026-07-13\",   menu: {       items: [pcs.c1.Footer.MenuItemType.lastEdited, " + (z ? "pcs.c1.Footer.MenuItemType.talkPage, " : "") + (r5 != 0 ? "pcs.c1.Footer.MenuItemType.coordinate, " : "") + "pcs.c1.Footer.MenuItemType.pageIssues,                pcs.c1.Footer.MenuItemType.referenceList               ],       fragment: \"pcs-menu\",       editedDaysAgo: " + time2 + "   },   readMore: {        itemCount: 3,       readMoreLazy: true,       langCode: \"" + appOrSystemLanguageCode + "\",       fragment: \"pcs-read-more\"   }})";
        }
        communicationBridge3.execute(str2);
    }

    public final void onPageSetupEvent() {
        if (isAdded()) {
            updateProgressBar(false);
            getWebView().setVisibility(0);
            CommunicationBridge communicationBridge = this.bridge;
            if (communicationBridge == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
            communicationBridge.evaluate("pcs.c1.Page.getRevision();", new PageFragment$$ExternalSyntheticLambda6(1, this));
            CommunicationBridge communicationBridge2 = this.bridge;
            if (communicationBridge2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
            communicationBridge2.evaluate("pcs.c1.Page.getTableOfContents()", new PageFragment$$ExternalSyntheticLambda6(2, this));
            CommunicationBridge communicationBridge3 = this.bridge;
            if (communicationBridge3 != null) {
                communicationBridge3.evaluate("pcs.c1.Page.getProtection()", new PageFragment$$ExternalSyntheticLambda6(3, this));
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onPause() {
        /*
            r7 = this;
            r0 = 1
            r7.mCalled = r0
            org.wikipedia.bridge.CommunicationBridge r1 = r7.bridge
            r2 = 0
            if (r1 == 0) goto L91
            java.lang.String r3 = "(function() {var elements = document.getElementsByTagName('audio');for(i=0; i<elements.length; i++) elements[i].pause();})();"
            r1.execute(r3)
            org.wikipedia.media.AvPlayer r1 = r7.avPlayer
            if (r1 == 0) goto L32
            java.lang.Object r1 = r1.player
            org.wikipedia.media.AvPlayer r1 = (org.wikipedia.media.AvPlayer) r1
            java.lang.Object r1 = r1.player
            android.media.MediaPlayer r1 = (android.media.MediaPlayer) r1
            boolean r1 = r1.isPlaying()
            if (r1 != r0) goto L32
            org.wikipedia.media.AvPlayer r1 = r7.avPlayer
            if (r1 == 0) goto L2e
            java.lang.Object r1 = r1.player
            org.wikipedia.media.AvPlayer r1 = (org.wikipedia.media.AvPlayer) r1
            java.lang.Object r1 = r1.player
            android.media.MediaPlayer r1 = (android.media.MediaPlayer) r1
            r1.stop()
        L2e:
            r1 = 0
            r7.updateProgressBar(r1)
        L32:
            org.wikipedia.util.ActiveTimer r1 = r7.activeTimer
            r1.getClass()
            long r3 = java.lang.System.currentTimeMillis()
            r1.pauseMillis = r3
            r1.isPaused = r0
            long r5 = r1.startMillis
            long r3 = r3 - r5
            r5 = 1000(0x3e8, double:4.94E-321)
            long r3 = r3 / r5
            int r1 = (int) r3
            r7.addTimeSpentReading(r1)
            com.google.gson.GsonBuilder r1 = r7.pageFragmentLoadState
            java.lang.String r3 = "pageFragmentLoadState"
            if (r1 == 0) goto L8d
            r1.updateCurrentBackStackItem()
            org.wikipedia.WikipediaApp r1 = r7.app
            r1.commitTabState()
            java.util.ArrayList r1 = r1.tabList
            int r1 = r1.size()
            if (r1 < r0) goto L78
            com.google.gson.GsonBuilder r0 = r7.pageFragmentLoadState
            if (r0 == 0) goto L74
            java.lang.Object r0 = r0.hierarchyFactories
            org.wikipedia.page.tabs.Tab r0 = (org.wikipedia.page.tabs.Tab) r0
            java.util.List r0 = r0.backStack
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L78
            long r0 = java.lang.System.currentTimeMillis()
            goto L7a
        L74:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            throw r2
        L78:
            r0 = 0
        L7a:
            org.wikipedia.settings.Prefs r2 = org.wikipedia.settings.Prefs.INSTANCE
            r2 = 2131887675(0x7f12063b, float:1.9409964E38)
            org.wikipedia.settings.PrefsIoUtil.setLong(r0, r2)
            org.wikipedia.analytics.eventplatform.ArticleInteractionEvent r7 = r7.articleInteractionEvent
            if (r7 == 0) goto L8c
            long r0 = java.lang.System.currentTimeMillis()
            r7.pauseTime = r0
        L8c:
            return
        L8d:
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            throw r2
        L91:
            java.lang.String r7 = "bridge"
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r7)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.PageFragment.onPause():void");
    }

    public final void onRequestEditSection(int i, String str, PageTitle pageTitle, String str2) {
        Callback callback = callback();
        if (callback != null) {
            PageActivity pageActivity = (PageActivity) callback;
            ActivityResultRegistry$register$2 activityResultRegistry$register$2 = pageActivity.requestEditSectionLauncher;
            int i2 = EditSectionActivity.$r8$clinit;
            activityResultRegistry$register$2.launch(LoginClient.newIntent$default(pageActivity, i, str, pageTitle, Constants.InvokeSource.PAGE_ACTIVITY, str2, 448), null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        ActiveTimer activeTimer = this.activeTimer;
        activeTimer.startMillis = (System.currentTimeMillis() - activeTimer.pauseMillis) + activeTimer.startMillis;
        activeTimer.isPaused = false;
        CoordinatorLayout.LayoutParams layoutParams = new CoordinatorLayout.LayoutParams(1, 1);
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((ImageView) gsonBuilder.hierarchyFactories).setLayoutParams(layoutParams);
        GsonBuilder gsonBuilder2 = this._binding;
        gsonBuilder2.getClass();
        ((ImageView) gsonBuilder2.hierarchyFactories).setVisibility(8);
        GsonBuilder gsonBuilder3 = this._binding;
        gsonBuilder3.getClass();
        ((PageActionTabLayout) gsonBuilder3.fieldNamingPolicy).update();
        updateQuickActionsAndMenuOptions();
        Pattern pattern = ImageUrlUtil.WIDTH_IN_IMAGE_URL_REGEX;
        Page page = (Page) this.model.page;
        String str = page != null ? page.pageProperties.leadImageUrl : null;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (StringsKt__StringsJVMKt.endsWith(lowerCase, ".gif", false)) {
                LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
                if (leadImagesHandler == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
                    throw null;
                }
                leadImagesHandler.loadLeadImage();
            }
        }
        ArticleInteractionEvent articleInteractionEvent = this.articleInteractionEvent;
        if (articleInteractionEvent != null) {
            if (articleInteractionEvent.pauseTime > 0) {
                articleInteractionEvent.startTime = (System.currentTimeMillis() - articleInteractionEvent.pauseTime) + articleInteractionEvent.startTime;
            }
            articleInteractionEvent.pauseTime = 0L;
        }
        int i = DonationReminderHelper.validReadCountOnSeconds;
        AppCompatActivity requireActivity = requireActivity();
        if (DonationReminderHelper.shouldShowSettingSnackbar) {
            ShareUtil.showMessage(requireActivity, DonationReminderHelper.thankYouMessageForSettings(), 0);
            DonationReminderHelper.shouldShowSettingSnackbar = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("themeChangeScrolled", this.scrolledUpForThemeChange);
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onToggleDimImages() {
        ActivityCompat.recreate(requireActivity());
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onToggleReadingFocusMode() {
        int i = 0;
        getWebView().setScrollEventsEnabled(false);
        ViewHideHandler viewHideHandler = this.bottomBarHideHandler;
        if (viewHideHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bottomBarHideHandler");
            throw null;
        }
        Prefs prefs = Prefs.INSTANCE;
        boolean readingFocusModeEnabled = Prefs.getReadingFocusModeEnabled();
        viewHideHandler.enabled = readingFocusModeEnabled;
        if (!readingFocusModeEnabled) {
            viewHideHandler.ensureDisplayed();
        }
        LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
        if (leadImagesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
            throw null;
        }
        leadImagesHandler.pageHeaderView.refreshCallToActionVisibility();
        Page page = (Page) this.model.page;
        if (page != null) {
            CommunicationBridge communicationBridge = this.bridge;
            if (communicationBridge == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
            communicationBridge.execute("pcs.c1.Page.setEditButtons(" + (!Prefs.getReadingFocusModeEnabled()) + ", " + (!page.pageProperties.canEdit) + ")");
        }
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((WikiSwipeRefreshLayout) gsonBuilder.excluder).postDelayed(new PageFragment$$ExternalSyntheticLambda20(this, i), 250L);
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [org.wikipedia.page.PageFragment$setupMessageHandlers$1] */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        Callback callback = callback();
        if (callback != null) {
            ObservableWebView webView = getWebView();
            ViewHideHandler viewHideHandler = ((PageActivity) callback).toolbarHideHandler;
            if (viewHideHandler == null) {
                Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
                throw null;
            }
            viewHideHandler.webView = webView;
            webView.onScrollChangeListeners.add(viewHideHandler);
            webView.onDownMotionEventListeners.add(viewHideHandler);
            webView.onUpOrCancelMotionEventListeners.add(viewHideHandler);
            webView.onClickListeners.add(viewHideHandler);
        }
        final int i = 0;
        getWebView().getSettings().setDefaultFontSize((int) this.app.getFontSize(false));
        AppCompatActivity requireActivity = requireActivity();
        ObservableWebView webView2 = getWebView();
        TypedValue typedValue = new TypedValue();
        final int i2 = 1;
        if (!requireActivity.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
            typedValue = null;
        }
        if (typedValue == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
            return;
        }
        webView2.setBackgroundColor(typedValue.data);
        this.bridge = new CommunicationBridge(this);
        final AppCompatActivity requireActivity2 = requireActivity();
        this.linkHandler = new LinkHandler(requireActivity2) { // from class: org.wikipedia.page.PageFragment$setupMessageHandlers$1
            @Override // org.wikipedia.page.LinkHandler
            public final WikiSite getWikiSite() {
                WikiSite wikiSite;
                PageTitle pageTitle = (PageTitle) PageFragment.this.model.title;
                if (pageTitle != null && (wikiSite = pageTitle.wikiSite) != null) {
                    return wikiSite;
                }
                WikiSite.Companion.getClass();
                return WikiSite.Companion.forLanguageCode("en");
            }

            @Override // org.wikipedia.page.LinkHandler
            public final void onDiffLinkClicked(PageTitle pageTitle, long j) {
                ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                PageFragment pageFragment = PageFragment.this;
                pageFragment.startActivity(ByteString.Companion.newIntent$default(companion, pageFragment.requireContext(), pageTitle, -1, -1L, j, null, 32), null);
            }

            @Override // org.wikipedia.page.LinkHandler
            public final void onInternalLinkClicked(PageTitle pageTitle) {
                String str;
                int i3 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                PageFragment pageFragment = PageFragment.this;
                PageViewModel pageViewModel = pageFragment.model;
                if (pageFragment.mState >= 7) {
                    if (pageTitle.namespace() == Namespace.USER_TALK || pageTitle.namespace() == Namespace.TALK) {
                        pageFragment.startTalkTopicsActivity(pageTitle, false);
                        return;
                    }
                    if (pageTitle.namespace() == Namespace.CATEGORY) {
                        int i4 = CategoryActivity.$r8$clinit;
                        pageFragment.startActivity(ReadingListFragment.MultiSelectCallback.newIntent(pageFragment.requireActivity(), pageTitle), null);
                        return;
                    }
                    pageFragment.dismissBottomSheet();
                    HistoryEntry historyEntry = new HistoryEntry(2, pageTitle);
                    HistoryEntry historyEntry2 = (HistoryEntry) pageViewModel.curEntry;
                    historyEntry.prevId = historyEntry2 != null ? historyEntry2.id : -1L;
                    if (pageTitle.equals((PageTitle) pageViewModel.title) && (str = pageTitle.fragment) != null && str.length() != 0) {
                        String str2 = pageTitle.fragment;
                        str2.getClass();
                        pageFragment.scrollToSection(str2);
                        return;
                    }
                    PageTitle pageTitle2 = (PageTitle) pageViewModel.title;
                    if (pageTitle2 != null) {
                        historyEntry.referrer = pageTitle2.getUri();
                    }
                    if (pageTitle.namespace() == Namespace.MAIN) {
                        Prefs prefs = Prefs.INSTANCE;
                        if (Prefs.isLinkPreviewEnabled()) {
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                FragmentManagerImpl supportFragmentManager = ((PageActivity) callback2).getSupportFragmentManager();
                                LinkPreviewDialog linkPreviewDialog = new LinkPreviewDialog();
                                linkPreviewDialog.setArguments(UStringsKt.bundleOf(new Pair("entry", historyEntry), new Pair("location", null), new Pair("lastKnownLocation", null)));
                                Okio__OkioKt.show(supportFragmentManager, linkPreviewDialog);
                                return;
                            }
                            return;
                        }
                    }
                    PageFragment.Callback callback3 = pageFragment.callback();
                    if (callback3 != null) {
                        ((PageActivity) callback3).loadPage(pageTitle, historyEntry, PageActivity.TabPosition.CURRENT_TAB);
                    }
                }
            }

            @Override // org.wikipedia.page.LinkHandler
            public final void onMediaLinkClicked(PageTitle pageTitle) {
                String prefixedText = pageTitle.getPrefixedText();
                int i3 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                PageFragment pageFragment = PageFragment.this;
                int i4 = 0;
                if (!pageFragment.app.isOnline()) {
                    AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                    String string = pageFragment.getString(R.string.gallery_not_available_offline_snackbar);
                    string.getClass();
                    Snackbar makeSnackbar$default = ShareUtil.makeSnackbar$default(requireActivity3, string, 0, 12);
                    makeSnackbar$default.setAction(R.string.gallery_not_available_offline_snackbar_dismiss, new FeedbackUtil$$ExternalSyntheticLambda1(makeSnackbar$default, 1));
                    makeSnackbar$default.show();
                    return;
                }
                CommunicationBridge communicationBridge = pageFragment.bridge;
                if (communicationBridge == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge.evaluate("(function() {  let element = document.elementFromPoint(" + Okio__OkioKt.roundedPxToDp(pageFragment.getWebView().getLastTouchX()) + ", " + Okio__OkioKt.roundedPxToDp(pageFragment.getWebView().getLastTouchY()) + ");  let result = {};  result.left = element.getBoundingClientRect().left;  result.top = element.getBoundingClientRect().top;  result.width = element.clientWidth;  result.height = element.clientHeight;  result.src = element.src;  return result;})();", new PageFragment$$ExternalSyntheticLambda21(i4, pageFragment, prefixedText));
            }

            @Override // org.wikipedia.page.LinkHandler
            public final void onPageLinkClicked(String str, String str2) {
                str2.getClass();
                int i3 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                PageFragment pageFragment = PageFragment.this;
                pageFragment.dismissBottomSheet();
                CommunicationBridge communicationBridge = pageFragment.bridge;
                if (communicationBridge == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                communicationBridge.execute("pcs.c1.Page.prepareForScrollToAnchor(\"" + StringsKt__StringsJVMKt.replace$default(str, "\"", "\\\"") + "\", { highlight: true } )");
            }
        };
        CommunicationBridge communicationBridge = this.bridge;
        if (communicationBridge == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge.addListener("link", getLinkHandler());
        CommunicationBridge communicationBridge2 = this.bridge;
        if (communicationBridge2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge2.addListener("setup", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i3 = i;
                int i4 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i3) {
                    case 0:
                        int i5 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i6 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge3 = pageFragment.bridge;
                            if (communicationBridge3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge3.isPcsReady = true;
                            communicationBridge3.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i4), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i7 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i8 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge4 = PageFragment.this.bridge;
                                            if (communicationBridge4 != null) {
                                                communicationBridge4.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge3 = this.bridge;
        if (communicationBridge3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge3.addListener("final_setup", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i3 = i2;
                int i4 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i3) {
                    case 0:
                        int i5 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i6 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i4), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i7 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i8 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge4 = PageFragment.this.bridge;
                                            if (communicationBridge4 != null) {
                                                communicationBridge4.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge4 = this.bridge;
        if (communicationBridge4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i3 = 2;
        communicationBridge4.addListener("reference", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i3;
                int i4 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i5 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i6 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i4), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i7 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i8 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge5 = this.bridge;
        if (communicationBridge5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i4 = 3;
        communicationBridge5.addListener("back_link", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i4;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i5 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i6 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i7 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i8 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge6 = this.bridge;
        if (communicationBridge6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i5 = 4;
        communicationBridge6.addListener("scroll_to_anchor", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i5;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i52 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i6 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i7 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i8 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge7 = this.bridge;
        if (communicationBridge7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i6 = 5;
        communicationBridge7.addListener("image", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i6;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i52 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i62 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i7 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i8 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge8 = this.bridge;
        if (communicationBridge8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i7 = 6;
        communicationBridge8.addListener("media", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i7;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i52 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i62 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i72 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i8 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge9 = this.bridge;
        if (communicationBridge9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i8 = 7;
        communicationBridge9.addListener("pronunciation", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i8;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i52 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i62 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i72 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i82 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i9 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge10 = this.bridge;
        if (communicationBridge10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i9 = 8;
        communicationBridge10.addListener("footer_item", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i9;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i52 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i62 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i72 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i82 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i92 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i10 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge11 = this.bridge;
        if (communicationBridge11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        communicationBridge11.addListener("read_more_titles_retrieved", new PageFragment$$ExternalSyntheticLambda18(0));
        CommunicationBridge communicationBridge12 = this.bridge;
        if (communicationBridge12 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i10 = 9;
        communicationBridge12.addListener("view_license", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i10;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i52 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i62 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i72 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i82 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i92 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i102 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i11 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        CommunicationBridge communicationBridge13 = this.bridge;
        if (communicationBridge13 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        final int i11 = 10;
        communicationBridge13.addListener("view_in_browser", new CommunicationBridge.JSEventListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // org.wikipedia.bridge.CommunicationBridge.JSEventListener
            public final void onMessage(String str, JsonObject jsonObject) {
                String str2;
                final String str3;
                JsonElement jsonElement;
                PageTitle pageTitle;
                Page page;
                JsonElement jsonElement2;
                PageTitle pageTitle2;
                int i32 = i11;
                int i42 = 1;
                Object obj = null;
                obj = null;
                final PageFragment pageFragment = this.f$0;
                switch (i32) {
                    case 0:
                        int i52 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        pageFragment.onPageSetupEvent();
                        return;
                    case 1:
                        int i62 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            CommunicationBridge communicationBridge32 = pageFragment.bridge;
                            if (communicationBridge32 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                throw null;
                            }
                            communicationBridge32.isPcsReady = true;
                            communicationBridge32.flushMessages();
                            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                            if (articleInteractionEvent != null) {
                                articleInteractionEvent.submitEvent("load");
                            }
                            PageFragment.Callback callback2 = pageFragment.callback();
                            if (callback2 != null) {
                                ((PageActivity) callback2).onPageLoadComplete();
                            }
                            PageTitle pageTitle3 = (PageTitle) pageFragment.model.title;
                            if (pageTitle3 == null || (str2 = pageTitle3.fragment) == null || str2.length() == 0 || pageFragment.scrollTriggerListener.stagedScrollY != 0) {
                                return;
                            }
                            pageFragment.getWebView().postDelayed(new PageFragment$$ExternalSyntheticLambda20(pageFragment, i42), 100L);
                            return;
                        }
                        return;
                    case 2:
                        int i72 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (pageFragment.isAdded()) {
                            JsonImpl jsonImpl = JsonUtil.json;
                            String valueOf = String.valueOf(jsonObject);
                            if (valueOf.length() != 0) {
                                try {
                                    JsonImpl jsonImpl2 = JsonUtil.json;
                                    jsonImpl2.getClass();
                                    obj = jsonImpl2.decodeFromString(valueOf, UnsignedKt.getNullable(PageReferences.Companion.serializer()));
                                } catch (Exception e) {
                                    L.w(e);
                                }
                            }
                            PageReferences pageReferences = (PageReferences) obj;
                            pageFragment.references = pageReferences;
                            if (pageReferences == null || pageReferences.referencesGroup.isEmpty()) {
                                return;
                            }
                            pageFragment.showBottomSheet(new ReferenceDialog());
                            return;
                        }
                        return;
                    case 3:
                        int i82 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement3 = (JsonElement) jsonObject.get("backLinks");
                            JsonArray jsonArray = jsonElement3 != null ? JsonElementKt.getJsonArray(jsonElement3) : null;
                            if (jsonArray != null) {
                                List list = jsonArray.content;
                                if (list.isEmpty()) {
                                    return;
                                }
                                final ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(jsonArray, 10));
                                Iterator it = list.iterator();
                                while (it.hasNext()) {
                                    JsonElement jsonElement4 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it.next()).get("id");
                                    arrayList.add(jsonElement4 != null ? JsonElementKt.getJsonPrimitive(jsonElement4).getContent() : null);
                                }
                                JsonElement jsonElement5 = (JsonElement) jsonObject.get("referenceId");
                                final String content = jsonElement5 != null ? JsonElementKt.getJsonPrimitive(jsonElement5).getContent() : null;
                                if (content == null) {
                                    content = "";
                                }
                                JsonElement jsonElement6 = (JsonElement) jsonObject.get("referenceText");
                                String content2 = jsonElement6 != null ? JsonElementKt.getJsonPrimitive(jsonElement6).getContent() : null;
                                str3 = content2 != null ? content2 : "";
                                if (((Page) pageFragment.model.page) != null) {
                                    ActionMode.Callback callback3 = new ActionMode.Callback() { // from class: org.wikipedia.page.PageFragment$showFindReferenceInPage$1$1
                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                                            actionMode.getClass();
                                            menuItem.getClass();
                                            return false;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            MenuItem add = menu.add(R.string.menu_page_find_in_page);
                                            PageFragment pageFragment2 = PageFragment.this;
                                            add.setActionProvider(pageFragment2.new FindReferenceInPageActionProvider(pageFragment2.requireContext(), content, str3, arrayList));
                                            add.expandActionView();
                                            return true;
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final void onDestroyActionMode(ActionMode actionMode) {
                                            actionMode.getClass();
                                            CommunicationBridge communicationBridge42 = PageFragment.this.bridge;
                                            if (communicationBridge42 != null) {
                                                communicationBridge42.execute("pcs.c1.Page.removeHighlightsFromHighlightedElements()");
                                            } else {
                                                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                                                throw null;
                                            }
                                        }

                                        @Override // android.view.ActionMode.Callback
                                        public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                                            actionMode.getClass();
                                            menu.getClass();
                                            actionMode.setTag("actionModeFindReferenceInPage");
                                            return false;
                                        }
                                    };
                                    PageFragment.Callback callback4 = pageFragment.callback();
                                    if (callback4 != null) {
                                        ((PageActivity) callback4).startActionMode(callback3);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    case 4:
                        int i92 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject == null || (jsonElement = (JsonElement) jsonObject.get("rect")) == null) {
                            return;
                        }
                        JsonObject jsonObject2 = JsonElementKt.getJsonObject(jsonElement);
                        Object obj2 = jsonObject2.get(jsonObject2.containsKey("y") ? "y" : "top");
                        obj2.getClass();
                        pageFragment.getWebView().setScrollY((pageFragment.getWebView().getScrollY() + Okio__OkioKt.roundedDpToPx(Float.parseFloat(JsonElementKt.getJsonPrimitive((JsonElement) obj2).getContent()))) - (pageFragment.getWebView().getHeight() / 3));
                        return;
                    case 5:
                        int i102 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler = pageFragment.getLinkHandler();
                            JsonElement jsonElement7 = (JsonElement) jsonObject.get("href");
                            String content3 = jsonElement7 != null ? JsonElementKt.getJsonPrimitive(jsonElement7).getContent() : null;
                            if (content3 == null) {
                                content3 = "";
                            }
                            try {
                                String decode = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content3, "+", "%2B"), "UTF-8");
                                decode.getClass();
                                content3 = decode;
                            } catch (UnsupportedEncodingException e2) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                                return;
                            } catch (IllegalArgumentException unused) {
                                L.d("URL decoding failed. String was: ".concat(content3));
                            }
                            JsonElement jsonElement8 = (JsonElement) jsonObject.get("title");
                            linkHandler.onUrlClick(content3, jsonElement8 != null ? JsonElementKt.getJsonPrimitive(jsonElement8).getContent() : null, "");
                            return;
                        }
                        return;
                    case 6:
                        int i112 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            LinkHandler linkHandler2 = pageFragment.getLinkHandler();
                            JsonElement jsonElement9 = (JsonElement) jsonObject.get("href");
                            String content4 = jsonElement9 != null ? JsonElementKt.getJsonPrimitive(jsonElement9).getContent() : null;
                            if (content4 == null) {
                                content4 = "";
                            }
                            try {
                                String decode2 = URLDecoder.decode(StringsKt__StringsJVMKt.replace$default(content4, "+", "%2B"), "UTF-8");
                                decode2.getClass();
                                content4 = decode2;
                            } catch (UnsupportedEncodingException e3) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e3);
                                return;
                            } catch (IllegalArgumentException unused2) {
                                L.d("URL decoding failed. String was: ".concat(content4));
                            }
                            JsonElement jsonElement10 = (JsonElement) jsonObject.get("title");
                            linkHandler2.onUrlClick(content4, jsonElement10 != null ? JsonElementKt.getJsonPrimitive(jsonElement10).getContent() : null, "");
                            return;
                        }
                        return;
                    case 7:
                        int i12 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            AvPlayer avPlayer = pageFragment.avPlayer;
                            if (avPlayer == null) {
                                avPlayer = new AvPlayer(0);
                                pageFragment.avPlayer = avPlayer;
                            }
                            if (pageFragment.avCallback == null) {
                                pageFragment.avCallback = pageFragment.new AvCallback();
                            }
                            if (((MediaPlayer) ((AvPlayer) avPlayer.player).player).isPlaying() || !jsonObject.containsKey("url")) {
                                pageFragment.updateProgressBar(false);
                                AvPlayer avPlayer2 = pageFragment.avPlayer;
                                avPlayer2.getClass();
                                ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).stop();
                                return;
                            }
                            pageFragment.updateProgressBar(true);
                            AvPlayer avPlayer3 = pageFragment.avPlayer;
                            avPlayer3.getClass();
                            JsonElement jsonElement11 = (JsonElement) jsonObject.get("url");
                            String content5 = jsonElement11 != null ? JsonElementKt.getJsonPrimitive(jsonElement11).getContent() : null;
                            str3 = content5 != null ? content5 : "";
                            if (StringsKt__StringsJVMKt.startsWith(str3, "//", false)) {
                                WikipediaApp wikipediaApp = WikipediaApp.instance;
                                str3 = Animation.CC.m(Jsoup.getInstance().getWikiSite().scheme(), ":", str3);
                            }
                            PageFragment.AvCallback avCallback = pageFragment.avCallback;
                            avCallback.getClass();
                            AvPlayer avPlayer4 = (AvPlayer) avPlayer3.player;
                            MediaPlayerImplementation$CallbackWrapper mediaPlayerImplementation$CallbackWrapper = new MediaPlayerImplementation$CallbackWrapper(new OkHttpCall.AnonymousClass1(16, avPlayer3, avCallback));
                            MediaPlayer mediaPlayer = (MediaPlayer) avPlayer4.player;
                            mediaPlayer.reset();
                            mediaPlayer.setOnPreparedListener(mediaPlayerImplementation$CallbackWrapper);
                            mediaPlayer.setOnErrorListener(mediaPlayerImplementation$CallbackWrapper);
                            try {
                                WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                                WikipediaApp jsoup = Jsoup.getInstance();
                                Uri parse = Uri.parse(str3);
                                parse.getClass();
                                Map<String, String> singletonMap = Collections.singletonMap("User-Agent", (String) Jsoup.getInstance().userAgent$delegate.getValue());
                                singletonMap.getClass();
                                mediaPlayer.setDataSource(jsoup, parse, singletonMap);
                                mediaPlayer.prepareAsync();
                                return;
                            } catch (IOException e4) {
                                L.e(e4);
                                mediaPlayerImplementation$CallbackWrapper.onError(mediaPlayer, 1, 0);
                                return;
                            }
                        }
                        return;
                    case 8:
                        PageViewModel pageViewModel = pageFragment.model;
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        if (jsonObject != null) {
                            JsonElement jsonElement12 = (JsonElement) jsonObject.get("itemType");
                            String content6 = jsonElement12 != null ? JsonElementKt.getJsonPrimitive(jsonElement12).getContent() : null;
                            if (content6 != null) {
                                switch (content6.hashCode()) {
                                    case -610675365:
                                        if (content6.equals("talkPage") && (pageTitle = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent2 != null) {
                                                articleInteractionEvent2.submitEvent("talk_page_from_article");
                                            }
                                            pageFragment.startTalkTopicsActivity(pageTitle, true);
                                            return;
                                        }
                                        return;
                                    case 198931832:
                                        if (content6.equals("coordinate") && (page = (Page) pageViewModel.page) != null) {
                                            Location location = page.pageProperties.geo;
                                            if (location == null) {
                                                String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                                                string.getClass();
                                                ShareUtil.showMessage(pageFragment, string);
                                                return;
                                            }
                                            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                                            WikipediaApp wikipediaApp3 = WikipediaApp.instance;
                                            String m = ViewSizeResolver$CC.m();
                                            Prefs prefs = Prefs.INSTANCE;
                                            EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_footer", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                                            AppCompatActivity requireActivity3 = pageFragment.requireActivity();
                                            int i14 = PlacesActivity.$r8$clinit;
                                            requireActivity3.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), page.title, location));
                                            return;
                                        }
                                        return;
                                    case 999971369:
                                        if (!content6.equals("pageIssues") || (jsonElement2 = (JsonElement) jsonObject.get("payload")) == null || JsonElementKt.getJsonArray(jsonElement2).content.isEmpty() || ((PageTitle) pageViewModel.title) == null) {
                                            return;
                                        }
                                        JsonArray jsonArray2 = JsonElementKt.getJsonArray(jsonElement2);
                                        ArrayList arrayList2 = new ArrayList();
                                        Iterator it2 = jsonArray2.content.iterator();
                                        while (it2.hasNext()) {
                                            JsonElement jsonElement13 = (JsonElement) JsonElementKt.getJsonObject((JsonElement) it2.next()).get("html");
                                            String content7 = jsonElement13 != null ? JsonElementKt.getJsonPrimitive(jsonElement13).getContent() : null;
                                            if (content7 != null) {
                                                arrayList2.add(content7);
                                            }
                                        }
                                        AppCompatActivity requireActivity4 = pageFragment.requireActivity();
                                        PageTitle pageTitle4 = (PageTitle) pageViewModel.title;
                                        pageTitle4.getClass();
                                        EditNoticesDialog editNoticesDialog = new EditNoticesDialog(requireActivity4, pageTitle4.wikiSite, arrayList2, new PageFragment$$ExternalSyntheticLambda23(pageFragment));
                                        editNoticesDialog.setTitle(R.string.page_issues_title);
                                        editNoticesDialog.setPositiveButton(android.R.string.ok, (DialogInterface.OnClickListener) null);
                                        editNoticesDialog.show();
                                        return;
                                    case 1518327835:
                                        if (content6.equals("languages")) {
                                            pageFragment.startLangLinksActivity();
                                            return;
                                        }
                                        return;
                                    case 1523897951:
                                        if (content6.equals("lastEdited") && (pageTitle2 = (PageTitle) pageViewModel.title) != null) {
                                            ArticleInteractionEvent articleInteractionEvent3 = pageFragment.articleInteractionEvent;
                                            if (articleInteractionEvent3 != null) {
                                                articleInteractionEvent3.submitEvent("edit_history_from_article");
                                            }
                                            int i15 = EditHistoryListActivity.$r8$clinit;
                                            pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle2), null);
                                            return;
                                        }
                                        return;
                                    case 1686017190:
                                        content6.equals("disambiguation");
                                        return;
                                    default:
                                        return;
                                }
                            }
                            return;
                        }
                        return;
                    case 9:
                        int i16 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        Context requireContext = pageFragment.requireContext();
                        Uri parse2 = Uri.parse(pageFragment.getString(R.string.cc_by_sa_4_url));
                        parse2.getClass();
                        UriUtil.visitInExternalBrowser(requireContext, parse2);
                        return;
                    default:
                        int i17 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        str.getClass();
                        PageTitle pageTitle5 = (PageTitle) pageFragment.model.title;
                        if (pageTitle5 != null) {
                            Context requireContext2 = pageFragment.requireContext();
                            Uri parse3 = Uri.parse(pageTitle5.getUri());
                            parse3.getClass();
                            UriUtil.visitInExternalBrowser(requireContext2, parse3);
                            return;
                        }
                        return;
                }
            }
        });
        GsonBuilder gsonBuilder = this._binding;
        gsonBuilder.getClass();
        ((WikiErrorView) gsonBuilder.instanceCreators).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PageFragment.Callback callback2;
                int i12 = i;
                PageFragment pageFragment = this.f$0;
                switch (i12) {
                    case 0:
                        PageFragment.refreshPage$default(pageFragment);
                        break;
                    default:
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        if (!pageFragment.onBackPressed() && (callback2 = pageFragment.callback()) != null) {
                            ((PageActivity) callback2).finish();
                            break;
                        }
                        break;
                }
            }
        });
        GsonBuilder gsonBuilder2 = this._binding;
        gsonBuilder2.getClass();
        ((WikiErrorView) gsonBuilder2.instanceCreators).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda2
            public final /* synthetic */ PageFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PageFragment.Callback callback2;
                int i12 = i2;
                PageFragment pageFragment = this.f$0;
                switch (i12) {
                    case 0:
                        PageFragment.refreshPage$default(pageFragment);
                        break;
                    default:
                        int i13 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                        if (!pageFragment.onBackPressed() && (callback2 = pageFragment.callback()) != null) {
                            ((PageActivity) callback2).finish();
                            break;
                        }
                        break;
                }
            }
        });
        GsonBuilder gsonBuilder3 = this._binding;
        gsonBuilder3.getClass();
        ViewHideHandler viewHideHandler2 = new ViewHideHandler((FrameLayout) gsonBuilder3.longSerializationPolicy, 80, false, new Tab$$ExternalSyntheticLambda0(24));
        this.bottomBarHideHandler = viewHideHandler2;
        ObservableWebView webView3 = getWebView();
        viewHideHandler2.webView = webView3;
        webView3.onScrollChangeListeners.add(viewHideHandler2);
        webView3.onDownMotionEventListeners.add(viewHideHandler2);
        webView3.onUpOrCancelMotionEventListeners.add(viewHideHandler2);
        webView3.onClickListeners.add(viewHideHandler2);
        ViewHideHandler viewHideHandler3 = this.bottomBarHideHandler;
        if (viewHideHandler3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bottomBarHideHandler");
            throw null;
        }
        Prefs prefs = Prefs.INSTANCE;
        boolean readingFocusModeEnabled = Prefs.getReadingFocusModeEnabled();
        viewHideHandler3.enabled = readingFocusModeEnabled;
        if (!readingFocusModeEnabled) {
            viewHideHandler3.ensureDisplayed();
        }
        getWebView().onScrollChangeListeners.add(new ObservableWebView.OnScrollChangeListener() { // from class: org.wikipedia.page.PageFragment$$ExternalSyntheticLambda5
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
            /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.CharSequence] */
            @Override // org.wikipedia.views.ObservableWebView.OnScrollChangeListener
            public final void onScrollChanged(int i12, int i13) {
                String appOrSystemLanguageCode;
                WikiSite wikiSite;
                int i14 = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
                PageFragment pageFragment = PageFragment.this;
                ObservableWebView webView4 = pageFragment.getWebView();
                PageViewModel pageViewModel = pageFragment.model;
                if (i13 <= Okio__OkioKt.roundedDpToPx(webView4.getContentHeight()) - (Okio__OkioKt.getDisplayMetrics().heightPixels * 2) || pageViewModel.isReadMoreLoaded) {
                    return;
                }
                CommunicationBridge communicationBridge14 = pageFragment.bridge;
                if (communicationBridge14 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("bridge");
                    throw null;
                }
                ?? r2 = "";
                String str = r2;
                if (((Page) pageViewModel.page) != null) {
                    PageTitle pageTitle = (PageTitle) pageViewModel.title;
                    WikiSite wikiSite2 = pageTitle != null ? pageTitle.wikiSite : null;
                    wikiSite2.getClass();
                    String scheme = wikiSite2.scheme();
                    PageTitle pageTitle2 = (PageTitle) pageViewModel.title;
                    WikiSite wikiSite3 = pageTitle2 != null ? pageTitle2.wikiSite : null;
                    wikiSite3.getClass();
                    String authority = wikiSite3.uri.getAuthority();
                    authority.getClass();
                    char[] cArr = {'/'};
                    int length = authority.length() - 1;
                    if (length >= 0) {
                        while (true) {
                            int i15 = length - 1;
                            char charAt = authority.charAt(length);
                            int i16 = 0;
                            while (true) {
                                if (i16 >= 1) {
                                    i16 = -1;
                                    break;
                                } else if (charAt == cArr[i16]) {
                                    break;
                                } else {
                                    i16++;
                                }
                            }
                            if (i16 < 0) {
                                r2 = authority.subSequence(0, length + 1);
                                break;
                            } else if (i15 < 0) {
                                break;
                            } else {
                                length = i15;
                            }
                        }
                    }
                    String m = Animation.CC.m(scheme, "://", r2.toString());
                    PageTitle pageTitle3 = (PageTitle) pageViewModel.title;
                    if (pageTitle3 == null || (wikiSite = pageTitle3.wikiSite) == null || (appOrSystemLanguageCode = wikiSite.languageCode) == null) {
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                    }
                    str = Modifier.CC.m("pcs.c1.Footer.appendReadMore({   platform: \"android\",   clientVersion: \"r/50598-r-2026-07-13\",   readMore: {        itemCount: 3,       apiBaseURL: \"", m, "\",       langCode: \"", appOrSystemLanguageCode, "\",       fragment: \"pcs-read-more\"   }})");
                }
                communicationBridge14.execute(str);
                pageViewModel.isReadMoreLoaded = true;
            }
        });
        CommunicationBridge communicationBridge14 = this.bridge;
        if (communicationBridge14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        this.editHandler = new EditHandler(this, communicationBridge14);
        CommunicationBridge communicationBridge15 = this.bridge;
        if (communicationBridge15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        this.sidePanelHandler = new SidePanelHandler(this, communicationBridge15);
        ObservableWebView webView4 = getWebView();
        GsonBuilder gsonBuilder4 = this._binding;
        gsonBuilder4.getClass();
        this.leadImagesHandler = new LeadImagesHandler(this, webView4, (PageHeaderView) gsonBuilder4.factories, callback());
        CommunicationBridge communicationBridge16 = this.bridge;
        if (communicationBridge16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        this.shareHandler = new ShareHandler(this, communicationBridge16);
        ObservableWebView webView5 = getWebView();
        CommunicationBridge communicationBridge17 = this.bridge;
        if (communicationBridge17 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bridge");
            throw null;
        }
        LeadImagesHandler leadImagesHandler = this.leadImagesHandler;
        if (leadImagesHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("leadImagesHandler");
            throw null;
        }
        Tab currentTab = getCurrentTab();
        PageViewModel pageViewModel = this.model;
        pageViewModel.getClass();
        currentTab.getClass();
        GsonBuilder gsonBuilder5 = new GsonBuilder(13);
        gsonBuilder5.excluder = pageViewModel;
        gsonBuilder5.longSerializationPolicy = this;
        gsonBuilder5.fieldNamingPolicy = webView5;
        gsonBuilder5.instanceCreators = communicationBridge17;
        gsonBuilder5.factories = leadImagesHandler;
        gsonBuilder5.hierarchyFactories = currentTab;
        this.pageFragmentLoadState = gsonBuilder5;
        if (callback() != null) {
            new LongPressHandler(getWebView(), new ShareHandler(this));
        }
        if ((requireActivity.getIntent() == null || !("org.wikipedia.resume_reading".equals(requireActivity.getIntent().getAction()) || requireActivity.getIntent().hasExtra("appShortcutContinueReading"))) && bundle == null) {
            return;
        }
        reloadFromBackstack(true);
    }

    public final void openInNewBackgroundTab(PageTitle pageTitle, HistoryEntry historyEntry) {
        pageTitle.getClass();
        historyEntry.getClass();
        WikipediaApp wikipediaApp = this.app;
        if (wikipediaApp.getTabCount() == 0) {
            openInNewTab(pageTitle, historyEntry, wikipediaApp.tabList.size());
            GsonBuilder gsonBuilder = this.pageFragmentLoadState;
            if (gsonBuilder != null) {
                gsonBuilder.loadFromBackStack();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
        }
        int size = wikipediaApp.tabList.size() - 1;
        if (size <= 0) {
            size = 0;
        }
        openInNewTab(pageTitle, historyEntry, size);
        PageActivity pageActivity = (PageActivity) requireActivity();
        ViewHideHandler viewHideHandler = pageActivity.toolbarHideHandler;
        if (viewHideHandler == null) {
            Intrinsics.throwUninitializedPropertyAccessException("toolbarHideHandler");
            throw null;
        }
        viewHideHandler.ensureDisplayed();
        ((TabCountsView) pageActivity.getBinding().pageToolbarButtonTabs).updateTabCount(true);
    }

    public final void openInNewTab(PageTitle pageTitle, HistoryEntry historyEntry, int i) {
        int selectedTabPosition = selectedTabPosition(pageTitle);
        if (selectedTabPosition >= 0) {
            setCurrentTabAndReset(selectedTabPosition);
            return;
        }
        Continuation continuation = null;
        if (getCurrentTab().backStack.isEmpty()) {
            GsonBuilder gsonBuilder = this.pageFragmentLoadState;
            if (gsonBuilder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
            gsonBuilder.setTab(getCurrentTab());
            getCurrentTab().backStack.add(new PageBackStackItem(pageTitle, historyEntry));
            return;
        }
        Tab tab = new Tab();
        WikipediaApp wikipediaApp = this.app;
        int i2 = 0;
        boolean z = i == wikipediaApp.tabList.size();
        if (z) {
            GsonBuilder gsonBuilder2 = this.pageFragmentLoadState;
            if (gsonBuilder2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
            gsonBuilder2.setTab(tab);
        }
        ArrayList arrayList = wikipediaApp.tabList;
        ArrayList arrayList2 = wikipediaApp.tabList;
        arrayList.add(i, tab);
        while (arrayList2.size() > 100) {
            arrayList2.remove(0);
        }
        tab.backStack.add(new PageBackStackItem(pageTitle, historyEntry));
        if (!z) {
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 19), null, new PageFragment$openInNewTab$2(pageTitle, continuation, i2), 2);
        }
        requireActivity().invalidateOptionsMenu();
    }

    public final void reloadFromBackstack(boolean z) {
        GsonBuilder gsonBuilder = this.pageFragmentLoadState;
        if (gsonBuilder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
            throw null;
        }
        if (gsonBuilder.setTab(getCurrentTab()) || z) {
            GsonBuilder gsonBuilder2 = this.pageFragmentLoadState;
            if (gsonBuilder2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
            if (((Tab) gsonBuilder2.hierarchyFactories).backStack.isEmpty()) {
                Callback callback = callback();
                if (callback != null) {
                    ((PageActivity) callback).loadMainPage(PageActivity.TabPosition.EXISTING_TAB);
                    return;
                }
                return;
            }
            GsonBuilder gsonBuilder3 = this.pageFragmentLoadState;
            if (gsonBuilder3 != null) {
                gsonBuilder3.loadFromBackStack();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
        }
    }

    public final void scrollToSection(String str) {
        if (isAdded()) {
            CommunicationBridge communicationBridge = this.bridge;
            if (communicationBridge == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
            str.getClass();
            communicationBridge.execute("pcs.c1.Page.prepareForScrollToAnchor(\"" + StringsKt__StringsJVMKt.replace$default(str, "\"", "\\\"") + "\", { highlight: false } )");
        }
    }

    public final int selectedTabPosition(PageTitle pageTitle) {
        Object obj;
        WikipediaApp wikipediaApp = this.app;
        Iterator it = wikipediaApp.tabList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Tab tab = (Tab) obj;
            if (tab.getBackStackPositionTitle() != null && Intrinsics.areEqual(pageTitle, tab.getBackStackPositionTitle())) {
                break;
            }
        }
        Tab tab2 = (Tab) obj;
        if (tab2 != null) {
            return wikipediaApp.tabList.indexOf(tab2);
        }
        return -1;
    }

    public final void setCurrentTabAndReset(int i) {
        WikipediaApp wikipediaApp = this.app;
        ArrayList arrayList = wikipediaApp.tabList;
        ArrayList arrayList2 = wikipediaApp.tabList;
        if (i < arrayList.size() - 1) {
            Tab tab = (Tab) arrayList2.remove(i);
            arrayList2.add(tab);
            GsonBuilder gsonBuilder = this.pageFragmentLoadState;
            if (gsonBuilder == null) {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
            gsonBuilder.setTab(tab);
        }
        if (wikipediaApp.getTabCount() > 0) {
            Tab tab2 = (Tab) CollectionsKt.last((List) arrayList2);
            List list = tab2.backStack;
            PageBackStackItem pageBackStackItem = (PageBackStackItem) CollectionsKt.lastOrNull(list);
            if (pageBackStackItem != null) {
                list.clear();
                list.add(pageBackStackItem);
                tab2.backStackPosition = 0;
            }
            GsonBuilder gsonBuilder2 = this.pageFragmentLoadState;
            if (gsonBuilder2 != null) {
                gsonBuilder2.loadFromBackStack();
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
        }
    }

    public final void showBottomSheet(ExtendedBottomSheetDialogFragment extendedBottomSheetDialogFragment) {
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        Okio__OkioKt.show(childFragmentManager, extendedBottomSheetDialogFragment);
    }

    public final void showFindInPage() {
        if (((PageTitle) this.model.title) != null) {
            CommunicationBridge communicationBridge = this.bridge;
            if (communicationBridge != null) {
                communicationBridge.evaluate("pcs.c1.Page.expandOrCollapseTables(true);var hideableSections = document.getElementsByClassName('pcs-section-hideable-header'); for (var i = 0; i < hideableSections.length; i++) {   pcs.c1.Sections.setHidden(hideableSections[i].parentElement.getAttribute('data-mw-section-id'), false);}", new PageFragment$$ExternalSyntheticLambda6(0, this));
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("bridge");
                throw null;
            }
        }
    }

    public final void startLangLinksActivity() {
        Callback callback;
        PageViewModel pageViewModel = this.model;
        HistoryEntry historyEntry = (HistoryEntry) pageViewModel.curEntry;
        long j = historyEntry != null ? historyEntry.id : -1L;
        PageTitle pageTitle = (PageTitle) pageViewModel.title;
        if (pageTitle == null || (callback = callback()) == null) {
            return;
        }
        PageActivity pageActivity = (PageActivity) callback;
        ActivityResultRegistry$register$2 activityResultRegistry$register$2 = pageActivity.requestHandleIntentLauncher;
        Intent putExtra = new Intent(pageActivity, (Class<?>) LangLinksActivity.class).putExtra("title", pageTitle).putExtra("number", j);
        putExtra.getClass();
        activityResultRegistry$register$2.launch(putExtra, null);
    }

    public final void startTalkTopicsActivity(PageTitle pageTitle, boolean z) {
        PageTitle copy$default = PageTitle.copy$default(pageTitle);
        if (z) {
            copy$default.fragment = null;
        }
        int i = TalkTopicsActivity.$r8$clinit;
        startActivity(Headers.Companion.newIntent(requireActivity(), copy$default, Constants.InvokeSource.PAGE_ACTIVITY), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateBookmarkAndMenuOptionsFromDao(kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof org.wikipedia.page.PageFragment$updateBookmarkAndMenuOptionsFromDao$1
            if (r0 == 0) goto L13
            r0 = r7
            org.wikipedia.page.PageFragment$updateBookmarkAndMenuOptionsFromDao$1 r0 = (org.wikipedia.page.PageFragment$updateBookmarkAndMenuOptionsFromDao$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.wikipedia.page.PageFragment$updateBookmarkAndMenuOptionsFromDao$1 r0 = new org.wikipedia.page.PageFragment$updateBookmarkAndMenuOptionsFromDao$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            org.wikipedia.page.PageViewModel r0 = r0.L$1
            kotlin.ResultKt.throwOnFailure(r7)
            goto L53
        L29:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L30:
            kotlin.ResultKt.throwOnFailure(r7)
            org.wikipedia.page.PageViewModel r7 = r6.model
            java.lang.Object r2 = r7.title
            org.wikipedia.page.PageTitle r2 = (org.wikipedia.page.PageTitle) r2
            if (r2 == 0) goto L61
            org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1 r4 = org.wikipedia.database.AppDatabase.MIGRATION_19_20
            org.wikipedia.database.AppDatabase r4 = okhttp3.Cookie.Companion.getInstance()
            org.wikipedia.readinglist.db.ReadingListPageDao_Impl r4 = r4.readingListPageDao()
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r0 = r4.findPageInAnyList(r2, r0)
            if (r0 != r1) goto L50
            return r1
        L50:
            r5 = r0
            r0 = r7
            r7 = r5
        L53:
            org.wikipedia.readinglist.database.ReadingListPage r7 = (org.wikipedia.readinglist.database.ReadingListPage) r7
            r0.readingListPage = r7
            r6.updateQuickActionsAndMenuOptions()
            androidx.appcompat.app.AppCompatActivity r6 = r6.requireActivity()
            r6.invalidateOptionsMenu()
        L61:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.PageFragment.updateBookmarkAndMenuOptionsFromDao(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void updateProgressBar(boolean z) {
        Callback callback = callback();
        if (callback != null) {
            ((PageActivity) callback).updateProgressBar$1(z);
        }
    }

    public final void updateQuickActionsAndMenuOptions() {
        if (isAdded()) {
            GsonBuilder gsonBuilder = this._binding;
            gsonBuilder.getClass();
            PageActionTabLayout pageActionTabLayout = (PageActionTabLayout) gsonBuilder.fieldNamingPolicy;
            int childCount = pageActionTabLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = pageActionTabLayout.getChildAt(i);
                childAt.getClass();
                MaterialTextView materialTextView = (MaterialTextView) childAt;
                PageActionItem.Companion companion = PageActionItem.Companion;
                int id = materialTextView.getId();
                companion.getClass();
                PageActionItem find = PageActionItem.Companion.find(id);
                PageViewModel pageViewModel = this.model;
                boolean z = ((Page) pageViewModel.page) != null && (!pageViewModel.getShouldLoadAsMobileWeb() || (pageViewModel.getShouldLoadAsMobileWeb() && find.isAvailableOnMobileWeb()));
                int i2 = WhenMappings.$EnumSwitchMapping$0[find.ordinal()];
                if (i2 == 1) {
                    materialTextView.setText(pageViewModel.isWatched ? R.string.menu_page_unwatch : R.string.menu_page_watch);
                    boolean z2 = pageViewModel.isWatched;
                    materialTextView.setCompoundDrawablesWithIntrinsicBounds(0, (!z2 || pageViewModel.hasWatchlistExpiry) ? !z2 ? R.drawable.ic_baseline_star_outline_24 : R.drawable.ic_baseline_star_half_24 : R.drawable.ic_star_24, 0, 0);
                    z = z && Headers.Companion.isLoggedIn();
                } else if (i2 == 2) {
                    materialTextView.setCompoundDrawablesWithIntrinsicBounds(0, ((ReadingListPage) pageViewModel.readingListPage) != null ? R.drawable.ic_bookmark_white_24dp : R.drawable.ic_bookmark_border_white_24dp, 0, 0);
                } else if (i2 == 3) {
                    Page page = (Page) pageViewModel.page;
                    materialTextView.setCompoundDrawablesWithIntrinsicBounds(0, !(page != null && page.pageProperties.canEdit) ? R.drawable.ic_edit_pencil_locked : R.drawable.ic_mode_edit_white_24dp, 0, 0);
                } else if (i2 == 4) {
                    Page page2 = (Page) pageViewModel.page;
                    ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(requireContext(), (page2 != null ? page2.pageProperties.geo : null) != null ? R.attr.primary_color : R.attr.inactive_color);
                    materialTextView.setTextColor(themedColorStateList);
                    UuidKt.setCompoundDrawableTintList((TextView) childAt, themedColorStateList);
                }
                materialTextView.setEnabled(z);
                materialTextView.setAlpha(z ? 1.0f : 0.5f);
            }
            getSidePanelHandler().setEnabled(false);
            requireActivity().invalidateOptionsMenu();
        }
    }

    public final void verifyBeforeEditingDescription(String str, Constants.InvokeSource invokeSource) {
        invokeSource.getClass();
        PageViewModel pageViewModel = this.model;
        if (((Page) pageViewModel.page) != null) {
            if (!Headers.Companion.isLoggedIn()) {
                Prefs prefs = Prefs.INSTANCE;
                int i = 0;
                if (PrefsIoUtil.getInt(R.string.preference_key_total_anon_descriptions_edited, 0) >= getResources().getInteger(R.integer.description_max_anon_edits)) {
                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity(), 0);
                    materialAlertDialogBuilder.setMessage(R.string.description_edit_anon_limit);
                    materialAlertDialogBuilder.setPositiveButton(R.string.page_editing_login, new PageFragment$$ExternalSyntheticLambda28(i, this));
                    materialAlertDialogBuilder.setNegativeButton(R.string.description_edit_login_cancel_button_text, (DialogInterface.OnClickListener) null);
                    materialAlertDialogBuilder.show();
                    return;
                }
            }
            PageTitle pageTitle = (PageTitle) pageViewModel.title;
            if (pageTitle != null) {
                PageSummaryForEdit pageSummaryForEdit = new PageSummaryForEdit(pageTitle.getPrefixedText(), pageTitle.wikiSite.languageCode, pageTitle, pageTitle.getDisplayText(), pageTitle.description, pageTitle.thumbUrl, null, null, 1984);
                Callback callback = callback();
                if (callback != null) {
                    ((PageActivity) callback).onPageRequestEditDescription(str, pageTitle, pageSummaryForEdit, null, DescriptionEditActivity.Action.ADD_DESCRIPTION, invokeSource);
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AvCallback implements AvPlayer.Callback, LongPressMenu.Callback, PageActionItem.Callback {
        public /* synthetic */ AvCallback() {
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onAddRequest(HistoryEntry historyEntry, boolean z) {
            historyEntry.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageTitle pageTitle = (PageTitle) pageFragment.model.title;
            if (pageTitle != null) {
                List list = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.addToDefaultList(pageFragment.requireActivity(), pageTitle, z, Constants.InvokeSource.BOOKMARK_BUTTON, null);
            }
        }

        @Override // org.wikipedia.media.AvPlayer.Callback
        public void onError(int i, int i2) {
            AvPlayer avPlayer;
            PageFragment pageFragment = PageFragment.this;
            AvPlayer avPlayer2 = pageFragment.avPlayer;
            if (avPlayer2 != null && ((MediaPlayer) ((AvPlayer) avPlayer2.player).player).isPlaying() && (avPlayer = pageFragment.avPlayer) != null) {
                ((MediaPlayer) ((AvPlayer) avPlayer.player).player).stop();
            }
            ShareUtil.showMessage(R.string.media_playback_error, pageFragment);
            pageFragment.updateProgressBar(false);
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onMoveRequest(ReadingListPage readingListPage, HistoryEntry historyEntry) {
            historyEntry.getClass();
            if (readingListPage != null) {
                PageFragment pageFragment = PageFragment.this;
                PageTitle pageTitle = (PageTitle) pageFragment.model.title;
                if (pageTitle != null) {
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.moveToList(pageFragment.requireActivity(), readingListPage.listId, pageTitle, Constants.InvokeSource.BOOKMARK_BUTTON, true, null);
                }
            }
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onOpenInNewTab(HistoryEntry historyEntry) {
            historyEntry.getClass();
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public /* bridge */ void onOpenInPlaces(HistoryEntry historyEntry, Location location) {
            Service.CC.$default$onOpenInPlaces(historyEntry, location);
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onOpenLink(HistoryEntry historyEntry) {
            historyEntry.getClass();
        }

        @Override // org.wikipedia.media.AvPlayer.Callback
        public void onSuccess() {
            PageFragment pageFragment = PageFragment.this;
            AvPlayer avPlayer = pageFragment.avPlayer;
            if (avPlayer != null) {
                ((MediaPlayer) ((AvPlayer) avPlayer.player).player).stop();
            }
            pageFragment.updateProgressBar(false);
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onRemoveRequest() {
        }

        @Override // org.wikipedia.readinglist.LongPressMenu.Callback
        public void onShareRequest() {
        }
    }

    @Override // org.wikipedia.theme.ThemeChooserDialog.Callback
    public final void onEditingPrefsChanged() {
    }

    public final void loadPage(PageTitle pageTitle, HistoryEntry historyEntry, boolean z, boolean z2, boolean z3) {
        pageTitle.getClass();
        historyEntry.getClass();
        if (!getCurrentTab().backStack.isEmpty() && pageTitle.equals(((PageBackStackItem) getCurrentTab().backStack.get(getCurrentTab().getBackStackPosition())).title)) {
            if (((Page) this.model.page) != null && !z3) {
                String str = pageTitle.fragment;
                if (str == null || str.length() == 0) {
                    return;
                }
                String str2 = pageTitle.fragment;
                str2.getClass();
                scrollToSection(str2);
                return;
            }
            GsonBuilder gsonBuilder = this.pageFragmentLoadState;
            if (gsonBuilder != null) {
                gsonBuilder.loadFromBackStack();
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("pageFragmentLoadState");
                throw null;
            }
        }
        if (z2) {
            WikipediaApp wikipediaApp = this.app;
            if (wikipediaApp.getTabCount() > 0) {
                Tab tab = (Tab) CollectionsKt.last((List) wikipediaApp.tabList);
                tab.backStack.clear();
                tab.backStackPosition = -1;
            }
        }
        loadPage(pageTitle, historyEntry, z, 0, z3);
    }
}
