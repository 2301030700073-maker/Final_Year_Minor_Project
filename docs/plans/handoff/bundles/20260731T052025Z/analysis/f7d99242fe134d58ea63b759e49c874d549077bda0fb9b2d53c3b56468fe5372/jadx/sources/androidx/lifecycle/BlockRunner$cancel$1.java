package androidx.lifecycle;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.room.InvalidationTracker;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import app.k9mail.core.ui.compose.common.window.FoldableStateObserver;
import app.k9mail.feature.account.edit.ui.server.settings.modify.ModifyIncomingServerSettingsViewModel;
import app.k9mail.feature.account.edit.ui.server.settings.modify.ModifyOutgoingServerSettingsViewModel;
import app.k9mail.feature.account.setup.ui.autodiscovery.AccountAutoDiscoveryViewModel;
import app.k9mail.feature.account.setup.ui.options.display.DisplayOptionsViewModel;
import app.k9mail.feature.account.setup.ui.specialfolders.SpecialFoldersViewModel;
import app.k9mail.feature.migration.qrcode.ui.QrCodeScannerViewModel;
import app.k9mail.feature.onboarding.permissions.ui.PermissionsViewModel;
import app.k9mail.feature.settings.p000import.ui.PickAppViewModel;
import com.eygraber.uri.Uri;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.controller.push.AccountPushController;
import com.fsck.k9.ui.base.AppLanguageManager;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferPresenter;
import com.fsck.k9.ui.messagelist.MessageListLiveData;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import net.thunderbird.core.common.exception.ExceptionHandler;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.mail.message.list.internal.ui.dialog.SetupArchiveFolderDialogViewModel;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BlockRunner$cancel$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BlockRunner$cancel$1(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.this$0;
        switch (i) {
            case 0:
                return new BlockRunner$cancel$1((Uri.Builder) obj2, continuation, 0);
            case 1:
                return new BlockRunner$cancel$1((InvalidationTracker) obj2, continuation, 1);
            case 2:
                return new BlockRunner$cancel$1((TriggerBasedInvalidationTracker) obj2, continuation, 2);
            case 3:
                return new BlockRunner$cancel$1((ConstraintTrackingWorker) obj2, continuation, 3);
            case 4:
                return new BlockRunner$cancel$1((FoldableStateObserver) obj2, continuation, 4);
            case 5:
                return new BlockRunner$cancel$1((ModifyIncomingServerSettingsViewModel) obj2, continuation, 5);
            case 6:
                return new BlockRunner$cancel$1((ModifyOutgoingServerSettingsViewModel) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new BlockRunner$cancel$1((AccountAutoDiscoveryViewModel) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new BlockRunner$cancel$1((DisplayOptionsViewModel) obj2, continuation, 8);
            case 9:
                return new BlockRunner$cancel$1((SpecialFoldersViewModel) obj2, continuation, 9);
            case 10:
                return new BlockRunner$cancel$1((QrCodeScannerViewModel) obj2, continuation, 10);
            case 11:
                return new BlockRunner$cancel$1((PermissionsViewModel) obj2, continuation, 11);
            case BasicTextKt.ShiftMeta /* 12 */:
                return new BlockRunner$cancel$1((PickAppViewModel) obj2, continuation, 12);
            case 13:
                return new BlockRunner$cancel$1((MessageHomeActivity) obj2, continuation, 13);
            case 14:
                return new BlockRunner$cancel$1((AccountPushController) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new BlockRunner$cancel$1((AppLanguageManager) obj2, continuation, 15);
            case 16:
                return new BlockRunner$cancel$1((LiveDataScopeImpl) obj2, continuation, 16);
            case 17:
                return new BlockRunner$cancel$1((AutocryptKeyTransferPresenter) obj2, continuation, 17);
            case 18:
                return new BlockRunner$cancel$1((MessageListLiveData) obj2, continuation, 18);
            case 19:
                return new BlockRunner$cancel$1((SettingsExportViewModel) obj2, continuation, 19);
            case 20:
                return new BlockRunner$cancel$1((Flow) obj2, continuation, 20);
            case 21:
                return new BlockRunner$cancel$1((ExceptionHandler) obj2, continuation, 21);
            case 22:
                return new BlockRunner$cancel$1((FocusRequester) obj2, continuation, 22);
            case 23:
                return new BlockRunner$cancel$1((FetchingMailSettingsViewModel) obj2, continuation, 23);
            case 24:
                return new BlockRunner$cancel$1((ReadingMailSettingsViewModel) obj2, continuation, 24);
            case 25:
                return new BlockRunner$cancel$1((SearchSettingsViewModel) obj2, continuation, 25);
            default:
                return new BlockRunner$cancel$1((SetupArchiveFolderDialogViewModel) obj2, continuation, 26);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineScope coroutineScope = (CoroutineScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
            case 13:
                ((BlockRunner$cancel$1) create(coroutineScope, continuation)).invokeSuspend(unit);
                break;
        }
        return ((BlockRunner$cancel$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:222:0x0385, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(500, r27) == r13) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x060c, code lost:
    
        if (kotlinx.coroutines.JobKt.delay(500, r27) == r13) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:?, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x0570, code lost:
    
        if (r3 == r13) goto L309;
     */
    /* JADX WARN: Removed duplicated region for block: B:288:0x04e9  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x04ec  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r28) {
        /*
            Method dump skipped, instructions count: 2324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.BlockRunner$cancel$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
