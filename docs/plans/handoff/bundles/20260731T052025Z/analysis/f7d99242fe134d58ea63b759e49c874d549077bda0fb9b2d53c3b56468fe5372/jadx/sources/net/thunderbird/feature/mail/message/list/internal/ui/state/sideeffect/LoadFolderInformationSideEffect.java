package net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect;

import androidx.compose.animation.core.MutatorMutex$mutate$2;
import androidx.compose.runtime.internal.ComposableLambdaImpl$invoke$1;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import java.util.Set;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.feature.account.core.data.DefaultAccountProfileRepository;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler;
import net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoadFolderInformationSideEffect extends MessageListStateSideEffectHandler {
    public final Set accountIds;
    public final Long folderId;
    public final DefaultFolderRepository folderRepository;
    public final Logger logger;
    public final DefaultAccountProfileRepository profileRepository;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Factory implements MessageListStateSideEffectHandlerFactory {
        public final Set accountIds;
        public final Long folderId;
        public final DefaultFolderRepository folderRepository;
        public final Logger logger;
        public final DefaultAccountProfileRepository profileRepository;

        public Factory(Set set, Long l, Logger logger, DefaultFolderRepository defaultFolderRepository, DefaultAccountProfileRepository defaultAccountProfileRepository) {
            this.accountIds = set;
            this.folderId = l;
            this.logger = logger;
            this.folderRepository = defaultFolderRepository;
            this.profileRepository = defaultAccountProfileRepository;
        }

        @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandlerFactory
        public final MessageListStateSideEffectHandler create(CloseableCoroutineScope closeableCoroutineScope, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$12) {
            return new LoadFolderInformationSideEffect(this.accountIds, this.folderId, composableLambdaImpl$invoke$1, this.logger, this.folderRepository, this.profileRepository);
        }
    }

    public LoadFolderInformationSideEffect(Set set, Long l, ComposableLambdaImpl$invoke$1 composableLambdaImpl$invoke$1, Logger logger, DefaultFolderRepository defaultFolderRepository, DefaultAccountProfileRepository defaultAccountProfileRepository) {
        super(logger, composableLambdaImpl$invoke$1);
        this.accountIds = set;
        this.folderId = l;
        this.logger = logger;
        this.folderRepository = defaultFolderRepository;
        this.profileRepository = defaultAccountProfileRepository;
    }

    @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler
    public final boolean accept(Object obj, Object obj2, Object obj3) {
        MessageListEvent messageListEvent = (MessageListEvent) obj;
        messageListEvent.getClass();
        ((MessageListState) obj2).getClass();
        ((MessageListState) obj3).getClass();
        return messageListEvent.equals(MessageListEvent.LoadConfigurations.INSTANCE);
    }

    @Override // net.thunderbird.feature.mail.message.list.ui.state.sideeffect.MessageListStateSideEffectHandler
    public final Object consume(Object obj, Object obj2, Object obj3, MutatorMutex$mutate$2 mutatorMutex$mutate$2) {
        Sink$CC.verbose$default(this.logger, "LoadFolderInformationSideEffect", null, new LoadPreferencesSideEffect$$ExternalSyntheticLambda0((MessageListState) obj2, (MessageListState) obj3, 2), 2);
        Long l = this.folderId;
        return l == null ? consumeUnifiedFolder(mutatorMutex$mutate$2) : consumeSingleAccountFolder(l.longValue(), mutatorMutex$mutate$2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00e7, code lost:
    
        if (r12.dispatch.invoke(r15, r0) != r7) goto L50;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object consumeSingleAccountFolder(long r13, kotlin.coroutines.jvm.internal.ContinuationImpl r15) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect.consumeSingleAccountFolder(long, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object consumeUnifiedFolder(kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect$consumeUnifiedFolder$1
            if (r0 == 0) goto L13
            r0 = r8
            net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect$consumeUnifiedFolder$1 r0 = (net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect$consumeUnifiedFolder$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect$consumeUnifiedFolder$1 r0 = new net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect$consumeUnifiedFolder$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2c
            if (r1 != r2) goto L25
            kotlin.ResultKt.throwOnFailure(r8)
            goto L55
        L25:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
            r7 = 0
            return r7
        L2c:
            kotlin.ResultKt.throwOnFailure(r8)
            net.thunderbird.feature.mail.message.list.ui.event.FolderEvent$FolderLoaded r8 = new net.thunderbird.feature.mail.message.list.ui.event.FolderEvent$FolderLoaded
            net.thunderbird.feature.mail.message.list.ui.state.Folder r1 = new net.thunderbird.feature.mail.message.list.ui.state.Folder
            net.thunderbird.feature.mail.message.list.ui.state.Account r3 = new net.thunderbird.feature.mail.message.list.ui.state.Account
            net.thunderbird.feature.account.AccountId r4 = net.thunderbird.feature.account.UnifiedAccountIdKt.UnifiedAccountId
            long r5 = androidx.compose.ui.graphics.Color.Unspecified
            r3.<init>(r4, r5)
            java.lang.String r4 = "Unified Inbox"
            net.thunderbird.feature.mail.folder.api.FolderType r5 = net.thunderbird.feature.mail.folder.api.FolderType.INBOX
            java.lang.String r6 = "unified_inbox"
            r1.<init>(r6, r3, r4, r5)
            r8.<init>(r1)
            r0.label = r2
            kotlin.jvm.functions.Function2 r7 = r7.dispatch
            java.lang.Object r7 = r7.invoke(r8, r0)
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r7 != r8) goto L55
            return r8
        L55:
            net.thunderbird.core.common.state.sideeffect.StateSideEffectHandler$ConsumeResult$Consumed r7 = net.thunderbird.core.common.state.sideeffect.StateSideEffectHandler$ConsumeResult$Consumed.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect.LoadFolderInformationSideEffect.consumeUnifiedFolder(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
