package j$.nio.file.spi;

import j$.nio.file.CopyOption;
import j$.nio.file.FileSystem;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.Path;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.nio.file.attribute.e;
import j$.nio.file.attribute.g;
import j$.nio.file.attribute.l;
import j$.nio.file.attribute.m;
import j$.nio.file.attribute.n;
import j$.nio.file.attribute.o;
import j$.nio.file.attribute.t;
import j$.nio.file.attribute.w;
import j$.nio.file.d;
import j$.nio.file.f;
import j$.nio.file.p;
import j$.nio.file.r;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.nio.channels.AsynchronousFileChannel;
import java.nio.channels.FileChannel;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.AccessMode;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.attribute.AclFileAttributeView;
import java.nio.file.attribute.BasicFileAttributeView;
import java.nio.file.attribute.DosFileAttributeView;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.attribute.FileOwnerAttributeView;
import java.nio.file.attribute.PosixFileAttributeView;
import java.nio.file.attribute.UserDefinedFileAttributeView;
import java.nio.file.spi.FileSystemProvider;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class a extends c {
    public static final /* synthetic */ int c = 0;
    public final /* synthetic */ FileSystemProvider b;

    public /* synthetic */ a(FileSystemProvider fileSystemProvider) {
        this.b = fileSystemProvider;
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void A(Path path, String str, Object obj, LinkOption[] linkOptionArr) {
        this.b.setAttribute(p.k(path), str, j$.com.android.tools.r8.a.w(obj), j$.com.android.tools.r8.a.M(linkOptionArr));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void a(Path path, j$.nio.file.a[] aVarArr) {
        FileSystemProvider fileSystemProvider = this.b;
        java.nio.file.Path k = p.k(path);
        AccessMode[] accessModeArr = null;
        if (aVarArr != null) {
            int length = aVarArr.length;
            AccessMode[] accessModeArr2 = new AccessMode[length];
            for (int i = 0; i < length; i++) {
                j$.nio.file.a aVar = aVarArr[i];
                accessModeArr2[i] = aVar == null ? null : aVar == j$.nio.file.a.READ ? AccessMode.READ : aVar == j$.nio.file.a.WRITE ? AccessMode.WRITE : AccessMode.EXECUTE;
            }
            accessModeArr = accessModeArr2;
        }
        fileSystemProvider.checkAccess(k, accessModeArr);
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void b(Path path, Path path2, CopyOption[] copyOptionArr) {
        this.b.copy(p.k(path), p.k(path2), j$.com.android.tools.r8.a.L(copyOptionArr));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void c(Path path, FileAttribute[] fileAttributeArr) {
        this.b.createDirectory(p.k(path), j$.com.android.tools.r8.a.O(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void d(Path path, Path path2) {
        this.b.createLink(p.k(path), p.k(path2));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void e(Path path, Path path2, FileAttribute[] fileAttributeArr) {
        this.b.createSymbolicLink(p.k(path), p.k(path2), j$.com.android.tools.r8.a.O(fileAttributeArr));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileSystemProvider fileSystemProvider = this.b;
        if (obj instanceof a) {
            obj = ((a) obj).b;
        }
        return fileSystemProvider.equals(obj);
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void f(Path path) {
        this.b.delete(p.k(path));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ boolean g(Path path) {
        return this.b.deleteIfExists(p.k(path));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ n h(Path path, Class cls, LinkOption[] linkOptionArr) {
        FileAttributeView fileAttributeView = this.b.getFileAttributeView(p.k(path), j$.com.android.tools.r8.a.t(cls), j$.com.android.tools.r8.a.M(linkOptionArr));
        if (fileAttributeView == null) {
            return null;
        }
        if (fileAttributeView instanceof m) {
            return ((m) fileAttributeView).a;
        }
        if (fileAttributeView instanceof BasicFileAttributeView) {
            BasicFileAttributeView basicFileAttributeView = (BasicFileAttributeView) fileAttributeView;
            return basicFileAttributeView instanceof j$.nio.file.attribute.c ? ((j$.nio.file.attribute.c) basicFileAttributeView).a : basicFileAttributeView instanceof DosFileAttributeView ? new g((DosFileAttributeView) basicFileAttributeView) : basicFileAttributeView instanceof PosixFileAttributeView ? new t((PosixFileAttributeView) basicFileAttributeView) : new j$.nio.file.attribute.b(basicFileAttributeView);
        }
        if (!(fileAttributeView instanceof FileOwnerAttributeView)) {
            return fileAttributeView instanceof UserDefinedFileAttributeView ? new w((UserDefinedFileAttributeView) fileAttributeView) : new l(fileAttributeView);
        }
        FileOwnerAttributeView fileOwnerAttributeView = (FileOwnerAttributeView) fileAttributeView;
        return fileOwnerAttributeView instanceof j$.nio.file.attribute.p ? ((j$.nio.file.attribute.p) fileOwnerAttributeView).a : fileOwnerAttributeView instanceof AclFileAttributeView ? new j$.nio.file.attribute.a((AclFileAttributeView) fileOwnerAttributeView) : fileOwnerAttributeView instanceof PosixFileAttributeView ? new t((PosixFileAttributeView) fileOwnerAttributeView) : new o(fileOwnerAttributeView);
    }

    public final /* synthetic */ int hashCode() {
        return this.b.hashCode();
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ d i(Path path) {
        FileStore fileStore = this.b.getFileStore(p.k(path));
        if (fileStore == null) {
            return null;
        }
        return new d(fileStore);
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ FileSystem j(URI uri) {
        return f.H(this.b.getFileSystem(uri));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ Path k(URI uri) {
        return j$.nio.file.o.k(this.b.getPath(uri));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ String l() {
        return this.b.getScheme();
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ boolean m(Path path) {
        return this.b.isHidden(p.k(path));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ boolean n(Path path, Path path2) {
        return this.b.isSameFile(p.k(path), p.k(path2));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ void o(Path path, Path path2, CopyOption[] copyOptionArr) {
        this.b.move(p.k(path), p.k(path2), j$.com.android.tools.r8.a.L(copyOptionArr));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ j$.nio.channels.a p(Path path, Set set, ExecutorService executorService, FileAttribute[] fileAttributeArr) {
        AsynchronousFileChannel newAsynchronousFileChannel = this.b.newAsynchronousFileChannel(p.k(path), j$.com.android.tools.r8.a.x(set), executorService, j$.com.android.tools.r8.a.O(fileAttributeArr));
        if (newAsynchronousFileChannel == null) {
            return null;
        }
        return new j$.nio.channels.a(newAsynchronousFileChannel);
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ SeekableByteChannel q(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.b.newByteChannel(p.k(path), j$.com.android.tools.r8.a.x(set), j$.com.android.tools.r8.a.O(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.c
    public final DirectoryStream r(Path path, DirectoryStream.Filter filter) {
        return new r(this.b.newDirectoryStream(p.k(path), new j$.desugar.sun.nio.fs.g(2, filter)));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ FileChannel s(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.b.newFileChannel(p.k(path), j$.com.android.tools.r8.a.x(set), j$.com.android.tools.r8.a.O(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ FileSystem t(Path path, Map map) {
        return f.H(this.b.newFileSystem(p.k(path), (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ FileSystem u(URI uri, Map map) {
        return f.H(this.b.newFileSystem(uri, (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ InputStream v(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.b;
        java.nio.file.Path k = p.k(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = j$.nio.file.m.a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newInputStream(k, openOptionArr2);
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ OutputStream w(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.b;
        java.nio.file.Path k = p.k(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = j$.nio.file.m.a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newOutputStream(k, openOptionArr2);
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ BasicFileAttributes x(Path path, Class cls, LinkOption[] linkOptionArr) {
        return e.a(this.b.readAttributes(p.k(path), j$.com.android.tools.r8.a.u(cls), j$.com.android.tools.r8.a.M(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ Map y(Path path, String str, LinkOption[] linkOptionArr) {
        return j$.com.android.tools.r8.a.v(this.b.readAttributes(p.k(path), str, j$.com.android.tools.r8.a.M(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.c
    public final /* synthetic */ Path z(Path path) {
        return j$.nio.file.o.k(this.b.readSymbolicLink(p.k(path)));
    }
}
