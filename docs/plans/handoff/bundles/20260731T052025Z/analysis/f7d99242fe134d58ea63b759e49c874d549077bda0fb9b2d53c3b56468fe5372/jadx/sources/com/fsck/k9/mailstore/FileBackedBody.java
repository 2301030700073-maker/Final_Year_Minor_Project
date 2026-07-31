package com.fsck.k9.mailstore;

import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.internet.RawDataBody;
import com.fsck.k9.mail.internet.SizeAware;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import net.thunderbird.core.common.exception.MessagingException;
import org.apache.commons.io.IOUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileBackedBody implements Body, RawDataBody, SizeAware {
    public final /* synthetic */ int $r8$classId;
    public final String encoding;
    public final Serializable file;

    public /* synthetic */ FileBackedBody(int i, Serializable serializable, String str) {
        this.$r8$classId = i;
        this.file = serializable;
        this.encoding = str;
    }

    @Override // com.fsck.k9.mail.internet.RawDataBody
    public final String getEncoding() {
        switch (this.$r8$classId) {
        }
        return this.encoding;
    }

    @Override // com.fsck.k9.mail.Body
    public final InputStream getInputStream() {
        int i = this.$r8$classId;
        Object obj = this.file;
        switch (i) {
            case 0:
                try {
                    return new FileInputStream((File) obj);
                } catch (FileNotFoundException e) {
                    throw new MessagingException("File not found", false, e);
                }
            default:
                return new ByteArrayInputStream((byte[]) obj);
        }
    }

    @Override // com.fsck.k9.mail.internet.SizeAware
    public final long getSize() {
        int i = this.$r8$classId;
        Object obj = this.file;
        switch (i) {
            case 0:
                return ((File) obj).length();
            default:
                return ((byte[]) obj).length;
        }
    }

    @Override // com.fsck.k9.mail.Body
    public final void setEncoding(String str) {
        switch (this.$r8$classId) {
            case 0:
                throw new RuntimeException("not supported");
            default:
                throw new RuntimeException("nope");
        }
    }

    @Override // com.fsck.k9.mail.Body
    public final void writeTo(OutputStream outputStream) {
        switch (this.$r8$classId) {
            case 0:
                InputStream inputStream = getInputStream();
                try {
                    IOUtils.copy(inputStream, outputStream);
                    return;
                } finally {
                    inputStream.close();
                }
            default:
                outputStream.write((byte[]) this.file);
                return;
        }
    }
}
