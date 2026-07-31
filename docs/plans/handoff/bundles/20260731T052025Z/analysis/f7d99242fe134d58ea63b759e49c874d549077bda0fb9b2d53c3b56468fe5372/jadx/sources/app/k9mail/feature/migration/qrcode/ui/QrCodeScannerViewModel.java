package app.k9mail.feature.migration.qrcode.ui;

import androidx.compose.ui.draw.DrawResult;
import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.lifecycle.ViewModelKt;
import androidx.room.RoomDatabase$closeBarrier$1;
import app.k9mail.feature.migration.qrcode.domain.entity.AccountData;
import app.k9mail.feature.migration.qrcode.domain.usecase.QrCodePayloadReader;
import app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeSettingsWriter;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$Effect;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$Event;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import net.thunderbird.core.ui.contract.mvi.BaseViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class QrCodeScannerViewModel extends BaseViewModel {
    public final ArrayList accountDataList;
    public final CoroutineDispatcher backgroundDispatcher;
    public final DrawResult cameraUseCasesProvider;
    public final QrCodePayloadReader qrCodePayloadReader;
    public final QrCodeSettingsWriter qrCodeSettingsWriter;
    public int scannedCount;
    public final LinkedHashSet supportedPayloadHashes;
    public int totalCount;
    public final ArrayDeque unsupportedPayloadHashes;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public QrCodeScannerViewModel(app.k9mail.feature.migration.qrcode.domain.usecase.QrCodePayloadReader r9, app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeSettingsWriter r10) {
        /*
            r8 = this;
            kotlinx.coroutines.scheduling.DefaultScheduler r0 = kotlinx.coroutines.Dispatchers.Default
            kotlinx.coroutines.scheduling.DefaultIoScheduler r0 = kotlinx.coroutines.scheduling.DefaultIoScheduler.INSTANCE
            app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$State r1 = new app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$State
            app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$UiPermissionState r2 = app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$UiPermissionState.Unknown
            app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$DisplayText$HelpText r3 = app.k9mail.feature.migration.qrcode.ui.QrCodeScannerContract$DisplayText.HelpText.INSTANCE
            r1.<init>(r2, r3)
            r0.getClass()
            r8.<init>(r1)
            r8.qrCodePayloadReader = r9
            r8.qrCodeSettingsWriter = r10
            r8.backgroundDispatcher = r0
            java.util.LinkedHashSet r9 = new java.util.LinkedHashSet
            r9.<init>()
            r8.supportedPayloadHashes = r9
            kotlin.collections.ArrayDeque r9 = new kotlin.collections.ArrayDeque
            r9.<init>()
            r8.unsupportedPayloadHashes = r9
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            r8.accountDataList = r9
            androidx.room.InvalidationTracker$implementation$1 r0 = new androidx.room.InvalidationTracker$implementation$1
            r6 = 0
            r7 = 8
            r1 = 1
            java.lang.Class<app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel> r3 = app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel.class
            java.lang.String r4 = "handleQrCodeScanned"
            java.lang.String r5 = "handleQrCodeScanned(Ljava/lang/String;)V"
            r2 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            androidx.compose.ui.draw.DrawResult r8 = new androidx.compose.ui.draw.DrawResult
            r8.<init>()
            r8.block = r0
            r2.cameraUseCasesProvider = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel.<init>(app.k9mail.feature.migration.qrcode.domain.usecase.QrCodePayloadReader, app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeSettingsWriter):void");
    }

    @Override // net.thunderbird.core.ui.contract.mvi.UnidirectionalViewModel
    public final void event(Object obj) {
        Object value;
        QrCodeScannerContract$State qrCodeScannerContract$State;
        Object value2;
        QrCodeScannerContract$State qrCodeScannerContract$State2;
        QrCodeScannerContract$Event qrCodeScannerContract$Event = (QrCodeScannerContract$Event) obj;
        qrCodeScannerContract$Event.getClass();
        if (qrCodeScannerContract$Event.equals(QrCodeScannerContract$Event.StartScreen.INSTANCE)) {
            handleOneTimeEvent(qrCodeScannerContract$Event, new RoomDatabase$closeBarrier$1(0, this, QrCodeScannerViewModel.class, "handleStartScreen", "handleStartScreen()V", 0, 14));
            return;
        }
        boolean z = qrCodeScannerContract$Event instanceof QrCodeScannerContract$Event.CameraPermissionResult;
        StateFlowImpl stateFlowImpl = this._state;
        Continuation continuation = null;
        if (z) {
            boolean z2 = ((QrCodeScannerContract$Event.CameraPermissionResult) qrCodeScannerContract$Event).success;
            do {
                value2 = stateFlowImpl.getValue();
                qrCodeScannerContract$State2 = (QrCodeScannerContract$State) value2;
                qrCodeScannerContract$State2.getClass();
            } while (!stateFlowImpl.compareAndSet(value2, QrCodeScannerContract$State.copy$default(qrCodeScannerContract$State2, z2 ? QrCodeScannerContract$UiPermissionState.Granted : QrCodeScannerContract$UiPermissionState.Denied, null, 2)));
            return;
        }
        if (qrCodeScannerContract$Event.equals(QrCodeScannerContract$Event.GoToSettingsClicked.INSTANCE)) {
            emitEffect(QrCodeScannerContract$Effect.GoToAppInfoScreen.INSTANCE);
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$cancel$1(this, continuation, 10), 3);
            return;
        }
        if (!qrCodeScannerContract$Event.equals(QrCodeScannerContract$Event.ReturnedFromAppInfoScreen.INSTANCE)) {
            if (qrCodeScannerContract$Event.equals(QrCodeScannerContract$Event.DoneClicked.INSTANCE)) {
                startAccountImport();
                return;
            } else {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
        }
        do {
            value = stateFlowImpl.getValue();
            qrCodeScannerContract$State = (QrCodeScannerContract$State) value;
            qrCodeScannerContract$State.getClass();
        } while (!stateFlowImpl.compareAndSet(value, QrCodeScannerContract$State.copy$default(qrCodeScannerContract$State, QrCodeScannerContract$UiPermissionState.Unknown, null, 2)));
        emitEffect(QrCodeScannerContract$Effect.RequestCameraPermission.INSTANCE);
    }

    public final void startAccountImport() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.accountDataList.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(((AccountData) it.next()).accounts, arrayList);
        }
        if (arrayList.isEmpty()) {
            emitEffect(QrCodeScannerContract$Effect.Cancel.INSTANCE);
        } else {
            JobKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new BlockRunner$maybeRun$1(this, arrayList, null, 26), 3);
        }
    }
}
