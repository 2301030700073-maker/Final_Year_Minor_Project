package org.wikipedia.feed;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.HomeAction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ForYouContentTabKt$$ExternalSyntheticLambda18 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function1 f$0;
    public final /* synthetic */ ForYouModule f$1;

    public /* synthetic */ ForYouContentTabKt$$ExternalSyntheticLambda18(Function1 function1, ForYouModule forYouModule, int i) {
        this.$r8$classId = i;
        this.f$0 = function1;
        this.f$1 = forYouModule;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ForYouModule forYouModule = this.f$1;
        Function1 function1 = this.f$0;
        switch (i) {
            case 0:
                ((ForYouModule.ContinueReading) forYouModule).getClass();
                function1.invoke(new HomeAction.HideModule("CONTINUE_READING"));
                break;
            case 1:
                ((ForYouModule.Discover) forYouModule).getClass();
                function1.invoke(new HomeAction.HideModule("DISCOVER"));
                break;
            case 2:
                ((ForYouModule.Random) forYouModule).getClass();
                function1.invoke(new HomeAction.HideModule("RANDOM"));
                break;
            case 3:
                ((ForYouModule.BasedOnInterest) forYouModule).getClass();
                function1.invoke(new HomeAction.HideModule("BASED_ON_INTEREST"));
                break;
            case 4:
                ((ForYouModule.Games) forYouModule).getClass();
                function1.invoke(new HomeAction.HideModule("GAMES"));
                break;
            case 5:
                ((ForYouModule.PlacesOfInterest) forYouModule).getClass();
                function1.invoke(new HomeAction.HideModule("PLACES_OF_INTEREST"));
                break;
            default:
                ((ForYouModule.BecauseYouRead) forYouModule).getClass();
                function1.invoke(new HomeAction.HideModule("BECAUSE_YOU_READ"));
                break;
        }
        return unit;
    }
}
