package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import defpackage.C3564qN;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;

/* renamed from: Jt, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0310Jt implements Closeable {

    /* renamed from: do, reason: not valid java name */
    public final long f1721do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final File f1722do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RandomAccessFile f1723do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FileChannel f1724do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FileLock f1725do;

    /* renamed from: if, reason: not valid java name */
    public final File f1726if;

    /* renamed from: Jt$do, reason: invalid class name */
    public static class Cdo extends File {

        /* renamed from: do, reason: not valid java name */
        public long f1727do;

        public Cdo(File file, String str) {
            super(file, str);
            this.f1727do = -1L;
        }
    }

    public C0310Jt(File file, File file2) {
        file.getPath();
        file2.getPath();
        this.f1722do = file;
        this.f1726if = file2;
        this.f1721do = m1081if(file);
        File file3 = new File(file2, "MultiDex.lock");
        RandomAccessFile randomAccessFile = new RandomAccessFile(file3, "rw");
        this.f1723do = randomAccessFile;
        try {
            try {
                FileChannel channel = randomAccessFile.getChannel();
                this.f1724do = channel;
                try {
                    file3.getPath();
                    this.f1725do = channel.lock();
                    file3.getPath();
                } catch (IOException e) {
                    e = e;
                    try {
                        this.f1724do.close();
                    } catch (IOException unused) {
                    }
                    throw e;
                } catch (Error e2) {
                    e = e2;
                    this.f1724do.close();
                    throw e;
                } catch (RuntimeException e3) {
                    e = e3;
                    this.f1724do.close();
                    throw e;
                }
            } catch (IOException e4) {
                e = e4;
                try {
                    this.f1723do.close();
                } catch (IOException unused2) {
                }
                throw e;
            }
        } catch (Error e5) {
            e = e5;
            this.f1723do.close();
            throw e;
        } catch (RuntimeException e6) {
            e = e6;
            this.f1723do.close();
            throw e;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m1079do(ZipFile zipFile, ZipEntry zipEntry, Cdo cdo, String str) {
        InputStream inputStream = zipFile.getInputStream(zipEntry);
        File createTempFile = File.createTempFile(C4122zt.m8824for("tmp-", str), ".zip", cdo.getParentFile());
        createTempFile.getPath();
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(createTempFile)));
            try {
                ZipEntry zipEntry2 = new ZipEntry("classes.dex");
                zipEntry2.setTime(zipEntry.getTime());
                zipOutputStream.putNextEntry(zipEntry2);
                byte[] bArr = new byte[16384];
                for (int read = inputStream.read(bArr); read != -1; read = inputStream.read(bArr)) {
                    zipOutputStream.write(bArr, 0, read);
                }
                zipOutputStream.closeEntry();
                zipOutputStream.close();
                if (!createTempFile.setReadOnly()) {
                    throw new IOException("Failed to mark readonly \"" + createTempFile.getAbsolutePath() + "\" (tmp of \"" + cdo.getAbsolutePath() + "\")");
                }
                cdo.getPath();
                if (createTempFile.renameTo(cdo)) {
                    return;
                }
                throw new IOException("Failed to rename \"" + createTempFile.getAbsolutePath() + "\" to \"" + cdo.getAbsolutePath() + "\"");
            } catch (Throwable th) {
                zipOutputStream.close();
                throw th;
            }
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
            createTempFile.delete();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1080goto(Context context, long j, long j2, ArrayList arrayList) {
        SharedPreferences.Editor edit = context.getSharedPreferences("multidex.version", 4).edit();
        edit.putLong("timestamp", j);
        edit.putLong("crc", j2);
        edit.putInt("dex.number", arrayList.size() + 1);
        Iterator it = arrayList.iterator();
        int i = 2;
        while (it.hasNext()) {
            Cdo cdo = (Cdo) it.next();
            edit.putLong(V1.m2494case("dex.crc.", i), cdo.f1727do);
            edit.putLong("dex.time." + i, cdo.lastModified());
            i++;
        }
        edit.commit();
    }

    /* renamed from: if, reason: not valid java name */
    public static long m1081if(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            C3564qN.Cdo m7885do = C3564qN.m7885do(randomAccessFile);
            CRC32 crc32 = new CRC32();
            long j = m7885do.f15104if;
            randomAccessFile.seek(m7885do.f15103do);
            byte[] bArr = new byte[16384];
            int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
            while (read != -1) {
                crc32.update(bArr, 0, read);
                j -= read;
                if (j == 0) {
                    break;
                }
                read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
            }
            long value = crc32.getValue();
            randomAccessFile.close();
            return value == -1 ? value - 1 : value;
        } catch (Throwable th) {
            randomAccessFile.close();
            throw th;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final ArrayList m1082case() {
        StringBuilder sb = new StringBuilder();
        File file = this.f1722do;
        sb.append(file.getName());
        sb.append(".classes");
        String sb2 = sb.toString();
        C0288It c0288It = new C0288It();
        File file2 = this.f1726if;
        File[] listFiles = file2.listFiles(c0288It);
        if (listFiles == null) {
            file2.getPath();
        } else {
            for (File file3 : listFiles) {
                file3.getPath();
                file3.length();
                if (file3.delete()) {
                    file3.getPath();
                } else {
                    file3.getPath();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        ZipFile zipFile = new ZipFile(file);
        try {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("classes");
            int i = 2;
            sb3.append(2);
            sb3.append(".dex");
            ZipEntry entry = zipFile.getEntry(sb3.toString());
            while (entry != null) {
                Cdo cdo = new Cdo(file2, sb2 + i + ".zip");
                arrayList.add(cdo);
                cdo.toString();
                int i2 = 0;
                boolean z = false;
                while (i2 < 3 && !z) {
                    i2++;
                    m1079do(zipFile, entry, cdo, sb2);
                    try {
                        cdo.f1727do = m1081if(cdo);
                        z = true;
                    } catch (IOException unused) {
                        cdo.getAbsolutePath();
                        z = false;
                    }
                    cdo.getAbsolutePath();
                    cdo.length();
                    if (!z) {
                        cdo.delete();
                        if (cdo.exists()) {
                            cdo.getPath();
                        }
                    }
                }
                if (!z) {
                    throw new IOException("Could not create zip file " + cdo.getAbsolutePath() + " for secondary dex (" + i + ")");
                }
                i++;
                entry = zipFile.getEntry("classes" + i + ".dex");
            }
            try {
                zipFile.close();
            } catch (IOException unused2) {
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                zipFile.close();
            } catch (IOException unused3) {
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f1725do.release();
        this.f1724do.close();
        this.f1723do.close();
    }

    /* renamed from: for, reason: not valid java name */
    public final ArrayList m1083for(Context context, boolean z) {
        ArrayList m1082case;
        ArrayList arrayList;
        File file = this.f1722do;
        file.getPath();
        if (!this.f1725do.isValid()) {
            throw new IllegalStateException("MultiDexExtractor was closed");
        }
        if (!z) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("multidex.version", 4);
            long j = sharedPreferences.getLong("timestamp", -1L);
            long lastModified = file.lastModified();
            if (lastModified == -1) {
                lastModified--;
            }
            if (!((j == lastModified && sharedPreferences.getLong("crc", -1L) == this.f1721do) ? false : true)) {
                try {
                    arrayList = m1084new(context);
                } catch (IOException unused) {
                    m1082case = m1082case();
                    long lastModified2 = file.lastModified();
                    if (lastModified2 == -1) {
                        lastModified2--;
                    }
                    m1080goto(context, lastModified2, this.f1721do, m1082case);
                }
                arrayList.size();
                return arrayList;
            }
        }
        m1082case = m1082case();
        long lastModified3 = file.lastModified();
        if (lastModified3 == -1) {
            lastModified3--;
        }
        m1080goto(context, lastModified3, this.f1721do, m1082case);
        arrayList = m1082case;
        arrayList.size();
        return arrayList;
    }

    /* renamed from: new, reason: not valid java name */
    public final ArrayList m1084new(Context context) {
        String str = this.f1722do.getName() + ".classes";
        SharedPreferences sharedPreferences = context.getSharedPreferences("multidex.version", 4);
        int i = sharedPreferences.getInt("dex.number", 1);
        ArrayList arrayList = new ArrayList(i - 1);
        for (int i2 = 2; i2 <= i; i2++) {
            Cdo cdo = new Cdo(this.f1726if, str + i2 + ".zip");
            if (!cdo.isFile()) {
                throw new IOException("Missing extracted secondary dex file '" + cdo.getPath() + "'");
            }
            cdo.f1727do = m1081if(cdo);
            long j = sharedPreferences.getLong("dex.crc." + i2, -1L);
            long j2 = sharedPreferences.getLong("dex.time." + i2, -1L);
            long lastModified = cdo.lastModified();
            if (j2 != lastModified || j != cdo.f1727do) {
                throw new IOException("Invalid extracted dex: " + cdo + " (key \"\"), expected modification time: " + j2 + ", modification time: " + lastModified + ", expected crc: " + j + ", file crc: " + cdo.f1727do);
            }
            arrayList.add(cdo);
        }
        return arrayList;
    }
}
