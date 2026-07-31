package androidx.compose.foundation.lazy;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import com.skydoves.landscapist.coil3.CoilImageState;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyListIntervalContent$$ExternalSyntheticLambda2 implements Function4 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Function3 f$0;

    public /* synthetic */ LazyListIntervalContent$$ExternalSyntheticLambda2(Function3 function3, int i) {
        this.$r8$classId = i;
        this.f$0 = function3;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function3 function3 = this.f$0;
        switch (i) {
            case 0:
                LazyItemScopeImpl lazyItemScopeImpl = (LazyItemScopeImpl) obj;
                ((Integer) obj2).intValue();
                Composer composer = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(lazyItemScopeImpl) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 131) != 130)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    function3.invoke(lazyItemScopeImpl, gapComposer, Integer.valueOf(intValue & 14));
                    break;
                }
            case 1:
                BoxScope boxScope = (BoxScope) obj;
                Composer composer2 = (Composer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                boxScope.getClass();
                ((CoilImageState.Loading) obj2).getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(boxScope) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 131) != 130)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    if (function3 == null) {
                        gapComposer2.startReplaceGroup(986323605);
                    } else {
                        gapComposer2.startReplaceGroup(1694384876);
                        function3.invoke(boxScope, gapComposer2, Integer.valueOf(intValue2 & 14));
                    }
                    gapComposer2.end(false);
                    break;
                }
            default:
                BoxScope boxScope2 = (BoxScope) obj;
                Composer composer3 = (Composer) obj3;
                int intValue3 = ((Integer) obj4).intValue();
                boxScope2.getClass();
                ((CoilImageState.Failure) obj2).getClass();
                if ((intValue3 & 6) == 0) {
                    intValue3 |= ((GapComposer) composer3).changed(boxScope2) ? 4 : 2;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 131) != 130)) {
                    gapComposer3.skipToGroupEnd();
                    break;
                } else {
                    if (function3 == null) {
                        gapComposer3.startReplaceGroup(-1777108212);
                    } else {
                        gapComposer3.startReplaceGroup(358315925);
                        function3.invoke(boxScope2, gapComposer3, Integer.valueOf(intValue3 & 14));
                    }
                    gapComposer3.end(false);
                    break;
                }
        }
        return unit;
    }
}
