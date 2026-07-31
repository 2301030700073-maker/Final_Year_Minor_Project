package app.k9mail.feature.account.server.validation.ui;

import androidx.compose.material3.ExposedDropdownMenuKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ String f$0;
    public final /* synthetic */ Function1 f$1;

    public /* synthetic */ ServerValidationToolbarScreenKt$$ExternalSyntheticLambda0(String str, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = str;
        this.f$1 = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Function1 function1 = this.f$1;
        Composer composer = (Composer) obj;
        int intValue = ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(25, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    TopAppBarKt.TopAppBarWithBackButton(this.f$0, (Function0) rememberedValue, null, null, gapComposer, 0);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) composer;
                if (!gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new ExposedDropdownMenuKt$$ExternalSyntheticLambda3(4, function1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    TopAppBarKt.TopAppBarWithBackButton(this.f$0, (Function0) rememberedValue2, null, null, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
