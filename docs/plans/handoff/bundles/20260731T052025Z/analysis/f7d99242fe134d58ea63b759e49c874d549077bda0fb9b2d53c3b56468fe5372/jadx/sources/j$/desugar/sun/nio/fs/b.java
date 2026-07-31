package j$.desugar.sun.nio.fs;

import j$.nio.file.Path;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileTime;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class b implements j$.nio.file.attribute.d {
    public static final Set b;
    public final Path a;

    static {
        String[] strArr = {"size", "creationTime", "lastAccessTime", "lastModifiedTime", "fileKey", "isDirectory", "isRegularFile", "isSymbolicLink", "isOther"};
        Charset charset = p.a;
        HashSet hashSet = new HashSet();
        for (int i = 0; i < 9; i++) {
            hashSet.add(strArr[i]);
        }
        b = hashSet;
    }

    public b(Path path) {
        this.a = path;
    }

    @Override // j$.nio.file.attribute.d
    public final void a(FileTime fileTime, FileTime fileTime2, FileTime fileTime3) {
        long convert;
        if (fileTime == null && fileTime2 == null) {
            return;
        }
        Path path = this.a;
        path.getFileSystem().B().a(path, j$.nio.file.a.WRITE);
        File file = path.toFile();
        fileTime.getClass();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Objects.requireNonNull(timeUnit, "unit");
        if (timeUnit != null) {
            convert = fileTime.a;
        } else {
            convert = timeUnit.convert(fileTime.b.getEpochSecond(), TimeUnit.SECONDS);
            if (convert != Long.MIN_VALUE && convert != Long.MAX_VALUE) {
                long nano = fileTime.b.getNano() / 1000000;
                long j = convert + nano;
                convert = ((nano ^ j) & (convert ^ j)) < 0 ? convert < 0 ? Long.MIN_VALUE : Long.MAX_VALUE : j;
            }
        }
        if (file.setLastModified(convert)) {
            return;
        }
        throw new IOException("File.setLastModified did not succeed on " + path);
    }

    @Override // j$.nio.file.attribute.n
    public final String name() {
        return "basic";
    }

    @Override // j$.nio.file.attribute.d
    public final BasicFileAttributes readAttributes() {
        boolean z;
        Path path = this.a;
        path.getFileSystem().B().a(path, new j$.nio.file.a[0]);
        File file = path.toFile();
        long lastModified = file.lastModified();
        Objects.requireNonNull(TimeUnit.MILLISECONDS, "unit");
        FileTime fileTime = new FileTime(lastModified);
        boolean isFile = file.isFile();
        boolean isDirectory = file.isDirectory();
        try {
            File file2 = file.getParent() == null ? file : new File(file.getParentFile().getCanonicalFile(), file.getName());
            z = !file2.getCanonicalFile().equals(file2.getAbsoluteFile());
        } catch (IOException unused) {
            z = false;
        }
        return new c(fileTime, fileTime, fileTime, isFile, isDirectory, z, (isFile || isDirectory || z) ? false : true, file.length(), Integer.valueOf(file.hashCode()));
    }
}
