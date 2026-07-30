package defpackage;

import com.facebook.internal.Utility;
import com.google.android.gms.common.api.Api;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;

/* renamed from: k6, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3193k6 {
    /* renamed from: do, reason: not valid java name */
    public static byte[] m7213do(ArrayDeque arrayDeque, int i) {
        if (arrayDeque.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) arrayDeque.remove();
        if (bArr.length == i) {
            return bArr;
        }
        int length = i - bArr.length;
        byte[] copyOf = Arrays.copyOf(bArr, i);
        while (length > 0) {
            byte[] bArr2 = (byte[]) arrayDeque.remove();
            int min = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, copyOf, i - length, min);
            length -= min;
        }
        return copyOf;
    }

    /* renamed from: if, reason: not valid java name */
    public static byte[] m7214if(Cdo cdo) {
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int min = Math.min(Utility.DEFAULT_STREAM_BUFFER_SIZE, Math.max(128, Integer.highestOneBit(0) * 2));
        int i = 0;
        while (i < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i);
            byte[] bArr = new byte[min2];
            arrayDeque.add(bArr);
            int i2 = 0;
            while (i2 < min2) {
                int read = cdo.read(bArr, i2, min2 - i2);
                if (read == -1) {
                    return m7213do(arrayDeque, i);
                }
                i2 += read;
                i += read;
            }
            long j = min * (min < 4096 ? 4 : 2);
            min = j > 2147483647L ? Api.BaseClientBuilder.API_PRIORITY_OTHER : j < -2147483648L ? Integer.MIN_VALUE : (int) j;
        }
        if (cdo.read() == -1) {
            return m7213do(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: k6$do, reason: invalid class name */
    public static final class Cdo extends FilterInputStream {

        /* renamed from: do, reason: not valid java name */
        public long f13870do;

        /* renamed from: if, reason: not valid java name */
        public long f13871if;

        public Cdo(InputStream inputStream) {
            super(inputStream);
            this.f13871if = -1L;
            this.f13870do = 1048577L;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int available() {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.f13870do);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final synchronized void mark(int i) {
            ((FilterInputStream) this).in.mark(i);
            this.f13871if = this.f13870do;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() {
            if (this.f13870do == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read();
            if (read != -1) {
                this.f13870do--;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final synchronized void reset() {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.f13871if == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.f13870do = this.f13871if;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final long skip(long j) {
            long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.f13870do));
            this.f13870do -= skip;
            return skip;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            long j = this.f13870do;
            if (j == 0) {
                return -1;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
            if (read != -1) {
                this.f13870do -= read;
            }
            return read;
        }
    }
}
