package org.wikipedia.compose.components;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda2;
import org.wikipedia.search.HybridSearchResultsScreenKt$$ExternalSyntheticLambda32;
import org.wikipedia.settings.dev.playground.ENTRY;
import org.wikipedia.settings.dev.playground.ReadingChallengePlaygroundDialogKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6(MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ForYouCardKt$$ExternalSyntheticLambda2(mutableState, 11);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    CardKt.IconButton((Function0) rememberedValue, null, false, null, null, TabsBoxKt.lambda$207530180, gapComposer, 1572870, 62);
                    break;
                }
            case 1:
                GapComposer gapComposer2 = (GapComposer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 17) != 16)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean z = ((ENTRY) mutableState.getValue()) == ENTRY.SINGLE;
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 8);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    ReadingChallengePlaygroundDialogKt.ChipButton("Single", (Function0) rememberedValue2, null, z, gapComposer2, 54);
                    break;
                }
            default:
                GapComposer gapComposer3 = (GapComposer) obj2;
                int intValue3 = ((Integer) obj3).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 17) != 16)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    boolean z2 = ((ENTRY) mutableState.getValue()) == ENTRY.RANDOM_BULK;
                    Object rememberedValue3 = gapComposer3.rememberedValue();
                    if (rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new HybridSearchResultsScreenKt$$ExternalSyntheticLambda32(mutableState, 7);
                        gapComposer3.updateRememberedValue(rememberedValue3);
                    }
                    ReadingChallengePlaygroundDialogKt.ChipButton("Random Bulk Entries", (Function0) rememberedValue3, null, z2, gapComposer3, 54);
                    break;
                }
        }
        return unit;
    }
}
