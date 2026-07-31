package app.k9mail.feature.account.server.validation.ui;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.ui.unit.IntOffsetKt;
import app.k9mail.feature.account.oauth.ui.AccountOAuthContract$ViewModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.sequences.SequencesKt___SequencesKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ServerValidationMainScreenKt$$ExternalSyntheticLambda2 implements Function3 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ BaseServerValidationViewModel f$1;
    public final /* synthetic */ Function1 f$2;

    public /* synthetic */ ServerValidationMainScreenKt$$ExternalSyntheticLambda2(MutableState mutableState, BaseServerValidationViewModel baseServerValidationViewModel, Function1 function1, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
        this.f$1 = baseServerValidationViewModel;
        this.f$2 = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
        Function1 function1 = this.f$2;
        BaseServerValidationViewModel baseServerValidationViewModel = this.f$1;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer = (Composer) obj2;
                int intValue = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((intValue & 6) == 0) {
                    intValue |= ((GapComposer) composer).changed(paddingValues) ? 4 : 2;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 19) != 18)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ServerValidationContract$State serverValidationContract$State = (ServerValidationContract$State) mutableState.getValue();
                    boolean z = baseServerValidationViewModel.isIncomingValidation;
                    AccountOAuthContract$ViewModel accountOAuthContract$ViewModel = baseServerValidationViewModel.oAuthViewModel;
                    boolean changed = gapComposer.changed(function1);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(1, function1);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    IntOffsetKt.ServerValidationContent(serverValidationContract$State, z, accountOAuthContract$ViewModel, (Function1) rememberedValue, paddingValues, null, gapComposer, (57344 & (intValue << 12)) | 8);
                    break;
                }
            default:
                PaddingValues paddingValues2 = (PaddingValues) obj;
                Composer composer2 = (Composer) obj2;
                int intValue2 = ((Integer) obj3).intValue();
                paddingValues2.getClass();
                if ((intValue2 & 6) == 0) {
                    intValue2 |= ((GapComposer) composer2).changed(paddingValues2) ? 4 : 2;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 19) != 18)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    ServerValidationContract$State serverValidationContract$State2 = (ServerValidationContract$State) mutableState.getValue();
                    int i2 = intValue2;
                    boolean z2 = baseServerValidationViewModel.isIncomingValidation;
                    AccountOAuthContract$ViewModel accountOAuthContract$ViewModel2 = baseServerValidationViewModel.oAuthViewModel;
                    boolean changed2 = gapComposer2.changed(function1);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changed2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SequencesKt___SequencesKt$$ExternalSyntheticLambda0(2, function1);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    IntOffsetKt.ServerValidationContent(serverValidationContract$State2, z2, accountOAuthContract$ViewModel2, (Function1) rememberedValue2, paddingValues2, null, gapComposer2, 8 | (57344 & (i2 << 12)));
                    break;
                }
        }
        return unit;
    }
}
