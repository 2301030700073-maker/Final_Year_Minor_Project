package com.fsck.k9.mailstore;

import com.fsck.k9.mail.internet.MimeMessage;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalMimeMessage extends MimeMessage implements LocalPart {
    public final String accountUuid;
    public final LocalMessage message;
    public final long messagePartId;

    public LocalMimeMessage(String str, LocalMessage localMessage, long j) {
        super(false);
        this.accountUuid = str;
        this.message = localMessage;
        this.messagePartId = j;
    }

    @Override // com.fsck.k9.mailstore.LocalPart
    public final String getAccountUuid() {
        return this.accountUuid;
    }

    @Override // com.fsck.k9.mailstore.LocalPart
    public final LocalMessage getMessage() {
        return this.message;
    }

    @Override // com.fsck.k9.mailstore.LocalPart
    public final long getPartId() {
        return this.messagePartId;
    }
}
