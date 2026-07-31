package com.fsck.k9.controller.push;

import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import com.fsck.k9.Preferences;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.LegacyAccountDtoManager;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.BackgroundOps;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PushController$init$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ PushController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PushController$init$2(PushController pushController, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = pushController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        PushController pushController = this.this$0;
        switch (i) {
            case 0:
                return new PushController$init$2(pushController, continuation, 0);
            case 1:
                return new PushController$init$2(pushController, continuation, 1);
            case 2:
                return new PushController$init$2(pushController, continuation, 2);
            case 3:
                return new PushController$init$2(pushController, continuation, 3);
            default:
                return new PushController$init$2(pushController, continuation, 4);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((PushController$init$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 1:
                ((PushController$init$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 2:
                ((PushController$init$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            case 3:
                ((PushController$init$2) create((BackgroundOps) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((PushController$init$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                ResultKt.throwOnFailure(obj);
                PushController pushController = this.this$0;
                Log.v("PushController.initInBackground()", new Object[0]);
                LegacyAccountDtoManager legacyAccountDtoManager = pushController.accountManager;
                NotificationChannelManager.AnonymousClass1 anonymousClass1 = new NotificationChannelManager.AnonymousClass1(1, pushController);
                Preferences preferences = (Preferences) legacyAccountDtoManager;
                preferences.getClass();
                preferences.accountsChangeListeners.add(anonymousClass1);
                FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(FlowKt.distinctUntilChanged(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(((DefaultGeneralSettingsManager) pushController.generalSettingsManager).generalSettings, 2)), new PushController$init$2(pushController, null, 3), 2), pushController.coroutineScope);
                BackendManager backendManager = pushController.backendManager;
                PushController$initInBackground$2 pushController$initInBackground$2 = new PushController$initInBackground$2(pushController);
                backendManager.getClass();
                backendManager.listeners.add(pushController$initInBackground$2);
                pushController.updatePushers();
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure(obj);
                PushController pushController2 = this.this$0;
                for (LegacyAccountDto legacyAccountDto : ((Preferences) pushController2.accountManager).getAccounts()) {
                    DefaultFolderRepository defaultFolderRepository = pushController2.folderRepository;
                    AccountId accountId = legacyAccountDto.id;
                    defaultFolderRepository.getClass();
                    accountId.getClass();
                    defaultFolderRepository.messageStoreManager.getMessageStore(accountId).setPushDisabled();
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj);
                this.this$0.updatePushers();
                return Unit.INSTANCE;
            case 3:
                ResultKt.throwOnFailure(obj);
                this.this$0.launchUpdatePushers();
                return Unit.INSTANCE;
            default:
                ResultKt.throwOnFailure(obj);
                PushController pushController3 = this.this$0;
                synchronized (pushController3.lock) {
                    Iterator it = pushController3.pushers.values().iterator();
                    while (it.hasNext()) {
                        ((AccountPushController) it.next()).reconnect();
                    }
                }
                this.this$0.updatePushers();
                return Unit.INSTANCE;
        }
    }
}
