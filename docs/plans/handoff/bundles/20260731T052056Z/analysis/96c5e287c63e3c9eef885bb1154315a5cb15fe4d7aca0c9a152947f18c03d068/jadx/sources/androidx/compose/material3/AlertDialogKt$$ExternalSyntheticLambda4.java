package androidx.compose.material3;

import androidx.compose.foundation.layout.FlowRowScopeInstance;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda4 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComposableLambdaImpl f$2;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda4(ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = i;
        this.f$2 = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ComposableLambdaImpl composableLambdaImpl = this.f$2;
        GapComposer gapComposer = (GapComposer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                num.getClass();
                AlertDialogKt.m250AlertDialogFlowRowixp7dh8(composableLambdaImpl, gapComposer, Updater.updateChangedFlags(439));
                break;
            case 1:
                int intValue = num.intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) FlowRowScopeInstance.INSTANCE, (Object) gapComposer, (Object) 6);
                    break;
                }
            case 2:
                num.getClass();
                LazyLayoutKt.LazySaveableStateHolderProvider(composableLambdaImpl, gapComposer, Updater.updateChangedFlags(7));
                break;
            default:
                int intValue2 = num.intValue();
                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) gapComposer, (Object) 0);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda4(ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$2 = composableLambdaImpl;
    }
}
