package net.thunderbird.feature.account.settings.impl.ui.general;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsViewModel$observeAccountName$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public final /* synthetic */ GeneralSettingsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GeneralSettingsViewModel$observeAccountName$1(GeneralSettingsViewModel generalSettingsViewModel, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = generalSettingsViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        GeneralSettingsViewModel generalSettingsViewModel = this.this$0;
        switch (i) {
            case 0:
                GeneralSettingsViewModel$observeAccountName$1 generalSettingsViewModel$observeAccountName$1 = new GeneralSettingsViewModel$observeAccountName$1(generalSettingsViewModel, continuation, 0);
                generalSettingsViewModel$observeAccountName$1.L$0 = obj;
                return generalSettingsViewModel$observeAccountName$1;
            default:
                GeneralSettingsViewModel$observeAccountName$1 generalSettingsViewModel$observeAccountName$12 = new GeneralSettingsViewModel$observeAccountName$1(generalSettingsViewModel, continuation, 1);
                generalSettingsViewModel$observeAccountName$12.L$0 = obj;
                return generalSettingsViewModel$observeAccountName$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Outcome outcome = (Outcome) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((GeneralSettingsViewModel$observeAccountName$1) create(outcome, continuation)).invokeSuspend(unit);
                break;
            default:
                ((GeneralSettingsViewModel$observeAccountName$1) create(outcome, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        GeneralSettingsViewModel generalSettingsViewModel = this.this$0;
        Unit unit = Unit.INSTANCE;
        Outcome outcome = (Outcome) this.L$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                GeneralSettingsScreenKt$$ExternalSyntheticLambda1 generalSettingsScreenKt$$ExternalSyntheticLambda1 = new GeneralSettingsScreenKt$$ExternalSyntheticLambda1(generalSettingsViewModel, 1);
                outcome.getClass();
                if (!(outcome instanceof Outcome.Success)) {
                    if (!(outcome instanceof Outcome.Failure)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        break;
                    } else {
                        GeneralSettingsViewModel.access$handleError(generalSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome).error);
                    }
                } else {
                    generalSettingsScreenKt$$ExternalSyntheticLambda1.invoke(((Outcome.Success) outcome).data);
                }
                break;
            default:
                ResultKt.throwOnFailure(obj);
                GeneralSettingsScreenKt$$ExternalSyntheticLambda1 generalSettingsScreenKt$$ExternalSyntheticLambda12 = new GeneralSettingsScreenKt$$ExternalSyntheticLambda1(generalSettingsViewModel, 2);
                outcome.getClass();
                if (!(outcome instanceof Outcome.Success)) {
                    if (!(outcome instanceof Outcome.Failure)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        break;
                    } else {
                        GeneralSettingsViewModel.access$handleError(generalSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome).error);
                    }
                } else {
                    generalSettingsScreenKt$$ExternalSyntheticLambda12.invoke(((Outcome.Success) outcome).data);
                }
                break;
        }
        return null;
    }
}
