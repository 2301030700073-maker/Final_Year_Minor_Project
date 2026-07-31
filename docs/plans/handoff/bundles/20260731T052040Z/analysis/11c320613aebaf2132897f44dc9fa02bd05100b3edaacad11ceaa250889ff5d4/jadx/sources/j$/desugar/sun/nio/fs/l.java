package j$.desugar.sun.nio.fs;

import j$.nio.channels.DesugarChannels;
import j$.nio.file.CopyOption;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.a0;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.FileTime;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.URI;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileSystemAlreadyExistsException;
import java.nio.file.NoSuchFileException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class l extends j$.nio.file.spi.d {
    public final String e;
    public final String f = "/";
    public volatile h g;

    public l(String str) {
        this.e = str;
    }

    public static void B(URI uri) {
        if (!uri.getScheme().equalsIgnoreCase("file")) {
            j$.nio.file.m.c("URI does not match this provider");
            return;
        }
        if (uri.getRawAuthority() != null) {
            j$.nio.file.m.c("Authority component present");
            return;
        }
        String path = uri.getPath();
        if (path == null) {
            j$.nio.file.m.c("Path component is undefined");
            return;
        }
        if (!path.equals("/")) {
            j$.nio.file.m.c("Path component should be '/'");
        } else if (uri.getRawQuery() != null) {
            j$.nio.file.m.c("Query component present");
        } else {
            if (uri.getRawFragment() == null) {
                return;
            }
            j$.nio.file.m.c("Fragment component present");
        }
    }

    public static boolean C(CopyOption[] copyOptionArr, StandardCopyOption standardCopyOption) {
        for (CopyOption copyOption : copyOptionArr) {
            if (copyOption == standardCopyOption) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.nio.file.spi.d
    public final void A(Path path, String str, Object obj, LinkOption... linkOptionArr) {
        int indexOf = str.indexOf(":");
        if (indexOf != -1) {
            String substring = str.substring(0, indexOf);
            if (!"basic".equals(substring)) {
                j$.nio.file.m.f("Requested attribute type for: ", substring, " is not available.");
                return;
            }
            str = str.substring(indexOf + 1);
        }
        b bVar = new b(path);
        if (str.equals("lastModifiedTime")) {
            bVar.a((FileTime) obj, null, null);
            return;
        }
        if (str.equals("lastAccessTime")) {
            bVar.a(null, (FileTime) obj, null);
        } else {
            if (str.equals("creationTime")) {
                return;
            }
            throw new IllegalArgumentException("'basic:" + str + "' not recognized");
        }
    }

    @Override // j$.nio.file.spi.d
    public final void a(Path path, j$.nio.file.a... aVarArr) {
        boolean canRead;
        File file = path.toFile();
        if (!file.exists()) {
            throw new NoSuchFileException(path.toString());
        }
        boolean z = true;
        for (j$.nio.file.a aVar : aVarArr) {
            int i = i.a[aVar.ordinal()];
            if (i == 1) {
                canRead = file.canRead();
            } else if (i == 2) {
                canRead = file.canWrite();
            } else if (i == 3) {
                canRead = file.canExecute();
            }
            z &= canRead;
        }
        if (!z) {
            throw new IOException(String.format("Unable to access file %s", path));
        }
    }

    @Override // j$.nio.file.spi.d
    public final void b(Path path, Path path2, CopyOption... copyOptionArr) {
        if (!C(copyOptionArr, StandardCopyOption.REPLACE_EXISTING) && Files.exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (C(copyOptionArr, StandardCopyOption.ATOMIC_MOVE)) {
            throw new UnsupportedOperationException("Unsupported copy option");
        }
        FileInputStream fileInputStream = new FileInputStream(path.toFile());
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(path2.toFile());
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream.read(bArr, 0, 8192);
                    if (read < 0) {
                        fileOutputStream.close();
                        fileInputStream.close();
                        return;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // j$.nio.file.spi.d
    public final void c(Path path, FileAttribute... fileAttributeArr) {
        if (path.getParent() != null && !Files.exists(path.getParent(), new LinkOption[0])) {
            throw new NoSuchFileException(path.toString());
        }
        if (!path.toFile().mkdirs()) {
            throw new FileAlreadyExistsException(path.toString());
        }
    }

    @Override // j$.nio.file.spi.d
    public final void d(Path path, Path path2) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.d
    public final void e(Path path, Path path2, FileAttribute... fileAttributeArr) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.d
    public final void f(Path path) {
        try {
            a(path, new j$.nio.file.a[0]);
            g(path);
        } catch (IOException unused) {
            throw new NoSuchFileException(path.toString());
        }
    }

    @Override // j$.nio.file.spi.d
    public final boolean g(Path path) {
        return path.toFile().delete();
    }

    @Override // j$.nio.file.spi.d
    public final j$.nio.file.attribute.n h(Path path, Class cls, LinkOption... linkOptionArr) {
        cls.getClass();
        if (cls == j$.nio.file.attribute.d.class) {
            return (j$.nio.file.attribute.n) cls.cast(new b(path));
        }
        return null;
    }

    @Override // j$.nio.file.spi.d
    public final j$.nio.file.d i(Path path) {
        throw new SecurityException("getFileStore");
    }

    @Override // j$.nio.file.spi.d
    public final j$.nio.file.h j(URI uri) {
        h hVar;
        B(uri);
        h hVar2 = this.g;
        if (hVar2 != null) {
            return hVar2;
        }
        synchronized (this) {
            try {
                hVar = this.g;
                if (hVar == null) {
                    hVar = new h(this, this.e, this.f);
                    this.g = hVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return hVar;
    }

    @Override // j$.nio.file.spi.d
    public final Path k(URI uri) {
        byte b;
        h hVar = this.g;
        String str = this.e;
        String str2 = this.f;
        char[] cArr = o.c;
        if (!uri.isAbsolute()) {
            j$.nio.file.m.c("URI is not absolute");
            return null;
        }
        if (uri.isOpaque()) {
            j$.nio.file.m.c("URI is not hierarchical");
            return null;
        }
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.equalsIgnoreCase("file")) {
            j$.nio.file.m.c("URI scheme is not \"file\"");
            return null;
        }
        if (uri.getRawAuthority() != null) {
            j$.nio.file.m.c("URI has an authority component");
            return null;
        }
        if (uri.getRawFragment() != null) {
            j$.nio.file.m.c("URI has a fragment component");
            return null;
        }
        if (uri.getRawQuery() != null) {
            j$.nio.file.m.c("URI has a query component");
            return null;
        }
        String rawPath = uri.getRawPath();
        int length = rawPath.length();
        if (length == 0) {
            j$.nio.file.m.c("URI path component is empty");
            return null;
        }
        if (rawPath.endsWith("/") && length > 1) {
            length--;
        }
        byte[] bArr = new byte[length];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i + 1;
            char charAt = rawPath.charAt(i);
            if (charAt == '%') {
                int i4 = i + 2;
                i += 3;
                b = (byte) ((o.a(rawPath.charAt(i3)) << 4) | o.a(rawPath.charAt(i4)));
                if (b == 0) {
                    j$.nio.file.m.c("Nul character not allowed");
                    return null;
                }
            } else {
                if (charAt == 0 || charAt >= 128) {
                    j$.nio.file.m.c("Bad escape");
                    return null;
                }
                b = (byte) charAt;
                i = i3;
            }
            bArr[i2] = b;
            i2++;
        }
        if (i2 != length) {
            bArr = Arrays.copyOf(bArr, i2);
        }
        return new n(hVar, new String(bArr, p.a), str, str2);
    }

    @Override // j$.nio.file.spi.d
    public final String l() {
        return "file";
    }

    @Override // j$.nio.file.spi.d
    public final boolean m(Path path) {
        return path.toFile().isHidden();
    }

    @Override // j$.nio.file.spi.d
    public final boolean n(Path path, Path path2) {
        if (path.equals(path2)) {
            return true;
        }
        a(path, new j$.nio.file.a[0]);
        a(path2, new j$.nio.file.a[0]);
        return path.toFile().equals(path2.toFile());
    }

    @Override // j$.nio.file.spi.d
    public final void o(Path path, Path path2, CopyOption... copyOptionArr) {
        if (!C(copyOptionArr, StandardCopyOption.REPLACE_EXISTING) && Files.exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (C(copyOptionArr, StandardCopyOption.COPY_ATTRIBUTES)) {
            throw new UnsupportedOperationException("Unsupported copy option");
        }
        path.toFile().renameTo(path2.toFile());
    }

    @Override // j$.nio.file.spi.d
    public final j$.nio.channels.a p(Path path, Set set, ExecutorService executorService, FileAttribute... fileAttributeArr) {
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.d
    public final SeekableByteChannel q(Path path, Set set, FileAttribute... fileAttributeArr) {
        return s(path, set, fileAttributeArr);
    }

    @Override // j$.nio.file.spi.d
    public final DirectoryStream r(Path path, DirectoryStream.Filter filter) {
        j jVar = new j();
        jVar.a = new k(this, path, filter);
        return jVar;
    }

    @Override // j$.nio.file.spi.d
    public final FileChannel s(Path path, Set set, FileAttribute... fileAttributeArr) {
        if (path.toFile().isDirectory()) {
            throw new UnsupportedOperationException("The desugar library does not support creating a file channel on a directory: " + path);
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((OpenOption) it.next()).getClass();
        }
        if (path.toFile().exists()) {
            if (set.contains(a0.CREATE_NEW) && set.contains(a0.WRITE)) {
                throw new FileAlreadyExistsException(path.toString());
            }
        } else if (!set.contains(a0.CREATE) && !set.contains(a0.CREATE_NEW)) {
            throw new NoSuchFileException(path.toString());
        }
        if (set.contains(a0.READ) && set.contains(a0.APPEND)) {
            j$.nio.file.m.c("READ + APPEND not allowed");
            return null;
        }
        a0 a0Var = a0.APPEND;
        if (set.contains(a0Var) && set.contains(a0.TRUNCATE_EXISTING)) {
            j$.nio.file.m.c("APPEND + TRUNCATE_EXISTING not allowed");
            return null;
        }
        File file = path.toFile();
        a0 a0Var2 = a0.WRITE;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, (set.contains(a0Var2) || set.contains(a0Var)) ? set.contains(a0.SYNC) ? "rws" : set.contains(a0.DSYNC) ? "rwd" : "rw" : "r");
        if (set.contains(a0.TRUNCATE_EXISTING) && set.contains(a0Var2)) {
            randomAccessFile.setLength(0L);
        }
        if (!set.contains(a0Var) && !set.contains(a0.DELETE_ON_CLOSE)) {
            return DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(randomAccessFile.getChannel());
        }
        FileChannel convertMaybeLegacyFileChannelFromLibrary = DesugarChannels.convertMaybeLegacyFileChannelFromLibrary(randomAccessFile.getChannel());
        int i = e.e;
        if (convertMaybeLegacyFileChannelFromLibrary instanceof e) {
            convertMaybeLegacyFileChannelFromLibrary = ((e) convertMaybeLegacyFileChannelFromLibrary).a;
        }
        return new e(convertMaybeLegacyFileChannelFromLibrary, set.contains(a0.DELETE_ON_CLOSE), set.contains(a0Var), path);
    }

    @Override // j$.nio.file.spi.d
    public final j$.nio.file.h u(URI uri, Map map) {
        B(uri);
        throw new FileSystemAlreadyExistsException();
    }

    @Override // j$.nio.file.spi.d
    public final BasicFileAttributes x(Path path, Class cls, LinkOption... linkOptionArr) {
        if (cls == BasicFileAttributes.class) {
            return (BasicFileAttributes) cls.cast(((j$.nio.file.attribute.d) h(path, j$.nio.file.attribute.d.class, linkOptionArr)).readAttributes());
        }
        throw new UnsupportedOperationException();
    }

    @Override // j$.nio.file.spi.d
    public final Map y(Path path, String str, LinkOption... linkOptionArr) {
        String[] split;
        int indexOf = str.indexOf(":");
        if (indexOf == -1) {
            split = str.split(",");
        } else {
            String substring = str.substring(0, indexOf);
            if (!"basic".equals(substring)) {
                j$.nio.file.m.f("Requested attribute type for: ", substring, " is not available.");
                return null;
            }
            split = str.substring(indexOf + 1).split(",");
        }
        b bVar = new b(path);
        Set set = b.b;
        a aVar = new a();
        aVar.a = new HashSet();
        aVar.b = new HashMap();
        for (String str2 : split) {
            if (str2.equals("*")) {
                aVar.c = true;
            } else {
                if (!((HashSet) set).contains(str2)) {
                    throw new IllegalArgumentException("'" + str2 + "' not recognized");
                }
                ((HashSet) aVar.a).add(str2);
            }
        }
        BasicFileAttributes readAttributes = bVar.readAttributes();
        if (aVar.b("size")) {
            aVar.a(Long.valueOf(((c) readAttributes).h), "size");
        }
        if (aVar.b("creationTime")) {
            aVar.a(((c) readAttributes).c, "creationTime");
        }
        if (aVar.b("lastAccessTime")) {
            aVar.a(((c) readAttributes).b, "lastAccessTime");
        }
        if (aVar.b("lastModifiedTime")) {
            aVar.a(((c) readAttributes).a, "lastModifiedTime");
        }
        if (aVar.b("fileKey")) {
            aVar.a(((c) readAttributes).i, "fileKey");
        }
        if (aVar.b("isDirectory")) {
            aVar.a(Boolean.valueOf(((c) readAttributes).e), "isDirectory");
        }
        if (aVar.b("isRegularFile")) {
            aVar.a(Boolean.valueOf(((c) readAttributes).d), "isRegularFile");
        }
        if (aVar.b("isSymbolicLink")) {
            aVar.a(Boolean.valueOf(((c) readAttributes).f), "isSymbolicLink");
        }
        if (aVar.b("isOther")) {
            aVar.a(Boolean.valueOf(((c) readAttributes).g), "isOther");
        }
        return Collections.unmodifiableMap(aVar.b);
    }

    @Override // j$.nio.file.spi.d
    public final Path z(Path path) {
        return new n(this.g, path.toFile().getCanonicalPath(), this.e, this.f);
    }
}
