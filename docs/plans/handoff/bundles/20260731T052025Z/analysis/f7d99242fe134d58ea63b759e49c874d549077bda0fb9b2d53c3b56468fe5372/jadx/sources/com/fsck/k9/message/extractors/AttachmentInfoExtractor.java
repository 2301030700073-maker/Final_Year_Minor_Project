package com.fsck.k9.message.extractors;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.DeferredFileBody;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalPart;
import com.fsck.k9.provider.AttachmentProvider;
import com.fsck.k9.provider.DecryptedFileProvider;
import java.io.File;
import java.io.IOException;
import java.util.Locale;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentInfoExtractor {
    public final Context context;

    public AttachmentInfoExtractor(Context context) {
        this.context = context;
    }

    public final AttachmentViewInfo extractAttachmentInfo(Part part) {
        long size;
        Uri uri;
        boolean z;
        boolean z2 = true;
        if (part instanceof LocalPart) {
            LocalPart localPart = (LocalPart) part;
            String accountUuid = localPart.getAccountUuid();
            long partId = localPart.getPartId();
            size = localPart.getSize();
            z = part.getBody() != null;
            uri = AttachmentProvider.CONTENT_URI.buildUpon().appendPath(accountUuid).appendPath(Long.toString(partId)).build();
        } else {
            if (!(part instanceof LocalMessage)) {
                Body body = part.getBody();
                Uri uri2 = null;
                if (!(body instanceof DeferredFileBody)) {
                    UriKt$$ExternalSyntheticBUOutline0.m("Unsupported part type provided");
                    return null;
                }
                DeferredFileBody deferredFileBody = (DeferredFileBody) body;
                size = deferredFileBody.getSize();
                String mimeType = part.getMimeType();
                try {
                    File file = deferredFileBody.getFile();
                    Context context = this.context;
                    String str = deferredFileBody.encoding;
                    try {
                        Uri.Builder buildUpon = FileProvider.getUriForFile(context, DecryptedFileProvider.AUTHORITY, file).buildUpon();
                        if (mimeType != null) {
                            buildUpon.appendQueryParameter("mime_type", mimeType);
                        }
                        if (str != null) {
                            buildUpon.appendQueryParameter("encoding", str);
                        }
                        uri2 = buildUpon.build();
                    } catch (IllegalArgumentException unused) {
                    }
                } catch (IOException e) {
                    Log.e(e, "Decrypted temp file (no longer?) exists!", new Object[0]);
                }
                uri = uri2;
                return extractAttachmentInfo(part, uri, size, z2);
            }
            LocalMessage localMessage = (LocalMessage) part;
            String str2 = localMessage.localStore.account.uuid;
            long j = localMessage.messagePartId;
            size = localMessage.mSize;
            z = ((MimeMessage) part).mBody != null;
            uri = AttachmentProvider.CONTENT_URI.buildUpon().appendPath(str2).appendPath(Long.toString(j)).build();
        }
        z2 = z;
        return extractAttachmentInfo(part, uri, size, z2);
    }

    public static AttachmentViewInfo extractAttachmentInfo(Part part, Uri uri, long j, boolean z) {
        String mimeType = part.getMimeType();
        String contentType = part.getContentType();
        String disposition = part.getDisposition();
        String headerParameter = JisSupport.getHeaderParameter(disposition, "filename");
        if (headerParameter == null) {
            headerParameter = JisSupport.getHeaderParameter(contentType, "name");
        }
        if (headerParameter == null) {
            String extensionByMimeType = mimeType != null ? FileHelper.getExtensionByMimeType(mimeType) : null;
            headerParameter = "noname".concat(extensionByMimeType != null ? ".".concat(extensionByMimeType) : "");
        }
        boolean z2 = disposition != null && JisSupport.getHeaderParameter(disposition, null).matches("^(?i:inline)") && part.getHeader("Content-ID").length > 0 && mimeType != null && mimeType.toLowerCase(Locale.ROOT).startsWith("image/");
        if (j == -1) {
            String headerParameter2 = JisSupport.getHeaderParameter(disposition, "size");
            if (headerParameter2 != null) {
                try {
                    j = Integer.parseInt(headerParameter2);
                } catch (NumberFormatException unused) {
                }
            }
            j = -1;
        }
        return new AttachmentViewInfo(mimeType, headerParameter, j, uri, z2, part, z);
    }
}
