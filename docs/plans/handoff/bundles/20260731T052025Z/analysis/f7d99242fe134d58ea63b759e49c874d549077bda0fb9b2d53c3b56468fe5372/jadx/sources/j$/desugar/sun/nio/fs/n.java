package j$.desugar.sun.nio.fs;

import j$.nio.file.FileSystem;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.b0;
import j$.nio.file.c0;
import j$.nio.file.d0;
import j$.nio.file.e0;
import j$.util.Objects;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class n implements Path {
    public static final Pattern h = Pattern.compile("/+");
    public final FileSystem a;
    public final String b;
    public final List c;
    public final boolean d;
    public final String e;
    public final String f;
    public volatile byte[] g;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public n(j$.nio.file.FileSystem r11, java.lang.String r12, java.lang.String r13, java.lang.String r14) {
        /*
            r10 = this;
            java.lang.String r0 = "/"
            boolean r3 = r12.startsWith(r0)
            boolean r0 = r12.isEmpty()
            if (r0 == 0) goto L18
            java.lang.String r12 = ""
            java.util.List r12 = java.util.Collections.singletonList(r12)
        L12:
            r1 = r10
            r2 = r11
            r4 = r12
            r5 = r13
            r6 = r14
            goto L5b
        L18:
            java.util.regex.Pattern r0 = j$.desugar.sun.nio.fs.n.h
            java.lang.String[] r12 = r0.split(r12)
            int r0 = r12.length
            r1 = 0
            j$.util.h1 r12 = j$.util.c.w(r12, r1, r0)
            j$.util.stream.Stream r12 = j$.util.stream.StreamSupport.stream(r12, r1)
            j$.desugar.sun.nio.fs.m r0 = new j$.desugar.sun.nio.fs.m
            r0.<init>(r1)
            j$.util.stream.Stream r12 = r12.filter(r0)
            j$.util.stream.j r4 = new j$.util.stream.j
            j$.desugar.sun.nio.fs.m r5 = new j$.desugar.sun.nio.fs.m
            r0 = 18
            r5.<init>(r0)
            j$.desugar.sun.nio.fs.m r6 = new j$.desugar.sun.nio.fs.m
            r0 = 19
            r6.<init>(r0)
            j$.desugar.sun.nio.fs.m r7 = new j$.desugar.sun.nio.fs.m
            r0 = 20
            r7.<init>(r0)
            j$.desugar.sun.nio.fs.m r8 = new j$.desugar.sun.nio.fs.m
            r0 = 21
            r8.<init>(r0)
            java.util.Set r9 = j$.util.stream.Collectors.b
            r4.<init>(r5, r6, r7, r8, r9)
            java.lang.Object r12 = r12.collect(r4)
            java.util.List r12 = (java.util.List) r12
            goto L12
        L5b:
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.desugar.sun.nio.fs.n.<init>(j$.nio.file.FileSystem, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // j$.nio.file.Path
    public final Path B(Path path) {
        int i = 0;
        if (!(path instanceof n)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        if (this.d != ((n) path).d) {
            j$.nio.file.j.c("'other' is different type of Path in absolute property.");
            return null;
        }
        List list = ((n) path).c;
        int size = this.c.size();
        int size2 = list.size();
        while (i < size && i < size2 && ((String) this.c.get(i)).equals(list.get(i))) {
            i++;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = i; i2 < size; i2++) {
            arrayList.add("..");
        }
        while (i < size2) {
            arrayList.add((String) list.get(i));
            i++;
        }
        return new n(this.a, false, arrayList, this.e, this.f);
    }

    @Override // j$.nio.file.Path
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final n toAbsolutePath() {
        if (this.d) {
            return this;
        }
        FileSystem fileSystem = this.a;
        String str = this.e;
        return new n(fileSystem, str, str, this.f).l(this);
    }

    @Override // j$.nio.file.Path
    public final d0 O(e0 e0Var, b0... b0VarArr) {
        j(e0Var, b0VarArr, new c0[0]);
        throw null;
    }

    @Override // j$.nio.file.Path
    public final boolean endsWith(String str) {
        return t(new n(this.a, str, this.e, this.f));
    }

    @Override // j$.nio.file.Path
    public final boolean equals(Object obj) {
        return (obj instanceof n) && compareTo((n) obj) == 0;
    }

    @Override // j$.nio.file.Path
    public final Path getFileName() {
        if (this.c.isEmpty()) {
            if (this.d) {
                return null;
            }
            return this;
        }
        return new n(this.a, (String) this.c.get(r2.size() - 1), this.e, this.f);
    }

    @Override // j$.nio.file.Path
    public final FileSystem getFileSystem() {
        return this.a;
    }

    @Override // j$.nio.file.Path
    public final int getNameCount() {
        return this.c.size();
    }

    @Override // j$.nio.file.Path
    public final Path getRoot() {
        if (!this.d) {
            return null;
        }
        FileSystem fileSystem = this.a;
        String str = this.f;
        return new n(fileSystem, str, this.e, str);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // j$.nio.file.Path
    public final boolean isAbsolute() {
        return this.d;
    }

    @Override // j$.nio.file.Path, java.lang.Iterable
    public final Iterator iterator() {
        return new j$.nio.file.n(this);
    }

    @Override // j$.nio.file.Path
    public final d0 j(e0 e0Var, b0[] b0VarArr, c0... c0VarArr) {
        throw new UnsupportedOperationException("Watch Service is not supported");
    }

    @Override // j$.nio.file.Path
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public final n getName(int i) {
        if (i < 0 || i >= this.c.size()) {
            throw new IllegalArgumentException(String.format("Requested name for index (%d) is out of bound in \n%s.", Integer.valueOf(i), this));
        }
        return new n(this.a, (String) this.c.get(i), this.e, this.f);
    }

    @Override // j$.nio.file.Path
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final n getParent() {
        int size = this.c.size();
        if (size == 0) {
            return null;
        }
        if (size == 1 && !this.d) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (this.d) {
            sb.append("/");
        }
        sb.append(j$.com.android.tools.r8.a.D(this.c.subList(0, size - 1)));
        return new n(this.a, sb.toString(), this.e, this.f);
    }

    @Override // j$.nio.file.Path
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public final n l(Path path) {
        if (!(path instanceof n)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        if (((n) path).d) {
            return (n) path;
        }
        return new n(this.a, this.b + "/" + path, this.e, this.f);
    }

    @Override // j$.nio.file.Path
    public final Path normalize() {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (String str : this.c) {
            str.getClass();
            if (!str.equals(".")) {
                if (str.equals("..")) {
                    arrayDeque.removeLast();
                } else {
                    arrayDeque.add(str);
                }
            }
        }
        return new n(this.a, (this.d ? "/" : "").concat(j$.com.android.tools.r8.a.D(arrayDeque)), this.e, this.f);
    }

    @Override // java.lang.Comparable
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final int compareTo(Path path) {
        return this.b.compareTo(((n) path).b);
    }

    @Override // j$.nio.file.Path
    public final boolean q(Path path) {
        int size;
        Objects.requireNonNull(path);
        if (!(path instanceof n)) {
            return false;
        }
        n nVar = (n) path;
        if (this.d != nVar.d || this.c.size() < (size = nVar.c.size())) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!getName(i).equals(nVar.getName(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.nio.file.Path
    public final Path resolve(String str) {
        return l(getFileSystem().getPath(str, new String[0]));
    }

    @Override // j$.nio.file.Path
    public final Path resolveSibling(String str) {
        return v(new n(this.a, str, this.e, this.f));
    }

    @Override // j$.nio.file.Path
    public final boolean startsWith(String str) {
        return q(new n(this.a, str, this.e, this.f));
    }

    @Override // j$.nio.file.Path
    public final Path subpath(int i, int i2) {
        return new n(this.a, j$.com.android.tools.r8.a.D(this.c.subList(i, i2)), this.e, this.f);
    }

    @Override // j$.nio.file.Path
    public final boolean t(Path path) {
        Objects.requireNonNull(path);
        if (!(path instanceof n)) {
            return false;
        }
        n nVar = (n) path;
        if (nVar.d) {
            return equals(path);
        }
        int size = nVar.c.size();
        if (this.c.size() < size) {
            return false;
        }
        int size2 = this.c.size();
        for (int i = size - 1; i >= 0; i--) {
            if (!getName((i - size) + size2).equals(nVar.getName(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.nio.file.Path
    public final File toFile() {
        return new File(this.b);
    }

    @Override // j$.nio.file.Path
    public final Path toRealPath(LinkOption[] linkOptionArr) {
        this.a.B().a(this, j$.nio.file.a.READ);
        return Arrays.asList(linkOptionArr).contains(LinkOption.NOFOLLOW_LINKS) ? toAbsolutePath() : new n(this.a, toFile().getCanonicalPath(), this.e, this.f);
    }

    @Override // j$.nio.file.Path
    public final String toString() {
        return this.b;
    }

    @Override // j$.nio.file.Path
    public final URI toUri() {
        char[] cArr = o.c;
        n absolutePath = toAbsolutePath();
        if (absolutePath.g == null) {
            absolutePath.g = absolutePath.b.getBytes(p.a);
        }
        byte[] bArr = absolutePath.g;
        StringBuilder sb = new StringBuilder("file:///");
        for (int i = 1; i < bArr.length; i++) {
            char c = (char) (bArr[i] & 255);
            long j = o.a;
            long j2 = o.b;
            if (c >= '@' ? c >= 128 || ((1 << (c - '@')) & j2) == 0 : (j & (1 << c)) == 0) {
                sb.append('%');
                char[] cArr2 = o.c;
                sb.append(cArr2[(c >> 4) & 15]);
                sb.append(cArr2[c & 15]);
            } else {
                sb.append(c);
            }
        }
        if (sb.charAt(sb.length() - 1) != '/' && toFile().isDirectory()) {
            sb.append('/');
        }
        try {
            return new URI(sb.toString());
        } catch (URISyntaxException e) {
            throw new AssertionError(e);
        }
    }

    @Override // j$.nio.file.Path
    /* renamed from: u, reason: merged with bridge method [inline-methods] */
    public final n v(Path path) {
        if (!(Objects.requireNonNull(path) instanceof n)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        n parent = getParent();
        return parent == null ? (n) path : parent.l(path);
    }

    public n(FileSystem fileSystem, boolean z, List list, String str, String str2) {
        this.a = fileSystem;
        this.d = z;
        this.c = list;
        this.b = (z ? "/" : "").concat(j$.com.android.tools.r8.a.D(list));
        this.e = str;
        this.f = str2;
    }
}
