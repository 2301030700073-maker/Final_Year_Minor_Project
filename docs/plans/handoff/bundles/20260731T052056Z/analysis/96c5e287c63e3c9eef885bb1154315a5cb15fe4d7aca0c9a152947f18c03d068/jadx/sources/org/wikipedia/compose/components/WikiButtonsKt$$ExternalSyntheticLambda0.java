package org.wikipedia.compose.components;

import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.GapComposer;
import androidx.glance.appwidget.lazy.LazyListKt$applyListScope$1$1$2$1;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikiButtonsKt$$ExternalSyntheticLambda0 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function2 f$0;

    public /* synthetic */ WikiButtonsKt$$ExternalSyntheticLambda0(int i, Function2 function2) {
        this.$r8$classId = i;
        this.f$0 = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function2 function2 = this.f$0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj2;
                int intValue = ((Integer) obj3).intValue();
                ((RowScope) obj).getClass();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 17) != 16)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    function2.invoke(gapComposer, 0);
                    break;
                }
            default:
                ((Integer) obj3).intValue();
                ((LazyListKt$applyListScope$1$1$2$1) obj).getClass();
                function2.invoke((GapComposer) obj2, 0);
                break;
        }
        return unit;
    }
}
