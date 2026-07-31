package app.k9mail.legacy.mailstore;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;
import net.thunderbird.feature.account.AccountId;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFolderRepository$getPushFoldersFlow$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ AccountId $accountId;
    public final /* synthetic */ ListenableMessageStore $messageStore;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;
    public int label;
    public final /* synthetic */ DefaultFolderRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DefaultFolderRepository$getPushFoldersFlow$1(DefaultFolderRepository defaultFolderRepository, AccountId accountId, ListenableMessageStore listenableMessageStore, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = defaultFolderRepository;
        this.$accountId = accountId;
        this.$messageStore = listenableMessageStore;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.$r8$classId) {
            case 0:
                DefaultFolderRepository$getPushFoldersFlow$1 defaultFolderRepository$getPushFoldersFlow$1 = new DefaultFolderRepository$getPushFoldersFlow$1(this.this$0, this.$accountId, this.$messageStore, continuation, 0);
                defaultFolderRepository$getPushFoldersFlow$1.L$0 = obj;
                return defaultFolderRepository$getPushFoldersFlow$1;
            default:
                DefaultFolderRepository$getPushFoldersFlow$1 defaultFolderRepository$getPushFoldersFlow$12 = new DefaultFolderRepository$getPushFoldersFlow$1(this.this$0, this.$accountId, this.$messageStore, continuation, 1);
                defaultFolderRepository$getPushFoldersFlow$12.L$0 = obj;
                return defaultFolderRepository$getPushFoldersFlow$12;
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ProducerScope producerScope = (ProducerScope) obj;
        Continuation continuation = (Continuation) obj2;
        switch (i) {
        }
        return ((DefaultFolderRepository$getPushFoldersFlow$1) create(producerScope, continuation)).invokeSuspend(unit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0057, code lost:
    
        if (((kotlinx.coroutines.channels.ProducerCoroutine) r0)._channel.send(r12, r11) == r3) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00a4, code lost:
    
        if (((kotlinx.coroutines.channels.ProducerCoroutine) r0)._channel.send(r12, r11) == r3) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.$r8$classId
            kotlin.Unit r1 = kotlin.Unit.INSTANCE
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            r4 = 2
            app.k9mail.legacy.mailstore.DefaultFolderRepository r5 = r11.this$0
            net.thunderbird.feature.account.AccountId r6 = r11.$accountId
            app.k9mail.legacy.mailstore.ListenableMessageStore r7 = r11.$messageStore
            r8 = 1
            r9 = 0
            switch(r0) {
                case 0: goto L77;
                default: goto L14;
            }
        L14:
            java.lang.Object r0 = r11.L$0
            kotlinx.coroutines.channels.ProducerScope r0 = (kotlinx.coroutines.channels.ProducerScope) r0
            int r10 = r11.label
            if (r10 == 0) goto L2d
            if (r10 == r8) goto L29
            if (r10 != r4) goto L24
            kotlin.ResultKt.throwOnFailure(r12)
            goto L76
        L24:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r2)
            r1 = r9
            goto L76
        L29:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5a
        L2d:
            kotlin.ResultKt.throwOnFailure(r12)
            r5.getClass()
            r6.getClass()
            app.k9mail.legacy.mailstore.MessageStoreManager r12 = r5.messageStoreManager
            app.k9mail.legacy.mailstore.ListenableMessageStore r12 = r12.getMessageStore(r6)
            com.fsck.k9.mailstore.LocalStore$1 r12 = r12.messageStore
            java.lang.Object r12 = r12.val$folders
            com.fsck.k9.storage.messages.K9MessageStore r12 = (com.fsck.k9.storage.messages.K9MessageStore) r12
            boolean r12 = r12.hasPushEnabledFolder()
            java.lang.Boolean r12 = java.lang.Boolean.valueOf(r12)
            r11.L$0 = r0
            r11.label = r8
            r2 = r0
            kotlinx.coroutines.channels.ProducerCoroutine r2 = (kotlinx.coroutines.channels.ProducerCoroutine) r2
            kotlinx.coroutines.channels.BufferedChannel r2 = r2._channel
            java.lang.Object r12 = r2.send(r12, r11)
            if (r12 != r3) goto L5a
            goto L75
        L5a:
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0 r12 = new app.k9mail.legacy.mailstore.DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0
            r12.<init>()
            java.util.concurrent.CopyOnWriteArraySet r2 = r7.folderSettingsListener
            r2.add(r12)
            kotlin.text.Regex$$ExternalSyntheticLambda1 r2 = new kotlin.text.Regex$$ExternalSyntheticLambda1
            r5 = 15
            r2.<init>(r5, r7, r12)
            r11.L$0 = r9
            r11.label = r4
            java.lang.Object r11 = kotlin.ranges.RangesKt.awaitClose(r0, r2, r11)
            if (r11 != r3) goto L76
        L75:
            r1 = r3
        L76:
            return r1
        L77:
            java.lang.Object r0 = r11.L$0
            kotlinx.coroutines.channels.ProducerScope r0 = (kotlinx.coroutines.channels.ProducerScope) r0
            int r10 = r11.label
            if (r10 == 0) goto L90
            if (r10 == r8) goto L8c
            if (r10 != r4) goto L87
            kotlin.ResultKt.throwOnFailure(r12)
            goto Lc4
        L87:
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r2)
            r1 = r9
            goto Lc4
        L8c:
            kotlin.ResultKt.throwOnFailure(r12)
            goto La7
        L90:
            kotlin.ResultKt.throwOnFailure(r12)
            java.util.List r12 = r5.getPushFolders(r6)
            r11.L$0 = r0
            r11.label = r8
            r2 = r0
            kotlinx.coroutines.channels.ProducerCoroutine r2 = (kotlinx.coroutines.channels.ProducerCoroutine) r2
            kotlinx.coroutines.channels.BufferedChannel r2 = r2._channel
            java.lang.Object r12 = r2.send(r12, r11)
            if (r12 != r3) goto La7
            goto Lc3
        La7:
            app.k9mail.legacy.mailstore.DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0 r12 = new app.k9mail.legacy.mailstore.DefaultFolderRepository$getPushFoldersFlow$1$$ExternalSyntheticLambda0
            r2 = 0
            r12.<init>()
            java.util.concurrent.CopyOnWriteArraySet r2 = r7.folderSettingsListener
            r2.add(r12)
            kotlin.text.Regex$$ExternalSyntheticLambda1 r2 = new kotlin.text.Regex$$ExternalSyntheticLambda1
            r5 = 14
            r2.<init>(r5, r7, r12)
            r11.L$0 = r9
            r11.label = r4
            java.lang.Object r11 = kotlin.ranges.RangesKt.awaitClose(r0, r2, r11)
            if (r11 != r3) goto Lc4
        Lc3:
            r1 = r3
        Lc4:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.legacy.mailstore.DefaultFolderRepository$getPushFoldersFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
