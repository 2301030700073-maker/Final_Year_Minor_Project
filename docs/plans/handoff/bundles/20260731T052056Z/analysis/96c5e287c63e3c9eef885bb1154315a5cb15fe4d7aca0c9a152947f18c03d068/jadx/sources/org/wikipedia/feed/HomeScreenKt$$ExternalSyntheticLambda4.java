package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda4 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda4(Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        HomeAction.ManageModulesClick manageModulesClick = HomeAction.ManageModulesClick.INSTANCE;
        HomeAction.LoadMoreForYouContent loadMoreForYouContent = HomeAction.LoadMoreForYouContent.INSTANCE;
        HomeAction.TabClick tabClick = HomeAction.TabClick.INSTANCE;
        HomeAction.UpdateTabCount updateTabCount = HomeAction.UpdateTabCount.INSTANCE;
        HomeAction.NotificationClick notificationClick = HomeAction.NotificationClick.INSTANCE;
        HomeAction.ManageLanguagesClick manageLanguagesClick = HomeAction.ManageLanguagesClick.INSTANCE;
        HomeAction.PageOverflowDismiss pageOverflowDismiss = HomeAction.PageOverflowDismiss.INSTANCE;
        HomeAction.LoadMoreCommunityContent loadMoreCommunityContent = HomeAction.LoadMoreCommunityContent.INSTANCE;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(tabClick);
                break;
            case 1:
                function1.invoke(new HomeAction.HideModule("TOP_READ"));
                break;
            case 2:
                function1.invoke(new HomeAction.HideModule("ON_THIS_DAY"));
                break;
            case 3:
                function1.invoke(loadMoreCommunityContent);
                break;
            case 4:
                function1.invoke(new HomeAction.HideModule("FEATURED_ARTICLE"));
                break;
            case 5:
                function1.invoke(loadMoreCommunityContent);
                break;
            case 6:
                function1.invoke(new HomeAction.HideModule("DID_YOU_KNOW"));
                break;
            case 7:
                function1.invoke(pageOverflowDismiss);
                break;
            case 8:
                function1.invoke(pageOverflowDismiss);
                break;
            case 9:
                function1.invoke(pageOverflowDismiss);
                break;
            case 10:
                function1.invoke(manageModulesClick);
                break;
            case 11:
                function1.invoke(loadMoreCommunityContent);
                break;
            case 12:
                function1.invoke(new HomeAction.HideModule("NEWS"));
                break;
            case IMAGE_VALUE:
                function1.invoke(loadMoreForYouContent);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                function1.invoke(HomeAction.DiscoverTeaserClick.INSTANCE);
                break;
            case 15:
                function1.invoke(HomeAction.SeeAllRecommendationsClick.INSTANCE);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                function1.invoke(HomeAction.ShuffleClick.INSTANCE);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                function1.invoke(HomeAction.GoToGamesHubClick.INSTANCE);
                break;
            case RADIO_GROUP_VALUE:
                function1.invoke(HomeAction.PlacesTeaserClick.INSTANCE);
                break;
            case RADIO_BUTTON_VALUE:
                function1.invoke(manageModulesClick);
                break;
            case RADIO_ROW_VALUE:
                function1.invoke(loadMoreForYouContent);
                break;
            case RADIO_COLUMN_VALUE:
                function1.invoke(tabClick);
                break;
            case SIZE_BOX_VALUE:
                function1.invoke(updateTabCount);
                break;
            case 23:
                function1.invoke(notificationClick);
                break;
            case 24:
                function1.invoke(manageLanguagesClick);
                break;
            case 25:
                function1.invoke(updateTabCount);
                break;
            case 26:
                function1.invoke(notificationClick);
                break;
            case 27:
                function1.invoke(manageLanguagesClick);
                break;
            case 28:
                function1.invoke(OnThisDayGameAction.CountdownFinished.INSTANCE);
                break;
            default:
                function1.invoke(RecommendedReadingListSource.READING_LIST);
                break;
        }
        return unit;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda4(Function1 function1, Card card, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }
}
