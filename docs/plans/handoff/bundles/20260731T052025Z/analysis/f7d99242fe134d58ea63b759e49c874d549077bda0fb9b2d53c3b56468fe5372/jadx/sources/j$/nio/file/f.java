package j$.nio.file;

import java.nio.file.PathMatcher;
import java.nio.file.attribute.UserPrincipalLookupService;
import java.nio.file.spi.FileSystemProvider;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class f extends FileSystem {
    public final /* synthetic */ java.nio.file.FileSystem a;

    public f(java.nio.file.FileSystem fileSystem) {
        this.a = fileSystem;
    }

    public static /* synthetic */ FileSystem H(java.nio.file.FileSystem fileSystem) {
        if (fileSystem == null) {
            return null;
        }
        return fileSystem instanceof g ? ((g) fileSystem).a : new f(fileSystem);
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ j$.nio.file.spi.c B() {
        FileSystemProvider provider = this.a.provider();
        int i = j$.nio.file.spi.a.c;
        if (provider == null) {
            return null;
        }
        return provider instanceof j$.nio.file.spi.b ? ((j$.nio.file.spi.b) provider).a : new j$.nio.file.spi.a(provider);
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ Set G() {
        return this.a.supportedFileAttributeViews();
    }

    @Override // j$.nio.file.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        this.a.close();
    }

    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.FileSystem fileSystem = this.a;
        if (obj instanceof f) {
            obj = ((f) obj).a;
        }
        return fileSystem.equals(obj);
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ Iterable f() {
        return this.a.getFileStores();
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ Path getPath(String str, String[] strArr) {
        return o.k(this.a.getPath(str, strArr));
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ boolean isOpen() {
        return this.a.isOpen();
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ w j(String str) {
        PathMatcher pathMatcher = this.a.getPathMatcher(str);
        if (pathMatcher == null) {
            return null;
        }
        return pathMatcher instanceof v ? ((v) pathMatcher).a : new u(pathMatcher);
    }

    @Override // j$.nio.file.FileSystem
    public final Iterable l() {
        return new s(this.a.getRootDirectories());
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ String o() {
        return this.a.getSeparator();
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ j$.nio.file.attribute.a0 q() {
        UserPrincipalLookupService userPrincipalLookupService = this.a.getUserPrincipalLookupService();
        if (userPrincipalLookupService == null) {
            return null;
        }
        return new j$.nio.file.attribute.a0(userPrincipalLookupService);
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ boolean t() {
        return this.a.isReadOnly();
    }

    @Override // j$.nio.file.FileSystem
    public final /* synthetic */ e0 v() {
        return e0.f(this.a.newWatchService());
    }
}
