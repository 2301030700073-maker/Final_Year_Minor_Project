package j$.nio.file;

import java.nio.file.FileSystem;
import java.nio.file.PathMatcher;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.nio.file.spi.FileSystemProvider;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class f extends h {
    public final /* synthetic */ FileSystem a;

    public f(FileSystem fileSystem) {
        this.a = fileSystem;
    }

    public static /* synthetic */ h F(FileSystem fileSystem) {
        if (fileSystem == null) {
            return null;
        }
        return fileSystem instanceof g ? ((g) fileSystem).a : new f(fileSystem);
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ j$.nio.file.spi.d C() {
        FileSystemProvider provider = this.a.provider();
        int i = j$.nio.file.spi.b.f;
        if (provider == null) {
            return null;
        }
        return provider instanceof j$.nio.file.spi.c ? ((j$.nio.file.spi.c) provider).a : new j$.nio.file.spi.b(provider);
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ Set E() {
        return this.a.supportedFileAttributeViews();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        FileSystem fileSystem = this.a;
        if (obj instanceof f) {
            obj = ((f) obj).a;
        }
        return fileSystem.equals(obj);
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ Iterable f() {
        return this.a.getFileStores();
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ boolean isOpen() {
        return this.a.isOpen();
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ Path j(String str, String[] strArr) {
        return r.k(this.a.getPath(str, strArr));
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ z l(String str) {
        PathMatcher pathMatcher = this.a.getPathMatcher(str);
        if (pathMatcher == null) {
            return null;
        }
        return pathMatcher instanceof y ? ((y) pathMatcher).a : new x(pathMatcher);
    }

    @Override // j$.nio.file.h
    public final Iterable m() {
        return new v(this.a.getRootDirectories());
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ String p() {
        return this.a.getSeparator();
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ j$.nio.file.attribute.a0 r() {
        UserPrincipalLookupService userPrincipalLookupService = this.a.getUserPrincipalLookupService();
        if (userPrincipalLookupService == null) {
            return null;
        }
        return new j$.nio.file.attribute.a0(userPrincipalLookupService);
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ boolean t() {
        return this.a.isReadOnly();
    }

    @Override // j$.nio.file.h
    public final /* synthetic */ i0 v() {
        return i0.f(this.a.newWatchService());
    }
}
