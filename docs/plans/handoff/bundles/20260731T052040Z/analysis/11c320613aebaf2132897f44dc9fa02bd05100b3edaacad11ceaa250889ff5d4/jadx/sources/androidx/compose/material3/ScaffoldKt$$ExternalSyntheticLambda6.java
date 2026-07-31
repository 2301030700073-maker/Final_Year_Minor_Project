package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ScaffoldKt$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ int f$0;
    public final /* synthetic */ ComposableLambdaImpl f$1;
    public final /* synthetic */ ComposableLambdaImpl f$2;
    public final /* synthetic */ Function2 f$3;
    public final /* synthetic */ Function2 f$4;
    public final /* synthetic */ WindowInsets f$5;
    public final /* synthetic */ Function2 f$6;

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda6(int i, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Function2 function2, Function2 function22, WindowInsets windowInsets, Function2 function23, int i2) {
        this.f$0 = i;
        this.f$1 = composableLambdaImpl;
        this.f$2 = composableLambdaImpl2;
        this.f$3 = function2;
        this.f$4 = function22;
        this.f$5 = windowInsets;
        this.f$6 = function23;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                BadgeKt.m135ScaffoldLayoutFMILGgc(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                MutableWindowInsets mutableWindowInsets = (MutableWindowInsets) this.f$5;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    BadgeKt.m135ScaffoldLayoutFMILGgc(this.f$0, this.f$1, this.f$2, this.f$3, this.f$4, mutableWindowInsets, this.f$6, gapComposer, 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ ScaffoldKt$$ExternalSyntheticLambda6(int i, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Function2 function2, Function2 function22, MutableWindowInsets mutableWindowInsets, Function2 function23) {
        this.f$0 = i;
        this.f$1 = composableLambdaImpl;
        this.f$2 = composableLambdaImpl2;
        this.f$3 = function2;
        this.f$4 = function22;
        this.f$5 = mutableWindowInsets;
        this.f$6 = function23;
    }
}
