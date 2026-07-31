package androidx.datastore.core;

import android.app.Application;
import android.hardware.camera2.CaptureRequest;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.impl.LowLightBoostControl;
import androidx.camera.camera2.impl.State3AControl;
import androidx.camera.camera2.impl.UseCaseCameraKt;
import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.AndroidCameraDevice;
import androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl;
import androidx.camera.camera2.pipe.compat.Camera2DeviceCache;
import androidx.camera.camera2.pipe.compat.Camera2MetadataCache;
import androidx.camera.camera2.pipe.compat.CaptureSessionState;
import androidx.camera.camera2.pipe.compat.VirtualCameraState;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda3;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.input.internal.CursorAnimationState;
import androidx.compose.runtime.MutableState;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.Observer;
import app.k9mail.feature.account.server.validation.domain.usecase.ValidateServerSettings;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.settings.p000import.ui.AuthViewModel;
import app.k9mail.feature.settings.p000import.ui.PasswordPromptResult;
import app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel;
import app.k9mail.feature.widget.unread.UnreadWidgetDataProvider;
import com.eygraber.uri.Uri;
import com.fsck.k9.account.AccountStateLoader;
import com.fsck.k9.controller.push.AccountPushController;
import com.fsck.k9.controller.push.PushController;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.ui.compose.QuotedMessagePresenter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobSupport;
import net.openid.appauth.AuthorizationResponse;
import net.openid.appauth.AuthorizationService;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.search.legacy.SearchAccount;
import org.koin.core.error.InstanceCreationException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataStoreImpl$data$1$3 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $startState;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DataStoreImpl$data$1$3(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$startState = obj2;
    }

    private final Object invokeSuspend$androidx$camera$camera2$impl$State3AControl$update$$inlined$confineLaunch$1(Object obj) {
        boolean z;
        int i;
        int i2;
        boolean z2;
        Integer num;
        List list;
        ResultKt.throwOnFailure(obj);
        State3AControl state3AControl = (State3AControl) this.L$0;
        long j = ((Ref$LongRef) this.$startState).element;
        UseCaseCameraRequestControl useCaseCameraRequestControl = state3AControl._requestControl;
        if (useCaseCameraRequestControl == null) {
            state3AControl.failAllPendingSignals(new InstanceCreationException("Camera is not active."));
        } else {
            synchronized (state3AControl.lock) {
                z = j == state3AControl.currentRevision;
            }
            if (z) {
                synchronized (state3AControl.lock) {
                    i = state3AControl._flashMode;
                    i2 = state3AControl._template;
                    z2 = state3AControl._tryExternalFlashAeMode;
                    num = state3AControl._preferredAeMode;
                }
                int finalPreferredAeMode = state3AControl.getFinalPreferredAeMode(i, z2, num);
                int i3 = 4;
                int i4 = (i2 == 1 || i2 != 3) ? 4 : 3;
                Pair pair = new Pair(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(MathKt.getSupportedAeMode(state3AControl.cameraProperties.metadata, finalPreferredAeMode)));
                CaptureRequest.Key key = CaptureRequest.CONTROL_AF_MODE;
                CameraMetadata cameraMetadata = state3AControl.cameraProperties.metadata;
                cameraMetadata.getClass();
                if (MathKt.getAvailableAfModes(cameraMetadata).contains(Integer.valueOf(i4))) {
                    i3 = i4;
                } else if (!MathKt.getAvailableAfModes(cameraMetadata).contains(4)) {
                    i3 = MathKt.getAvailableAfModes(cameraMetadata).contains(1) ? 1 : 0;
                }
                Pair pair2 = new Pair(key, Integer.valueOf(i3));
                CaptureRequest.Key key2 = CaptureRequest.CONTROL_AWB_MODE;
                CameraMetadata cameraMetadata2 = state3AControl.cameraProperties.metadata;
                cameraMetadata2.getClass();
                try {
                    Job submitParameters = useCaseCameraRequestControl.submitParameters(MapsKt__MapsKt.mapOf(pair, pair2, new Pair(key2, Integer.valueOf((MathKt.getAvailableAwbModes(cameraMetadata2).contains(1) || MathKt.getAvailableAwbModes(cameraMetadata2).contains(1)) ? 1 : 0))), UseCaseCameraRequestControl.Type.DEFAULT, UseCaseCameraKt.defaultOptionPriority);
                    synchronized (state3AControl.lock) {
                        list = CollectionsKt.toList(state3AControl.pendingSignals);
                    }
                    ((JobSupport) submitParameters).invokeOnCompletion(new BackHandlerKt$$ExternalSyntheticLambda2(5, list, state3AControl));
                } catch (Exception e) {
                    state3AControl.failAllPendingSignals(e);
                }
            }
        }
        return Unit.INSTANCE;
    }

    private final Object invokeSuspend$app$k9mail$feature$settings$import$ui$AuthViewModel$exchangeToken$1(Object obj) {
        AuthorizationService authorizationService;
        ResultKt.throwOnFailure(obj);
        AuthViewModel authViewModel = (AuthViewModel) this.L$0;
        synchronized (authViewModel) {
            authorizationService = authViewModel.authService;
            if (authorizationService == null) {
                Application application = authViewModel.application;
                application.getClass();
                authorizationService = new AuthorizationService(application);
                authViewModel.authService = authorizationService;
            }
        }
        authorizationService.performTokenRequest$1(((AuthorizationResponse) this.$startState).createTokenExchangeRequest(), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(14, (AuthViewModel) this.L$0));
        return Unit.INSTANCE;
    }

    private final Object invokeSuspend$com$fsck$k9$controller$push$PushController$onBackendChanged$1(Object obj) {
        AccountPushController accountPushController;
        ResultKt.throwOnFailure(obj);
        PushController pushController = (PushController) this.L$0;
        Object obj2 = pushController.lock;
        AccountId accountId = (AccountId) this.$startState;
        synchronized (obj2) {
            accountPushController = (AccountPushController) pushController.pushers.remove(accountId.value.toString());
        }
        if (accountPushController != null) {
            accountPushController.stop();
        }
        ((PushController) this.L$0).updatePushers();
        return Unit.INSTANCE;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$startState;
        switch (i) {
            case 0:
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$3 = new DataStoreImpl$data$1$3((State) obj2, continuation, 0);
                dataStoreImpl$data$1$3.L$0 = obj;
                return dataStoreImpl$data$1$3;
            case 1:
                return new DataStoreImpl$data$1$3((QuotedMessagePresenter) this.L$0, (CallbackToFutureAdapter$Completer) obj2, continuation, 1);
            case 2:
                return new DataStoreImpl$data$1$3((LowLightBoostControl) this.L$0, (List) obj2, continuation, 2);
            case 3:
                return new DataStoreImpl$data$1$3(continuation, (Set) this.L$0, (State3AControl) obj2, 3);
            case 4:
                return new DataStoreImpl$data$1$3(continuation, (State3AControl) this.L$0, (Ref$LongRef) obj2, 4);
            case 5:
                return new DataStoreImpl$data$1$3((SessionConfigAdapter) this.L$0, (DeferrableSurface.SurfaceClosedException) obj2, continuation, 5);
            case 6:
                return new DataStoreImpl$data$1$3((AndroidCameraDevice) this.L$0, (AudioRestrictionMode) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new DataStoreImpl$data$1$3((AudioRestrictionControllerImpl) this.L$0, (AudioRestrictionMode) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new DataStoreImpl$data$1$3((CaptureSessionState) this.L$0, (VirtualCameraState) obj2, continuation, 8);
            case 9:
                return new DataStoreImpl$data$1$3((String) this.L$0, (Camera2DeviceCache) obj2, continuation, 9);
            case 10:
                return new DataStoreImpl$data$1$3((Camera2MetadataCache) this.L$0, (String) obj2, continuation, 10);
            case 11:
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$32 = new DataStoreImpl$data$1$3((Uri.Builder) obj2, continuation, 11);
                dataStoreImpl$data$1$32.L$0 = obj;
                return dataStoreImpl$data$1$32;
            case BasicTextKt.ShiftMeta /* 12 */:
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$33 = new DataStoreImpl$data$1$3((CursorAnimationState) obj2, continuation, 12);
                dataStoreImpl$data$1$33.L$0 = obj;
                return dataStoreImpl$data$1$33;
            case 13:
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$34 = new DataStoreImpl$data$1$3((Set) obj2, continuation, 13);
                dataStoreImpl$data$1$34.L$0 = obj;
                return dataStoreImpl$data$1$34;
            case 14:
                return new DataStoreImpl$data$1$3((LiveData) this.L$0, (LiveDataObservable$$ExternalSyntheticLambda3) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new DataStoreImpl$data$1$3((LiveData) this.L$0, (Observer) obj2, continuation, 15);
            case 16:
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$35 = new DataStoreImpl$data$1$3((LifecycleCoroutineScopeImpl) obj2, continuation, 16);
                dataStoreImpl$data$1$35.L$0 = obj;
                return dataStoreImpl$data$1$35;
            case 17:
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$36 = new DataStoreImpl$data$1$3((Function2) obj2, continuation, 17);
                dataStoreImpl$data$1$36.L$0 = obj;
                return dataStoreImpl$data$1$36;
            case 18:
                return new DataStoreImpl$data$1$3((ServerSettings) this.L$0, (ValidateServerSettings) obj2, continuation, 18);
            case 19:
                return new DataStoreImpl$data$1$3((QrCodeScannerViewModel) this.L$0, (ArrayList) obj2, continuation, 19);
            case 20:
                DataStoreImpl$data$1$3 dataStoreImpl$data$1$37 = new DataStoreImpl$data$1$3((MutableState) obj2, continuation, 20);
                dataStoreImpl$data$1$37.L$0 = obj;
                return dataStoreImpl$data$1$37;
            case 21:
                return new DataStoreImpl$data$1$3((AuthViewModel) this.L$0, (AuthorizationResponse) obj2, continuation, 21);
            case 22:
                return new DataStoreImpl$data$1$3((PasswordPromptResult) this.L$0, (SettingsImportViewModel) obj2, continuation, 22);
            case 23:
                return new DataStoreImpl$data$1$3((SettingsImportViewModel) this.L$0, (String) obj2, continuation, 23);
            case 24:
                return new DataStoreImpl$data$1$3((SettingsImportViewModel) this.L$0, (android.net.Uri) obj2, continuation, 24);
            case 25:
                return new DataStoreImpl$data$1$3((UnreadWidgetDataProvider) this.L$0, (LegacyAccountDto) obj2, continuation, 25);
            case 26:
                return new DataStoreImpl$data$1$3((UnreadWidgetDataProvider) this.L$0, (SearchAccount) obj2, continuation, 26);
            case 27:
                return new DataStoreImpl$data$1$3((AccountStateLoader) this.L$0, (String) obj2, continuation, 27);
            case 28:
                return new DataStoreImpl$data$1$3((PushController) this.L$0, (AccountId) obj2, continuation, 28);
            default:
                return new DataStoreImpl$data$1$3((Uri.Builder) this.L$0, (Long) obj2, continuation, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                break;
            case 1:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 2:
                break;
            case 3:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 4:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 5:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 6:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 9:
                break;
            case 10:
                break;
            case 11:
                ((DataStoreImpl$data$1$3) create(obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case BasicTextKt.ShiftMeta /* 12 */:
                break;
            case 13:
                break;
            case 14:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case OffsetKt.Horizontal /* 15 */:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 16:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 17:
                break;
            case 18:
                break;
            case 19:
                break;
            case 20:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 21:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 22:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 23:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 24:
                break;
            case 25:
                break;
            case 26:
                break;
            case 27:
                break;
            case 28:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((DataStoreImpl$data$1$3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0788 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v0, types: [kotlin.coroutines.Continuation] */
    /* JADX WARN: Type inference failed for: r7v2 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 2246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$data$1$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DataStoreImpl$data$1$3(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$startState = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DataStoreImpl$data$1$3(Continuation continuation, Object obj, Object obj2, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$startState = obj2;
    }
}
