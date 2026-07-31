package com.fsck.k9.mailstore;

import android.net.Uri;
import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.mail.Part;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentViewInfo {
    public final String displayName;
    public final String filename;
    public final boolean inlineAttachment;
    public final Uri internalUri;
    public boolean isContentAvailable;
    public final String mimeType;
    public final Part part;
    public final long size;
    public final String uri;

    public AttachmentViewInfo(String str, String str2, long j, Uri uri, boolean z, Part part, boolean z2) {
        uri.getClass();
        this.mimeType = str;
        this.displayName = str2;
        this.size = j;
        this.internalUri = uri;
        this.inlineAttachment = z;
        this.part = part;
        this.isContentAvailable = z2;
        String uri2 = uri.toString();
        uri2.getClass();
        this.uri = uri2;
        this.filename = str2;
    }

    public final boolean isSupportedImage() {
        String str = this.mimeType;
        if (str == null) {
            return false;
        }
        if (FileHelper.isSupportedImageType(str)) {
            return true;
        }
        return FileHelper.isSameMimeType("application/octet-stream", str) && FileHelper.isSupportedImageType(FileHelper.getMimeTypeByExtension(this.displayName));
    }
}
