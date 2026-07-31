package com.fsck.k9.mail.transport.smtp;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import net.thunderbird.core.common.exception.MessagingException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NegativeSmtpReplyException extends MessagingException {
    public final int replyCode;
    public final String replyText;

    public NegativeSmtpReplyException(String str, int i) {
        super(str.length() == 0 ? CameraDevices$CC.m("Negative SMTP reply: ", i) : str, 500 <= i && i < 600, null);
        this.replyCode = i;
        this.replyText = str;
    }
}
