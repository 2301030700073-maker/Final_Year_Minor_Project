package com.fsck.k9.message.extractors;

import com.fsck.k9.message.html.EmailSection;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PreviewTextExtractor {
    public static final Regex REGEX_CRLF = new Regex("(\\r\\n|\\r)");

    /* JADX WARN: Removed duplicated region for block: B:14:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String extractPreview(com.fsck.k9.mail.Part r11) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.message.extractors.PreviewTextExtractor.extractPreview(com.fsck.k9.mail.Part):java.lang.String");
    }

    public static int getQuoteHeaderIndex(EmailSection emailSection) {
        int length = emailSection.length() - 1;
        if (length != -1) {
            while (length > 0 && emailSection.charAt(length) == '\n') {
                length--;
            }
            if (emailSection.charAt(length) == ':') {
                int i = 0;
                while (length > 0) {
                    if (emailSection.charAt(length) == '\n') {
                        i++;
                    } else {
                        if (i > 1) {
                            return length + 1;
                        }
                        i = 0;
                    }
                    length--;
                }
                return 0;
            }
        }
        return -1;
    }
}
