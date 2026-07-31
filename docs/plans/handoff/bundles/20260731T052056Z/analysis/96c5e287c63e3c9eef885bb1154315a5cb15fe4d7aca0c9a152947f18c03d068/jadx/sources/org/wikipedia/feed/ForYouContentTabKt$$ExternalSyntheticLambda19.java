package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.model.Card;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$$ExternalSyntheticLambda19 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function2 f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda19(int i, int i2, Function2 function2) {
        this.$r8$classId = i2;
        this.f$0 = function2;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        Function2 function2 = this.f$0;
        switch (i) {
            case 0:
                Card card = (Card) obj;
                card.getClass();
                function2.invoke(card, Integer.valueOf(i2));
                break;
            case 1:
                Card card2 = (Card) obj;
                card2.getClass();
                function2.invoke(card2, Integer.valueOf(i2));
                break;
            case 2:
                Card card3 = (Card) obj;
                card3.getClass();
                function2.invoke(card3, Integer.valueOf(i2));
                break;
            case 3:
                Card card4 = (Card) obj;
                card4.getClass();
                function2.invoke(card4, Integer.valueOf(i2));
                break;
            case 4:
                Card card5 = (Card) obj;
                card5.getClass();
                function2.invoke(card5, Integer.valueOf(i2));
                break;
            case 5:
                Card card6 = (Card) obj;
                card6.getClass();
                function2.invoke(card6, Integer.valueOf(i2));
                break;
            case 6:
                Card card7 = (Card) obj;
                card7.getClass();
                function2.invoke(card7, Integer.valueOf(i2));
                break;
            case 7:
                PageSummary pageSummary = (PageSummary) obj;
                pageSummary.getClass();
                function2.invoke(pageSummary, Integer.valueOf(i2));
                break;
            default:
                PageSummary pageSummary2 = (PageSummary) obj;
                pageSummary2.getClass();
                function2.invoke(pageSummary2, Integer.valueOf(i2));
                break;
        }
        return unit;
    }
}
