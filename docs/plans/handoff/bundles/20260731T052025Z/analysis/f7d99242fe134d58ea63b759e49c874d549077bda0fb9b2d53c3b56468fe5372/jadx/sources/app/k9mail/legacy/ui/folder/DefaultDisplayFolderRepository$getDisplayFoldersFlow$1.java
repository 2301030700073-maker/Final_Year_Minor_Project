package app.k9mail.legacy.ui.folder;

import app.k9mail.legacy.mailstore.ListenableMessageStore;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDisplayFolderRepository$getDisplayFoldersFlow$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ LegacyAccountDto $account;
    public final /* synthetic */ boolean $includeHiddenFolders;
    public final /* synthetic */ ListenableMessageStore $messageStore;
    public long J$0;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ DefaultDisplayFolderRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultDisplayFolderRepository$getDisplayFoldersFlow$1(DefaultDisplayFolderRepository defaultDisplayFolderRepository, LegacyAccountDto legacyAccountDto, boolean z, ListenableMessageStore listenableMessageStore, Continuation continuation) {
        super(2, continuation);
        this.this$0 = defaultDisplayFolderRepository;
        this.$account = legacyAccountDto;
        this.$includeHiddenFolders = z;
        this.$messageStore = listenableMessageStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DefaultDisplayFolderRepository$getDisplayFoldersFlow$1 defaultDisplayFolderRepository$getDisplayFoldersFlow$1 = new DefaultDisplayFolderRepository$getDisplayFoldersFlow$1(this.this$0, this.$account, this.$includeHiddenFolders, this.$messageStore, continuation);
        defaultDisplayFolderRepository$getDisplayFoldersFlow$1.L$0 = obj;
        return defaultDisplayFolderRepository$getDisplayFoldersFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DefaultDisplayFolderRepository$getDisplayFoldersFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0042, code lost:
    
        if (r1 == r11) goto L14;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            r17 = this;
            r0 = r17
            java.lang.Object r1 = r0.L$0
            r6 = r1
            kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
            int r1 = r0.label
            net.thunderbird.core.android.account.LegacyAccountDto r2 = r0.$account
            r9 = 3
            r3 = 2
            r4 = 1
            r10 = 0
            app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository r5 = r0.this$0
            kotlin.coroutines.intrinsics.CoroutineSingletons r11 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r1 == 0) goto L33
            if (r1 == r4) goto L2d
            if (r1 == r3) goto L26
            if (r1 != r9) goto L20
            kotlin.ResultKt.throwOnFailure(r18)
            goto L9d
        L20:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r0)
            return r10
        L26:
            long r1 = r0.J$0
            kotlin.ResultKt.throwOnFailure(r18)
            r3 = r1
            goto L65
        L2d:
            kotlin.ResultKt.throwOnFailure(r18)
            r1 = r18
            goto L46
        L33:
            kotlin.ResultKt.throwOnFailure(r18)
            com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager r1 = r5.outboxFolderManager
            net.thunderbird.feature.account.AccountId r7 = r2.id
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r1 = r1.getOutboxFolderId(r7, r0)
            if (r1 != r11) goto L46
        L44:
            r1 = r11
            goto L9c
        L46:
            java.lang.Number r1 = (java.lang.Number) r1
            long r7 = r1.longValue()
            boolean r1 = r0.$includeHiddenFolders
            java.util.List r1 = app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository.access$getDisplayFolders(r5, r2, r7, r1)
            r0.L$0 = r6
            r0.J$0 = r7
            r0.label = r3
            r2 = r6
            kotlinx.coroutines.channels.ProducerCoroutine r2 = (kotlinx.coroutines.channels.ProducerCoroutine) r2
            kotlinx.coroutines.channels.BufferedChannel r2 = r2._channel
            java.lang.Object r1 = r2.send(r1, r0)
            if (r1 != r11) goto L64
            goto L44
        L64:
            r3 = r7
        L65:
            app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1 r2 = new app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$folderStatusChangedListener$1
            net.thunderbird.core.android.account.LegacyAccountDto r7 = r0.$account
            boolean r8 = r0.$includeHiddenFolders
            r2.<init>()
            r13 = r2
            app.k9mail.legacy.message.controller.MessagingControllerRegistry r1 = r5.messagingController
            com.fsck.k9.controller.MessagingController r1 = (com.fsck.k9.controller.MessagingController) r1
            r1.addListener(r13)
            app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0 r15 = new app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository$getDisplayFoldersFlow$1$$ExternalSyntheticLambda0
            net.thunderbird.core.android.account.LegacyAccountDto r7 = r0.$account
            boolean r8 = r0.$includeHiddenFolders
            r2 = r15
            r2.<init>()
            app.k9mail.legacy.mailstore.ListenableMessageStore r14 = r0.$messageStore
            java.util.concurrent.CopyOnWriteArraySet r1 = r14.folderSettingsListener
            r1.add(r15)
            r1 = r11
            androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0 r11 = new androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda0
            r16 = 8
            r12 = r5
            r11.<init>(r12, r13, r14, r15, r16)
            r0.L$0 = r10
            r0.J$0 = r3
            r0.label = r9
            java.lang.Object r0 = kotlin.ranges.RangesKt.awaitClose(r6, r11, r0)
            if (r0 != r1) goto L9d
        L9c:
            return r1
        L9d:
            kotlin.Unit r0 = kotlin.Unit.INSTANCE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository$getDisplayFoldersFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
