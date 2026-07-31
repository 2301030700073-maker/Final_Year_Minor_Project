package com.fsck.k9.mail.internet;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.filter.Base64OutputStream;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import org.apache.commons.io.IOUtils;
import org.apache.james.mime4j.codec.QuotedPrintableOutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class BinaryTempFileBody implements RawDataBody, SizeAware {
    public static File mTempDirectory;
    public String mEncoding;
    public File mFile;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class BinaryTempFileBodyInputStream extends FilterInputStream implements InputStreamRetargetInterface {
        public BinaryTempFileBodyInputStream(FileInputStream fileInputStream) {
            super(fileInputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            BinaryTempFileBody binaryTempFileBody = BinaryTempFileBody.this;
            try {
                super.close();
                Log.d("Deleting temporary binary file: %s", binaryTempFileBody.mFile.getName());
                if (binaryTempFileBody.mFile.delete()) {
                    return;
                }
                Log.i("Failed to delete temporary binary file: %s", binaryTempFileBody.mFile.getName());
            } catch (Throwable th) {
                Log.d("Deleting temporary binary file: %s", binaryTempFileBody.mFile.getName());
                if (!binaryTempFileBody.mFile.delete()) {
                    Log.i("Failed to delete temporary binary file: %s", binaryTempFileBody.mFile.getName());
                }
                throw th;
            }
        }

        public final void closeWithoutDeleting() {
            super.close();
        }

        @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
        public /* synthetic */ long transferTo(OutputStream outputStream) {
            return DesugarInputStream.transferTo(this, outputStream);
        }
    }

    public BinaryTempFileBody(String str) {
        this.mEncoding = null;
        if (mTempDirectory != null) {
            this.mEncoding = str;
        } else {
            DBUtil$$ExternalSyntheticBUOutline0.m("setTempDirectory has not been called on BinaryTempFileBody!");
            throw null;
        }
    }

    @Override // com.fsck.k9.mail.internet.RawDataBody
    public final String getEncoding() {
        return this.mEncoding;
    }

    @Override // com.fsck.k9.mail.Body
    public final InputStream getInputStream() {
        try {
            return new BinaryTempFileBodyInputStream(new FileInputStream(this.mFile));
        } catch (IOException e) {
            throw new MessagingException("Unable to open body", false, e);
        }
    }

    @Override // com.fsck.k9.mail.internet.SizeAware
    public final long getSize() {
        return this.mFile.length();
    }

    @Override // com.fsck.k9.mail.Body
    public void setEncoding(String str) {
        OutputStream base64OutputStream;
        String str2 = this.mEncoding;
        if (str2 == null || !str2.equalsIgnoreCase(str)) {
            if (!"8bit".equalsIgnoreCase(this.mEncoding)) {
                DBUtil$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Can't convert from encoding: ", this.mEncoding));
                return;
            }
            try {
                File createTempFile = File.createTempFile("body", null, mTempDirectory);
                FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
                try {
                    if ("quoted-printable".equals(str)) {
                        base64OutputStream = new QuotedPrintableOutputStream(fileOutputStream);
                    } else {
                        if (!"base64".equals(str)) {
                            throw new RuntimeException("Target encoding not supported: ".concat(str));
                        }
                        base64OutputStream = new Base64OutputStream(fileOutputStream);
                    }
                    InputStream inputStream = getInputStream();
                    try {
                        IOUtils.copy(inputStream, base64OutputStream);
                        IOUtils.closeQ(fileOutputStream);
                        this.mFile = createTempFile;
                        this.mEncoding = str;
                    } finally {
                        IOUtils.closeQ(inputStream);
                        IOUtils.closeQ(base64OutputStream);
                    }
                } catch (Throwable th) {
                    IOUtils.closeQ(fileOutputStream);
                    throw th;
                }
            } catch (IOException e) {
                throw new MessagingException("Unable to convert body", false, e);
            }
        }
    }

    @Override // com.fsck.k9.mail.Body
    public final void writeTo(OutputStream outputStream) {
        InputStream inputStream = getInputStream();
        try {
            IOUtils.copy(inputStream, outputStream);
        } finally {
            IOUtils.closeQ(inputStream);
        }
    }
}
