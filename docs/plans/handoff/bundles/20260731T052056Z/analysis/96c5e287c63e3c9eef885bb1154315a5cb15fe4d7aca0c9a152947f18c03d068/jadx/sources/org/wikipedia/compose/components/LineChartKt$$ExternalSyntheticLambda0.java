package org.wikipedia.compose.components;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.activitytab.ImpactModuleKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LineChartKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$2;
    public final /* synthetic */ float f$3;
    public final /* synthetic */ long f$4;

    public /* synthetic */ LineChartKt$$ExternalSyntheticLambda0(Modifier modifier, String str, int i, float f, long j, int i2) {
        this.$r8$classId = 2;
        this.f$1 = modifier;
        this.f$0 = str;
        this.f$2 = i;
        this.f$3 = f;
        this.f$4 = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(3505);
                TabsBoxKt.m898LineChartxfPyhaw((Map) obj3, this.f$1, this.f$2, this.f$3, this.f$4, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(3505);
                TabsBoxKt.m898LineChartxfPyhaw((Map) obj3, this.f$1, this.f$2, this.f$3, this.f$4, (GapComposer) obj, updateChangedFlags2);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(7);
                ImpactModuleKt.m894ContributionEditsViewqFjXxE8(this.f$1, (String) obj3, this.f$2, this.f$3, this.f$4, (GapComposer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ LineChartKt$$ExternalSyntheticLambda0(Map map, Modifier modifier, int i, float f, long j, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$0 = map;
        this.f$1 = modifier;
        this.f$2 = i;
        this.f$3 = f;
        this.f$4 = j;
    }
}
