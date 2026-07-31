package com.fsck.k9.mail;

import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Body {
    InputStream getInputStream();

    void setEncoding(String str);

    void writeTo(OutputStream outputStream);
}
