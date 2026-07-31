package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SegmentedButtonDefaults$Icon$1 implements Function3 {
    public static final SegmentedButtonDefaults$Icon$1 INSTANCE = new SegmentedButtonDefaults$Icon$1(1);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SegmentedButtonDefaults$Icon$1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((Number) obj3).intValue();
                ComposableSingletons$SegmentedButtonKt.lambda$1863131183.invoke(obj2, (Object) 0);
                break;
            default:
                SnackbarHostState$SnackbarDataImpl snackbarHostState$SnackbarDataImpl = (SnackbarHostState$SnackbarDataImpl) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Number) obj3).intValue();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(snackbarHostState$SnackbarDataImpl) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    CardKt.m336SnackbarsDKtq54(snackbarHostState$SnackbarDataImpl, null, null, 0L, 0L, 0L, 0L, 0L, gapComposer, intValue & 14);
                    break;
                }
        }
        return unit;
    }
}
