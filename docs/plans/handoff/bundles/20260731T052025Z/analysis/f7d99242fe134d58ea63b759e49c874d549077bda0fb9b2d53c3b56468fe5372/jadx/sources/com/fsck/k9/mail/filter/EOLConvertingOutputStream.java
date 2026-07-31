package com.fsck.k9.mail.filter;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EOLConvertingOutputStream extends FilterOutputStream {
    public boolean ignoreLf;
    public int lastByte;

    public EOLConvertingOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.ignoreLf = false;
    }

    public final void endWithCrLfAndFlush() {
        if (this.lastByte == 13) {
            writeByte(10);
            this.ignoreLf = true;
        }
        if (this.lastByte != 10) {
            writeByte(13);
            writeByte(10);
        }
        super.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public final void flush() {
        if (this.lastByte == 13) {
            writeByte(10);
            this.ignoreLf = true;
        }
        super.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) {
        if (i == 10 && this.ignoreLf) {
            this.ignoreLf = false;
            return;
        }
        if (i == 10 && this.lastByte != 13) {
            writeByte(13);
        } else if (i != 10 && this.lastByte == 13) {
            writeByte(10);
        }
        writeByte(i);
        this.ignoreLf = false;
    }

    public final void writeByte(int i) {
        super.write(i);
        this.lastByte = i;
    }
}
