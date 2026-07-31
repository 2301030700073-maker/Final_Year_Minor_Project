package com.fsck.k9.mailstore;

import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.message.extractors.AttachmentInfoExtractor;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import kotlin.io.CloseableKt;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentResolver {
    public Map contentIdToAttachmentUriMap;

    public static AttachmentResolver createFromPart(Part part) {
        AttachmentInfoExtractor attachmentInfoExtractor = (AttachmentInfoExtractor) CloseableKt.get$default(AttachmentInfoExtractor.class);
        HashMap hashMap = new HashMap();
        Stack stack = new Stack();
        stack.push(part);
        while (!stack.isEmpty()) {
            Part part2 = (Part) stack.pop();
            Body body = part2.getBody();
            if (body instanceof Multipart) {
                Iterator it = DesugarCollections.unmodifiableList(((Multipart) body).mParts).iterator();
                while (it.hasNext()) {
                    stack.push((Part) it.next());
                }
            } else {
                try {
                    String contentId = part2.getContentId();
                    if (contentId != null) {
                        hashMap.put(contentId, attachmentInfoExtractor.extractAttachmentInfo(part2).internalUri);
                    }
                } catch (MessagingException e) {
                    Log.e(e, "Error extracting attachment info", new Object[0]);
                }
            }
        }
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(hashMap);
        AttachmentResolver attachmentResolver = new AttachmentResolver();
        attachmentResolver.contentIdToAttachmentUriMap = unmodifiableMap;
        return attachmentResolver;
    }
}
