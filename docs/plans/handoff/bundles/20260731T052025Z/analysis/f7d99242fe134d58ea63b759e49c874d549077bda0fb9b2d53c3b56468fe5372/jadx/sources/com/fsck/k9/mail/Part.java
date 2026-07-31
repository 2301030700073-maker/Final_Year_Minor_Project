package com.fsck.k9.mail;

import java.io.ByteArrayOutputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Part {
    void addRawHeader(String str, String str2);

    Body getBody();

    String getContentId();

    String getContentType();

    String getDisposition();

    String[] getHeader(String str);

    String getMimeType();

    String getServerExtra();

    boolean isMimeType(String str);

    void setBody(Body body);

    void setHeader(String str, String str2);

    void setServerExtra(String str);

    void writeHeaderTo(ByteArrayOutputStream byteArrayOutputStream);

    void writeTo(OutputStream outputStream);
}
