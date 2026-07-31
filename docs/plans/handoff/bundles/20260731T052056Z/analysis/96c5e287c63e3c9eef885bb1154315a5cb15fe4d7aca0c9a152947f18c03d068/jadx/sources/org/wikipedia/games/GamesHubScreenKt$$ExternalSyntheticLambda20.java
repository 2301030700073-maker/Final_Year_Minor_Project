package org.wikipedia.games;

import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda20 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ GamesHubViewModel f$0;
    public final /* synthetic */ MutableState f$1;
    public final /* synthetic */ MutableState f$2;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda20(GamesHubViewModel gamesHubViewModel, MutableState mutableState, MutableState mutableState2, int i) {
        this.$r8$classId = i;
        this.f$0 = gamesHubViewModel;
        this.f$1 = mutableState;
        this.f$2 = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$2;
        MutableState mutableState2 = this.f$1;
        GamesHubViewModel gamesHubViewModel = this.f$0;
        switch (i) {
            case 0:
                WikiGamesEvent.submit$default(956, null, null, "refresh", "games_hub", null, (String) mutableState2.getValue(), null);
                mutableState.setValue(Boolean.TRUE);
                gamesHubViewModel.loadOnThisDayGamesPreviews((String) mutableState2.getValue());
                break;
            default:
                mutableState2.setValue(Boolean.TRUE);
                gamesHubViewModel.loadOnThisDayGamesPreviews((String) mutableState.getValue());
                break;
        }
        return unit;
    }
}
