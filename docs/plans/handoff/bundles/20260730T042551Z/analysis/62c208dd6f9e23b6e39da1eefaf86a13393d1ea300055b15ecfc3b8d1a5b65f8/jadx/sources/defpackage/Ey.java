package defpackage;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class Ey implements Closeable {

    /* renamed from: do, reason: not valid java name */
    public static final Logger f933do = Logger.getLogger(Ey.class.getName());

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f934do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RandomAccessFile f935do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f936do;

    /* renamed from: for, reason: not valid java name */
    public int f937for;

    /* renamed from: if, reason: not valid java name */
    public Cdo f938if;

    /* renamed from: new, reason: not valid java name */
    public int f939new;

    /* renamed from: Ey$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f940do = new Cdo(0, 0);

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final int f941do;

        /* renamed from: if, reason: not valid java name */
        public final int f942if;

        public Cdo(int i, int i2) {
            this.f941do = i;
            this.f942if = i2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(Cdo.class.getSimpleName());
            sb.append("[position = ");
            sb.append(this.f941do);
            sb.append(", length = ");
            return V1.m2506this(sb, this.f942if, "]");
        }
    }

    public Ey(File file) {
        byte[] bArr = new byte[16];
        this.f936do = bArr;
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(4096L);
                randomAccessFile.seek(0L);
                byte[] bArr2 = new byte[16];
                int[] iArr = {4096, 0, 0, 0};
                int i = 0;
                int i2 = 0;
                for (int i3 = 4; i < i3; i3 = 4) {
                    int i4 = iArr[i];
                    bArr2[i2] = (byte) (i4 >> 24);
                    bArr2[i2 + 1] = (byte) (i4 >> 16);
                    bArr2[i2 + 2] = (byte) (i4 >> 8);
                    bArr2[i2 + 3] = (byte) i4;
                    i2 += 4;
                    i++;
                }
                randomAccessFile.write(bArr2);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.f935do = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(bArr);
        int m525goto = m525goto(0, bArr);
        this.f937for = m525goto;
        if (m525goto > randomAccessFile2.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f937for + ", Actual length: " + randomAccessFile2.length());
        }
        this.f939new = m525goto(4, bArr);
        int m525goto2 = m525goto(8, bArr);
        int m525goto3 = m525goto(12, bArr);
        this.f934do = m527case(m525goto2);
        this.f938if = m527case(m525goto3);
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m525goto(int i, byte[] bArr) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m526break(int i, byte[] bArr, int i2, int i3) {
        int m534public = m534public(i);
        int i4 = m534public + i3;
        int i5 = this.f937for;
        RandomAccessFile randomAccessFile = this.f935do;
        if (i4 <= i5) {
            randomAccessFile.seek(m534public);
            randomAccessFile.readFully(bArr, i2, i3);
            return;
        }
        int i6 = i5 - m534public;
        randomAccessFile.seek(m534public);
        randomAccessFile.readFully(bArr, i2, i6);
        randomAccessFile.seek(16L);
        randomAccessFile.readFully(bArr, i2 + i6, i3 - i6);
    }

    /* renamed from: case, reason: not valid java name */
    public final Cdo m527case(int i) {
        if (i == 0) {
            return Cdo.f940do;
        }
        RandomAccessFile randomAccessFile = this.f935do;
        randomAccessFile.seek(i);
        return new Cdo(i, randomAccessFile.readInt());
    }

    /* renamed from: class, reason: not valid java name */
    public final void m528class(int i, byte[] bArr, int i2) {
        int m534public = m534public(i);
        int i3 = m534public + i2;
        int i4 = this.f937for;
        RandomAccessFile randomAccessFile = this.f935do;
        if (i3 <= i4) {
            randomAccessFile.seek(m534public);
            randomAccessFile.write(bArr, 0, i2);
            return;
        }
        int i5 = i4 - m534public;
        randomAccessFile.seek(m534public);
        randomAccessFile.write(bArr, 0, i5);
        randomAccessFile.seek(16L);
        randomAccessFile.write(bArr, 0 + i5, i2 - i5);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f935do.close();
    }

    /* renamed from: const, reason: not valid java name */
    public final int m529const() {
        if (this.f939new == 0) {
            return 16;
        }
        Cdo cdo = this.f938if;
        int i = cdo.f941do;
        int i2 = this.f934do.f941do;
        return i >= i2 ? (i - i2) + 4 + cdo.f942if + 16 : (((i + 4) + cdo.f942if) + this.f937for) - i2;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m530do(byte[] bArr) {
        int m534public;
        int length = bArr.length;
        synchronized (this) {
            if ((length | 0) >= 0) {
                if (length <= bArr.length - 0) {
                    m531for(length);
                    boolean m533new = m533new();
                    if (m533new) {
                        m534public = 16;
                    } else {
                        Cdo cdo = this.f938if;
                        m534public = m534public(cdo.f941do + 4 + cdo.f942if);
                    }
                    Cdo cdo2 = new Cdo(m534public, length);
                    byte[] bArr2 = this.f936do;
                    bArr2[0] = (byte) (length >> 24);
                    bArr2[1] = (byte) (length >> 16);
                    bArr2[2] = (byte) (length >> 8);
                    bArr2[3] = (byte) length;
                    m528class(m534public, bArr2, 4);
                    m528class(m534public + 4, bArr, length);
                    m535return(this.f937for, this.f939new + 1, m533new ? m534public : this.f934do.f941do, m534public);
                    this.f938if = cdo2;
                    this.f939new++;
                    if (m533new) {
                        this.f934do = cdo2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m531for(int i) {
        int i2 = i + 4;
        int m529const = this.f937for - m529const();
        if (m529const >= i2) {
            return;
        }
        int i3 = this.f937for;
        do {
            m529const += i3;
            i3 <<= 1;
        } while (m529const < i2);
        RandomAccessFile randomAccessFile = this.f935do;
        randomAccessFile.setLength(i3);
        randomAccessFile.getChannel().force(true);
        Cdo cdo = this.f938if;
        int m534public = m534public(cdo.f941do + 4 + cdo.f942if);
        if (m534public < this.f934do.f941do) {
            FileChannel channel = randomAccessFile.getChannel();
            channel.position(this.f937for);
            long j = m534public - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i4 = this.f938if.f941do;
        int i5 = this.f934do.f941do;
        if (i4 < i5) {
            int i6 = (this.f937for + i4) - 16;
            m535return(i3, this.f939new, i5, i6);
            this.f938if = new Cdo(i6, this.f938if.f942if);
        } else {
            m535return(i3, this.f939new, i5, i4);
        }
        this.f937for = i3;
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m532if() {
        m535return(4096, 0, 0, 0);
        this.f939new = 0;
        Cdo cdo = Cdo.f940do;
        this.f934do = cdo;
        this.f938if = cdo;
        if (this.f937for > 4096) {
            RandomAccessFile randomAccessFile = this.f935do;
            randomAccessFile.setLength(4096);
            randomAccessFile.getChannel().force(true);
        }
        this.f937for = 4096;
    }

    /* renamed from: new, reason: not valid java name */
    public final synchronized boolean m533new() {
        return this.f939new == 0;
    }

    /* renamed from: public, reason: not valid java name */
    public final int m534public(int i) {
        int i2 = this.f937for;
        return i < i2 ? i : (i + 16) - i2;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m535return(int i, int i2, int i3, int i4) {
        int i5 = 0;
        int[] iArr = {i, i2, i3, i4};
        int i6 = 0;
        while (true) {
            byte[] bArr = this.f936do;
            if (i5 >= 4) {
                RandomAccessFile randomAccessFile = this.f935do;
                randomAccessFile.seek(0L);
                randomAccessFile.write(bArr);
                return;
            } else {
                int i7 = iArr[i5];
                bArr[i6] = (byte) (i7 >> 24);
                bArr[i6 + 1] = (byte) (i7 >> 16);
                bArr[i6 + 2] = (byte) (i7 >> 8);
                bArr[i6 + 3] = (byte) i7;
                i6 += 4;
                i5++;
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final synchronized void m536this() {
        if (m533new()) {
            throw new NoSuchElementException();
        }
        if (this.f939new == 1) {
            m532if();
        } else {
            Cdo cdo = this.f934do;
            int m534public = m534public(cdo.f941do + 4 + cdo.f942if);
            m526break(m534public, this.f936do, 0, 4);
            int m525goto = m525goto(0, this.f936do);
            m535return(this.f937for, this.f939new - 1, m534public, this.f938if.f941do);
            this.f939new--;
            this.f934do = new Cdo(m534public, m525goto);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Ey.class.getSimpleName());
        sb.append("[fileLength=");
        sb.append(this.f937for);
        sb.append(", size=");
        sb.append(this.f939new);
        sb.append(", first=");
        sb.append(this.f934do);
        sb.append(", last=");
        sb.append(this.f938if);
        sb.append(", element lengths=[");
        try {
            synchronized (this) {
                int i = this.f934do.f941do;
                boolean z = true;
                for (int i2 = 0; i2 < this.f939new; i2++) {
                    Cdo m527case = m527case(i);
                    new Cif(m527case);
                    int i3 = m527case.f942if;
                    if (z) {
                        z = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(i3);
                    i = m534public(m527case.f941do + 4 + m527case.f942if);
                }
            }
        } catch (IOException e) {
            f933do.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    /* renamed from: Ey$if, reason: invalid class name */
    public final class Cif extends InputStream {

        /* renamed from: for, reason: not valid java name */
        public int f944for;

        /* renamed from: new, reason: not valid java name */
        public int f945new;

        public Cif(Cdo cdo) {
            this.f944for = Ey.this.m534public(cdo.f941do + 4);
            this.f945new = cdo.f942if;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f945new;
            if (i3 <= 0) {
                return -1;
            }
            if (i2 > i3) {
                i2 = i3;
            }
            int i4 = this.f944for;
            Ey ey = Ey.this;
            ey.m526break(i4, bArr, i, i2);
            this.f944for = ey.m534public(this.f944for + i2);
            this.f945new -= i2;
            return i2;
        }

        @Override // java.io.InputStream
        public final int read() {
            if (this.f945new == 0) {
                return -1;
            }
            Ey ey = Ey.this;
            ey.f935do.seek(this.f944for);
            int read = ey.f935do.read();
            this.f944for = ey.m534public(this.f944for + 1);
            this.f945new--;
            return read;
        }
    }
}
