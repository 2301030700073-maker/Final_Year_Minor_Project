package com.fsck.k9.message.extractors;

import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.MimeType;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.MimeBodyPart;
import j$.util.DesugarCollections;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextPartFinder {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.fsck.k9.mail.Part, com.fsck.k9.mail.internet.MimeBodyPart] */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.fsck.k9.mail.Part] */
    /* JADX WARN: Type inference failed for: r0v12 */
    public static Part findFirstTextPart(Part part) {
        part.getClass();
        Regex regex = MimeType.MIME_TYPE;
        MimeType parseOrNull = K9MailLib.parseOrNull(part.getMimeType());
        Body body = part.getBody();
        Part part2 = null;
        if (body instanceof Multipart) {
            if (Intrinsics.areEqual(parseOrNull, TextPartFinderKt.MULTIPART_ALTERNATIVE)) {
                for (?? r0 : DesugarCollections.unmodifiableList(((Multipart) body).mParts)) {
                    Regex regex2 = MimeType.MIME_TYPE;
                    MimeType parseOrNull2 = K9MailLib.parseOrNull(r0.getMimeType());
                    if (r0.mBody instanceof Multipart) {
                        r0 = findFirstTextPart(r0);
                        if (r0 != 0) {
                            if (Intrinsics.areEqual(parseOrNull2, TextPartFinderKt.TEXT_PLAIN)) {
                                return r0;
                            }
                            part2 = r0;
                        } else {
                            continue;
                        }
                    } else {
                        if (Intrinsics.areEqual(parseOrNull2, TextPartFinderKt.TEXT_PLAIN)) {
                            return r0;
                        }
                        if (Intrinsics.areEqual(parseOrNull2, TextPartFinderKt.TEXT_HTML) && part2 == null) {
                            part2 = r0;
                        }
                    }
                }
                return part2;
            }
            for (MimeBodyPart mimeBodyPart : DesugarCollections.unmodifiableList(((Multipart) body).mParts)) {
                Regex regex3 = MimeType.MIME_TYPE;
                MimeType parseOrNull3 = K9MailLib.parseOrNull(mimeBodyPart.getMimeType());
                if (mimeBodyPart.mBody instanceof Multipart) {
                    Part findFirstTextPart = findFirstTextPart(mimeBodyPart);
                    if (findFirstTextPart != null) {
                        return findFirstTextPart;
                    }
                } else if (Intrinsics.areEqual(parseOrNull3, TextPartFinderKt.TEXT_PLAIN) || Intrinsics.areEqual(parseOrNull3, TextPartFinderKt.TEXT_HTML)) {
                    return mimeBodyPart;
                }
            }
        } else if (Intrinsics.areEqual(parseOrNull, TextPartFinderKt.TEXT_PLAIN) || Intrinsics.areEqual(parseOrNull, TextPartFinderKt.TEXT_HTML)) {
            return part;
        }
        return null;
    }
}
