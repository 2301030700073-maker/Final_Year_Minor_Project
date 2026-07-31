package com.fsck.k9.mail.internet;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.MalformedInputException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Iso2022JpToShiftJisInputStream extends InputStream implements InputStreamRetargetInterface {
    public int charset;
    public boolean hasOut;
    public InputStream mIn;
    public int out;

    @Override // java.io.InputStream
    public final int read() {
        int ordinal;
        InputStream inputStream = this.mIn;
        if (this.hasOut) {
            this.hasOut = false;
            return this.out;
        }
        int read = inputStream.read();
        while (read == 27) {
            int read2 = inputStream.read();
            if (read2 == 40) {
                int read3 = inputStream.read();
                if (read3 == 66 || read3 == 74) {
                    this.charset = 1;
                } else {
                    if (read3 != 73) {
                        throw new MalformedInputException(0);
                    }
                    this.charset = 2;
                }
            } else {
                if (read2 != 36) {
                    throw new MalformedInputException(0);
                }
                int read4 = inputStream.read();
                if (read4 != 64 && read4 != 66) {
                    throw new MalformedInputException(0);
                }
                this.charset = 3;
            }
            read = inputStream.read();
        }
        if (read == 10 || read == 13) {
            this.charset = 1;
        }
        if (read < 33 || read >= 127 || (ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(this.charset)) == 0) {
            return read;
        }
        if (ordinal == 1) {
            return read + 128;
        }
        if (ordinal != 2) {
            throw new RuntimeException();
        }
        int read5 = inputStream.read();
        if (read5 < 33 || read5 >= 127) {
            throw new MalformedInputException(0);
        }
        int i = ((read + 1) / 2) + (read < 95 ? 112 : 176);
        this.out = read5 + (read % 2 == 0 ? 126 : read5 < 96 ? 31 : 32);
        this.hasOut = true;
        return i;
    }

    @Override // java.io.InputStream, j$.io.InputStreamRetargetInterface
    public /* synthetic */ long transferTo(OutputStream outputStream) {
        return DesugarInputStream.transferTo(this, outputStream);
    }
}
