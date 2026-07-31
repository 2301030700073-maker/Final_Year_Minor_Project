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

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final /* synthetic */ class r implements Path, Iterable {
    public final /* synthetic */ java.nio.file.Path a;

    public /* synthetic */ r(java.nio.file.Path path) {
        this.a = path;
    }

    public static /* synthetic */ Path k(java.nio.file.Path path) {
        if (path == null) {
            return null;
        }
        return path instanceof s ? ((s) path).a : new r(path);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path C(Path path) {
        return k(this.a.relativize(s.k(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ h0 Q(i0 i0Var, f0[] f0VarArr) {
        return h0.a(this.a.register(i0Var == null ? null : i0Var.a, j$.com.android.tools.r8.a.P(f0VarArr)));
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Path path) {
        return this.a.compareTo((java.nio.file.Path) j$.com.android.tools.r8.a.u(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean endsWith(String str) {
        return this.a.endsWith(str);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.Path path = this.a;
        if (obj instanceof r) {
            obj = ((r) obj).a;
        }
        return path.equals(obj);
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public final /* synthetic */ void forEach(Consumer consumer) {
        Iterable.EL.forEach(this.a, consumer);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getFileName() {
        return k(this.a.getFileName());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ h getFileSystem() {
        return f.F(this.a.getFileSystem());
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
        return new w(this.a.iterator());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ h0 j(i0 i0Var, f0[] f0VarArr, g0[] g0VarArr) {
        java.nio.file.Path path = this.a;
        WatchEvent.Modifier[] modifierArr = null;
        WatchService watchService = i0Var == null ? null : i0Var.a;
        WatchEvent.Kind<?>[] P = j$.com.android.tools.r8.a.P(f0VarArr);
        if (g0VarArr != null) {
            int length = g0VarArr.length;
            WatchEvent.Modifier[] modifierArr2 = new WatchEvent.Modifier[length];
            for (int i = 0; i < length; i++) {
                g0 g0Var = g0VarArr[i];
                modifierArr2[i] = g0Var == null ? null : g0Var.a;
            }
            modifierArr = modifierArr2;
        }
        return h0.a(path.register(watchService, P, modifierArr));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path l(Path path) {
        return k(this.a.resolve(s.k(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path m(LinkOption[] linkOptionArr) {
        return k(this.a.toRealPath(j$.com.android.tools.r8.a.O(linkOptionArr)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path normalize() {
        return k(this.a.normalize());
    }

    @Override // j$.nio.file.Path
    /* renamed from: p */
    public final /* synthetic */ int compareTo(Path path) {
        return this.a.compareTo(s.k(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean r(Path path) {
        return this.a.startsWith(s.k(path));
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
        return this.a.endsWith(s.k(path));
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
    public final /* synthetic */ String toString() {
        return this.a.toString();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ URI toUri() {
        return this.a.toUri();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path v(Path path) {
        return k(this.a.resolveSibling(s.k(path)));
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator<Path> spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }
}
