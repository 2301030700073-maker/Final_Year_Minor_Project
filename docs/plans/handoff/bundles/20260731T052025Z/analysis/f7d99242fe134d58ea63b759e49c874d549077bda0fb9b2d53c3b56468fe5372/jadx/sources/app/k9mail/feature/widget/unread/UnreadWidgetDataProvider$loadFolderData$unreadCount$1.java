package app.k9mail.feature.widget.unread;

import app.k9mail.legacy.mailstore.ListenableMessageStore;
import com.fsck.k9.controller.DefaultMessageCountsProvider;
import com.fsck.k9.mailstore.OutboxStateRepository$$ExternalSyntheticLambda0;
import com.fsck.k9.storage.messages.K9MessageStore;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetDataProvider$loadFolderData$unreadCount$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ LegacyAccountDto $account;
    public final /* synthetic */ long $folderId;
    public final /* synthetic */ UnreadWidgetDataProvider this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnreadWidgetDataProvider$loadFolderData$unreadCount$1(UnreadWidgetDataProvider unreadWidgetDataProvider, LegacyAccountDto legacyAccountDto, long j, Continuation continuation) {
        super(2, continuation);
        this.this$0 = unreadWidgetDataProvider;
        this.$account = legacyAccountDto;
        this.$folderId = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UnreadWidgetDataProvider$loadFolderData$unreadCount$1(this.this$0, this.$account, this.$folderId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UnreadWidgetDataProvider$loadFolderData$unreadCount$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ResultKt.throwOnFailure(obj);
        DefaultMessageCountsProvider defaultMessageCountsProvider = this.this$0.messageCountsProvider;
        long j = this.$folderId;
        LegacyAccountDto legacyAccountDto = this.$account;
        legacyAccountDto.getClass();
        int i = 0;
        try {
            ListenableMessageStore messageStore = defaultMessageCountsProvider.messageStoreManager.getMessageStore(legacyAccountDto);
            long outboxFolderIdSync$default = Sink$CC.getOutboxFolderIdSync$default(defaultMessageCountsProvider.outboxFolderManager, legacyAccountDto.id);
            K9MessageStore k9MessageStore = (K9MessageStore) messageStore.messageStore.val$folders;
            if (j == outboxFolderIdSync$default) {
                Object execute = k9MessageStore.retrieveFolderOperations.lockableDatabase.execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(5, j));
                execute.getClass();
                i = ((Number) execute).intValue();
            } else {
                Object execute2 = k9MessageStore.retrieveFolderOperations.lockableDatabase.execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(6, j));
                execute2.getClass();
                i = ((Number) execute2).intValue();
            }
        } catch (Exception e) {
            Long valueOf = Long.valueOf(j);
            Object[] objArr = new Object[2];
            objArr[i] = legacyAccountDto;
            objArr[1] = valueOf;
            Log.e(e, "Unable to getUnreadMessageCount for account: %s, folder: %d", objArr);
        }
        return new Integer(i);
    }
}
