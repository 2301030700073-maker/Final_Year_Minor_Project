package com.fsck.k9.mailstore.folder;

import android.os.OperationCanceledException;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mailstore.LocalStore$$ExternalSyntheticLambda1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultOutboxFolderManager$createOutboxFolder$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ AccountId $accountId;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DefaultOutboxFolderManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DefaultOutboxFolderManager$createOutboxFolder$2(DefaultOutboxFolderManager defaultOutboxFolderManager, AccountId accountId, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = defaultOutboxFolderManager;
        this.$accountId = accountId;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        AccountId accountId = this.$accountId;
        DefaultOutboxFolderManager defaultOutboxFolderManager = this.this$0;
        switch (i) {
            case 0:
                return new DefaultOutboxFolderManager$createOutboxFolder$2(defaultOutboxFolderManager, accountId, continuation, 0);
            default:
                return new DefaultOutboxFolderManager$createOutboxFolder$2(defaultOutboxFolderManager, accountId, continuation, 1);
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
        return ((DefaultOutboxFolderManager$createOutboxFolder$2) create(coroutineScope, continuation)).invokeSuspend(unit);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        AccountId accountId = this.$accountId;
        DefaultOutboxFolderManager defaultOutboxFolderManager = this.this$0;
        switch (i) {
            case 0:
                ResultKt.throwOnFailure(obj);
                int i2 = 1;
                Sink$CC.verbose$default(defaultOutboxFolderManager.logger, "DefaultOutboxFolderManager", null, new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 1), 2);
                try {
                    return new Outcome.Success(new Long(((Long) DefaultOutboxFolderManager.access$createLocalStore(defaultOutboxFolderManager, accountId).database.execute(true, new LocalStore$$ExternalSyntheticLambda1("Outbox", FolderType.OUTBOX, 100, i2))).longValue()));
                } catch (MessagingException e) {
                    return new Outcome.Failure(e, null);
                }
            default:
                ResultKt.throwOnFailure(obj);
                Logger logger = defaultOutboxFolderManager.logger;
                Logger logger2 = defaultOutboxFolderManager.logger;
                Sink$CC.verbose$default(logger, "DefaultOutboxFolderManager", null, new DefaultOutboxFolderManager$$ExternalSyntheticLambda0(accountId, 2), 2);
                Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                try {
                } catch (OperationCanceledException e2) {
                    logger2.warn("DefaultOutboxFolderManager", e2, new SyncDebugWorker$$ExternalSyntheticLambda0(18));
                } catch (MessagingException e3) {
                    logger2.warn("DefaultOutboxFolderManager", e3, new SyncDebugWorker$$ExternalSyntheticLambda0(18));
                }
                return Boolean.valueOf(ref$BooleanRef.element);
        }
    }
}
