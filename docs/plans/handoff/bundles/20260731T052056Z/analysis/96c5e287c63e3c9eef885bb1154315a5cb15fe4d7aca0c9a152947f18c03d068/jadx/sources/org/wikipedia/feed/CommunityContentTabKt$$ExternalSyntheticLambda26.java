package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.HomeAction;
import org.wikipedia.feed.image.FeaturedImageCard;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CommunityContentTabKt$$ExternalSyntheticLambda26 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ FeaturedImageCard f$1;

    public /* synthetic */ CommunityContentTabKt$$ExternalSyntheticLambda26(Function1 function1, FeaturedImageCard featuredImageCard, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = featuredImageCard;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        FeaturedImageCard featuredImageCard = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                function1.invoke(new HomeAction.HideCommunityCard(featuredImageCard));
                break;
            case 1:
                function1.invoke(featuredImageCard);
                break;
            case 2:
                function1.invoke(featuredImageCard);
                break;
            default:
                function1.invoke(featuredImageCard);
                break;
        }
        return unit;
    }
}
