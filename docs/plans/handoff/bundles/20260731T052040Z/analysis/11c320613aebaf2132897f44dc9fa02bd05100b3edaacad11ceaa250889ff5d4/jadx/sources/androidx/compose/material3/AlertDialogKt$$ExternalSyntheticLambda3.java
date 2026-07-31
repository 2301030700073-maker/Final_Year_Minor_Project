package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComposableLambdaImpl f$0;
    public final /* synthetic */ Function2 f$1;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda3(ComposableLambdaImpl composableLambdaImpl, Function2 function2, int i) {
        this.$r8$classId = i;
        this.f$0 = composableLambdaImpl;
        this.f$1 = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function2 function2 = this.f$1;
        ComposableLambdaImpl composableLambdaImpl = this.f$0;
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
                    float f = ((Dp) gapComposer.consume(InteractiveComponentSizeKt.LocalMinimumInteractiveComponentSize)).value;
                    if (Float.isNaN(f)) {
                        f = 0.0f;
                    }
                    AlertDialogKt.m127AlertDialogFlowRowixp7dh8(((Dp) RangesKt.coerceIn(new Dp(8.0f - (f - ButtonDefaults.MinHeight)), new Dp(0.0f), new Dp(8.0f))).value, Expect_jvmKt.rememberComposableLambda(-459506658, new AlertDialogKt$$ExternalSyntheticLambda3(composableLambdaImpl, function2, i2), gapComposer), gapComposer, 390);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                    if (function2 == null) {
                        gapComposer2.startReplaceGroup(-1102003461);
                    } else {
                        gapComposer2.startReplaceGroup(795735494);
                        function2.invoke(gapComposer2, 0);
                    }
                    gapComposer2.end(false);
                    break;
                }
        }
        return unit;
    }
}
