package defpackage;

import java.io.RandomAccessFile;
import java.util.zip.ZipException;

/* renamed from: qN, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3564qN {

    /* renamed from: qN$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public long f15103do;

        /* renamed from: if, reason: not valid java name */
        public long f15104if;
    }

    /* renamed from: do, reason: not valid java name */
    public static Cdo m7885do(RandomAccessFile randomAccessFile) {
        long length = randomAccessFile.length() - 22;
        if (length < 0) {
            throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
        }
        long j = length - 65536;
        long j2 = j >= 0 ? j : 0L;
        int reverseBytes = Integer.reverseBytes(101010256);
        do {
            randomAccessFile.seek(length);
            if (randomAccessFile.readInt() == reverseBytes) {
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                randomAccessFile.skipBytes(2);
                Cdo cdo = new Cdo();
                cdo.f15104if = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                cdo.f15103do = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                return cdo;
            }
            length--;
        } while (length >= j2);
        throw new ZipException("End Of Central Directory signature not found");
    }
}
