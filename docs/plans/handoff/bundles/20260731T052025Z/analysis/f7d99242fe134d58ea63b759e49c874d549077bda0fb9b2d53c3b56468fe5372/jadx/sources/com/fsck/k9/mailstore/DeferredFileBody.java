package com.fsck.k9.mailstore;

import androidx.navigation.internal.NavContext;
import com.fsck.k9.mail.internet.RawDataBody;
import com.fsck.k9.mail.internet.SizeAware;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.output.ThresholdingOutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DeferredFileBody implements RawDataBody, SizeAware {
    public byte[] data;
    public final String encoding;
    public File file;
    public final NavContext fileFactory;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.DeferredFileBody$1, reason: invalid class name */
    public final class AnonymousClass1 extends ThresholdingOutputStream {
        public OutputStream currentOutputStream = new ByteArrayOutputStream(2048);
        public final NavContext fileFactory;
        public File outputFile;

        public AnonymousClass1(NavContext navContext) {
            this.fileFactory = navContext;
        }

        @Override // org.apache.commons.io.output.ThresholdingOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            super.close();
            long j = this.written;
            long j2 = this.threshold;
            OutputStream outputStream = this.currentOutputStream;
            DeferredFileBody deferredFileBody = DeferredFileBody.this;
            if (j > j2) {
                if (outputStream instanceof ByteArrayOutputStream) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("getFile must only be called in file-backed state!");
                    return;
                } else {
                    deferredFileBody.file = this.outputFile;
                    return;
                }
            }
            if (outputStream instanceof ByteArrayOutputStream) {
                deferredFileBody.data = ((ByteArrayOutputStream) outputStream).toByteArray();
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("getData must only be called in memory-backed state!");
            }
        }
    }

    public DeferredFileBody(NavContext navContext, String str) {
        this.fileFactory = navContext;
        this.encoding = str;
    }

    @Override // com.fsck.k9.mail.internet.RawDataBody
    public final String getEncoding() {
        return this.encoding;
    }

    public final File getFile() {
        File file = this.file;
        if (file == null) {
            if (file != null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Body is already file-backed!");
                return null;
            }
            if (this.data == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Data must be fully written before it can be read!");
                return null;
            }
            Log.d("Writing body to file for attachment access", new Object[0]);
            this.file = this.fileFactory.createFile();
            FileOutputStream fileOutputStream = new FileOutputStream(this.file);
            fileOutputStream.write(this.data);
            fileOutputStream.close();
            this.data = null;
        }
        return this.file;
    }

    @Override // com.fsck.k9.mail.Body
    public final InputStream getInputStream() {
        try {
            if (this.file != null) {
                Log.d("Decrypted data is file-backed.", new Object[0]);
                return new BufferedInputStream(new FileInputStream(this.file));
            }
            if (this.data == null) {
                throw new IllegalStateException("Data must be fully written before it can be read!");
            }
            Log.d("Decrypted data is memory-backed.", new Object[0]);
            return new ByteArrayInputStream(this.data);
        } catch (IOException e) {
            throw new MessagingException("Unable to open body", false, e);
        }
    }

    @Override // com.fsck.k9.mail.internet.SizeAware
    public final long getSize() {
        File file = this.file;
        if (file != null) {
            return file.length();
        }
        if (this.data != null) {
            return r2.length;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Data must be fully written before it can be read!");
        return 0L;
    }

    @Override // com.fsck.k9.mail.Body
    public final void setEncoding(String str) {
        throw new UnsupportedOperationException("Cannot re-encode a DecryptedTempFileBody!");
    }

    @Override // com.fsck.k9.mail.Body
    public final void writeTo(OutputStream outputStream) {
        IOUtils.copy(getInputStream(), outputStream);
    }
}
