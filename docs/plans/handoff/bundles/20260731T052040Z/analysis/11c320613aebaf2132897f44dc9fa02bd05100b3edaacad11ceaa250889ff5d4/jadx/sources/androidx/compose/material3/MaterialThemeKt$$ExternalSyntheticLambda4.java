package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class MaterialThemeKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Typography f$0;
    public final /* synthetic */ ComposableLambdaImpl f$1;

    public /* synthetic */ MaterialThemeKt$$ExternalSyntheticLambda4(Typography typography, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = i;
        this.f$0 = typography;
        this.f$1 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ComposableLambdaImpl composableLambdaImpl = this.f$1;
        Typography typography = this.f$0;
        int i2 = 1;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    PrecisionPointer_androidKt.EnsurePrecisionPointerListenersRegistered(Expect_jvmKt.rememberComposableLambda(-241536773, new MaterialThemeKt$$ExternalSyntheticLambda4(typography, composableLambdaImpl, i2), gapComposer), gapComposer, 6);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TextKt.ProvideTextStyle(typography.bodyLarge, composableLambdaImpl, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
