package com.fsck.k9.mailstore.folder;

import androidx.datastore.core.DataStoreImpl$data$1$3;
import coil3.memory.MemoryCache$Builder$$ExternalSyntheticLambda1;
import com.eygraber.uri.Uri;
import com.fsck.k9.mailstore.DefaultSpecialFolderUpdater$updateSpecialFolders$1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.common.cache.TimeLimitedCache;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.CreateArchiveFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultOutboxFolderManager$getOutboxFolderId$4$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $accountId;
    public final /* synthetic */ Object $outboxId;
    public final /* synthetic */ int $r8$classId = 1;
    public /* synthetic */ long J$0;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultOutboxFolderManager$getOutboxFolderId$4$2(Uri.Builder builder, long j, CreateArchiveFolder createArchiveFolder, LegacyAccount legacyAccount, Continuation continuation) {
        super(2, continuation);
        this.this$0 = builder;
        this.J$0 = j;
        this.$accountId = createArchiveFolder;
        this.$outboxId = legacyAccount;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$outboxId;
        Object obj3 = this.$accountId;
        Object obj4 = this.this$0;
        switch (i) {
            case 0:
                DefaultOutboxFolderManager$getOutboxFolderId$4$2 defaultOutboxFolderManager$getOutboxFolderId$4$2 = new DefaultOutboxFolderManager$getOutboxFolderId$4$2((DefaultOutboxFolderManager) obj4, (AccountId) obj3, (Ref$LongRef) obj2, continuation);
                defaultOutboxFolderManager$getOutboxFolderId$4$2.J$0 = ((Number) obj).longValue();
                return defaultOutboxFolderManager$getOutboxFolderId$4$2;
            default:
                return new DefaultOutboxFolderManager$getOutboxFolderId$4$2((Uri.Builder) obj4, this.J$0, (CreateArchiveFolder) obj3, (LegacyAccount) obj2, continuation);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                ((DefaultOutboxFolderManager$getOutboxFolderId$4$2) create(Long.valueOf(((Number) obj).longValue()), (Continuation) obj2)).invokeSuspend(unit);
                break;
            default:
                ((DefaultOutboxFolderManager$getOutboxFolderId$4$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                break;
        }
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.$outboxId;
        Object obj3 = this.$accountId;
        Continuation continuation = null;
        Object obj4 = this.this$0;
        switch (i) {
            case 0:
                long j = this.J$0;
                ResultKt.throwOnFailure(obj);
                DefaultOutboxFolderManager defaultOutboxFolderManager = (DefaultOutboxFolderManager) obj4;
                Sink$CC.debug$default(defaultOutboxFolderManager.logger, "DefaultOutboxFolderManager", null, new MemoryCache$Builder$$ExternalSyntheticLambda1(4, j), 2);
                TimeLimitedCache.m1025setSxA4cEA$default(defaultOutboxFolderManager.outboxFolderIdCache, (AccountId) obj3, new Long(j));
                ((Ref$LongRef) obj2).element = j;
                break;
            default:
                ResultKt.throwOnFailure(obj);
                Uri.Builder builder = (Uri.Builder) obj4;
                Long l = new Long(this.J$0);
                CoroutineScope coroutineScope = (CoroutineScope) builder.fragment;
                CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) builder.path;
                JobKt.launch$default(coroutineScope, coroutineDispatcher, null, new DataStoreImpl$data$1$3(builder, l, continuation, 29), 2);
                JobKt.launch$default((CoroutineScope) builder.fragment, coroutineDispatcher, null, new DefaultSpecialFolderUpdater$updateSpecialFolders$1(builder, null, 0), 2);
                DefaultLegacyAccountManager defaultLegacyAccountManager = ((CreateArchiveFolder) obj3).accountManager;
                defaultLegacyAccountManager.getClass();
                defaultLegacyAccountManager.saveAccount((LegacyAccount) obj2);
                break;
        }
        return unit;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultOutboxFolderManager$getOutboxFolderId$4$2(DefaultOutboxFolderManager defaultOutboxFolderManager, AccountId accountId, Ref$LongRef ref$LongRef, Continuation continuation) {
        super(2, continuation);
        this.this$0 = defaultOutboxFolderManager;
        this.$accountId = accountId;
        this.$outboxId = ref$LongRef;
    }
}
