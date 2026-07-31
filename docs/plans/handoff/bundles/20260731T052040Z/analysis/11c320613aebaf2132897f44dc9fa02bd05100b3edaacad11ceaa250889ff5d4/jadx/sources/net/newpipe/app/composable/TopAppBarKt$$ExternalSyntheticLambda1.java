package net.newpipe.app.composable;

import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class TopAppBarKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;

    public /* synthetic */ TopAppBarKt$$ExternalSyntheticLambda1(String str, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String str = this.f$0;
                    if (str != null) {
                        gapComposer.startReplaceGroup(-422266629);
                        TextKt.m164TextNvy7gAk(str, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer, 0, 262142);
                    } else {
                        gapComposer.startReplaceGroup(-205346311);
                    }
                    gapComposer.end(false);
                    break;
                }
            default:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    TextKt.m164TextNvy7gAk(this.f$0, null, 0L, 0L, 0L, null, 0L, 0, false, 0, 0, null, gapComposer2, 0, 262142);
                    break;
                }
        }
        return unit;
    }
}
