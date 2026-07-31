package net.thunderbird.feature.account.settings.impl.ui.readingMail;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$UpdateReadMessageSettingsCommand;
import net.thunderbird.feature.account.settings.impl.domain.usecase.UpdateReadEmailSettings;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$Event;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReadingMailSettingsViewModel$event$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ ReadingMailSettingsContract$Event $event;
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ReadingMailSettingsViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ReadingMailSettingsViewModel$event$1(ReadingMailSettingsViewModel readingMailSettingsViewModel, ReadingMailSettingsContract$Event readingMailSettingsContract$Event, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = readingMailSettingsViewModel;
        this.$event = readingMailSettingsContract$Event;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ReadingMailSettingsContract$Event readingMailSettingsContract$Event = this.$event;
        ReadingMailSettingsViewModel readingMailSettingsViewModel = this.this$0;
        switch (i) {
            case 0:
                return new ReadingMailSettingsViewModel$event$1(readingMailSettingsViewModel, readingMailSettingsContract$Event, continuation, 0);
            default:
                return new ReadingMailSettingsViewModel$event$1(readingMailSettingsViewModel, readingMailSettingsContract$Event, continuation, 1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((ReadingMailSettingsViewModel$event$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        int i = this.$r8$classId;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ReadingMailSettingsViewModel readingMailSettingsViewModel = this.this$0;
        ReadingMailSettingsContract$Event readingMailSettingsContract$Event = this.$event;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                int i2 = this.label;
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateReadEmailSettings updateReadEmailSettings = readingMailSettingsViewModel.updateReadMailSettings;
                    AccountId accountId = readingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateReadMessageSettingsCommand.UpdateShowPictures updateShowPictures = new AccountSettingsDomainContract$UpdateReadMessageSettingsCommand.UpdateShowPictures(((ReadingMailSettingsContract$Event.OnShowPicturesChange) readingMailSettingsContract$Event).showPictures.id);
                    this.label = 1;
                    obj = updateReadEmailSettings.invoke(accountId, updateShowPictures, this);
                    if (obj == coroutineSingletons) {
                    }
                } else if (i2 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Outcome outcome = (Outcome) obj;
                outcome.getClass();
                if (outcome instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl = readingMailSettingsViewModel._state;
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, ReadingMailSettingsContract$State.copy$default((ReadingMailSettingsContract$State) value, null, ((ReadingMailSettingsContract$Event.OnShowPicturesChange) readingMailSettingsContract$Event).showPictures, false, 5)));
                } else if (outcome instanceof Outcome.Failure) {
                    ReadingMailSettingsViewModel.access$handleError(readingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
            default:
                int i3 = this.label;
                if (i3 == 0) {
                    ResultKt.throwOnFailure(obj);
                    UpdateReadEmailSettings updateReadEmailSettings2 = readingMailSettingsViewModel.updateReadMailSettings;
                    AccountId accountId2 = readingMailSettingsViewModel.accountId;
                    AccountSettingsDomainContract$UpdateReadMessageSettingsCommand.UpdateIsMarkMessageAsReadOnView updateIsMarkMessageAsReadOnView = new AccountSettingsDomainContract$UpdateReadMessageSettingsCommand.UpdateIsMarkMessageAsReadOnView(((ReadingMailSettingsContract$Event.OnIsMarkMessageAsReadOnViewToggle) readingMailSettingsContract$Event).isMarkMessageAsReadOnView);
                    this.label = 1;
                    obj = updateReadEmailSettings2.invoke(accountId2, updateIsMarkMessageAsReadOnView, this);
                    if (obj == coroutineSingletons) {
                    }
                } else if (i3 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                Outcome outcome2 = (Outcome) obj;
                outcome2.getClass();
                if (outcome2 instanceof Outcome.Success) {
                    StateFlowImpl stateFlowImpl2 = readingMailSettingsViewModel._state;
                    do {
                        value2 = stateFlowImpl2.getValue();
                    } while (!stateFlowImpl2.compareAndSet(value2, ReadingMailSettingsContract$State.copy$default((ReadingMailSettingsContract$State) value2, null, null, ((ReadingMailSettingsContract$Event.OnIsMarkMessageAsReadOnViewToggle) readingMailSettingsContract$Event).isMarkMessageAsReadOnView, 3)));
                } else if (outcome2 instanceof Outcome.Failure) {
                    ReadingMailSettingsViewModel.access$handleError(readingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome2).error);
                } else {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                }
                break;
        }
        return null;
    }
}
