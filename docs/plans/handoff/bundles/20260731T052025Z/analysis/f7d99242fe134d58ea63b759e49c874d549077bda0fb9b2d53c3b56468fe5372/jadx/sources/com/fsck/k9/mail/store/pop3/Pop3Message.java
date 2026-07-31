package com.fsck.k9.mail.store.pop3;

import com.fsck.k9.mail.internet.MimeMessage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pop3Message extends MimeMessage {
    public Pop3Message(String str) {
        super(false);
        this.mUid = str;
        this.mSize = -1;
    }
}
