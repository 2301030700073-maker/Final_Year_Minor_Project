package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.model.Card;
import org.wikipedia.feed.model.ForYouCard;
import org.wikipedia.history.HistoryEntry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda7 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda7(Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                HomeTab homeTab = (HomeTab) obj;
                homeTab.getClass();
                function1.invoke(new HomeAction.SelectTab(homeTab, (Card) obj2));
                break;
            case 1:
                function1.invoke(obj);
                break;
            case 2:
                Card card = (Card) obj;
                int intValue = ((Integer) obj2).intValue();
                card.getClass();
                function1.invoke(new HomeAction.CardImpression(card, intValue));
                break;
            case 3:
                Card card2 = (Card) obj;
                HistoryEntry historyEntry = (HistoryEntry) obj2;
                card2.getClass();
                historyEntry.getClass();
                function1.invoke(new HomeAction.PageClick(card2, historyEntry));
                break;
            case 4:
                Card card3 = (Card) obj;
                HistoryEntry historyEntry2 = (HistoryEntry) obj2;
                card3.getClass();
                historyEntry2.getClass();
                function1.invoke(new HomeAction.PageBookmarkClick(card3, historyEntry2));
                break;
            case 5:
                Card card4 = (Card) obj;
                HistoryEntry historyEntry3 = (HistoryEntry) obj2;
                card4.getClass();
                historyEntry3.getClass();
                function1.invoke(new HomeAction.PageShareClick(card4, historyEntry3));
                break;
            case 6:
                ForYouModule forYouModule = (ForYouModule) obj;
                ForYouCard forYouCard = (ForYouCard) obj2;
                forYouModule.getClass();
                forYouCard.getClass();
                function1.invoke(new HomeAction.HideForYouCard(forYouModule, forYouCard));
                break;
            case 7:
                Card card5 = (Card) obj;
                HistoryEntry historyEntry4 = (HistoryEntry) obj2;
                card5.getClass();
                historyEntry4.getClass();
                function1.invoke(new HomeAction.PageClick(card5, historyEntry4));
                break;
            case 8:
                Card card6 = (Card) obj;
                HistoryEntry historyEntry5 = (HistoryEntry) obj2;
                card6.getClass();
                historyEntry5.getClass();
                function1.invoke(new HomeAction.PageBookmarkClick(card6, historyEntry5));
                break;
            case 9:
                Card card7 = (Card) obj;
                HistoryEntry historyEntry6 = (HistoryEntry) obj2;
                card7.getClass();
                historyEntry6.getClass();
                function1.invoke(new HomeAction.PageShareClick(card7, historyEntry6));
                break;
            case 10:
                ForYouModule forYouModule2 = (ForYouModule) obj;
                ForYouCard forYouCard2 = (ForYouCard) obj2;
                forYouModule2.getClass();
                forYouCard2.getClass();
                function1.invoke(new HomeAction.HideForYouCard(forYouModule2, forYouCard2));
                break;
            case 11:
                Card card8 = (Card) obj;
                HistoryEntry historyEntry7 = (HistoryEntry) obj2;
                card8.getClass();
                historyEntry7.getClass();
                function1.invoke(new HomeAction.PageClick(card8, historyEntry7));
                break;
            case 12:
                Card card9 = (Card) obj;
                HistoryEntry historyEntry8 = (HistoryEntry) obj2;
                card9.getClass();
                historyEntry8.getClass();
                function1.invoke(new HomeAction.PageBookmarkClick(card9, historyEntry8));
                break;
            case IMAGE_VALUE:
                Card card10 = (Card) obj;
                HistoryEntry historyEntry9 = (HistoryEntry) obj2;
                card10.getClass();
                historyEntry9.getClass();
                function1.invoke(new HomeAction.PageShareClick(card10, historyEntry9));
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ForYouModule forYouModule3 = (ForYouModule) obj;
                ForYouCard forYouCard3 = (ForYouCard) obj2;
                forYouModule3.getClass();
                forYouCard3.getClass();
                function1.invoke(new HomeAction.HideForYouCard(forYouModule3, forYouCard3));
                break;
            case 15:
                Card card11 = (Card) obj;
                HistoryEntry historyEntry10 = (HistoryEntry) obj2;
                card11.getClass();
                historyEntry10.getClass();
                function1.invoke(new HomeAction.PageClick(card11, historyEntry10));
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                Card card12 = (Card) obj;
                HistoryEntry historyEntry11 = (HistoryEntry) obj2;
                card12.getClass();
                historyEntry11.getClass();
                function1.invoke(new HomeAction.PageBookmarkClick(card12, historyEntry11));
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                Card card13 = (Card) obj;
                HistoryEntry historyEntry12 = (HistoryEntry) obj2;
                card13.getClass();
                historyEntry12.getClass();
                function1.invoke(new HomeAction.PageShareClick(card13, historyEntry12));
                break;
            case RADIO_GROUP_VALUE:
                ForYouModule forYouModule4 = (ForYouModule) obj;
                ForYouCard forYouCard4 = (ForYouCard) obj2;
                forYouModule4.getClass();
                forYouCard4.getClass();
                function1.invoke(new HomeAction.HideForYouCard(forYouModule4, forYouCard4));
                break;
            case RADIO_BUTTON_VALUE:
                ForYouModule forYouModule5 = (ForYouModule) obj;
                ForYouCard forYouCard5 = (ForYouCard) obj2;
                forYouModule5.getClass();
                forYouCard5.getClass();
                function1.invoke(new HomeAction.HideForYouCard(forYouModule5, forYouCard5));
                break;
            case RADIO_ROW_VALUE:
                Card card14 = (Card) obj;
                HistoryEntry historyEntry13 = (HistoryEntry) obj2;
                card14.getClass();
                historyEntry13.getClass();
                function1.invoke(new HomeAction.PageClick(card14, historyEntry13));
                break;
            case RADIO_COLUMN_VALUE:
                Card card15 = (Card) obj;
                HistoryEntry historyEntry14 = (HistoryEntry) obj2;
                card15.getClass();
                historyEntry14.getClass();
                function1.invoke(new HomeAction.PageBookmarkClick(card15, historyEntry14));
                break;
            case SIZE_BOX_VALUE:
                Card card16 = (Card) obj;
                HistoryEntry historyEntry15 = (HistoryEntry) obj2;
                card16.getClass();
                historyEntry15.getClass();
                function1.invoke(new HomeAction.PageShareClick(card16, historyEntry15));
                break;
            case 23:
                ForYouModule forYouModule6 = (ForYouModule) obj;
                ForYouCard forYouCard6 = (ForYouCard) obj2;
                forYouModule6.getClass();
                forYouCard6.getClass();
                function1.invoke(new HomeAction.HideForYouCard(forYouModule6, forYouCard6));
                break;
            case 24:
                Card card17 = (Card) obj;
                HistoryEntry historyEntry16 = (HistoryEntry) obj2;
                card17.getClass();
                historyEntry16.getClass();
                function1.invoke(new HomeAction.PageClick(card17, historyEntry16));
                break;
            case 25:
                Card card18 = (Card) obj;
                HistoryEntry historyEntry17 = (HistoryEntry) obj2;
                card18.getClass();
                historyEntry17.getClass();
                function1.invoke(new HomeAction.PageBookmarkClick(card18, historyEntry17));
                break;
            case 26:
                Card card19 = (Card) obj;
                HistoryEntry historyEntry18 = (HistoryEntry) obj2;
                card19.getClass();
                historyEntry18.getClass();
                function1.invoke(new HomeAction.PageShareClick(card19, historyEntry18));
                break;
            case 27:
                ForYouModule forYouModule7 = (ForYouModule) obj;
                ForYouCard forYouCard7 = (ForYouCard) obj2;
                forYouModule7.getClass();
                forYouCard7.getClass();
                function1.invoke(new HomeAction.HideForYouCard(forYouModule7, forYouCard7));
                break;
            default:
                HomeTab homeTab2 = (HomeTab) obj;
                homeTab2.getClass();
                function1.invoke(new HomeAction.SelectTab(homeTab2, (Card) obj2));
                break;
        }
        return unit;
    }
}
