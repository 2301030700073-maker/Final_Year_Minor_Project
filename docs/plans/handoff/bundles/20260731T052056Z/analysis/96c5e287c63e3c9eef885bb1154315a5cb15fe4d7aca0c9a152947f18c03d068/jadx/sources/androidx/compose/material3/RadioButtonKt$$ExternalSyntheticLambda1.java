package androidx.compose.material3;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.activitytab.ActivityTabModules;
import org.wikipedia.activitytab.ImpactModuleKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RadioButtonKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ RadioButtonKt$$ExternalSyntheticLambda1(Modifier modifier, Function0 function0, ActivityTabModules activityTabModules, boolean z, boolean z2, int i, int i2) {
        this.f$2 = modifier;
        this.f$1 = function0;
        this.f$4 = activityTabModules;
        this.f$0 = z;
        this.f$3 = z2;
        this.f$6 = i;
        this.f$7 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$6;
        Object obj3 = this.f$4;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.RadioButton(this.f$0, this.f$1, this.f$2, this.f$3, (RadioButtonColors) obj3, (GapComposer) obj, updateChangedFlags, this.f$7);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                ImpactModuleKt.CustomizationScreen(this.f$2, this.f$1, (ActivityTabModules) obj3, this.f$0, this.f$3, (GapComposer) obj, updateChangedFlags2, this.f$7);
                break;
        }
        return unit;
    }

    public /* synthetic */ RadioButtonKt$$ExternalSyntheticLambda1(boolean z, Function0 function0, Modifier modifier, boolean z2, RadioButtonColors radioButtonColors, int i, int i2) {
        this.f$0 = z;
        this.f$1 = function0;
        this.f$2 = modifier;
        this.f$3 = z2;
        this.f$4 = radioButtonColors;
        this.f$6 = i;
        this.f$7 = i2;
    }
}
