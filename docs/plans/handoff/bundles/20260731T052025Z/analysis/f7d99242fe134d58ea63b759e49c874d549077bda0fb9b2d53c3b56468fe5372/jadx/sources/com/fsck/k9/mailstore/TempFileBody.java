package com.fsck.k9.mailstore;

import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.internet.SizeAware;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TempFileBody implements SizeAware, Body {
    public String mEncoding;
    public final File mFile;

    public TempFileBody(String str) {
        this.mFile = new File(str);
    }

    @Override // com.fsck.k9.mail.Body
    public final InputStream getInputStream() {
        try {
            return new FileInputStream(this.mFile);
        } catch (FileNotFoundException unused) {
            return new ByteArrayInputStream(LocalStore.EMPTY_BYTE_ARRAY);
        }
    }

    @Override // com.fsck.k9.mail.internet.SizeAware
    public final long getSize() {
        return this.mFile.length();
    }

    @Override // com.fsck.k9.mail.Body
    public final void setEncoding(String str) {
        this.mEncoding = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0030 A[Catch: all -> 0x0018, DONT_GENERATE, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0018, blocks: (B:3:0x0004, B:5:0x0011, B:10:0x0030, B:17:0x003a, B:18:0x003d, B:19:0x001a, B:21:0x0024, B:8:0x002b), top: B:2:0x0004, inners: #0 }] */
    @Override // com.fsck.k9.mail.Body
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeTo(java.io.OutputStream r4) {
        /*
            r3 = this;
            java.io.InputStream r0 = r3.getInputStream()
            java.lang.String r1 = r3.mEncoding     // Catch: java.lang.Throwable -> L18
            int r2 = org.apache.james.mime4j.util.MimeUtil.$r8$clinit     // Catch: java.lang.Throwable -> L18
            java.lang.String r2 = "base64"
            boolean r1 = r2.equalsIgnoreCase(r1)     // Catch: java.lang.Throwable -> L18
            r2 = 1
            if (r1 == 0) goto L1a
            com.fsck.k9.mail.filter.Base64OutputStream r3 = new com.fsck.k9.mail.filter.Base64OutputStream     // Catch: java.lang.Throwable -> L18
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L18
        L16:
            r4 = r3
            goto L2b
        L18:
            r3 = move-exception
            goto L3e
        L1a:
            java.lang.String r3 = r3.mEncoding     // Catch: java.lang.Throwable -> L18
            java.lang.String r1 = "quoted-printable"
            boolean r3 = r1.equalsIgnoreCase(r3)     // Catch: java.lang.Throwable -> L18
            if (r3 == 0) goto L2a
            org.apache.james.mime4j.codec.QuotedPrintableOutputStream r3 = new org.apache.james.mime4j.codec.QuotedPrintableOutputStream     // Catch: java.lang.Throwable -> L18
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L18
            goto L16
        L2a:
            r2 = 0
        L2b:
            org.apache.commons.io.IOUtils.copy(r0, r4)     // Catch: java.lang.Throwable -> L37
            if (r2 == 0) goto L33
            r4.close()     // Catch: java.lang.Throwable -> L18
        L33:
            r0.close()
            return
        L37:
            r3 = move-exception
            if (r2 == 0) goto L3d
            r4.close()     // Catch: java.lang.Throwable -> L18
        L3d:
            throw r3     // Catch: java.lang.Throwable -> L18
        L3e:
            r0.close()
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.TempFileBody.writeTo(java.io.OutputStream):void");
    }
}
