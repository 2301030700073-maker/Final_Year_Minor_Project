package com.fsck.k9.message.extractors;

import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeValue;
import java.util.Locale;
import java.util.Map;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BasicPartInfoExtractor {
    public static String getDisplayName(Part part, MimeValue mimeValue) {
        if (mimeValue != null) {
            Map map = mimeValue.parameters;
            String lowerCase = "filename".toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            String str = (String) map.get(lowerCase);
            if (str != null) {
                return str;
            }
        }
        Map map2 = JisSupport.decode(part.getContentType()).parameters;
        String lowerCase2 = "name".toLowerCase(Locale.ROOT);
        lowerCase2.getClass();
        String str2 = (String) map2.get(lowerCase2);
        if (str2 != null) {
            return str2;
        }
        String mimeType = part.getMimeType();
        String extensionByMimeType = mimeType != null ? FileHelper.getExtensionByMimeType(mimeType) : null;
        return (extensionByMimeType == null || extensionByMimeType.length() == 0) ? "noname" : "noname.".concat(extensionByMimeType);
    }
}
