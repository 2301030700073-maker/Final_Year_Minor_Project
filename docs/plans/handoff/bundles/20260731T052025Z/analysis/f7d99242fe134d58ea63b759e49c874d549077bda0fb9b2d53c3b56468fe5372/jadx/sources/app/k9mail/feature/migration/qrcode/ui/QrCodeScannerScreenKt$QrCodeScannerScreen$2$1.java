package app.k9mail.feature.migration.qrcode.ui;

import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.edit.ui.server.settings.save.SaveServerSettingsContract$Event;
import app.k9mail.feature.account.server.settings.ui.incoming.IncomingServerSettingsContract$Event;
import app.k9mail.feature.account.server.settings.ui.outgoing.OutgoingServerSettingsContract$Event;
import app.k9mail.feature.account.server.validation.ui.ServerValidationContract$Event;
import app.k9mail.feature.account.setup.ui.createaccount.CreateAccountContract$Event;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsContract$Event;
import app.k9mail.feature.account.setup.ui.options.sync.SyncOptionsContract$Event;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersContract$Event;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$Event;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsContract$Event;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeScannerScreenKt$QrCodeScannerScreen$2$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Function1 $dispatch;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(int i, Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$dispatch = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Function1 function1 = this.$dispatch;
        switch (i) {
            case 0:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(0, continuation, function1);
            case 1:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(1, continuation, function1);
            case 2:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(2, continuation, function1);
            case 3:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(3, continuation, function1);
            case 4:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(4, continuation, function1);
            case 5:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(5, continuation, function1);
            case 6:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(6, continuation, function1);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(7, continuation, function1);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(8, continuation, function1);
            default:
                return new QrCodeScannerScreenKt$QrCodeScannerScreen$2$1(9, continuation, function1);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 0:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 1:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 2:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 3:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 4:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 5:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case 6:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
            default:
                ((QrCodeScannerScreenKt$QrCodeScannerScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function1 function1 = this.$dispatch;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                function1.invoke(QrCodeScannerContract$Event.StartScreen.INSTANCE);
                break;
            case 1:
                ResultKt.throwOnFailure(obj);
                function1.invoke(SaveServerSettingsContract$Event.SaveServerSettings.INSTANCE);
                break;
            case 2:
                ResultKt.throwOnFailure(obj);
                function1.invoke(IncomingServerSettingsContract$Event.LoadAccountState.INSTANCE);
                break;
            case 3:
                ResultKt.throwOnFailure(obj);
                function1.invoke(OutgoingServerSettingsContract$Event.LoadAccountState.INSTANCE);
                break;
            case 4:
                ResultKt.throwOnFailure(obj);
                function1.invoke(ServerValidationContract$Event.OnBackClicked.INSTANCE$1);
                break;
            case 5:
                ResultKt.throwOnFailure(obj);
                function1.invoke(CreateAccountContract$Event.CreateAccount.INSTANCE);
                break;
            case 6:
                ResultKt.throwOnFailure(obj);
                function1.invoke(DisplayOptionsContract$Event.LoadAccountState.INSTANCE);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ResultKt.throwOnFailure(obj);
                function1.invoke(SyncOptionsContract$Event.LoadAccountState.INSTANCE);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ResultKt.throwOnFailure(obj);
                function1.invoke(SpecialFoldersContract$Event.LoadSpecialFolderOptions.INSTANCE);
                break;
            default:
                ResultKt.throwOnFailure(obj);
                function1.invoke(PermissionsContract$Event.LoadPermissionState.INSTANCE);
                break;
        }
        return unit;
    }
}
