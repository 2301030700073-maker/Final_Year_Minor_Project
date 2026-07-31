package com.fsck.k9.ui.messagesource;

import androidx.lifecycle.CoroutineLiveData;
import androidx.lifecycle.ViewModel;
import com.fsck.k9.mailstore.MessageRepository;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageHeadersViewModel extends ViewModel {
    public CoroutineLiveData messageHeaderLiveData;
    public final MessageRepository messageRepository;

    public MessageHeadersViewModel(MessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }
}
