package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.model.EmptyForYouCard;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$$ExternalSyntheticLambda3 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ EmptyForYouCard f$1;

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda3(Function1 function1, EmptyForYouCard emptyForYouCard, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = emptyForYouCard;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        EmptyForYouCard emptyForYouCard = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(new HomeAction.CustomizeClick(emptyForYouCard));
                break;
            case 1:
                function1.invoke(new HomeAction.SelectTab(HomeTab.COMMUNITY, emptyForYouCard));
                break;
            case 2:
                function1.invoke(new HomeAction.CustomizeClick(emptyForYouCard));
                break;
            default:
                function1.invoke(new HomeAction.SelectTab(HomeTab.COMMUNITY, emptyForYouCard));
                break;
        }
        return unit;
    }
}
