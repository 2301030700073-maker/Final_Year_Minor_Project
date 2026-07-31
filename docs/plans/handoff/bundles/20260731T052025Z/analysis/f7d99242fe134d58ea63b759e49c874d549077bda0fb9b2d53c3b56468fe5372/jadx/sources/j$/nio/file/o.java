package j$.nio.file;

import j$.lang.Iterable;
import j$.util.Spliterator;
import j$.util.c1;
import java.io.File;
import java.net.URI;
import java.nio.file.WatchEvent;
import java.nio.file.WatchService;
import java.util.Iterator;
import java.util.function.Consumer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final /* synthetic */ class o implements Path, Iterable {
    public final /* synthetic */ java.nio.file.Path a;

    public /* synthetic */ o(java.nio.file.Path path) {
        this.a = path;
    }

    public static /* synthetic */ Path k(java.nio.file.Path path) {
        if (path == null) {
            return null;
        }
        return path instanceof p ? ((p) path).a : new o(path);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path B(Path path) {
        return k(this.a.relativize(p.k(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ d0 O(e0 e0Var, b0[] b0VarArr) {
        return d0.a(this.a.register(e0Var == null ? null : e0Var.a, j$.com.android.tools.r8.a.N(b0VarArr)));
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Path path) {
        return this.a.compareTo((java.nio.file.Path) j$.com.android.tools.r8.a.s(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean endsWith(String str) {
        return this.a.endsWith(str);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.Path path = this.a;
        if (obj instanceof o) {
            obj = ((o) obj).a;
        }
        return path.equals(obj);
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final /* synthetic */ void forEach(Consumer consumer) {
        j$.com.android.tools.r8.a.z(this.a, consumer);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getFileName() {
        return k(this.a.getFileName());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ FileSystem getFileSystem() {
        return f.H(this.a.getFileSystem());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getName(int i) {
        return k(this.a.getName(i));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ int getNameCount() {
        return this.a.getNameCount();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getParent() {
        return k(this.a.getParent());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getRoot() {
        return k(this.a.getRoot());
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean isAbsolute() {
        return this.a.isAbsolute();
    }

    @Override // j$.nio.file.Path, java.lang.Iterable
    public final Iterator iterator() {
        return new t(this.a.iterator());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ d0 j(e0 e0Var, b0[] b0VarArr, c0[] c0VarArr) {
        java.nio.file.Path path = this.a;
        WatchEvent.Modifier[] modifierArr = null;
        WatchService watchService = e0Var == null ? null : e0Var.a;
        WatchEvent.Kind<?>[] N = j$.com.android.tools.r8.a.N(b0VarArr);
        if (c0VarArr != null) {
            int length = c0VarArr.length;
            WatchEvent.Modifier[] modifierArr2 = new WatchEvent.Modifier[length];
            for (int i = 0; i < length; i++) {
                c0 c0Var = c0VarArr[i];
                modifierArr2[i] = c0Var == null ? null : c0Var.a;
            }
            modifierArr = modifierArr2;
        }
        return d0.a(path.register(watchService, N, modifierArr));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path l(Path path) {
        return k(this.a.resolve(p.k(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path normalize() {
        return k(this.a.normalize());
    }

    @Override // j$.nio.file.Path
    /* renamed from: o */
    public final /* synthetic */ int compareTo(Path path) {
        return this.a.compareTo(p.k(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean q(Path path) {
        return this.a.startsWith(p.k(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolve(String str) {
        return k(this.a.resolve(str));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolveSibling(String str) {
        return k(this.a.resolveSibling(str));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public final /* synthetic */ Spliterator spliterator() {
        return c1.a(this.a.spliterator());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean startsWith(String str) {
        return this.a.startsWith(str);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path subpath(int i, int i2) {
        return k(this.a.subpath(i, i2));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean t(Path path) {
        return this.a.endsWith(p.k(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path toAbsolutePath() {
        return k(this.a.toAbsolutePath());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ File toFile() {
        return this.a.toFile();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path toRealPath(LinkOption[] linkOptionArr) {
        return k(this.a.toRealPath(j$.com.android.tools.r8.a.M(linkOptionArr)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ String toString() {
        return this.a.toString();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ URI toUri() {
        return this.a.toUri();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path v(Path path) {
        return k(this.a.resolveSibling(p.k(path)));
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator<Path> spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }
}
