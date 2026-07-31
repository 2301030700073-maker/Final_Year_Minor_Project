package app.k9mail.core.ui.compose.designsystem.organism;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlinx.atomicfu.AtomicFU;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class AlertDialogKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ImageVector f$0;

    public /* synthetic */ AlertDialogKt$$ExternalSyntheticLambda2(ImageVector imageVector, int i) {
        this.$r8$classId = i;
        this.f$0 = imageVector;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    AtomicFU.m1009IconxqIIw2o(this.f$0, null, null, gapComposer, 0, 14);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ImageVector imageVector = this.f$0;
                    if (imageVector == null) {
                        gapComposer2.startReplaceGroup(323889532);
                    } else {
                        gapComposer2.startReplaceGroup(323889533);
                        AtomicFU.m1009IconxqIIw2o(imageVector, null, null, gapComposer2, 0, 14);
                    }
                    gapComposer2.end(false);
                    break;
                }
        }
        return unit;
    }
}
