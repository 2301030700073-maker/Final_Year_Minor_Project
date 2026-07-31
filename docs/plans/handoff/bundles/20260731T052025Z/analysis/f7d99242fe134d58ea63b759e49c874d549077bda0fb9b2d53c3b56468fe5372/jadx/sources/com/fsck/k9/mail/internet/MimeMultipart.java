package com.fsck.k9.mail.internet;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.Multipart;
import j$.util.DesugarCollections;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeMultipart extends Multipart {
    public final String boundary;
    public byte[] epilogue;
    public String mimeType;
    public byte[] preamble;

    public MimeMultipart(String str, String str2) {
        if (str == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("mimeType can't be null");
            throw null;
        }
        if (str2 == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("boundary can't be null");
            throw null;
        }
        this.mimeType = str;
        this.boundary = str2;
    }

    @Override // com.fsck.k9.mail.Body
    public final InputStream getInputStream() {
        throw new UnsupportedOperationException();
    }

    public final void setSubType(String str) {
        this.mimeType = "multipart/".concat(str);
    }

    @Override // com.fsck.k9.mail.Body
    public final void writeTo(OutputStream outputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 1024);
        byte[] bArr = this.preamble;
        if (bArr != null) {
            outputStream.write(bArr);
            bufferedWriter.write("\r\n");
        }
        ArrayList arrayList = this.mParts;
        boolean isEmpty = DesugarCollections.unmodifiableList(arrayList).isEmpty();
        String str = this.boundary;
        if (isEmpty) {
            bufferedWriter.write("--");
            bufferedWriter.write(str);
            bufferedWriter.write("\r\n");
        } else {
            for (MimeBodyPart mimeBodyPart : DesugarCollections.unmodifiableList(arrayList)) {
                bufferedWriter.write("--");
                bufferedWriter.write(str);
                bufferedWriter.write("\r\n");
                bufferedWriter.flush();
                mimeBodyPart.writeTo(outputStream);
                bufferedWriter.write("\r\n");
            }
        }
        bufferedWriter.write("--");
        bufferedWriter.write(str);
        bufferedWriter.write("--\r\n");
        bufferedWriter.flush();
        byte[] bArr2 = this.epilogue;
        if (bArr2 != null) {
            outputStream.write(bArr2);
        }
    }

    public MimeMultipart(String str) {
        this("multipart/mixed", str);
    }
}
