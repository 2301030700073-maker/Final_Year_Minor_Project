package j$.nio.file.spi;

import j$.nio.file.CopyOption;
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
import j$.nio.file.attribute.p;
import j$.nio.file.attribute.t;
import j$.nio.file.attribute.w;
import j$.nio.file.f;
import j$.nio.file.h;
import j$.nio.file.r;
import j$.nio.file.s;
import j$.nio.file.u;
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

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class b extends d {
    public static final /* synthetic */ int f = 0;
    public final /* synthetic */ FileSystemProvider e;

    public /* synthetic */ b(FileSystemProvider fileSystemProvider) {
        this.e = fileSystemProvider;
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void A(Path path, String str, Object obj, LinkOption[] linkOptionArr) {
        this.e.setAttribute(s.k(path), str, j$.com.android.tools.r8.a.y(obj), j$.com.android.tools.r8.a.O(linkOptionArr));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void a(Path path, j$.nio.file.a[] aVarArr) {
        FileSystemProvider fileSystemProvider = this.e;
        java.nio.file.Path k = s.k(path);
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

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void b(Path path, Path path2, CopyOption[] copyOptionArr) {
        this.e.copy(s.k(path), s.k(path2), j$.com.android.tools.r8.a.N(copyOptionArr));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void c(Path path, FileAttribute[] fileAttributeArr) {
        this.e.createDirectory(s.k(path), j$.com.android.tools.r8.a.Q(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void d(Path path, Path path2) {
        this.e.createLink(s.k(path), s.k(path2));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void e(Path path, Path path2, FileAttribute[] fileAttributeArr) {
        this.e.createSymbolicLink(s.k(path), s.k(path2), j$.com.android.tools.r8.a.Q(fileAttributeArr));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileSystemProvider fileSystemProvider = this.e;
        if (obj instanceof b) {
            obj = ((b) obj).e;
        }
        return fileSystemProvider.equals(obj);
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void f(Path path) {
        this.e.delete(s.k(path));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ boolean g(Path path) {
        return this.e.deleteIfExists(s.k(path));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ n h(Path path, Class cls, LinkOption[] linkOptionArr) {
        FileAttributeView fileAttributeView = this.e.getFileAttributeView(s.k(path), j$.com.android.tools.r8.a.v(cls), j$.com.android.tools.r8.a.O(linkOptionArr));
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
        return fileOwnerAttributeView instanceof p ? ((p) fileOwnerAttributeView).a : fileOwnerAttributeView instanceof AclFileAttributeView ? new j$.nio.file.attribute.a((AclFileAttributeView) fileOwnerAttributeView) : fileOwnerAttributeView instanceof PosixFileAttributeView ? new t((PosixFileAttributeView) fileOwnerAttributeView) : new o(fileOwnerAttributeView);
    }

    public final /* synthetic */ int hashCode() {
        return this.e.hashCode();
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ j$.nio.file.d i(Path path) {
        FileStore fileStore = this.e.getFileStore(s.k(path));
        if (fileStore == null) {
            return null;
        }
        return new j$.nio.file.d(fileStore);
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ h j(URI uri) {
        return f.F(this.e.getFileSystem(uri));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ Path k(URI uri) {
        return r.k(this.e.getPath(uri));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ String l() {
        return this.e.getScheme();
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ boolean m(Path path) {
        return this.e.isHidden(s.k(path));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ boolean n(Path path, Path path2) {
        return this.e.isSameFile(s.k(path), s.k(path2));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ void o(Path path, Path path2, CopyOption[] copyOptionArr) {
        this.e.move(s.k(path), s.k(path2), j$.com.android.tools.r8.a.N(copyOptionArr));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ j$.nio.channels.a p(Path path, Set set, ExecutorService executorService, FileAttribute[] fileAttributeArr) {
        AsynchronousFileChannel newAsynchronousFileChannel = this.e.newAsynchronousFileChannel(s.k(path), j$.com.android.tools.r8.a.z(set), executorService, j$.com.android.tools.r8.a.Q(fileAttributeArr));
        if (newAsynchronousFileChannel == null) {
            return null;
        }
        return new j$.nio.channels.a(newAsynchronousFileChannel);
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ SeekableByteChannel q(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.e.newByteChannel(s.k(path), j$.com.android.tools.r8.a.z(set), j$.com.android.tools.r8.a.Q(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.d
    public final DirectoryStream r(Path path, DirectoryStream.Filter filter) {
        return new u(this.e.newDirectoryStream(s.k(path), new j$.desugar.sun.nio.fs.g(1, filter)));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ FileChannel s(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.e.newFileChannel(s.k(path), j$.com.android.tools.r8.a.z(set), j$.com.android.tools.r8.a.Q(fileAttributeArr));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ h t(Path path, Map map) {
        return f.F(this.e.newFileSystem(s.k(path), (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ h u(URI uri, Map map) {
        return f.F(this.e.newFileSystem(uri, (Map<String, ?>) map));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ InputStream v(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.e;
        java.nio.file.Path k = s.k(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = j$.nio.file.p.a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newInputStream(k, openOptionArr2);
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ OutputStream w(Path path, OpenOption[] openOptionArr) {
        java.nio.file.OpenOption[] openOptionArr2;
        FileSystemProvider fileSystemProvider = this.e;
        java.nio.file.Path k = s.k(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            java.nio.file.OpenOption[] openOptionArr3 = new java.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = j$.nio.file.p.a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return fileSystemProvider.newOutputStream(k, openOptionArr2);
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ BasicFileAttributes x(Path path, Class cls, LinkOption[] linkOptionArr) {
        return e.a(this.e.readAttributes(s.k(path), j$.com.android.tools.r8.a.w(cls), j$.com.android.tools.r8.a.O(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ Map y(Path path, String str, LinkOption[] linkOptionArr) {
        return j$.com.android.tools.r8.a.x(this.e.readAttributes(s.k(path), str, j$.com.android.tools.r8.a.O(linkOptionArr)));
    }

    @Override // j$.nio.file.spi.d
    public final /* synthetic */ Path z(Path path) {
        return r.k(this.e.readSymbolicLink(s.k(path)));
    }
}
