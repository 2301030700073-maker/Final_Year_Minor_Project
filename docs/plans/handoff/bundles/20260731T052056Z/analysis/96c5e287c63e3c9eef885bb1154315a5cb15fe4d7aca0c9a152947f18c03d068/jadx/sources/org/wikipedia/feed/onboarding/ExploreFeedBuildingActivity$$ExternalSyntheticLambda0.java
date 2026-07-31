package org.wikipedia.feed.onboarding;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ExploreFeedBuildingActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ExploreFeedBuildingActivity f$0;

    public /* synthetic */ ExploreFeedBuildingActivity$$ExternalSyntheticLambda0(ExploreFeedBuildingActivity exploreFeedBuildingActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = exploreFeedBuildingActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ExploreFeedBuildingActivity exploreFeedBuildingActivity = this.f$0;
        int i2 = 1;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                int i3 = ExploreFeedBuildingActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-227098678, new ExploreFeedBuildingActivity$$ExternalSyntheticLambda0(exploreFeedBuildingActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                int i4 = ExploreFeedBuildingActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer.changedInstance(exploreFeedBuildingActivity);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new WikiGames$$ExternalSyntheticLambda0(11, exploreFeedBuildingActivity);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    ExploreFeedBuildingActivityKt.ExploreFeedBuildingScreen(null, (Function0) rememberedValue, gapComposer, 0);
                    break;
                }
                break;
        }
        return unit;
    }
}
