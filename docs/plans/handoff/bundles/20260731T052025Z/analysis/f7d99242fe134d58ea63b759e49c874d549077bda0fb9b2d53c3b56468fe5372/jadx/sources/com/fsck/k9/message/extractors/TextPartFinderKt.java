package com.fsck.k9.message.extractors;

import coil3.network.internal.UtilsKt;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.MimeType;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextPartFinderKt {
    public static final MimeType MULTIPART_ALTERNATIVE;
    public static final MimeType TEXT_HTML;
    public static final MimeType TEXT_PLAIN;

    static {
        Regex regex = MimeType.MIME_TYPE;
        TEXT_PLAIN = K9MailLib.parse(UtilsKt.MIME_TYPE_TEXT_PLAIN);
        TEXT_HTML = K9MailLib.parse("text/html");
        MULTIPART_ALTERNATIVE = K9MailLib.parse("multipart/alternative");
    }
}
