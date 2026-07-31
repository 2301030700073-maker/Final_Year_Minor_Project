package j$.nio.file;

import java.nio.file.FileSystem;
import java.nio.file.PathMatcher;
import java.nio.file.WatchService;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.nio.file.spi.FileSystemProvider;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class g extends FileSystem {
    public final /* synthetic */ h a;

    public /* synthetic */ g(h hVar) {
        this.a = hVar;
    }

    public static /* synthetic */ FileSystem f(h hVar) {
        if (hVar == null) {
            return null;
        }
        return hVar instanceof f ? ((f) hVar).a : new g(hVar);
    }

    @Override // java.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        h hVar = this.a;
        if (obj instanceof g) {
            obj = ((g) obj).a;
        }
        return hVar.equals(obj);
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ Iterable getFileStores() {
        return this.a.f();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ java.nio.file.Path getPath(String str, String[] strArr) {
        return s.k(this.a.j(str, strArr));
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ PathMatcher getPathMatcher(String str) {
        z l = this.a.l(str);
        if (l == null) {
            return null;
        }
        return l instanceof x ? ((x) l).a : new y(l);
    }

    @Override // java.nio.file.FileSystem
    public final Iterable getRootDirectories() {
        return new v(this.a.m());
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ String getSeparator() {
        return this.a.p();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ UserPrincipalLookupService getUserPrincipalLookupService() {
        j$.nio.file.attribute.a0 r = this.a.r();
        int i = j$.nio.file.attribute.b0.a;
        if (r == null) {
            return null;
        }
        return r.a;
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ boolean isOpen() {
        return this.a.isOpen();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ boolean isReadOnly() {
        return this.a.t();
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ WatchService newWatchService() {
        i0 v = this.a.v();
        if (v == null) {
            return null;
        }
        return v.a;
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ FileSystemProvider provider() {
        j$.nio.file.spi.d C = this.a.C();
        int i = j$.nio.file.spi.c.b;
        if (C == null) {
            return null;
        }
        return C instanceof j$.nio.file.spi.b ? ((j$.nio.file.spi.b) C).e : new j$.nio.file.spi.c(C);
    }

    @Override // java.nio.file.FileSystem
    public final /* synthetic */ Set supportedFileAttributeViews() {
        return this.a.E();
    }
}
