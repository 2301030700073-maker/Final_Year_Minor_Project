package com.fsck.k9.ui.messagelist;

import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.MediatorLiveData$Source;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.helper.SingleLiveEvent;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import java.util.LinkedList;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListViewModel extends ViewModel {
    public MessageListLiveData currentMessageListLiveData;
    public final Logger logger;
    public final MessageListLiveDataFactory messageListLiveDataFactory;
    public final SingleLiveEvent messageListLiveData = new SingleLiveEvent(1);
    public final LinkedList messageSortOverrides = new LinkedList();

    public MessageListViewModel(MessageListLiveDataFactory messageListLiveDataFactory, Logger logger) {
        this.messageListLiveDataFactory = messageListLiveDataFactory;
        this.logger = logger;
    }

    public final void loadMessageList(MessageListConfig messageListConfig, boolean z) {
        Object obj = null;
        Sink$CC.debug$default(this.logger, "LegacyMessageListViewModel", null, new MessageListViewModel$$ExternalSyntheticLambda0(messageListConfig, z), 2);
        if (!z) {
            MessageListLiveData messageListLiveData = this.currentMessageListLiveData;
            if (Intrinsics.areEqual(messageListLiveData != null ? messageListLiveData.config : null, messageListConfig)) {
                return;
            }
        }
        MessageListLiveData messageListLiveData2 = this.currentMessageListLiveData;
        SingleLiveEvent singleLiveEvent = this.messageListLiveData;
        if (messageListLiveData2 != null) {
            this.currentMessageListLiveData = null;
            MediatorLiveData$Source mediatorLiveData$Source = (MediatorLiveData$Source) ((SafeIterableMap) singleLiveEvent.pending).remove(messageListLiveData2);
            if (mediatorLiveData$Source != null) {
                mediatorLiveData$Source.mLiveData.removeObserver(mediatorLiveData$Source);
            }
        }
        CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(this);
        MessageListLiveDataFactory messageListLiveDataFactory = this.messageListLiveDataFactory;
        messageListLiveDataFactory.getClass();
        MessageListLiveData messageListLiveData3 = new MessageListLiveData(messageListLiveDataFactory.messageListLoader, messageListLiveDataFactory.accountManager, messageListLiveDataFactory.messageListRepository, viewModelScope, messageListConfig);
        this.currentMessageListLiveData = messageListLiveData3;
        BaseActivity$sam$androidx_lifecycle_Observer$0 baseActivity$sam$androidx_lifecycle_Observer$0 = new BaseActivity$sam$androidx_lifecycle_Observer$0(7, new AbstractMap$$ExternalSyntheticLambda0(14, this));
        singleLiveEvent.getClass();
        MediatorLiveData$Source mediatorLiveData$Source2 = new MediatorLiveData$Source(messageListLiveData3, baseActivity$sam$androidx_lifecycle_Observer$0);
        SafeIterableMap safeIterableMap = (SafeIterableMap) singleLiveEvent.pending;
        SafeIterableMap.Entry entry = safeIterableMap.get(messageListLiveData3);
        if (entry != null) {
            obj = entry.mValue;
        } else {
            SafeIterableMap.Entry entry2 = new SafeIterableMap.Entry(messageListLiveData3, mediatorLiveData$Source2);
            safeIterableMap.mSize++;
            SafeIterableMap.Entry entry3 = safeIterableMap.mEnd;
            if (entry3 == null) {
                safeIterableMap.mStart = entry2;
                safeIterableMap.mEnd = entry2;
            } else {
                entry3.mNext = entry2;
                entry2.mPrevious = entry3;
                safeIterableMap.mEnd = entry2;
            }
        }
        MediatorLiveData$Source mediatorLiveData$Source3 = (MediatorLiveData$Source) obj;
        if (mediatorLiveData$Source3 != null && mediatorLiveData$Source3.mObserver != baseActivity$sam$androidx_lifecycle_Observer$0) {
            UriKt$$ExternalSyntheticBUOutline0.m("This source was already added with the different observer");
        } else if (mediatorLiveData$Source3 == null && singleLiveEvent.mActiveCount > 0) {
            messageListLiveData3.observeForever(mediatorLiveData$Source2);
        }
    }
}
