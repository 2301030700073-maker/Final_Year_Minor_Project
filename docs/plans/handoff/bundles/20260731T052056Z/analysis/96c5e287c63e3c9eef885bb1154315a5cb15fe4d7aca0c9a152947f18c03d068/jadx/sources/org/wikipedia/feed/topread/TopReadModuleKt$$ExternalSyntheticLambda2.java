package org.wikipedia.feed.topread;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TopReadModuleKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ComposableLambdaImpl f$0;
    public final /* synthetic */ int f$1;

    public /* synthetic */ TopReadModuleKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = composableLambdaImpl;
        this.f$1 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$1;
        ComposableLambdaImpl composableLambdaImpl = this.f$0;
        GapComposer gapComposer = (GapComposer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) Integer.valueOf(i2), (Object) gapComposer, (Object) 0);
                    break;
                }
            case 1:
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) Integer.valueOf(i2), (Object) gapComposer, (Object) 0);
                    break;
                }
            default:
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    composableLambdaImpl.invoke((Object) Integer.valueOf(i2), (Object) gapComposer, (Object) 0);
                    break;
                }
        }
        return unit;
    }
}
