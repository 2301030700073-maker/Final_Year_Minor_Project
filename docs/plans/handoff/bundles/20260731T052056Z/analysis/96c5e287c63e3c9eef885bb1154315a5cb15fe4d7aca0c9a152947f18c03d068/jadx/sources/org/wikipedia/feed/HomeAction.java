package org.wikipedia.feed;

import androidx.compose.animation.core.Animation;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.image.FeaturedImageCard;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.feed.news.NewsCard;
import org.wikipedia.feed.news.NewsItem;
import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;
import org.wikipedia.history.HistoryEntry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface HomeAction {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CardFooterClick implements HomeAction {
        public final Card card;

        public CardFooterClick(Card card) {
            this.card = card;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CardFooterClick) && this.card.equals(((CardFooterClick) obj).card);
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "CardFooterClick(card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CardImpression implements HomeAction {
        public final Card card;
        public final int index;

        public CardImpression(Card card, int i) {
            card.getClass();
            this.card = card;
            this.index = i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CardImpression)) {
                return false;
            }
            CardImpression cardImpression = (CardImpression) obj;
            return Intrinsics.areEqual(this.card, cardImpression.card) && this.index == cardImpression.index;
        }

        public final int hashCode() {
            this.card.getClass();
            return this.index;
        }

        public final String toString() {
            return "CardImpression(card=" + this.card + ", index=" + this.index + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CustomizeClick implements HomeAction {
        public final Card card;

        public CustomizeClick(Card card) {
            this.card = card;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CustomizeClick) && Intrinsics.areEqual(this.card, ((CustomizeClick) obj).card);
        }

        public final int hashCode() {
            Card card = this.card;
            if (card == null) {
                return 0;
            }
            card.getClass();
            return 0;
        }

        public final String toString() {
            return "CustomizeClick(card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class DiscoverTeaserClick implements HomeAction {
        public static final DiscoverTeaserClick INSTANCE = new DiscoverTeaserClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DiscoverTeaserClick);
        }

        public final int hashCode() {
            return 169041157;
        }

        public final String toString() {
            return "DiscoverTeaserClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GameActionClick implements HomeAction {
        public final WikiGame$OnThisDayGame wikiGame;

        public GameActionClick(WikiGame$OnThisDayGame wikiGame$OnThisDayGame) {
            this.wikiGame = wikiGame$OnThisDayGame;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof GameActionClick) && this.wikiGame.equals(((GameActionClick) obj).wikiGame);
        }

        public final int hashCode() {
            return this.wikiGame.state.hashCode();
        }

        public final String toString() {
            return "GameActionClick(wikiGame=" + this.wikiGame + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GoToGamesHubClick implements HomeAction {
        public static final GoToGamesHubClick INSTANCE = new GoToGamesHubClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof GoToGamesHubClick);
        }

        public final int hashCode() {
            return -512440377;
        }

        public final String toString() {
            return "GoToGamesHubClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HideCommunityCard implements HomeAction {
        public final Card card;

        public HideCommunityCard(Card card) {
            card.getClass();
            this.card = card;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HideCommunityCard) && Intrinsics.areEqual(this.card, ((HideCommunityCard) obj).card);
        }

        public final int hashCode() {
            this.card.getClass();
            return 0;
        }

        public final String toString() {
            return "HideCommunityCard(card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HideForYouCard implements HomeAction {
        public final ForYouCard card;
        public final ForYouModule module;

        public HideForYouCard(ForYouModule forYouModule, ForYouCard forYouCard) {
            forYouModule.getClass();
            forYouCard.getClass();
            this.module = forYouModule;
            this.card = forYouCard;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HideForYouCard)) {
                return false;
            }
            HideForYouCard hideForYouCard = (HideForYouCard) obj;
            return Intrinsics.areEqual(this.module, hideForYouCard.module) && Intrinsics.areEqual(this.card, hideForYouCard.card);
        }

        public final int hashCode() {
            int hashCode = this.module.hashCode() * 31;
            this.card.getClass();
            return hashCode;
        }

        public final String toString() {
            return "HideForYouCard(module=" + this.module + ", card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HideModule implements HomeAction {
        public final String moduleKey;

        public HideModule(String str) {
            this.moduleKey = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof HideModule) && this.moduleKey.equals(((HideModule) obj).moduleKey);
        }

        public final int hashCode() {
            return this.moduleKey.hashCode();
        }

        public final String toString() {
            return Animation.CC.m("HideModule(moduleKey=", this.moduleKey, ")");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ImageClick implements HomeAction {
        public final FeaturedImageCard card;

        public ImageClick(FeaturedImageCard featuredImageCard) {
            this.card = featuredImageCard;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImageClick) && this.card.equals(((ImageClick) obj).card);
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "ImageClick(card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ImageDownloadClick implements HomeAction {
        public final FeaturedImageCard card;

        public ImageDownloadClick(FeaturedImageCard featuredImageCard) {
            this.card = featuredImageCard;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImageDownloadClick) && this.card.equals(((ImageDownloadClick) obj).card);
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "ImageDownloadClick(card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ImageShareClick implements HomeAction {
        public final FeaturedImageCard card;

        public ImageShareClick(FeaturedImageCard featuredImageCard) {
            this.card = featuredImageCard;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ImageShareClick) && this.card.equals(((ImageShareClick) obj).card);
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "ImageShareClick(card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LanguageSelected implements HomeAction {
        public final String languageCode;

        public LanguageSelected(String str) {
            this.languageCode = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof LanguageSelected) && this.languageCode.equals(((LanguageSelected) obj).languageCode);
        }

        public final int hashCode() {
            return this.languageCode.hashCode();
        }

        public final String toString() {
            return Animation.CC.m("LanguageSelected(languageCode=", this.languageCode, ")");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadMoreCommunityContent implements HomeAction {
        public static final LoadMoreCommunityContent INSTANCE = new LoadMoreCommunityContent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadMoreCommunityContent);
        }

        public final int hashCode() {
            return 993697269;
        }

        public final String toString() {
            return "LoadMoreCommunityContent";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadMoreForYouContent implements HomeAction {
        public static final LoadMoreForYouContent INSTANCE = new LoadMoreForYouContent();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof LoadMoreForYouContent);
        }

        public final int hashCode() {
            return -2022995586;
        }

        public final String toString() {
            return "LoadMoreForYouContent";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ManageLanguagesClick implements HomeAction {
        public static final ManageLanguagesClick INSTANCE = new ManageLanguagesClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ManageLanguagesClick);
        }

        public final int hashCode() {
            return -1736025572;
        }

        public final String toString() {
            return "ManageLanguagesClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ManageModulesClick implements HomeAction {
        public static final ManageModulesClick INSTANCE = new ManageModulesClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ManageModulesClick);
        }

        public final int hashCode() {
            return 1438645744;
        }

        public final String toString() {
            return "ManageModulesClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NewsClick implements HomeAction {
        public final NewsCard card;
        public final NewsItem newsItem;

        public NewsClick(NewsCard newsCard, NewsItem newsItem) {
            this.card = newsCard;
            this.newsItem = newsItem;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof NewsClick) {
                NewsClick newsClick = (NewsClick) obj;
                return this.card.equals(newsClick.card) && this.newsItem == newsClick.newsItem;
            }
            return false;
        }

        public final int hashCode() {
            return this.newsItem.hashCode();
        }

        public final String toString() {
            return "NewsClick(card=" + this.card + ", newsItem=" + this.newsItem + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class NotificationClick implements HomeAction {
        public static final NotificationClick INSTANCE = new NotificationClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof NotificationClick);
        }

        public final int hashCode() {
            return 1393203315;
        }

        public final String toString() {
            return "NotificationClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PageBookmarkClick implements HomeAction {
        public final Card card;
        public final HistoryEntry historyEntry;

        public PageBookmarkClick(Card card, HistoryEntry historyEntry) {
            card.getClass();
            historyEntry.getClass();
            this.card = card;
            this.historyEntry = historyEntry;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PageBookmarkClick)) {
                return false;
            }
            PageBookmarkClick pageBookmarkClick = (PageBookmarkClick) obj;
            return Intrinsics.areEqual(this.card, pageBookmarkClick.card) && Intrinsics.areEqual(this.historyEntry, pageBookmarkClick.historyEntry);
        }

        public final int hashCode() {
            this.card.getClass();
            return this.historyEntry.hashCode();
        }

        public final String toString() {
            return "PageBookmarkClick(card=" + this.card + ", historyEntry=" + this.historyEntry + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PageClick implements HomeAction {
        public final Card card;
        public final HistoryEntry historyEntry;

        public PageClick(Card card, HistoryEntry historyEntry) {
            card.getClass();
            historyEntry.getClass();
            this.card = card;
            this.historyEntry = historyEntry;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PageClick)) {
                return false;
            }
            PageClick pageClick = (PageClick) obj;
            return Intrinsics.areEqual(this.card, pageClick.card) && Intrinsics.areEqual(this.historyEntry, pageClick.historyEntry);
        }

        public final int hashCode() {
            this.card.getClass();
            return this.historyEntry.hashCode();
        }

        public final String toString() {
            return "PageClick(card=" + this.card + ", historyEntry=" + this.historyEntry + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PageOverflowClick implements HomeAction {
        public final Card card;
        public final String menuKey;
        public final PageSummary pageSummary;
        public final int source;

        public PageOverflowClick(Card card, PageSummary pageSummary, int i, String str) {
            this.card = card;
            this.pageSummary = pageSummary;
            this.source = i;
            this.menuKey = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof PageOverflowClick) {
                PageOverflowClick pageOverflowClick = (PageOverflowClick) obj;
                if (this.card.equals(pageOverflowClick.card) && this.pageSummary == pageOverflowClick.pageSummary && this.source == pageOverflowClick.source && this.menuKey.equals(pageOverflowClick.menuKey)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.menuKey.hashCode() + (((this.pageSummary.hashCode() * 31) + this.source) * 31);
        }

        public final String toString() {
            return "PageOverflowClick(card=" + this.card + ", pageSummary=" + this.pageSummary + ", source=" + this.source + ", menuKey=" + this.menuKey + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PageOverflowDismiss implements HomeAction {
        public static final PageOverflowDismiss INSTANCE = new PageOverflowDismiss();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PageOverflowDismiss);
        }

        public final int hashCode() {
            return 1278605615;
        }

        public final String toString() {
            return "PageOverflowDismiss";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PageShareClick implements HomeAction {
        public final Card card;
        public final HistoryEntry historyEntry;

        public PageShareClick(Card card, HistoryEntry historyEntry) {
            card.getClass();
            historyEntry.getClass();
            this.card = card;
            this.historyEntry = historyEntry;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PageShareClick)) {
                return false;
            }
            PageShareClick pageShareClick = (PageShareClick) obj;
            return Intrinsics.areEqual(this.card, pageShareClick.card) && Intrinsics.areEqual(this.historyEntry, pageShareClick.historyEntry);
        }

        public final int hashCode() {
            this.card.getClass();
            return this.historyEntry.hashCode();
        }

        public final String toString() {
            return "PageShareClick(card=" + this.card + ", historyEntry=" + this.historyEntry + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PlacesTeaserClick implements HomeAction {
        public static final PlacesTeaserClick INSTANCE = new PlacesTeaserClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PlacesTeaserClick);
        }

        public final int hashCode() {
            return -756650430;
        }

        public final String toString() {
            return "PlacesTeaserClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RefreshTab implements HomeAction {
        public final HomeTab tab;

        public RefreshTab(HomeTab homeTab) {
            homeTab.getClass();
            this.tab = homeTab;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RefreshTab) && this.tab == ((RefreshTab) obj).tab;
        }

        public final int hashCode() {
            return this.tab.hashCode();
        }

        public final String toString() {
            return "RefreshTab(tab=" + this.tab + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SeeAllRecommendationsClick implements HomeAction {
        public static final SeeAllRecommendationsClick INSTANCE = new SeeAllRecommendationsClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof SeeAllRecommendationsClick);
        }

        public final int hashCode() {
            return -1349132570;
        }

        public final String toString() {
            return "SeeAllRecommendationsClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SelectTab implements HomeAction {
        public final Card card;
        public final HomeTab tab;

        public SelectTab(HomeTab homeTab, Card card) {
            homeTab.getClass();
            this.tab = homeTab;
            this.card = card;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SelectTab)) {
                return false;
            }
            SelectTab selectTab = (SelectTab) obj;
            return this.tab == selectTab.tab && Intrinsics.areEqual(this.card, selectTab.card);
        }

        public final int hashCode() {
            int hashCode = this.tab.hashCode() * 31;
            Card card = this.card;
            if (card != null) {
                card.getClass();
            }
            return hashCode;
        }

        public final String toString() {
            return "SelectTab(tab=" + this.tab + ", card=" + this.card + ")";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ShuffleClick implements HomeAction {
        public static final ShuffleClick INSTANCE = new ShuffleClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ShuffleClick);
        }

        public final int hashCode() {
            return 1494006585;
        }

        public final String toString() {
            return "ShuffleClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TabClick implements HomeAction {
        public static final TabClick INSTANCE = new TabClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof TabClick);
        }

        public final int hashCode() {
            return 1822320925;
        }

        public final String toString() {
            return "TabClick";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class UpdateTabCount implements HomeAction {
        public static final UpdateTabCount INSTANCE = new UpdateTabCount();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UpdateTabCount);
        }

        public final int hashCode() {
            return -1654329075;
        }

        public final String toString() {
            return "UpdateTabCount";
        }
    }
}
