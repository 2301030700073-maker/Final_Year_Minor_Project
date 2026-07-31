package com.fsck.k9.mailstore;

import com.fsck.k9.mail.internet.MimeBodyPart;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalBodyPart extends MimeBodyPart implements LocalPart {
    public final String accountUuid;
    public final LocalMessage message;
    public final long messagePartId;
    public final long size;

    public LocalBodyPart(String str, LocalMessage localMessage, long j, long j2) {
        super(0);
        this.accountUuid = str;
        this.message = localMessage;
        this.messagePartId = j;
        this.size = j2;
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

    @Override // com.fsck.k9.mailstore.LocalPart
    public final long getSize() {
        return this.size;
    }
}
