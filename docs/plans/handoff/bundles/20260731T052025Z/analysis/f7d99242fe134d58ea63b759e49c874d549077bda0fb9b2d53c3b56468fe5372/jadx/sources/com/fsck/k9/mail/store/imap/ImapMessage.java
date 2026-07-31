package com.fsck.k9.mail.store.imap;

import com.fsck.k9.mail.internet.MimeMessage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapMessage extends MimeMessage {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImapMessage(String str) {
        super(false);
        str.getClass();
        this.mUid = str;
    }
}
