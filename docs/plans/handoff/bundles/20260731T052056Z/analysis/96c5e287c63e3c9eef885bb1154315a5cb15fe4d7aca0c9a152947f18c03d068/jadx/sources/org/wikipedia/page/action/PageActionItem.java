package org.wikipedia.page.action;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.animation.core.Animation;
import androidx.drawerlayout.widget.FixedDrawerLayout;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.size.ViewSizeResolver$CC;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okio.ByteString;
import okio.Okio__OkioKt;
import okio.Options;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleInteractionEvent;
import org.wikipedia.analytics.eventplatform.ArticleTocInteractionEvent;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.categories.CategoryDialog;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.edit.EditHandler;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.model.EnumCode;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.page.Page;
import org.wikipedia.page.PageActionTabLayout;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageFragment;
import org.wikipedia.page.PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1;
import org.wikipedia.page.PageFragment.AvCallback;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.PageViewModel;
import org.wikipedia.page.SidePanelHandler;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.settings.Prefs;
import org.wikipedia.theme.ThemeChooserDialog;
import org.wikipedia.util.ShareUtil;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PageActionItem implements EnumCode {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PageActionItem[] $VALUES;
    public static final PageActionItem ADD_TO_WATCHLIST;
    public static final PageActionItem CATEGORIES;
    public static final PageActionItem CONTENTS;
    public static final Companion Companion;
    private static final List<Integer> DEFAULT_OVERFLOW_MENU_LIST;
    private static final List<Integer> DEFAULT_TOOLBAR_LIST;
    public static final PageActionItem EDIT_ARTICLE;
    public static final PageActionItem FIND_IN_ARTICLE;
    public static final PageActionItem HOME;
    public static final PageActionItem LANGUAGE;
    public static final PageActionItem NEW_TAB;
    public static final PageActionItem SAVE;
    public static final PageActionItem SHARE;
    public static final PageActionItem THEME;
    public static final PageActionItem VIEW_EDIT_HISTORY;
    public static final PageActionItem VIEW_ON_MAP;
    public static final PageActionItem VIEW_TALK_PAGE;
    private final int iconResId;
    private final int id;
    private final boolean isAvailableOnMobileWeb;
    private final boolean isExternalLink;
    private final int titleResId;
    private final int viewId;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ADD_TO_WATCHLIST extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            WikiSite wikiSite;
            WikiSite wikiSite2;
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageViewModel pageViewModel = pageFragment.model;
            boolean z = pageViewModel.isWatched;
            PageTitle pageTitle = (PageTitle) pageViewModel.title;
            Continuation continuation = null;
            if (z) {
                Context requireContext = pageFragment.requireContext();
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                String readableScreenName = WikiGamesEvent.getReadableScreenName(requireContext, null);
                String str = (pageTitle == null || (wikiSite2 = pageTitle.wikiSite) == null) ? null : wikiSite2.languageCode;
                EventPlatformClient.submit(new BreadCrumbLogEvent(readableScreenName, Animation.CC.m("Watchlist.itemWiki:", str != null ? str : "", ".removed")));
                ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
                if (articleInteractionEvent != null) {
                    articleInteractionEvent.submitEvent("unwatch_article");
                }
            } else {
                Context requireContext2 = pageFragment.requireContext();
                EventPlatformClient eventPlatformClient2 = EventPlatformClient.INSTANCE;
                String readableScreenName2 = WikiGamesEvent.getReadableScreenName(requireContext2, null);
                String str2 = (pageTitle == null || (wikiSite = pageTitle.wikiSite) == null) ? null : wikiSite.languageCode;
                EventPlatformClient.submit(new BreadCrumbLogEvent(readableScreenName2, Animation.CC.m("Watchlist.itemWiki:", str2 != null ? str2 : "", ".added")));
                ArticleInteractionEvent articleInteractionEvent2 = pageFragment.articleInteractionEvent;
                if (articleInteractionEvent2 != null) {
                    articleInteractionEvent2.submitEvent("watch_article");
                }
            }
            PageTitle pageTitle2 = (PageTitle) pageViewModel.title;
            if (pageTitle2 != null) {
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(pageFragment), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(pageFragment), null, new RealImageLoader$execute$2(pageTitle2, pageFragment, continuation, 16), 2);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CATEGORIES extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageTitle pageTitle = (PageTitle) pageFragment.model.title;
            if (pageTitle != null) {
                FragmentManagerImpl childFragmentManager = pageFragment.getChildFragmentManager();
                childFragmentManager.getClass();
                CategoryDialog categoryDialog = new CategoryDialog();
                categoryDialog.setArguments(UStringsKt.bundleOf(new Pair("title", pageTitle)));
                Okio__OkioKt.show(childFragmentManager, categoryDialog);
            }
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("categories");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CONTENTS extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            SidePanelHandler sidePanelHandler = pageFragment.getSidePanelHandler();
            ActivityPageBinding activityPageBinding = sidePanelHandler.binding;
            ((FixedDrawerLayout) activityPageBinding.navigationDrawer).openDrawer((FrameLayout) activityPageBinding.sidePanelContainer);
            sidePanelHandler.currentItemSelected = -1;
            sidePanelHandler.onScrollerMoved(RecyclerView.DECELERATION_RATE, false);
            ArticleTocInteractionEvent articleTocInteractionEvent = sidePanelHandler.articleTocInteractionEvent;
            if (articleTocInteractionEvent != null) {
                articleTocInteractionEvent.numOpens++;
                articleTocInteractionEvent.lastScrollStartMillis = System.currentTimeMillis();
            }
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("contents");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Callback {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static PageActionItem find(int i) {
            Object obj;
            Iterator<E> it = PageActionItem.getEntries().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                PageActionItem pageActionItem = (PageActionItem) obj;
                if (i == pageActionItem.getId() || i == pageActionItem.getViewId()) {
                    break;
                }
            }
            PageActionItem pageActionItem2 = (PageActionItem) obj;
            return pageActionItem2 == null ? (PageActionItem) ((EnumEntriesList) PageActionItem.getEntries()).get(0) : pageActionItem2;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EDIT_ARTICLE extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            EditHandler editHandler = pageFragment.editHandler;
            if (editHandler == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editHandler");
                throw null;
            }
            Page page = editHandler.currentPage;
            if (page != null) {
                editHandler.fragment.onRequestEditSection(-1, null, page.title, null);
            }
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("edit_article");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class FIND_IN_ARTICLE extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            pageFragment.showFindInPage();
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("find_in_article");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HOME extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            pageFragment.goToMainActivity(NavTab.HOME);
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("home");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LANGUAGE extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            int i = PageFragment.REFRESH_SPINNER_ADDITIONAL_OFFSET;
            pageFragment.startLangLinksActivity();
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("language");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NEW_TAB extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            int i = PageActivity.$r8$clinit;
            Intent intent = new Intent("org.wikipedia.create_new_tab").setClass(pageFragment.requireContext(), PageActivity.class);
            intent.getClass();
            pageFragment.startActivity(intent, null);
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("new_tab");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SAVE extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            View view;
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageViewModel pageViewModel = pageFragment.model;
            if (((ReadingListPage) pageViewModel.readingListPage) != null) {
                Prefs prefs = Prefs.INSTANCE;
                if (Prefs.getCustomizeToolbarOrder().contains(Integer.valueOf(PageActionItem.SAVE.getId()))) {
                    GsonBuilder gsonBuilder = pageFragment._binding;
                    gsonBuilder.getClass();
                    view = (PageActionTabLayout) gsonBuilder.fieldNamingPolicy;
                } else {
                    view = (ImageView) ((PageActivity) pageFragment.requireActivity()).getBinding().pageToolbarButtonShowOverflowMenu;
                }
                new LongPressMenu(view, 0, null, pageFragment.new AvCallback(), 28).show((HistoryEntry) pageViewModel.curEntry);
            } else {
                PageTitle pageTitle = (PageTitle) pageViewModel.title;
                if (pageTitle != null) {
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.addToDefaultList(pageFragment.requireActivity(), pageTitle, true, Constants.InvokeSource.BOOKMARK_BUTTON, null);
                }
            }
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("save");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SHARE extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageTitle pageTitle = (PageTitle) pageFragment.model.title;
            if (pageTitle != null) {
                ShareUtil.shareText$default(pageFragment.requireActivity(), pageTitle);
            }
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("share");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class THEME extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("theme");
            }
            int i = 0;
            if (pageFragment.getWebView().getScrollY() >= Okio__OkioKt.leadImageHeightForDevice(pageFragment.requireActivity())) {
                pageFragment.scrolledUpForThemeChange = false;
                int i2 = ThemeChooserDialog.BUTTON_STROKE_WIDTH;
                pageFragment.showBottomSheet(LoginClient.newInstance(Constants.InvokeSource.PAGE_ACTION_TAB, false));
            } else {
                pageFragment.scrolledUpForThemeChange = true;
                ObjectAnimator ofInt = ObjectAnimator.ofInt(pageFragment.getWebView(), "scrollY", pageFragment.getWebView().getScrollY(), Okio__OkioKt.leadImageHeightForDevice(pageFragment.requireActivity()));
                ObjectAnimator duration = ofInt.setDuration(250L);
                duration.getClass();
                duration.addListener(new PageFragment$PageActionItemCallback$onThemeSelected$$inlined$doOnEnd$1(i, pageFragment));
                ofInt.start();
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class VIEW_EDIT_HISTORY extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageTitle pageTitle = (PageTitle) pageFragment.model.title;
            if (pageTitle != null) {
                int i = EditHistoryListActivity.$r8$clinit;
                pageFragment.startActivity(Options.Companion.newIntent(pageFragment.requireContext(), pageTitle), null);
            }
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("edit_history");
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class VIEW_ON_MAP extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageViewModel pageViewModel = pageFragment.model;
            PageTitle pageTitle = (PageTitle) pageViewModel.title;
            if (pageTitle != null) {
                Page page = (Page) pageViewModel.page;
                Location location = page != null ? page.pageProperties.geo : null;
                if (location == null) {
                    String string = pageFragment.getString(R.string.action_item_view_on_map_unavailable);
                    string.getClass();
                    ShareUtil.showMessage(pageFragment, string);
                    return;
                }
                EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                WikipediaApp wikipediaApp = WikipediaApp.instance;
                String m = ViewSizeResolver$CC.m();
                Prefs prefs = Prefs.INSTANCE;
                EventPlatformClient.submit(new AppInteractionEvent("places_click", "article_more_menu", "", m, Prefs.getPlacesWikiCode(), "app_places_interaction"));
                AppCompatActivity requireActivity = pageFragment.requireActivity();
                int i = PlacesActivity.$r8$clinit;
                requireActivity.startActivity(ByteString.Companion.newIntent(pageFragment.requireContext(), pageTitle, location));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class VIEW_TALK_PAGE extends PageActionItem {
        @Override // org.wikipedia.page.action.PageActionItem
        public final void select(Callback callback) {
            callback.getClass();
            PageFragment pageFragment = PageFragment.this;
            PageTitle pageTitle = (PageTitle) pageFragment.model.title;
            if (pageTitle != null) {
                pageFragment.startTalkTopicsActivity(pageTitle, true);
            }
            ArticleInteractionEvent articleInteractionEvent = pageFragment.articleInteractionEvent;
            if (articleInteractionEvent != null) {
                articleInteractionEvent.submitEvent("talk_page");
            }
        }
    }

    static {
        SAVE save = new SAVE("SAVE", 0, 0, R.id.page_save, R.string.article_menu_bar_save_button, R.drawable.ic_bookmark_border_white_24dp, false, 32);
        SAVE = save;
        LANGUAGE language = new LANGUAGE("LANGUAGE", 1, 1, R.id.page_language, R.string.article_menu_bar_language_button, R.drawable.ic_translate_white_24dp, false, 32);
        LANGUAGE = language;
        FIND_IN_ARTICLE find_in_article = new FIND_IN_ARTICLE("FIND_IN_ARTICLE", 2, 2, R.id.page_find_in_article, R.string.menu_page_find_in_page, R.drawable.ic_find_in_page_24px, false, 48);
        FIND_IN_ARTICLE = find_in_article;
        THEME theme = new THEME("THEME", 3, 3, R.id.page_theme, R.string.article_menu_bar_theme_button, R.drawable.ic_icon_format_size, false, 32);
        THEME = theme;
        CONTENTS contents = new CONTENTS("CONTENTS", 4, 4, R.id.page_contents, R.string.article_menu_bar_contents_button, R.drawable.ic_icon_list, false, 32);
        CONTENTS = contents;
        SHARE share = new SHARE("SHARE", 5, 5, R.id.page_share, R.string.menu_page_article_share, R.drawable.ic_share, false, 48);
        SHARE = share;
        ADD_TO_WATCHLIST add_to_watchlist = new ADD_TO_WATCHLIST("ADD_TO_WATCHLIST", 6, 6, R.id.page_watch, R.string.menu_page_watch, R.drawable.ic_baseline_star_outline_24, false, 32);
        ADD_TO_WATCHLIST = add_to_watchlist;
        VIEW_TALK_PAGE view_talk_page = new VIEW_TALK_PAGE("VIEW_TALK_PAGE", 7, 7, R.id.page_view_talk_page, R.string.menu_page_talk_page, R.drawable.ic_icon_speech_bubbles_ooui_ltr, false, 48);
        VIEW_TALK_PAGE = view_talk_page;
        VIEW_EDIT_HISTORY view_edit_history = new VIEW_EDIT_HISTORY("VIEW_EDIT_HISTORY", 8, 8, R.id.page_view_edit_history, R.string.menu_page_edit_history, R.drawable.ic_icon_revision_history_apps, true, 32);
        VIEW_EDIT_HISTORY = view_edit_history;
        NEW_TAB new_tab = new NEW_TAB("NEW_TAB", 9, 9, R.id.page_new_tab, R.string.menu_new_tab, R.drawable.ic_add_gray_white_24dp, false, 48);
        NEW_TAB = new_tab;
        HOME home = new HOME("HOME", 10, 10, R.id.page_home, R.string.home, R.drawable.ic_home_filled_24dp, false, 48);
        HOME = home;
        CATEGORIES categories = new CATEGORIES("CATEGORIES", 11, 11, R.id.page_categories, R.string.action_item_categories, R.drawable.ic_category_black_24dp, false, 48);
        CATEGORIES = categories;
        EDIT_ARTICLE edit_article = new EDIT_ARTICLE("EDIT_ARTICLE", 12, 12, R.id.page_edit_article, R.string.menu_edit_article, R.drawable.ic_mode_edit_white_24dp, false, 48);
        EDIT_ARTICLE = edit_article;
        VIEW_ON_MAP view_on_map = new VIEW_ON_MAP("VIEW_ON_MAP", 13, 13, R.id.page_view_on_map, R.string.action_item_view_on_map, R.drawable.baseline_location_on_24, false, 32);
        VIEW_ON_MAP = view_on_map;
        PageActionItem[] pageActionItemArr = {save, language, find_in_article, theme, contents, share, add_to_watchlist, view_talk_page, view_edit_history, new_tab, home, categories, edit_article, view_on_map};
        $VALUES = pageActionItemArr;
        $ENTRIES = new EnumEntriesList(pageActionItemArr);
        Companion = new Companion();
        List listOf = Room.listOf((Object[]) new PageActionItem[]{save, language, find_in_article, theme, contents});
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listOf, 10));
        Iterator it = listOf.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((PageActionItem) it.next()).id));
        }
        DEFAULT_TOOLBAR_LIST = arrayList;
        List listOf2 = Room.listOf((Object[]) new PageActionItem[]{SHARE, ADD_TO_WATCHLIST, VIEW_TALK_PAGE, VIEW_EDIT_HISTORY, VIEW_ON_MAP, NEW_TAB, HOME, CATEGORIES, EDIT_ARTICLE});
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(listOf2, 10));
        Iterator it2 = listOf2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(Integer.valueOf(((PageActionItem) it2.next()).id));
        }
        DEFAULT_OVERFLOW_MENU_LIST = arrayList2;
    }

    public PageActionItem(String str, int i, int i2, int i3, int i4, int i5, boolean z, int i6) {
        z = (i6 & 16) != 0 ? true : z;
        this.id = i2;
        this.viewId = i3;
        this.titleResId = i4;
        this.iconResId = i5;
        this.isAvailableOnMobileWeb = z;
        this.isExternalLink = false;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static PageActionItem valueOf(String str) {
        return (PageActionItem) Enum.valueOf(PageActionItem.class, str);
    }

    public static PageActionItem[] values() {
        return (PageActionItem[]) $VALUES.clone();
    }

    @Override // org.wikipedia.model.EnumCode
    public final int code() {
        return ordinal();
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getId() {
        return this.id;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getViewId() {
        return this.viewId;
    }

    public final boolean isAvailableOnMobileWeb() {
        return this.isAvailableOnMobileWeb;
    }

    public abstract void select(Callback callback);
}
