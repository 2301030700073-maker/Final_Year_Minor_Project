package c.b.a.b.b.n;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class l implements AutoCloseable {

    /* renamed from: a, reason: collision with root package name */
    public RandomAccessFile f2765a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f2766b;

    /* renamed from: c, reason: collision with root package name */
    public int f2767c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2768d = 0;
    public int e = 0;
    public int f = 0;
    public int g = 0;

    public l(File file) {
        this.f2765a = null;
        this.f2766b = null;
        int i = 0;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        this.f2765a = randomAccessFile;
        try {
            byte[] bArr = new byte[2048];
            randomAccessFile.readFully(bArr);
            this.f2766b = new int[512];
            int i2 = 0;
            while (i < 256) {
                int i3 = i2 + 1;
                int i4 = i3 + 1;
                int i5 = (bArr[i2] & 255) | ((bArr[i3] & 255) << 8);
                int i6 = i4 + 1;
                int i7 = i5 | ((bArr[i4] & 255) << 16);
                int i8 = i6 + 1;
                int i9 = i7 | ((bArr[i6] & 255) << 24);
                int i10 = i8 + 1;
                int i11 = i10 + 1;
                int i12 = ((bArr[i10] & 255) << 8) | (bArr[i8] & 255);
                int i13 = i11 + 1;
                int i14 = i12 | ((bArr[i11] & 255) << 16);
                int i15 = i13 + 1;
                int i16 = i14 | ((bArr[i13] & 255) << 24);
                int i17 = i << 1;
                this.f2766b[i17] = i9;
                this.f2766b[i17 + 1] = i16;
                i++;
                i2 = i15;
            }
        } catch (IOException unused) {
            this.f2766b = null;
        }
    }

    public final synchronized byte[] a(byte[] bArr) {
        boolean z;
        if (this.f2766b == null) {
            return null;
        }
        if (this.f2767c == 0) {
            long j = 5381;
            for (byte b2 : bArr) {
                j = ((j + ((j << 5) & 4294967295L)) & 4294967295L) ^ ((b2 + 256) & 255);
            }
            int i = (int) (j & 4294967295L);
            int i2 = (i & 255) << 1;
            int i3 = this.f2766b[i2 + 1];
            this.e = i3;
            if (i3 == 0) {
                return null;
            }
            int i4 = this.f2766b[i2];
            this.f = i4;
            this.f2768d = i;
            this.g = i4 + (((i >>> 8) % i3) << 3);
        }
        while (this.f2767c < this.e) {
            try {
                this.f2765a.seek(this.g);
                int readUnsignedByte = this.f2765a.readUnsignedByte() | (this.f2765a.readUnsignedByte() << 8) | (this.f2765a.readUnsignedByte() << 16) | (this.f2765a.readUnsignedByte() << 24);
                int readUnsignedByte2 = this.f2765a.readUnsignedByte() | (this.f2765a.readUnsignedByte() << 8) | (this.f2765a.readUnsignedByte() << 16) | (this.f2765a.readUnsignedByte() << 24);
                if (readUnsignedByte2 == 0) {
                    return null;
                }
                this.f2767c++;
                int i5 = this.g + 8;
                this.g = i5;
                if (i5 == this.f + (this.e << 3)) {
                    this.g = this.f;
                }
                if (readUnsignedByte == this.f2768d) {
                    this.f2765a.seek(readUnsignedByte2);
                    int readUnsignedByte3 = this.f2765a.readUnsignedByte() | (this.f2765a.readUnsignedByte() << 8) | (this.f2765a.readUnsignedByte() << 16) | (this.f2765a.readUnsignedByte() << 24);
                    if (readUnsignedByte3 == bArr.length) {
                        int readUnsignedByte4 = this.f2765a.readUnsignedByte() | (this.f2765a.readUnsignedByte() << 8) | (this.f2765a.readUnsignedByte() << 16) | (this.f2765a.readUnsignedByte() << 24);
                        byte[] bArr2 = new byte[readUnsignedByte3];
                        this.f2765a.readFully(bArr2);
                        int i6 = 0;
                        while (true) {
                            if (i6 >= readUnsignedByte3) {
                                z = true;
                                break;
                            }
                            if (bArr2[i6] != bArr[i6]) {
                                z = false;
                                break;
                            }
                            i6++;
                        }
                        if (z) {
                            byte[] bArr3 = new byte[readUnsignedByte4];
                            this.f2765a.readFully(bArr3);
                            return bArr3;
                        }
                    }
                }
            } catch (IOException unused) {
                return null;
            }
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        try {
            this.f2765a.close();
            this.f2765a = null;
        } catch (IOException unused) {
        }
    }
}
