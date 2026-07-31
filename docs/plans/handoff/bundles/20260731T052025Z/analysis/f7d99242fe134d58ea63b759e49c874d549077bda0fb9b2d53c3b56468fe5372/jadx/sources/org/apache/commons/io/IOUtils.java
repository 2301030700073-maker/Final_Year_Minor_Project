package org.apache.commons.io;

import j$.util.Objects;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Entities$$ExternalSyntheticThreadLocal1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IOUtils {
    public static final /* synthetic */ int $r8$clinit = 0;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ScratchBytes implements AutoCloseable {
        public final byte[] buffer;
        public static final Entities$$ExternalSyntheticThreadLocal1 LOCAL = new Entities$$ExternalSyntheticThreadLocal1(new Entities$$ExternalSyntheticLambda0(1), 1);
        public static final ScratchBytes INSTANCE = new ScratchBytes(null);

        public ScratchBytes(byte[] bArr) {
            this.buffer = bArr;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.buffer == null) {
                Object[] objArr = (Object[]) LOCAL.get();
                Arrays.fill((byte[]) objArr[1], (byte) 0);
                objArr[0] = Boolean.FALSE;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ScratchChars implements AutoCloseable {
        public final char[] buffer;
        public static final Entities$$ExternalSyntheticThreadLocal1 LOCAL = new Entities$$ExternalSyntheticThreadLocal1(new Entities$$ExternalSyntheticLambda0(2), 2);
        public static final ScratchChars INSTANCE = new ScratchChars(null);

        public ScratchChars(char[] cArr) {
            this.buffer = cArr;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.buffer == null) {
                Object[] objArr = (Object[]) LOCAL.get();
                Arrays.fill((char[]) objArr[1], (char) 0);
                objArr[0] = Boolean.FALSE;
            }
        }
    }

    static {
        char c = File.separatorChar;
        System.lineSeparator();
        StandardLineSeparator.LF.getClass();
        StandardLineSeparator.CRLF.getClass();
    }

    public static void checkFromIndexSize(int i, int i2, int i3) {
        if ((i | i2 | i3) < 0 || i3 - i2 < i) {
            throw new IndexOutOfBoundsException(String.format("Range [%s, %<s + %s) out of bounds for length %s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public static void closeQ(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void copy(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[8192];
        Objects.requireNonNull(inputStream, "inputStream");
        Objects.requireNonNull(outputStream, "outputStream");
        while (true) {
            int read = inputStream.read(bArr);
            if (-1 == read) {
                return;
            } else {
                outputStream.write(bArr, 0, read);
            }
        }
    }
}
