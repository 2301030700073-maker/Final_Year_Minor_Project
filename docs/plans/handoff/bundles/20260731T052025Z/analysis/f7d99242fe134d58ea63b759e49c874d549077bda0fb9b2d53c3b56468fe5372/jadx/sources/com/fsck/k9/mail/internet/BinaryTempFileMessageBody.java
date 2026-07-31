package com.fsck.k9.mail.internet;

import com.fsck.k9.mail.Body;
import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BinaryTempFileMessageBody extends BinaryTempFileBody implements Body {
    @Override // com.fsck.k9.mail.internet.BinaryTempFileBody, com.fsck.k9.mail.Body
    public final void setEncoding(String str) {
        if (!"7bit".equalsIgnoreCase(str) && !"8bit".equalsIgnoreCase(str)) {
            throw new MessagingException("Incompatible content-transfer-encoding for a message/rfc822 body");
        }
        this.mEncoding = str;
    }
}
