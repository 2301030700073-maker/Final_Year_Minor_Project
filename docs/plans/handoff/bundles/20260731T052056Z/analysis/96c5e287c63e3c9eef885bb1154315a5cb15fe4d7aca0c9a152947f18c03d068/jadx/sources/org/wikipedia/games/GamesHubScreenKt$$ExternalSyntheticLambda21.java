package org.wikipedia.games;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.material3.pulltorefresh.PullToRefreshDefaults;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda21 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PullToRefreshStateImpl f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda21(PullToRefreshStateImpl pullToRefreshStateImpl, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = pullToRefreshStateImpl;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        MutableState mutableState = this.f$1;
        switch (i) {
            case 0:
                BoxScope boxScope = (BoxScope) obj;
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                boxScope.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= gapComposer.changed(boxScope) ? 4 : 2;
                }
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    PullToRefreshDefaults pullToRefreshDefaults = PullToRefreshDefaults.INSTANCE;
                    boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue();
                    Modifier align = boxScope.align(companion, Alignment.Companion.TopCenter);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    pullToRefreshDefaults.m319Indicator2poqoh4(this.f$0, booleanValue, align, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).progressiveColor, RecyclerView.DECELERATION_RATE, gapComposer, 0, 32);
                    break;
                }
            default:
                BoxScope boxScope2 = (BoxScope) obj;
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                boxScope2.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= gapComposer2.changed(boxScope2) ? 4 : 2;
                }
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    PullToRefreshDefaults pullToRefreshDefaults2 = PullToRefreshDefaults.INSTANCE;
                    boolean booleanValue2 = ((Boolean) mutableState.getValue()).booleanValue();
                    Modifier align2 = boxScope2.align(companion, Alignment.Companion.TopCenter);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                    pullToRefreshDefaults2.m319Indicator2poqoh4(this.f$0, booleanValue2, align2, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).paperColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).progressiveColor, RecyclerView.DECELERATION_RATE, gapComposer2, 0, 32);
                    break;
                }
        }
        return unit;
    }
}
