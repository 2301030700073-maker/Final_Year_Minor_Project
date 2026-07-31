package com.fsck.k9.mail;

import com.fsck.k9.mail.internet.MimeBodyPart;
import java.util.ArrayList;
import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class Multipart implements Body {
    public Part mParent;
    public final ArrayList mParts = new ArrayList();

    public final void addBodyPart(MimeBodyPart mimeBodyPart) {
        this.mParts.add(mimeBodyPart);
        mimeBodyPart.parent = this;
    }

    public final MimeBodyPart getBodyPart(int i) {
        return (MimeBodyPart) this.mParts.get(i);
    }

    @Override // com.fsck.k9.mail.Body
    public final void setEncoding(String str) {
        if (!"7bit".equalsIgnoreCase(str) && !"8bit".equalsIgnoreCase(str)) {
            throw new MessagingException("Incompatible content-transfer-encoding for a multipart/* body");
        }
    }
}
