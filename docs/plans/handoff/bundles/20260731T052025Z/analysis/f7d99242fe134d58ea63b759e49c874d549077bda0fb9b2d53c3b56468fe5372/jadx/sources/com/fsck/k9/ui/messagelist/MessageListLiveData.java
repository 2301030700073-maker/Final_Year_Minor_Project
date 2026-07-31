package com.fsck.k9.ui.messagelist;

import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListLiveData extends LiveData {
    public final DefaultLegacyAccountManager accountManager;
    public final MessageListConfig config;
    public final CloseableCoroutineScope coroutineScope;
    public final MessageListLiveData$$ExternalSyntheticLambda0 messageListChangedListener = new MessageListLiveData$$ExternalSyntheticLambda0(0, this);
    public final MessageListLoader messageListLoader;
    public final DefaultMessageListRepository messageListRepository;

    public MessageListLiveData(MessageListLoader messageListLoader, DefaultLegacyAccountManager defaultLegacyAccountManager, DefaultMessageListRepository defaultMessageListRepository, CloseableCoroutineScope closeableCoroutineScope, MessageListConfig messageListConfig) {
        this.messageListLoader = messageListLoader;
        this.accountManager = defaultLegacyAccountManager;
        this.messageListRepository = defaultMessageListRepository;
        this.coroutineScope = closeableCoroutineScope;
        this.config = messageListConfig;
    }

    @Override // androidx.lifecycle.LiveData
    public final void onActive() {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        Continuation continuation = null;
        MessageListLiveData$loadMessageListAsync$1$messageList$1 messageListLiveData$loadMessageListAsync$1$messageList$1 = new MessageListLiveData$loadMessageListAsync$1$messageList$1(this, continuation, 1);
        CloseableCoroutineScope closeableCoroutineScope = this.coroutineScope;
        JobKt.launch$default(closeableCoroutineScope, defaultIoScheduler, null, messageListLiveData$loadMessageListAsync$1$messageList$1, 2);
        JobKt.launch$default(closeableCoroutineScope, MainDispatcherLoader.dispatcher, null, new BlockRunner$cancel$1(this, continuation, 18), 2);
    }

    @Override // androidx.lifecycle.LiveData
    public final void onInactive() {
        this.messageListRepository.removeListener(this.messageListChangedListener);
    }
}
