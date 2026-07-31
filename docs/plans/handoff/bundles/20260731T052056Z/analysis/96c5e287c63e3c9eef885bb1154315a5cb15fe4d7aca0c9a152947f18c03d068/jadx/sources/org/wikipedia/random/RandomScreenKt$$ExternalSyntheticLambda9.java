package org.wikipedia.random;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.activitytab.timeline.TimelineModuleKt;
import org.wikipedia.feed.onboarding.ExploreFeedBuildingActivityKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RandomScreenKt$$ExternalSyntheticLambda9 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ RandomScreenKt$$ExternalSyntheticLambda9(int i, Modifier modifier, Function0 function0, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$1;
        Modifier modifier = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                RandomScreenKt.RandomTopBar(modifier, function0, gapComposer, Updater.updateChangedFlags(7));
                break;
            case 1:
                ImpactModuleKt.SuggestedEditsView(modifier, function0, gapComposer, Updater.updateChangedFlags(1));
                break;
            case 2:
                TimelineModuleKt.TimelineButtonView(modifier, function0, gapComposer, Updater.updateChangedFlags(1));
                break;
            default:
                ExploreFeedBuildingActivityKt.ExploreFeedBuildingScreen(modifier, function0, gapComposer, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }
}
