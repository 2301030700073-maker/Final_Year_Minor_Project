package j$.nio.file.spi;

import j$.nio.file.attribute.f;
import j$.nio.file.attribute.g;
import j$.nio.file.attribute.l;
import j$.nio.file.attribute.m;
import j$.nio.file.attribute.n;
import j$.nio.file.attribute.o;
import j$.nio.file.attribute.p;
import j$.nio.file.attribute.q;
import j$.nio.file.attribute.t;
import j$.nio.file.attribute.w;
import j$.nio.file.e;
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
import java.nio.file.CopyOption;
import java.nio.file.DirectoryStream;
import java.nio.file.FileStore;
import java.nio.file.FileSystem;
import java.nio.file.LinkOption;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileAttributeView;
import java.nio.file.spi.FileSystemProvider;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class c extends FileSystemProvider {
    public static final /* synthetic */ int b = 0;
    public final /* synthetic */ d a;

    public /* synthetic */ c(d dVar) {
        this.a = dVar;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void checkAccess(Path path, AccessMode[] accessModeArr) {
        d dVar = this.a;
        j$.nio.file.Path k = r.k(path);
        j$.nio.file.a[] aVarArr = null;
        if (accessModeArr != null) {
            int length = accessModeArr.length;
            j$.nio.file.a[] aVarArr2 = new j$.nio.file.a[length];
            for (int i = 0; i < length; i++) {
                AccessMode accessMode = accessModeArr[i];
                aVarArr2[i] = accessMode == null ? null : accessMode == AccessMode.READ ? j$.nio.file.a.READ : accessMode == AccessMode.WRITE ? j$.nio.file.a.WRITE : j$.nio.file.a.EXECUTE;
            }
            aVarArr = aVarArr2;
        }
        dVar.a(k, aVarArr);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void copy(Path path, Path path2, CopyOption[] copyOptionArr) {
        j$.nio.file.CopyOption[] copyOptionArr2;
        d dVar = this.a;
        j$.nio.file.Path k = r.k(path);
        j$.nio.file.Path k2 = r.k(path2);
        if (copyOptionArr == null) {
            copyOptionArr2 = null;
        } else {
            int length = copyOptionArr.length;
            j$.nio.file.CopyOption[] copyOptionArr3 = new j$.nio.file.CopyOption[length];
            for (int i = 0; i < length; i++) {
                copyOptionArr3[i] = j$.nio.file.b.a(copyOptionArr[i]);
            }
            copyOptionArr2 = copyOptionArr3;
        }
        dVar.b(k, k2, copyOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createDirectory(Path path, FileAttribute[] fileAttributeArr) {
        this.a.c(r.k(path), j$.com.android.tools.r8.a.M(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createLink(Path path, Path path2) {
        this.a.d(r.k(path), r.k(path2));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void createSymbolicLink(Path path, Path path2, FileAttribute[] fileAttributeArr) {
        this.a.e(r.k(path), r.k(path2), j$.com.android.tools.r8.a.M(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void delete(Path path) {
        this.a.f(r.k(path));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean deleteIfExists(Path path) {
        return this.a.g(r.k(path));
    }

    public final /* synthetic */ boolean equals(Object obj) {
        d dVar = this.a;
        if (obj instanceof c) {
            obj = ((c) obj).a;
        }
        return dVar.equals(obj);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileAttributeView getFileAttributeView(Path path, Class cls, LinkOption[] linkOptionArr) {
        n h = this.a.h(r.k(path), j$.com.android.tools.r8.a.v(cls), j$.com.android.tools.r8.a.K(linkOptionArr));
        if (h == null) {
            return null;
        }
        if (h instanceof l) {
            return ((l) h).a;
        }
        if (h instanceof j$.nio.file.attribute.d) {
            j$.nio.file.attribute.d dVar = (j$.nio.file.attribute.d) h;
            return dVar instanceof j$.nio.file.attribute.b ? ((j$.nio.file.attribute.b) dVar).a : dVar instanceof g ? ((g) dVar).a : dVar instanceof t ? ((t) dVar).a : new j$.nio.file.attribute.c(dVar);
        }
        if (!(h instanceof q)) {
            return h instanceof w ? ((w) h).a : new m(h);
        }
        q qVar = (q) h;
        return qVar instanceof o ? ((o) qVar).a : qVar instanceof j$.nio.file.attribute.a ? ((j$.nio.file.attribute.a) qVar).a : qVar instanceof t ? ((t) qVar).a : new p(qVar);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileStore getFileStore(Path path) {
        j$.nio.file.d i = this.a.i(r.k(path));
        int i2 = e.a;
        if (i == null) {
            return null;
        }
        return i.a;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem getFileSystem(URI uri) {
        return j$.nio.file.g.f(this.a.j(uri));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Path getPath(URI uri) {
        return s.k(this.a.k(uri));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ String getScheme() {
        return this.a.l();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean isHidden(Path path) {
        return this.a.m(r.k(path));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ boolean isSameFile(Path path, Path path2) {
        return this.a.n(r.k(path), r.k(path2));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void move(Path path, Path path2, CopyOption[] copyOptionArr) {
        j$.nio.file.CopyOption[] copyOptionArr2;
        d dVar = this.a;
        j$.nio.file.Path k = r.k(path);
        j$.nio.file.Path k2 = r.k(path2);
        if (copyOptionArr == null) {
            copyOptionArr2 = null;
        } else {
            int length = copyOptionArr.length;
            j$.nio.file.CopyOption[] copyOptionArr3 = new j$.nio.file.CopyOption[length];
            for (int i = 0; i < length; i++) {
                copyOptionArr3[i] = j$.nio.file.b.a(copyOptionArr[i]);
            }
            copyOptionArr2 = copyOptionArr3;
        }
        dVar.o(k, k2, copyOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ AsynchronousFileChannel newAsynchronousFileChannel(Path path, Set set, ExecutorService executorService, FileAttribute[] fileAttributeArr) {
        j$.nio.channels.a p = this.a.p(r.k(path), j$.com.android.tools.r8.a.z(set), executorService, j$.com.android.tools.r8.a.M(fileAttributeArr));
        int i = j$.nio.channels.b.a;
        if (p == null) {
            return null;
        }
        return p.a;
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ SeekableByteChannel newByteChannel(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.a.q(r.k(path), j$.com.android.tools.r8.a.z(set), j$.com.android.tools.r8.a.M(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final DirectoryStream newDirectoryStream(Path path, DirectoryStream.Filter filter) {
        return new u(this.a.r(r.k(path), new j$.desugar.sun.nio.fs.g(1, filter)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileChannel newFileChannel(Path path, Set set, FileAttribute[] fileAttributeArr) {
        return this.a.s(r.k(path), j$.com.android.tools.r8.a.z(set), j$.com.android.tools.r8.a.M(fileAttributeArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem newFileSystem(Path path, Map map) {
        return j$.nio.file.g.f(this.a.t(r.k(path), map));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ InputStream newInputStream(Path path, OpenOption[] openOptionArr) {
        j$.nio.file.OpenOption[] openOptionArr2;
        d dVar = this.a;
        j$.nio.file.Path k = r.k(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            j$.nio.file.OpenOption[] openOptionArr3 = new j$.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = j$.nio.file.o.a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return dVar.v(k, openOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ OutputStream newOutputStream(Path path, OpenOption[] openOptionArr) {
        j$.nio.file.OpenOption[] openOptionArr2;
        d dVar = this.a;
        j$.nio.file.Path k = r.k(path);
        if (openOptionArr == null) {
            openOptionArr2 = null;
        } else {
            int length = openOptionArr.length;
            j$.nio.file.OpenOption[] openOptionArr3 = new j$.nio.file.OpenOption[length];
            for (int i = 0; i < length; i++) {
                openOptionArr3[i] = j$.nio.file.o.a(openOptionArr[i]);
            }
            openOptionArr2 = openOptionArr3;
        }
        return dVar.w(k, openOptionArr2);
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ BasicFileAttributes readAttributes(Path path, Class cls, LinkOption[] linkOptionArr) {
        return f.a(this.a.x(r.k(path), j$.com.android.tools.r8.a.w(cls), j$.com.android.tools.r8.a.K(linkOptionArr)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Path readSymbolicLink(Path path) {
        return s.k(this.a.z(r.k(path)));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ void setAttribute(Path path, String str, Object obj, LinkOption[] linkOptionArr) {
        this.a.A(r.k(path), str, j$.com.android.tools.r8.a.y(obj), j$.com.android.tools.r8.a.K(linkOptionArr));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ FileSystem newFileSystem(URI uri, Map map) {
        return j$.nio.file.g.f(this.a.u(uri, map));
    }

    @Override // java.nio.file.spi.FileSystemProvider
    public final /* synthetic */ Map readAttributes(Path path, String str, LinkOption[] linkOptionArr) {
        return j$.com.android.tools.r8.a.x(this.a.y(r.k(path), str, j$.com.android.tools.r8.a.K(linkOptionArr)));
    }
}
