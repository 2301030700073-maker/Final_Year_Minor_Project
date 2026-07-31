package org.wikipedia.main;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.icu.text.ListFormatter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.node.NodeChain;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.MaterialToolbar;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.text.RegexKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.Path;
import org.jsoup.Jsoup;
import org.wikipedia.BackPressedHandler;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.feed.image.FeaturedImage;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.gallery.MediaDownloadReceiver;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.login.LoginClient;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.navtab.MenuNavTabDialog;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.navtab.NavTabFragmentPagerAdapter;
import org.wikipedia.navtab.NavTabLayout;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.onboarding.OnboardingFragment;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.tabs.TabActivity;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.random.RandomActivity;
import org.wikipedia.random.RandomScreenKt;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.readinglist.ReadingListsFragment.OverflowCallback;
import org.wikipedia.readinglist.SortReadingListsDialog;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.MainPageNameData;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragment;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.TabUtil;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.ReadingListsOverflowView;
import org.wikipedia.views.TabCountsView;
import org.wikipedia.yearinreview.YearInReviewDialog;
import org.wikipedia.yearinreview.YearInReviewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006:\u0003\t\n\u000bB\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lorg/wikipedia/main/MainFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/BackPressedHandler;", "Landroidx/core/view/MenuProvider;", "Lorg/wikipedia/history/HistoryFragment$Callback;", "Lorg/wikipedia/navtab/MenuNavTabDialog$Callback;", "Lorg/wikipedia/activitytab/ActivityTabFragment$Callback;", "<init>", "()V", "Callback", "PageChangeCallback", "org/wikipedia/media/AvPlayer", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MainFragment extends Fragment implements BackPressedHandler, MenuProvider, HistoryFragment.Callback, MenuNavTabDialog.Callback, ActivityTabFragment.Callback {
    public Request.Builder _binding;
    public NotificationButtonView notificationButtonView;
    public final PageChangeCallback pageChangeCallback;
    public FeaturedImage pendingDownloadImage;
    public final Fragment.AnonymousClass10 requestPermissionLauncher;
    public boolean showTabCountsAnimation;
    public TabCountsView tabCountsView;
    public final MediaDownloadReceiver downloadReceiver = new MediaDownloadReceiver();
    public final AvPlayer downloadReceiverCallback = new AvPlayer(13, this);
    public final Fragment.AnonymousClass10 activityTabOnboardingLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new MainFragment$$ExternalSyntheticLambda0(this, 1), new FragmentManager$FragmentIntentSenderContract(3));
    public final ArrayList navTabBackStack = new ArrayList();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    public MainFragment() {
        int i = 0;
        this.pageChangeCallback = new PageChangeCallback(i, this);
        this.requestPermissionLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new MainFragment$$ExternalSyntheticLambda0(this, i), new FragmentManager$FragmentIntentSenderContract(2));
    }

    public static final void onFeedRemovePageFromList$lambda$0(MainFragment mainFragment, HistoryEntry historyEntry, List list, ReadingListPage readingListPage) {
        list.getClass();
        readingListPage.getClass();
        if (mainFragment.requireActivity().isDestroyed()) {
            return;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((ReadingList) it.next()).getTitle());
        }
        String format = Build.VERSION.SDK_INT >= 26 ? ListFormatter.getInstance().format(arrayList) : CollectionsKt.joinToString$default(arrayList, ", ", null, null, null, 62);
        AppCompatActivity requireActivity = mainFragment.requireActivity();
        String string = mainFragment.getString(R.string.reading_list_item_deleted_from_list, historyEntry.getTitle().getDisplayText(), format);
        string.getClass();
        ShareUtil.showMessage(requireActivity, string, 0);
    }

    public final void download(FeaturedImage featuredImage) {
        this.pendingDownloadImage = null;
        Context requireContext = requireContext();
        this.downloadReceiver.getClass();
        featuredImage.getClass();
        String str = featuredImage.title;
        str.getClass();
        Pattern compile = Pattern.compile("[:\\\\/*\"?|<>']");
        compile.getClass();
        String replaceAll = compile.matcher(str).replaceAll("_");
        replaceAll.getClass();
        String str2 = Environment.DIRECTORY_PICTURES;
        Uri parse = Uri.parse(featuredImage.original.source);
        parse.getClass();
        str2.getClass();
        MediaDownloadReceiver.performDownloadRequest(requireContext, parse, str2, replaceAll, null);
        ShareUtil.showMessage(R.string.gallery_save_progress, this);
    }

    public final Fragment getCurrentFragment() {
        Request.Builder builder = this._binding;
        builder.getClass();
        RecyclerView.Adapter adapter = ((ViewPager2) builder.tags).getAdapter();
        adapter.getClass();
        Request.Builder builder2 = this._binding;
        builder2.getClass();
        return ((NavTabFragmentPagerAdapter) adapter).getFragmentAt(((ViewPager2) builder2.tags).getCurrentItem());
    }

    public final void handleIntent$2(Intent intent) {
        if (intent.hasExtra("appShortcutRandomizer")) {
            int i = RandomActivity.$r8$clinit;
            AppCompatActivity requireActivity = requireActivity();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            startActivity(RandomScreenKt.newIntent(requireActivity, Jsoup.getInstance().getWikiSite(), Constants.InvokeSource.APP_SHORTCUTS), null);
            return;
        }
        if (intent.hasExtra("appShortcutSearch")) {
            openSearchActivity(Constants.InvokeSource.APP_SHORTCUTS, null, null);
            return;
        }
        if (intent.hasExtra("appShortcutContinueReading")) {
            int i2 = PageActivity.$r8$clinit;
            startActivity(LoginClient.newIntent(requireActivity()), null);
            return;
        }
        if (intent.hasExtra("appShortcutPlaces")) {
            int i3 = PlacesActivity.$r8$clinit;
            startActivity(ByteString.Companion.newIntent(requireActivity(), null, null), null);
            return;
        }
        if (intent.hasExtra("deleteReadingList")) {
            onNavigateTo(NavTab.READING_LISTS);
            return;
        }
        if (intent.hasExtra("goToMainTab")) {
            Request.Builder builder = this._binding;
            builder.getClass();
            int selectedItemId = ((NavTabLayout) builder.body).getSelectedItemId();
            NavTab navTab = NavTab.HOME;
            if (selectedItemId != navTab.ordinal() || intent.getIntExtra("goToMainTab", navTab.ordinal()) != navTab.ordinal()) {
                NavTab.Companion companion = NavTab.Companion;
                int intExtra = intent.getIntExtra("goToMainTab", navTab.ordinal());
                companion.getClass();
                onNavigateTo(NavTab.Companion.of(intExtra));
                return;
            }
        }
        if (intent.hasExtra("goToSETab")) {
            NavTab.Companion companion2 = NavTab.Companion;
            int intExtra2 = intent.getIntExtra("goToSETab", NavTab.EDITS.ordinal());
            companion2.getClass();
            onNavigateTo(NavTab.Companion.of(intExtra2));
            return;
        }
        if (intent.hasExtra("previewSavedReadingList")) {
            onNavigateTo(NavTab.READING_LISTS);
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Prefs prefs = Prefs.INSTANCE;
        if ((currentTimeMillis - PrefsIoUtil.getLong(0L, R.string.preference_key_page_last_shown)) / 86400000 >= 1 || intent.hasExtra("returnToMain")) {
            return;
        }
        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
        if (Jsoup.getInstance().getTabCount() > 0) {
            int i4 = PageActivity.$r8$clinit;
            startActivity(LoginClient.newIntent(requireContext()), null);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        if (i == 45 && i2 == -1 && intent != null && intent.getStringArrayListExtra("android.speech.extra.RESULTS") != null) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            stringArrayListExtra.getClass();
            openSearchActivity(Constants.InvokeSource.VOICE, stringArrayListExtra.get(0), null);
            return;
        }
        if (i == 52 && i2 == 1 && intent != null) {
            startActivity(intent, null);
            return;
        }
        if (i == 53 && i2 == 1) {
            refreshContents();
            ShareUtil.showMessage(R.string.login_success_toast, this);
            return;
        }
        if (i == 61) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            if (Jsoup.getInstance().getTabCount() == 0) {
                return;
            }
            if (i2 == 10) {
                int i3 = PageActivity.$r8$clinit;
                startActivity(LoginClient.newIntent(requireContext()), null);
                return;
            } else {
                if (i2 != 11) {
                    return;
                }
                HistoryEntry historyEntry = new HistoryEntry(8, new PageTitle(MainPageNameData.valueFor(Jsoup.getInstance().getAppOrSystemLanguageCode()), Jsoup.getInstance().getWikiSite(), (String) null));
                int i4 = PageActivity.$r8$clinit;
                startActivity(LoginClient.newIntentForNewTab(requireContext(), historyEntry, historyEntry.getTitle()), null);
                return;
            }
        }
        if ((i != 62 || i2 != 98) && (i != 41 || (i2 != 1 && i2 != 2 && i2 != 3))) {
            super.onActivityResult(i, i2, intent);
            return;
        }
        refreshContents();
        if (i2 == 3) {
            ShareUtil.showMessage(requireActivity(), R.string.toast_logout_complete);
        }
    }

    @Override // org.wikipedia.BackPressedHandler
    public final boolean onBackPressed() {
        LifecycleOwner currentFragment = getCurrentFragment();
        BackPressedHandler backPressedHandler = currentFragment instanceof BackPressedHandler ? (BackPressedHandler) currentFragment : null;
        if (backPressedHandler != null && backPressedHandler.onBackPressed()) {
            return true;
        }
        ArrayList arrayList = this.navTabBackStack;
        if (arrayList.isEmpty()) {
            return false;
        }
        Object removeLastOrNull = CollectionsKt.removeLastOrNull(arrayList);
        removeLastOrNull.getClass();
        onNavigateTo((NavTab) removeLastOrNull);
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_main, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        layoutInflater.getClass();
        int i2 = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_main, viewGroup, false);
        int i3 = R.id.fragment_main_coordinator;
        Continuation continuation = null;
        if (((CoordinatorLayout) Room.findChildViewById(inflate, R.id.fragment_main_coordinator)) != null) {
            i3 = R.id.main_nav_tab_border;
            View findChildViewById = Room.findChildViewById(inflate, R.id.main_nav_tab_border);
            if (findChildViewById != null) {
                i3 = R.id.main_nav_tab_container;
                FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.main_nav_tab_container);
                if (frameLayout != null) {
                    i3 = R.id.main_nav_tab_layout;
                    NavTabLayout navTabLayout = (NavTabLayout) Room.findChildViewById(inflate, R.id.main_nav_tab_layout);
                    if (navTabLayout != null) {
                        i3 = R.id.main_view_pager;
                        ViewPager2 viewPager2 = (ViewPager2) Room.findChildViewById(inflate, R.id.main_view_pager);
                        if (viewPager2 != null) {
                            this._binding = new Request.Builder((ConstraintLayout) inflate, findChildViewById, frameLayout, navTabLayout, viewPager2);
                            requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
                            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new MainFragment$onCreateView$1(this, continuation, i2), 3);
                            Request.Builder builder = this._binding;
                            builder.getClass();
                            ((ViewPager2) builder.tags).setUserInputEnabled(false);
                            Request.Builder builder2 = this._binding;
                            builder2.getClass();
                            ((ViewPager2) builder2.tags).setAdapter(new NavTabFragmentPagerAdapter(this));
                            Request.Builder builder3 = this._binding;
                            builder3.getClass();
                            ((ViewPager2) builder3.tags).registerOnPageChangeCallback(this.pageChangeCallback);
                            Request.Builder builder4 = this._binding;
                            builder4.getClass();
                            FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(new ViewGroupKt$children$1((NavTabLayout) builder4.body, 1), true, MainFragment$onCreateView$$inlined$filterIsInstance$1.INSTANCE));
                            while (true) {
                                i = 2;
                                if (!filteringSequence$iterator$1.hasNext()) {
                                    break;
                                }
                                ((TextView) filteringSequence$iterator$1.next()).setMaxLines(2);
                            }
                            Prefs prefs = Prefs.INSTANCE;
                            boolean z = !Prefs.isRecommendedReadingListOnboardingShown() || (Prefs.isRecommendedReadingListEnabled() && Prefs.isNewRecommendedReadingListGenerated());
                            Request.Builder builder5 = this._binding;
                            builder5.getClass();
                            ((NavTabLayout) builder5.body).setOverlayDot(NavTab.READING_LISTS, z);
                            Request.Builder builder6 = this._binding;
                            builder6.getClass();
                            ((NavTabLayout) builder6.body).setOnItemSelectedListener(new MainFragment$$ExternalSyntheticLambda0(this, i));
                            Request.Builder builder7 = this._binding;
                            builder7.getClass();
                            ((NavTabLayout) builder7.body).setOverlayDot(NavTab.EDITS, !Prefs.isActivityTabOnboardingShown());
                            if (PrefsIoUtil.getInt(R.string.preference_key_explore_feed_visit_count, 0) == 0) {
                                PrefsIoUtil.setBoolean(R.string.preference_key_home_feed_update_tooltip_shown, true);
                            } else if (!Prefs.isHomeFeedUpdateTooltipShown()) {
                                PrefsIoUtil.setBoolean(R.string.preference_key_home_feed_update_tooltip_shown, true);
                                Request.Builder builder8 = this._binding;
                                builder8.getClass();
                                ((ConstraintLayout) builder8.url).post(new MainFragment$$ExternalSyntheticLambda5(i2, this));
                            }
                            PrefsIoUtil.setInt(R.string.preference_key_explore_feed_visit_count, PrefsIoUtil.getInt(R.string.preference_key_explore_feed_visit_count, 0) + 1);
                            this.notificationButtonView = new NotificationButtonView(requireActivity(), null);
                            if (bundle == null) {
                                Intent intent = requireActivity().getIntent();
                                intent.getClass();
                                handleIntent$2(intent);
                            }
                            Request.Builder builder9 = this._binding;
                            builder9.getClass();
                            ConstraintLayout constraintLayout = (ConstraintLayout) builder9.url;
                            constraintLayout.getClass();
                            return constraintLayout;
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_suggested_edits_highest_priority_enabled, false);
        Request.Builder builder = this._binding;
        builder.getClass();
        ((ViewPager2) builder.tags).setAdapter(null);
        Request.Builder builder2 = this._binding;
        builder2.getClass();
        ((ArrayList) ((ViewPager2) builder2.tags).mExternalPageChangeCallbacks.this$0).remove(this.pageChangeCallback);
        this._binding = null;
        this.mCalled = true;
    }

    public final void onFeedSelectPage(HistoryEntry historyEntry, boolean z) {
        historyEntry.getClass();
        if (!z) {
            int i = PageActivity.$r8$clinit;
            startActivity(LoginClient.newIntentForNewTab(requireContext(), historyEntry, historyEntry.getTitle()), null);
        } else {
            TabUtil.openInNewBackgroundTab(historyEntry);
            this.showTabCountsAnimation = true;
            requireActivity().invalidateOptionsMenu();
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        Fragment currentFragment = getCurrentFragment();
        int itemId = menuItem.getItemId();
        final int i = 1;
        if (itemId != R.id.menu_search_lists) {
            final int i2 = 0;
            if (itemId != R.id.menu_overflow_button) {
                return false;
            }
            if (currentFragment instanceof ReadingListsFragment) {
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) currentFragment;
                final Context requireContext = readingListsFragment.requireContext();
                final ReadingListsOverflowView readingListsOverflowView = new ReadingListsOverflowView(requireContext);
                View inflate = LayoutInflater.from(requireContext).inflate(R.layout.view_reading_lists_overflow, (ViewGroup) readingListsOverflowView, false);
                readingListsOverflowView.addView(inflate);
                int i3 = R.id.reading_lists_overflow_create_new_list;
                TextView textView = (TextView) Room.findChildViewById(inflate, R.id.reading_lists_overflow_create_new_list);
                if (textView != null) {
                    i3 = R.id.reading_lists_overflow_import_list;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.reading_lists_overflow_import_list);
                    if (textView2 != null) {
                        i3 = R.id.reading_lists_overflow_last_sync;
                        TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.reading_lists_overflow_last_sync);
                        if (textView3 != null) {
                            i3 = R.id.reading_lists_overflow_refresh;
                            LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.reading_lists_overflow_refresh);
                            if (linearLayout != null) {
                                i3 = R.id.reading_lists_overflow_select;
                                TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.reading_lists_overflow_select);
                                if (textView4 != null) {
                                    i3 = R.id.reading_lists_overflow_sort_by;
                                    TextView textView5 = (TextView) Room.findChildViewById(inflate, R.id.reading_lists_overflow_sort_by);
                                    if (textView5 != null) {
                                        textView5.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.ReadingListsOverflowView$$ExternalSyntheticLambda0
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                int i4 = i2;
                                                ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                Context context = requireContext;
                                                switch (i4) {
                                                    case 0:
                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback != null) {
                                                            FragmentManagerImpl childFragmentManager = ReadingListsFragment.this.getChildFragmentManager();
                                                            childFragmentManager.getClass();
                                                            Prefs prefs = Prefs.INSTANCE;
                                                            int i5 = PrefsIoUtil.getInt(R.string.preference_key_reading_list_sort_mode, 0);
                                                            SortReadingListsDialog sortReadingListsDialog = new SortReadingListsDialog();
                                                            sortReadingListsDialog.setArguments(UStringsKt.bundleOf(new Pair("sortOption", Integer.valueOf(i5))));
                                                            Okio__OkioKt.show(childFragmentManager, sortReadingListsDialog);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion2.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback2 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback2 != null) {
                                                            ReadingListsFragment readingListsFragment2 = ReadingListsFragment.this;
                                                            List list = readingListsFragment2.displayedLists;
                                                            ArrayList arrayList = new ArrayList();
                                                            for (Object obj : list) {
                                                                if (obj instanceof ReadingList) {
                                                                    arrayList.add(obj);
                                                                }
                                                            }
                                                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                                                            Iterator it = arrayList.iterator();
                                                            while (it.hasNext()) {
                                                                arrayList2.add(((ReadingList) it.next()).getTitle());
                                                            }
                                                            AppCompatActivity requireActivity = readingListsFragment2.requireActivity();
                                                            String string = readingListsFragment2.getString(R.string.reading_list_name_sample);
                                                            string.getClass();
                                                            TabUtil.readingListTitleDialog(requireActivity, string, "", arrayList2, readingListsFragment2.new OverflowCallback()).show();
                                                            break;
                                                        }
                                                        break;
                                                    case 2:
                                                        BreadCrumbLogEvent.Companion companion3 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion3.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback3 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback3 != null) {
                                                            Intent intent = new Intent("android.intent.action.GET_CONTENT");
                                                            intent.setType("application/json");
                                                            ReadingListsFragment readingListsFragment3 = ReadingListsFragment.this;
                                                            Intent createChooser = Intent.createChooser(intent, readingListsFragment3.getString(R.string.reading_lists_import_file_picker_title));
                                                            createChooser.getClass();
                                                            readingListsFragment3.filePickerLauncher.launch(createChooser, null);
                                                            break;
                                                        }
                                                        break;
                                                    case 3:
                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion4.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback4 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback4 != null) {
                                                            ReadingListsFragment readingListsFragment4 = ReadingListsFragment.this;
                                                            readingListsFragment4.beginMultiSelect$2();
                                                            readingListsFragment4.adapter.notifyDataSetChanged();
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion5.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback5 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback5 != null) {
                                                            ReadingListsFragment readingListsFragment5 = ReadingListsFragment.this;
                                                            NodeChain nodeChain = readingListsFragment5._binding;
                                                            nodeChain.getClass();
                                                            ((WikiSwipeRefreshLayout) nodeChain.cachedDiffer).setRefreshing(true);
                                                            NodeChain nodeChain2 = readingListsFragment5._binding;
                                                            nodeChain2.getClass();
                                                            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) nodeChain2.cachedDiffer;
                                                            wikiSwipeRefreshLayout.getClass();
                                                            if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                Cache.Companion.promptLogInToSyncDialog(readingListsFragment5.requireActivity());
                                                                wikiSwipeRefreshLayout.setRefreshing(false);
                                                                break;
                                                            } else {
                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                Prefs.setReadingListSyncEnabled(true);
                                                                Path.Companion.manualSyncWithForce();
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                }
                                            }
                                        });
                                        textView.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.ReadingListsOverflowView$$ExternalSyntheticLambda0
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                int i4 = i;
                                                ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                Context context = requireContext;
                                                switch (i4) {
                                                    case 0:
                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback != null) {
                                                            FragmentManagerImpl childFragmentManager = ReadingListsFragment.this.getChildFragmentManager();
                                                            childFragmentManager.getClass();
                                                            Prefs prefs = Prefs.INSTANCE;
                                                            int i5 = PrefsIoUtil.getInt(R.string.preference_key_reading_list_sort_mode, 0);
                                                            SortReadingListsDialog sortReadingListsDialog = new SortReadingListsDialog();
                                                            sortReadingListsDialog.setArguments(UStringsKt.bundleOf(new Pair("sortOption", Integer.valueOf(i5))));
                                                            Okio__OkioKt.show(childFragmentManager, sortReadingListsDialog);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion2.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback2 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback2 != null) {
                                                            ReadingListsFragment readingListsFragment2 = ReadingListsFragment.this;
                                                            List list = readingListsFragment2.displayedLists;
                                                            ArrayList arrayList = new ArrayList();
                                                            for (Object obj : list) {
                                                                if (obj instanceof ReadingList) {
                                                                    arrayList.add(obj);
                                                                }
                                                            }
                                                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                                                            Iterator it = arrayList.iterator();
                                                            while (it.hasNext()) {
                                                                arrayList2.add(((ReadingList) it.next()).getTitle());
                                                            }
                                                            AppCompatActivity requireActivity = readingListsFragment2.requireActivity();
                                                            String string = readingListsFragment2.getString(R.string.reading_list_name_sample);
                                                            string.getClass();
                                                            TabUtil.readingListTitleDialog(requireActivity, string, "", arrayList2, readingListsFragment2.new OverflowCallback()).show();
                                                            break;
                                                        }
                                                        break;
                                                    case 2:
                                                        BreadCrumbLogEvent.Companion companion3 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion3.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback3 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback3 != null) {
                                                            Intent intent = new Intent("android.intent.action.GET_CONTENT");
                                                            intent.setType("application/json");
                                                            ReadingListsFragment readingListsFragment3 = ReadingListsFragment.this;
                                                            Intent createChooser = Intent.createChooser(intent, readingListsFragment3.getString(R.string.reading_lists_import_file_picker_title));
                                                            createChooser.getClass();
                                                            readingListsFragment3.filePickerLauncher.launch(createChooser, null);
                                                            break;
                                                        }
                                                        break;
                                                    case 3:
                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion4.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback4 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback4 != null) {
                                                            ReadingListsFragment readingListsFragment4 = ReadingListsFragment.this;
                                                            readingListsFragment4.beginMultiSelect$2();
                                                            readingListsFragment4.adapter.notifyDataSetChanged();
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion5.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback5 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback5 != null) {
                                                            ReadingListsFragment readingListsFragment5 = ReadingListsFragment.this;
                                                            NodeChain nodeChain = readingListsFragment5._binding;
                                                            nodeChain.getClass();
                                                            ((WikiSwipeRefreshLayout) nodeChain.cachedDiffer).setRefreshing(true);
                                                            NodeChain nodeChain2 = readingListsFragment5._binding;
                                                            nodeChain2.getClass();
                                                            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) nodeChain2.cachedDiffer;
                                                            wikiSwipeRefreshLayout.getClass();
                                                            if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                Cache.Companion.promptLogInToSyncDialog(readingListsFragment5.requireActivity());
                                                                wikiSwipeRefreshLayout.setRefreshing(false);
                                                                break;
                                                            } else {
                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                Prefs.setReadingListSyncEnabled(true);
                                                                Path.Companion.manualSyncWithForce();
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                }
                                            }
                                        });
                                        final int i4 = 2;
                                        textView2.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.ReadingListsOverflowView$$ExternalSyntheticLambda0
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                int i42 = i4;
                                                ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                Context context = requireContext;
                                                switch (i42) {
                                                    case 0:
                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback != null) {
                                                            FragmentManagerImpl childFragmentManager = ReadingListsFragment.this.getChildFragmentManager();
                                                            childFragmentManager.getClass();
                                                            Prefs prefs = Prefs.INSTANCE;
                                                            int i5 = PrefsIoUtil.getInt(R.string.preference_key_reading_list_sort_mode, 0);
                                                            SortReadingListsDialog sortReadingListsDialog = new SortReadingListsDialog();
                                                            sortReadingListsDialog.setArguments(UStringsKt.bundleOf(new Pair("sortOption", Integer.valueOf(i5))));
                                                            Okio__OkioKt.show(childFragmentManager, sortReadingListsDialog);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion2.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback2 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback2 != null) {
                                                            ReadingListsFragment readingListsFragment2 = ReadingListsFragment.this;
                                                            List list = readingListsFragment2.displayedLists;
                                                            ArrayList arrayList = new ArrayList();
                                                            for (Object obj : list) {
                                                                if (obj instanceof ReadingList) {
                                                                    arrayList.add(obj);
                                                                }
                                                            }
                                                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                                                            Iterator it = arrayList.iterator();
                                                            while (it.hasNext()) {
                                                                arrayList2.add(((ReadingList) it.next()).getTitle());
                                                            }
                                                            AppCompatActivity requireActivity = readingListsFragment2.requireActivity();
                                                            String string = readingListsFragment2.getString(R.string.reading_list_name_sample);
                                                            string.getClass();
                                                            TabUtil.readingListTitleDialog(requireActivity, string, "", arrayList2, readingListsFragment2.new OverflowCallback()).show();
                                                            break;
                                                        }
                                                        break;
                                                    case 2:
                                                        BreadCrumbLogEvent.Companion companion3 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion3.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback3 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback3 != null) {
                                                            Intent intent = new Intent("android.intent.action.GET_CONTENT");
                                                            intent.setType("application/json");
                                                            ReadingListsFragment readingListsFragment3 = ReadingListsFragment.this;
                                                            Intent createChooser = Intent.createChooser(intent, readingListsFragment3.getString(R.string.reading_lists_import_file_picker_title));
                                                            createChooser.getClass();
                                                            readingListsFragment3.filePickerLauncher.launch(createChooser, null);
                                                            break;
                                                        }
                                                        break;
                                                    case 3:
                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion4.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback4 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback4 != null) {
                                                            ReadingListsFragment readingListsFragment4 = ReadingListsFragment.this;
                                                            readingListsFragment4.beginMultiSelect$2();
                                                            readingListsFragment4.adapter.notifyDataSetChanged();
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion5.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback5 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback5 != null) {
                                                            ReadingListsFragment readingListsFragment5 = ReadingListsFragment.this;
                                                            NodeChain nodeChain = readingListsFragment5._binding;
                                                            nodeChain.getClass();
                                                            ((WikiSwipeRefreshLayout) nodeChain.cachedDiffer).setRefreshing(true);
                                                            NodeChain nodeChain2 = readingListsFragment5._binding;
                                                            nodeChain2.getClass();
                                                            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) nodeChain2.cachedDiffer;
                                                            wikiSwipeRefreshLayout.getClass();
                                                            if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                Cache.Companion.promptLogInToSyncDialog(readingListsFragment5.requireActivity());
                                                                wikiSwipeRefreshLayout.setRefreshing(false);
                                                                break;
                                                            } else {
                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                Prefs.setReadingListSyncEnabled(true);
                                                                Path.Companion.manualSyncWithForce();
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                }
                                            }
                                        });
                                        final int i5 = 3;
                                        textView4.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.ReadingListsOverflowView$$ExternalSyntheticLambda0
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                int i42 = i5;
                                                ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                Context context = requireContext;
                                                switch (i42) {
                                                    case 0:
                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback != null) {
                                                            FragmentManagerImpl childFragmentManager = ReadingListsFragment.this.getChildFragmentManager();
                                                            childFragmentManager.getClass();
                                                            Prefs prefs = Prefs.INSTANCE;
                                                            int i52 = PrefsIoUtil.getInt(R.string.preference_key_reading_list_sort_mode, 0);
                                                            SortReadingListsDialog sortReadingListsDialog = new SortReadingListsDialog();
                                                            sortReadingListsDialog.setArguments(UStringsKt.bundleOf(new Pair("sortOption", Integer.valueOf(i52))));
                                                            Okio__OkioKt.show(childFragmentManager, sortReadingListsDialog);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion2.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback2 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback2 != null) {
                                                            ReadingListsFragment readingListsFragment2 = ReadingListsFragment.this;
                                                            List list = readingListsFragment2.displayedLists;
                                                            ArrayList arrayList = new ArrayList();
                                                            for (Object obj : list) {
                                                                if (obj instanceof ReadingList) {
                                                                    arrayList.add(obj);
                                                                }
                                                            }
                                                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                                                            Iterator it = arrayList.iterator();
                                                            while (it.hasNext()) {
                                                                arrayList2.add(((ReadingList) it.next()).getTitle());
                                                            }
                                                            AppCompatActivity requireActivity = readingListsFragment2.requireActivity();
                                                            String string = readingListsFragment2.getString(R.string.reading_list_name_sample);
                                                            string.getClass();
                                                            TabUtil.readingListTitleDialog(requireActivity, string, "", arrayList2, readingListsFragment2.new OverflowCallback()).show();
                                                            break;
                                                        }
                                                        break;
                                                    case 2:
                                                        BreadCrumbLogEvent.Companion companion3 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion3.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback3 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback3 != null) {
                                                            Intent intent = new Intent("android.intent.action.GET_CONTENT");
                                                            intent.setType("application/json");
                                                            ReadingListsFragment readingListsFragment3 = ReadingListsFragment.this;
                                                            Intent createChooser = Intent.createChooser(intent, readingListsFragment3.getString(R.string.reading_lists_import_file_picker_title));
                                                            createChooser.getClass();
                                                            readingListsFragment3.filePickerLauncher.launch(createChooser, null);
                                                            break;
                                                        }
                                                        break;
                                                    case 3:
                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion4.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback4 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback4 != null) {
                                                            ReadingListsFragment readingListsFragment4 = ReadingListsFragment.this;
                                                            readingListsFragment4.beginMultiSelect$2();
                                                            readingListsFragment4.adapter.notifyDataSetChanged();
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion5.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback5 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback5 != null) {
                                                            ReadingListsFragment readingListsFragment5 = ReadingListsFragment.this;
                                                            NodeChain nodeChain = readingListsFragment5._binding;
                                                            nodeChain.getClass();
                                                            ((WikiSwipeRefreshLayout) nodeChain.cachedDiffer).setRefreshing(true);
                                                            NodeChain nodeChain2 = readingListsFragment5._binding;
                                                            nodeChain2.getClass();
                                                            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) nodeChain2.cachedDiffer;
                                                            wikiSwipeRefreshLayout.getClass();
                                                            if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                Cache.Companion.promptLogInToSyncDialog(readingListsFragment5.requireActivity());
                                                                wikiSwipeRefreshLayout.setRefreshing(false);
                                                                break;
                                                            } else {
                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                Prefs.setReadingListSyncEnabled(true);
                                                                Path.Companion.manualSyncWithForce();
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                }
                                            }
                                        });
                                        final int i6 = 4;
                                        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.ReadingListsOverflowView$$ExternalSyntheticLambda0
                                            @Override // android.view.View.OnClickListener
                                            public final void onClick(View view) {
                                                int i42 = i6;
                                                ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                Context context = requireContext;
                                                switch (i42) {
                                                    case 0:
                                                        BreadCrumbLogEvent.Companion companion = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback != null) {
                                                            FragmentManagerImpl childFragmentManager = ReadingListsFragment.this.getChildFragmentManager();
                                                            childFragmentManager.getClass();
                                                            Prefs prefs = Prefs.INSTANCE;
                                                            int i52 = PrefsIoUtil.getInt(R.string.preference_key_reading_list_sort_mode, 0);
                                                            SortReadingListsDialog sortReadingListsDialog = new SortReadingListsDialog();
                                                            sortReadingListsDialog.setArguments(UStringsKt.bundleOf(new Pair("sortOption", Integer.valueOf(i52))));
                                                            Okio__OkioKt.show(childFragmentManager, sortReadingListsDialog);
                                                            break;
                                                        }
                                                        break;
                                                    case 1:
                                                        BreadCrumbLogEvent.Companion companion2 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion2.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback2 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback2 != null) {
                                                            ReadingListsFragment readingListsFragment2 = ReadingListsFragment.this;
                                                            List list = readingListsFragment2.displayedLists;
                                                            ArrayList arrayList = new ArrayList();
                                                            for (Object obj : list) {
                                                                if (obj instanceof ReadingList) {
                                                                    arrayList.add(obj);
                                                                }
                                                            }
                                                            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                                                            Iterator it = arrayList.iterator();
                                                            while (it.hasNext()) {
                                                                arrayList2.add(((ReadingList) it.next()).getTitle());
                                                            }
                                                            AppCompatActivity requireActivity = readingListsFragment2.requireActivity();
                                                            String string = readingListsFragment2.getString(R.string.reading_list_name_sample);
                                                            string.getClass();
                                                            TabUtil.readingListTitleDialog(requireActivity, string, "", arrayList2, readingListsFragment2.new OverflowCallback()).show();
                                                            break;
                                                        }
                                                        break;
                                                    case 2:
                                                        BreadCrumbLogEvent.Companion companion3 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion3.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback3 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback3 != null) {
                                                            Intent intent = new Intent("android.intent.action.GET_CONTENT");
                                                            intent.setType("application/json");
                                                            ReadingListsFragment readingListsFragment3 = ReadingListsFragment.this;
                                                            Intent createChooser = Intent.createChooser(intent, readingListsFragment3.getString(R.string.reading_lists_import_file_picker_title));
                                                            createChooser.getClass();
                                                            readingListsFragment3.filePickerLauncher.launch(createChooser, null);
                                                            break;
                                                        }
                                                        break;
                                                    case 3:
                                                        BreadCrumbLogEvent.Companion companion4 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion4.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback4 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback4 != null) {
                                                            ReadingListsFragment readingListsFragment4 = ReadingListsFragment.this;
                                                            readingListsFragment4.beginMultiSelect$2();
                                                            readingListsFragment4.adapter.notifyDataSetChanged();
                                                            break;
                                                        }
                                                        break;
                                                    default:
                                                        BreadCrumbLogEvent.Companion companion5 = BreadCrumbLogEvent.Companion;
                                                        view.getClass();
                                                        companion5.getClass();
                                                        BreadCrumbLogEvent.Companion.logClick(context, view);
                                                        readingListsOverflowView2.dismissPopupWindowHost();
                                                        ReadingListsFragment.OverflowCallback overflowCallback5 = (ReadingListsFragment.OverflowCallback) readingListsOverflowView2.callback;
                                                        if (overflowCallback5 != null) {
                                                            ReadingListsFragment readingListsFragment5 = ReadingListsFragment.this;
                                                            NodeChain nodeChain = readingListsFragment5._binding;
                                                            nodeChain.getClass();
                                                            ((WikiSwipeRefreshLayout) nodeChain.cachedDiffer).setRefreshing(true);
                                                            NodeChain nodeChain2 = readingListsFragment5._binding;
                                                            nodeChain2.getClass();
                                                            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) nodeChain2.cachedDiffer;
                                                            wikiSwipeRefreshLayout.getClass();
                                                            if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                                                                Cache.Companion.promptLogInToSyncDialog(readingListsFragment5.requireActivity());
                                                                wikiSwipeRefreshLayout.setRefreshing(false);
                                                                break;
                                                            } else {
                                                                Prefs prefs2 = Prefs.INSTANCE;
                                                                Prefs.setReadingListSyncEnabled(true);
                                                                Path.Companion.manualSyncWithForce();
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                }
                                            }
                                        });
                                        MultipartBody.Builder builder = ((MainActivity) readingListsFragment.requireActivity()).binding;
                                        if (builder == null) {
                                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                                            throw null;
                                        }
                                        View findViewById = ((MaterialToolbar) builder.type).findViewById(R.id.menu_overflow_button);
                                        findViewById.getClass();
                                        ReadingListsFragment.OverflowCallback overflowCallback = readingListsFragment.overflowCallback;
                                        overflowCallback.getClass();
                                        readingListsOverflowView.callback = overflowCallback;
                                        PopupWindow popupWindow = new PopupWindow((View) readingListsOverflowView, -2, -2, true);
                                        readingListsOverflowView.popupWindowHost = popupWindow;
                                        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                        popupWindow.setOverlapAnchor(true);
                                        popupWindow.showAsDropDown(findViewById, 0, 0, 8388613);
                                        Prefs prefs = Prefs.INSTANCE;
                                        String string = PrefsIoUtil.getString(R.string.preference_key_reading_lists_last_sync_time, "");
                                        textView3.setVisibility((string == null || string.length() == 0) ? 8 : 0);
                                        if (string != null && string.length() != 0) {
                                            try {
                                                Context context = readingListsOverflowView.getContext();
                                                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                                                Context context2 = readingListsOverflowView.getContext();
                                                context2.getClass();
                                                textView3.setText(context.getString(R.string.reading_list_menu_last_sync, DateUtil.getTimeAndDateString(context2, string)));
                                            } catch (ParseException unused) {
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
                return false;
            }
        } else if (currentFragment instanceof ReadingListsFragment) {
            ReadingListsFragment readingListsFragment2 = (ReadingListsFragment) currentFragment;
            readingListsFragment2.requireActivity().startSupportActionMode(readingListsFragment2.searchActionModeCallback);
            return true;
        }
        return true;
    }

    public final void onNavigateTo(NavTab navTab) {
        Object obj;
        navTab.getClass();
        Iterator<E> it = NavTab.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Request.Builder builder = this._binding;
            builder.getClass();
            int selectedItemId = ((NavTabLayout) builder.body).getSelectedItemId();
            Request.Builder builder2 = this._binding;
            builder2.getClass();
            Menu menu = ((NavTabLayout) builder2.body).getMenu();
            menu.getClass();
            MenuItem item = menu.getItem(((NavTab) obj).ordinal());
            item.getClass();
            if (selectedItemId == item.getItemId()) {
                break;
            }
        }
        NavTab navTab2 = (NavTab) obj;
        Request.Builder builder3 = this._binding;
        builder3.getClass();
        NavTabLayout navTabLayout = (NavTabLayout) builder3.body;
        Request.Builder builder4 = this._binding;
        builder4.getClass();
        Menu menu2 = ((NavTabLayout) builder4.body).getMenu();
        menu2.getClass();
        MenuItem item2 = menu2.getItem(navTab.ordinal());
        item2.getClass();
        navTabLayout.setSelectedItemId(item2.getItemId());
        NavTab navTab3 = NavTab.EDITS;
        if (navTab2 != navTab3 || navTab == navTab3) {
            return;
        }
        this.navTabBackStack.add(navTab3);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        Context requireContext = requireContext();
        MediaDownloadReceiver mediaDownloadReceiver = this.downloadReceiver;
        mediaDownloadReceiver.getClass();
        requireContext.unregisterReceiver(mediaDownloadReceiver);
        mediaDownloadReceiver.callback = null;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        menu.findItem(R.id.menu_search_lists).setVisible(getCurrentFragment() instanceof ReadingListsFragment);
        menu.findItem(R.id.menu_overflow_button).setVisible(getCurrentFragment() instanceof ReadingListsFragment);
        MenuItem findItem = menu.findItem(R.id.menu_tabs);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        final int i = 0;
        final int i2 = 1;
        if (Jsoup.getInstance().getTabCount() < 1 || (getCurrentFragment() instanceof SuggestedEditsTasksFragment)) {
            findItem.setVisible(false);
            this.tabCountsView = null;
        } else {
            findItem.setVisible(true);
            TabCountsView tabCountsView = new TabCountsView(requireActivity(), null);
            this.tabCountsView = tabCountsView;
            tabCountsView.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.main.MainFragment$$ExternalSyntheticLambda2
                public final /* synthetic */ MainFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i3 = i;
                    MainFragment mainFragment = this.f$0;
                    switch (i3) {
                        case 0:
                            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                            if (Jsoup.getInstance().getTabCount() != 1) {
                                int i4 = TabActivity.$r8$clinit;
                                mainFragment.startActivityForResult(new Intent(mainFragment.requireActivity(), (Class<?>) TabActivity.class), 61, null);
                                break;
                            } else {
                                int i5 = PageActivity.$r8$clinit;
                                mainFragment.startActivity(LoginClient.newIntent(mainFragment.requireActivity()), null);
                                break;
                            }
                        default:
                            if (Headers.Companion.isLoggedIn()) {
                                int i6 = NotificationActivity.$r8$clinit;
                                mainFragment.startActivity(Headers.Companion.newIntent(mainFragment.requireActivity()), null);
                                break;
                            }
                            break;
                    }
                }
            });
            TabCountsView tabCountsView2 = this.tabCountsView;
            tabCountsView2.getClass();
            tabCountsView2.updateTabCount(this.showTabCountsAnimation);
            TabCountsView tabCountsView3 = this.tabCountsView;
            tabCountsView3.getClass();
            tabCountsView3.setContentDescription(getString(R.string.menu_page_show_tabs));
            findItem.setActionView(this.tabCountsView);
            findItem.expandActionView();
            TabCountsView tabCountsView4 = this.tabCountsView;
            tabCountsView4.getClass();
            View view = new View[]{tabCountsView4}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
            this.showTabCountsAnimation = false;
        }
        MenuItem findItem2 = menu.findItem(R.id.menu_notifications);
        if (Headers.Companion.isLoggedIn()) {
            findItem2.setVisible(true);
            NotificationButtonView notificationButtonView = this.notificationButtonView;
            if (notificationButtonView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            Prefs prefs = Prefs.INSTANCE;
            notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
            NotificationButtonView notificationButtonView2 = this.notificationButtonView;
            if (notificationButtonView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView2.setOnClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.main.MainFragment$$ExternalSyntheticLambda2
                public final /* synthetic */ MainFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i3 = i2;
                    MainFragment mainFragment = this.f$0;
                    switch (i3) {
                        case 0:
                            WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                            if (Jsoup.getInstance().getTabCount() != 1) {
                                int i4 = TabActivity.$r8$clinit;
                                mainFragment.startActivityForResult(new Intent(mainFragment.requireActivity(), (Class<?>) TabActivity.class), 61, null);
                                break;
                            } else {
                                int i5 = PageActivity.$r8$clinit;
                                mainFragment.startActivity(LoginClient.newIntent(mainFragment.requireActivity()), null);
                                break;
                            }
                        default:
                            if (Headers.Companion.isLoggedIn()) {
                                int i6 = NotificationActivity.$r8$clinit;
                                mainFragment.startActivity(Headers.Companion.newIntent(mainFragment.requireActivity()), null);
                                break;
                            }
                            break;
                    }
                }
            });
            NotificationButtonView notificationButtonView3 = this.notificationButtonView;
            if (notificationButtonView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView3.setContentDescription(getString(R.string.notifications_activity_title));
            NotificationButtonView notificationButtonView4 = this.notificationButtonView;
            if (notificationButtonView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            findItem2.setActionView(notificationButtonView4);
            findItem2.expandActionView();
            NotificationButtonView notificationButtonView5 = this.notificationButtonView;
            if (notificationButtonView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            View view2 = new View[]{notificationButtonView5}[0];
            RegexKt.setTooltipText(view2, view2.getContentDescription());
        } else {
            findItem2.setVisible(false);
        }
        updateNotificationDot$1(false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        this.downloadReceiver.register(requireContext(), this.downloadReceiverCallback);
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setLong(0L, R.string.preference_key_page_last_shown);
        YearInReviewDialog.maybeShowYearInReviewFeedbackDialog(requireActivity());
        YearInReviewModel yearInReviewModel = (YearInReviewModel) Prefs.getYearInReviewModelData().get(2025);
        if (yearInReviewModel == null || !yearInReviewModel.isReadingListCreated) {
            return;
        }
        onNavigateTo(NavTab.READING_LISTS);
        LinkedHashMap linkedHashMap = new LinkedHashMap(Prefs.getYearInReviewModelData());
        YearInReviewModel yearInReviewModel2 = (YearInReviewModel) linkedHashMap.get(2025);
        if (yearInReviewModel2 != null) {
            linkedHashMap.put(2025, YearInReviewModel.copy$default(yearInReviewModel2, 0, false, 524287));
            Prefs.setYearInReviewModelData(linkedHashMap);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void openSearchActivity(org.wikipedia.Constants.InvokeSource r4, java.lang.String r5, android.view.View r6) {
        /*
            r3 = this;
            r4.getClass()
            int r0 = org.wikipedia.search.SearchActivity.$r8$clinit
            androidx.appcompat.app.AppCompatActivity r0 = r3.requireActivity()
            r1 = 56
            r2 = 0
            android.content.Intent r4 = org.wikipedia.login.LoginClient.newIntent$default(r0, r4, r5, r2, r1)
            if (r6 == 0) goto L3a
            android.content.ComponentName r5 = r4.getComponent()
            if (r5 == 0) goto L1d
            java.lang.String r5 = r5.getClassName()
            goto L1e
        L1d:
            r5 = r2
        L1e:
            java.lang.Class<org.wikipedia.search.SearchActivity> r0 = org.wikipedia.search.SearchActivity.class
            java.lang.String r0 = r0.getName()
            boolean r5 = kotlin.jvm.internal.Intrinsics.areEqual(r5, r0)
            if (r5 == 0) goto L3a
            androidx.appcompat.app.AppCompatActivity r5 = r3.requireActivity()
            r0 = 2131888592(0x7f1209d0, float:1.9411824E38)
            java.lang.String r0 = r3.getString(r0)
            android.app.ActivityOptions r5 = android.app.ActivityOptions.makeSceneTransitionAnimation(r5, r6, r0)
            goto L3b
        L3a:
            r5 = r2
        L3b:
            if (r5 == 0) goto L41
            android.os.Bundle r2 = r5.toBundle()
        L41:
            r5 = 62
            r3.startActivityForResult(r4, r5, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.main.MainFragment.openSearchActivity(org.wikipedia.Constants$InvokeSource, java.lang.String, android.view.View):void");
    }

    public final void refreshContents() {
        Fragment currentFragment = getCurrentFragment();
        if (currentFragment instanceof ReadingListsFragment) {
            ((ReadingListsFragment) currentFragment).updateLists();
        } else if (currentFragment instanceof HistoryFragment) {
            ((HistoryFragment) currentFragment).refresh();
        } else if (currentFragment instanceof SuggestedEditsTasksFragment) {
            ((SuggestedEditsTasksFragment) currentFragment).refreshContents$1();
        }
    }

    public final void setBottomNavVisible(boolean z) {
        Request.Builder builder = this._binding;
        builder.getClass();
        ((View) builder.method).setVisibility(z ? 0 : 8);
        Request.Builder builder2 = this._binding;
        builder2.getClass();
        ((NavTabLayout) builder2.body).setVisibility(z ? 0 : 8);
    }

    public final void updateNotificationDot$1(boolean z) {
        if (Headers.Companion.isLoggedIn()) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getNotificationUnreadCount() > 0) {
                NotificationButtonView notificationButtonView = this.notificationButtonView;
                if (notificationButtonView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                    throw null;
                }
                notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
                if (z) {
                    NotificationButtonView notificationButtonView2 = this.notificationButtonView;
                    if (notificationButtonView2 != null) {
                        notificationButtonView2.runAnimation();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                        throw null;
                    }
                }
                return;
            }
        }
        NotificationButtonView notificationButtonView3 = this.notificationButtonView;
        if (notificationButtonView3 != null) {
            notificationButtonView3.setUnreadCount(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
            throw null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PageChangeCallback extends ViewPager2.OnPageChangeCallback {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;

        public PageChangeCallback() {
            this.$r8$classId = 2;
            this.this$0 = new ArrayList(3);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 1:
                    ((FragmentStateAdapter.FragmentMaxLifecycleEnforcer) obj).updateFragmentMaxLifecycle(false);
                    return;
                case 2:
                    try {
                        Iterator it = ((ArrayList) obj).iterator();
                        while (it.hasNext()) {
                            ((ViewPager2.OnPageChangeCallback) it.next()).onPageScrollStateChanged(i);
                        }
                        return;
                    } catch (ConcurrentModificationException e) {
                        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e);
                    }
                case 3:
                    JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
                    ((GalleryActivity) obj).hideTransitionReceiver(false);
                    return;
                default:
                    return;
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i, float f, int i2) {
            switch (this.$r8$classId) {
                case 2:
                    try {
                        Iterator it = ((ArrayList) this.this$0).iterator();
                        while (it.hasNext()) {
                            ((ViewPager2.OnPageChangeCallback) it.next()).onPageScrolled(i, f, i2);
                        }
                        return;
                    } catch (ConcurrentModificationException e) {
                        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e);
                    }
                default:
                    return;
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void onPageSelected(int i) {
            ComponentCallbacks activity;
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    MainFragment mainFragment = (MainFragment) obj;
                    if (Callback.class.isInstance(mainFragment.getTargetFragment(true))) {
                        activity = mainFragment.getTargetFragment(true);
                    } else {
                        Fragment fragment = mainFragment.mParentFragment;
                        if (fragment != null) {
                            if (Callback.class.isInstance(fragment)) {
                                activity = mainFragment.mParentFragment;
                            } else if (Callback.class.isInstance(mainFragment.requireParentFragment().mParentFragment)) {
                                activity = mainFragment.requireParentFragment().mParentFragment;
                            }
                        }
                        activity = Callback.class.isInstance(mainFragment.getActivity()) ? mainFragment.getActivity() : null;
                    }
                    Callback callback = (Callback) activity;
                    if (callback != null) {
                        NavTab.Companion.getClass();
                        ((MainActivity) callback).onTabChanged(NavTab.Companion.of(i));
                        return;
                    }
                    return;
                case 1:
                    ((FragmentStateAdapter.FragmentMaxLifecycleEnforcer) obj).updateFragmentMaxLifecycle(false);
                    return;
                case 2:
                    try {
                        Iterator it = ((ArrayList) obj).iterator();
                        while (it.hasNext()) {
                            ((ViewPager2.OnPageChangeCallback) it.next()).onPageSelected(i);
                        }
                        return;
                    } catch (ConcurrentModificationException e) {
                        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", e);
                    }
                case 3:
                    GalleryActivity galleryActivity = (GalleryActivity) obj;
                    JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
                    GalleryItemFragment currentItem = galleryActivity.getCurrentItem();
                    if (currentItem != null) {
                        galleryActivity.fetchGalleryDescription(currentItem);
                        return;
                    }
                    return;
                default:
                    OnboardingFragment onboardingFragment = (OnboardingFragment) obj;
                    onboardingFragment.updateButtonState();
                    onboardingFragment.updatePageIndicatorContentDescription();
                    return;
            }
        }

        public /* synthetic */ PageChangeCallback(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
