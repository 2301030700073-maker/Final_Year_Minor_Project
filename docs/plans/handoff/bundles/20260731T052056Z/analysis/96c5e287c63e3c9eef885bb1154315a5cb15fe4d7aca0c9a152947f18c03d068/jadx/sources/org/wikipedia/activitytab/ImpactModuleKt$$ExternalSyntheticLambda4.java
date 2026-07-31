package org.wikipedia.activitytab;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImpactModuleKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Function0 f$2;
    public final /* synthetic */ int f$3;

    public /* synthetic */ ImpactModuleKt$$ExternalSyntheticLambda4(int i, Modifier modifier, Function0 function0, int i2) {
        this.f$1 = i;
        this.f$0 = modifier;
        this.f$2 = function0;
        this.f$3 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$3;
        Function0 function0 = this.f$2;
        Modifier modifier = this.f$0;
        int i3 = this.f$1;
        GapComposer gapComposer = (GapComposer) obj;
        ((Integer) obj2).getClass();
        switch (i) {
            case 0:
                ImpactModuleKt.TotalEditsCard(i3, Updater.updateChangedFlags(i2 | 1), gapComposer, modifier, function0);
                break;
            default:
                InterestSelectionScreenKt.SelectionBottomBar(i3, Updater.updateChangedFlags(i2 | 1), gapComposer, modifier, function0);
                break;
        }
        return unit;
    }

    public /* synthetic */ ImpactModuleKt$$ExternalSyntheticLambda4(Modifier modifier, int i, Function0 function0, int i2) {
        this.f$0 = modifier;
        this.f$1 = i;
        this.f$2 = function0;
        this.f$3 = i2;
    }
}
