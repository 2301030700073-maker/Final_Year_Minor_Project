package com.fsck.k9.mail.internet;

import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.filter.CountingOutputStream;
import com.fsck.k9.mail.filter.SignSafeOutputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.Charsets;
import org.apache.james.mime4j.codec.QuotedPrintableOutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextBody implements Body, SizeAware {
    public Integer composedMessageLength;
    public Integer composedMessageOffset;
    public String encoding;
    public final String text;

    public TextBody(String str) {
        this.text = str;
    }

    public static void writeSignSafeQuotedPrintable(OutputStream outputStream, byte[] bArr) {
        SignSafeOutputStream signSafeOutputStream = new SignSafeOutputStream(outputStream);
        try {
            QuotedPrintableOutputStream quotedPrintableOutputStream = new QuotedPrintableOutputStream(signSafeOutputStream);
            try {
                quotedPrintableOutputStream.write(bArr);
                quotedPrintableOutputStream.close();
                signSafeOutputStream.close();
            } finally {
            }
        } catch (Throwable th) {
            try {
                signSafeOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // com.fsck.k9.mail.Body
    public final InputStream getInputStream() {
        return new ByteArrayInputStream(this.text.getBytes(Charsets.UTF_8));
    }

    @Override // com.fsck.k9.mail.internet.SizeAware
    public final long getSize() {
        try {
            byte[] bytes = this.text.getBytes(Charsets.UTF_8);
            if (!"quoted-printable".equalsIgnoreCase(this.encoding)) {
                if ("8bit".equalsIgnoreCase(this.encoding)) {
                    return bytes.length;
                }
                throw new IllegalStateException("Cannot get size for encoding!");
            }
            CountingOutputStream countingOutputStream = new CountingOutputStream();
            try {
                writeSignSafeQuotedPrintable(countingOutputStream, bytes);
                long j = countingOutputStream.mCount;
                countingOutputStream.close();
                return j;
            } finally {
            }
        } catch (IOException e) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Couldn't get body size", (Throwable) e);
            return 0L;
        }
    }

    @Override // com.fsck.k9.mail.Body
    public final void setEncoding(String str) {
        if ("quoted-printable".equalsIgnoreCase(str) || "8bit".equalsIgnoreCase(str)) {
            this.encoding = str;
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot encode to ".concat(str));
        }
    }

    @Override // com.fsck.k9.mail.Body
    public final void writeTo(OutputStream outputStream) {
        byte[] bytes = this.text.getBytes(Charsets.UTF_8);
        if ("quoted-printable".equalsIgnoreCase(this.encoding)) {
            writeSignSafeQuotedPrintable(outputStream, bytes);
        } else if ("8bit".equalsIgnoreCase(this.encoding)) {
            outputStream.write(bytes);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Cannot get size for encoding!");
        }
    }
}
