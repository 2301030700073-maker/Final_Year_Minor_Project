package org.wikipedia.games;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.feed.wikigames.OnThisDayGameAction;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda10 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda10(String str, Function1 function1) {
        this.$r8$classId = 0;
        this.f$0 = str;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        String str = this.f$0;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.f$1;
        switch (i) {
            case 0:
                WikiGamesEvent.submit$default(828, null, null, "play_click", "games_hub", null, this.f$0, "today");
                function1.invoke(OnThisDayGameAction.Play.INSTANCE);
                break;
            case 1:
                function1.invoke(str);
                break;
            default:
                function1.invoke(str);
                break;
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda10(Function1 function1, String str, int i) {
        this.$r8$classId = i;
        this.f$1 = function1;
        this.f$0 = str;
    }
}
