package com.fsck.k9.mail.store.pop3;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Pop3ResponseInputStream extends InputStream implements InputStreamRetargetInterface {
    public boolean mFinished;
    public BufferedInputStream mIn;
    public boolean mStartOfLine;

    @Override // java.io.InputStream
    public final int read() {
        BufferedInputStream bufferedInputStream = this.mIn;
        if (this.mFinished) {
            return -1;
        }
        int read = bufferedInputStream.read();
        if (!this.mStartOfLine || read != 46 || (read = bufferedInputStream.read()) != 13) {
            this.mStartOfLine = read == 10;
            return read;
        }
        this.mFinished = true;
        bufferedInputStream.read();
        return -1;
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }
}
