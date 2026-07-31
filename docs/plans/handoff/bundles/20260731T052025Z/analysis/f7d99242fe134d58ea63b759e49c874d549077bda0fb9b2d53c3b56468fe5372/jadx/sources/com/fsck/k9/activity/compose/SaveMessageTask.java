package com.fsck.k9.activity.compose;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mail.internet.MimeMessage;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveMessageTask extends AsyncTask {
    public final LegacyAccountDto account;
    public final Long existingDraftId;
    public final Handler handler;
    public final MimeMessage message;
    public final MessagingController messagingController;
    public final String plaintextSubject;

    public SaveMessageTask(MessagingController messagingController, LegacyAccountDto legacyAccountDto, MessageCompose.AnonymousClass14 anonymousClass14, MimeMessage mimeMessage, Long l, String str) {
        this.messagingController = messagingController;
        this.account = legacyAccountDto;
        this.handler = anonymousClass14;
        this.message = mimeMessage;
        this.existingDraftId = l;
        this.plaintextSubject = str;
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        Long saveDraft = this.messagingController.saveDraft(this.account, this.message, this.existingDraftId, this.plaintextSubject);
        Handler handler = this.handler;
        handler.sendMessage(Message.obtain(handler, 4, saveDraft));
        return null;
    }
}
