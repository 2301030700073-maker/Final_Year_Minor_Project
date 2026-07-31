package androidx.compose.material3;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.glance.GlanceModifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.wikipedia.widgets.readingchallenge.StreakProgressBarKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ProgressIndicatorKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ int f$3;
    public final /* synthetic */ float f$4;

    public /* synthetic */ ProgressIndicatorKt$$ExternalSyntheticLambda3(int i, float f, GlanceModifier glanceModifier, long j, long j2, int i2) {
        this.f$3 = i;
        this.f$4 = f;
        this.f$0 = glanceModifier;
        this.f$1 = j;
        this.f$2 = j2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(7);
                ProgressIndicatorKt.m291LinearProgressIndicatorrIrjwxo((Modifier) obj3, this.f$1, this.f$2, this.f$3, this.f$4, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(1);
                StreakProgressBarKt.m933StreakProgressBarivI9Q(this.f$3, this.f$4, (GlanceModifier) obj3, this.f$1, this.f$2, (GapComposer) obj, updateChangedFlags2);
                break;
        }
        return unit;
    }

    public /* synthetic */ ProgressIndicatorKt$$ExternalSyntheticLambda3(Modifier modifier, long j, long j2, int i, float f, int i2) {
        this.f$0 = modifier;
        this.f$1 = j;
        this.f$2 = j2;
        this.f$3 = i;
        this.f$4 = f;
    }
}
