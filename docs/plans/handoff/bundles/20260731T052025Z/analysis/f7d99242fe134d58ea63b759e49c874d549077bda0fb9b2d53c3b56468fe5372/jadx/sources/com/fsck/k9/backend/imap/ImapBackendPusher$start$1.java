package com.fsck.k9.backend.imap;

import com.fsck.k9.Preferences;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.backends.DefaultImapBackendFactory$createImapStoreConfig$1;
import com.fsck.k9.backends.DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapBackendPusher$start$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ ImapBackendPusher this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ImapBackendPusher$start$1(ImapBackendPusher imapBackendPusher, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = imapBackendPusher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        ImapBackendPusher imapBackendPusher = this.this$0;
        switch (i) {
            case 0:
                return new ImapBackendPusher$start$1(imapBackendPusher, continuation, 0);
            default:
                return new ImapBackendPusher$start$1(imapBackendPusher, continuation, 1);
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
        return ((ImapBackendPusher$start$1) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        final ImapBackendPusher imapBackendPusher = this.this$0;
        final int i2 = 0;
        final int i3 = 1;
        switch (i) {
            case 0:
                int i4 = this.label;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    DefaultImapBackendFactory$createImapStoreConfig$1 defaultImapBackendFactory$createImapStoreConfig$1 = imapBackendPusher.pushConfigProvider;
                    DefaultLegacyAccountManager defaultLegacyAccountManager = defaultImapBackendFactory$createImapStoreConfig$1.this$0.accountManager;
                    String str = defaultImapBackendFactory$createImapStoreConfig$1.$account.uuid;
                    str.getClass();
                    Preferences preferences = (Preferences) defaultLegacyAccountManager.accountManager;
                    Flow distinctUntilChanged = FlowKt.distinctUntilChanged(new DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(new DefaultLegacyAccountManager$getAll$$inlined$map$1(FlowKt.flowOn(FlowKt.buffer$default(FlowKt.callbackFlow(new Preferences$getAccountFlow$1(preferences, str, null, 0)), -1), preferences.backgroundDispatcher), defaultLegacyAccountManager, 1), 3), 0));
                    FlowCollector flowCollector = new FlowCollector() { // from class: com.fsck.k9.backend.imap.ImapBackendPusher$start$1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            switch (i2) {
                                case 0:
                                    imapBackendPusher.currentMaxPushFolders = ((Number) obj2).intValue();
                                    imapBackendPusher.updateFolders$1();
                                    return Unit.INSTANCE;
                                default:
                                    imapBackendPusher.currentIdleRefreshMs = ((Number) obj2).intValue() * 60 * 1000;
                                    ImapBackendPusher imapBackendPusher2 = imapBackendPusher;
                                    synchronized (imapBackendPusher2.lock) {
                                        Iterator it = imapBackendPusher2.pushFolders.values().iterator();
                                        while (it.hasNext()) {
                                            ((ImapFolderPusher) it.next()).refresh();
                                        }
                                    }
                                    return Unit.INSTANCE;
                            }
                        }
                    };
                    this.label = 1;
                    if (distinctUntilChanged.collect(flowCollector, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i4 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
            default:
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    DefaultImapBackendFactory$createImapStoreConfig$1 defaultImapBackendFactory$createImapStoreConfig$12 = imapBackendPusher.pushConfigProvider;
                    DefaultLegacyAccountManager defaultLegacyAccountManager2 = defaultImapBackendFactory$createImapStoreConfig$12.this$0.accountManager;
                    String str2 = defaultImapBackendFactory$createImapStoreConfig$12.$account.uuid;
                    str2.getClass();
                    Preferences preferences2 = (Preferences) defaultLegacyAccountManager2.accountManager;
                    Flow distinctUntilChanged2 = FlowKt.distinctUntilChanged(new DefaultImapBackendFactory$createPushConfigProvider$1$special$$inlined$map$1(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(new DefaultLegacyAccountManager$getAll$$inlined$map$1(FlowKt.flowOn(FlowKt.buffer$default(FlowKt.callbackFlow(new Preferences$getAccountFlow$1(preferences2, str2, null, 0)), -1), preferences2.backgroundDispatcher), defaultLegacyAccountManager2, 1), 3), 1));
                    FlowCollector flowCollector2 = new FlowCollector() { // from class: com.fsck.k9.backend.imap.ImapBackendPusher$start$1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj2, Continuation continuation) {
                            switch (i3) {
                                case 0:
                                    imapBackendPusher.currentMaxPushFolders = ((Number) obj2).intValue();
                                    imapBackendPusher.updateFolders$1();
                                    return Unit.INSTANCE;
                                default:
                                    imapBackendPusher.currentIdleRefreshMs = ((Number) obj2).intValue() * 60 * 1000;
                                    ImapBackendPusher imapBackendPusher2 = imapBackendPusher;
                                    synchronized (imapBackendPusher2.lock) {
                                        Iterator it = imapBackendPusher2.pushFolders.values().iterator();
                                        while (it.hasNext()) {
                                            ((ImapFolderPusher) it.next()).refresh();
                                        }
                                    }
                                    return Unit.INSTANCE;
                            }
                        }
                    };
                    this.label = 1;
                    if (distinctUntilChanged2.collect(flowCollector2, this) == coroutineSingletons) {
                        break;
                    }
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                break;
        }
        return coroutineSingletons;
    }
}
