package org.wikipedia.compose.components;

import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WikipediaAlertDialogKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ long f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ WikipediaAlertDialogKt$$ExternalSyntheticLambda1(long j, Function0 function0, String str) {
        this.f$0 = j;
        this.f$1 = function0;
        this.f$2 = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        long j = this.f$0;
        String str = this.f$2;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    CardKt.TextButton(this.f$1, null, false, null, ButtonDefaults.m263textButtonColorsro_MJ88(j, gapComposer), null, Expect_jvmKt.rememberComposableLambda(-1536316404, new OnboardingKt$$ExternalSyntheticLambda0(2, str), gapComposer), gapComposer, 805306368, 494);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(1 & intValue2, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else if (str != null) {
                    gapComposer2.startReplaceGroup(1311372156);
                    CardKt.TextButton(this.f$1, null, false, null, ButtonDefaults.m263textButtonColorsro_MJ88(j, gapComposer2), null, Expect_jvmKt.rememberComposableLambda(-287738058, new OnboardingKt$$ExternalSyntheticLambda0(3, str), gapComposer2), gapComposer2, 805306368, 494);
                    gapComposer2.end(false);
                    break;
                } else {
                    gapComposer2.startReplaceGroup(1311372155);
                    gapComposer2.end(false);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ WikipediaAlertDialogKt$$ExternalSyntheticLambda1(String str, long j, Function0 function0) {
        this.f$2 = str;
        this.f$0 = j;
        this.f$1 = function0;
    }
}
