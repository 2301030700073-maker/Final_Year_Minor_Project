package j$.nio.file;

import java.io.File;
import java.net.URI;
import java.util.Iterator;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public interface Path extends Comparable<Path>, Iterable<Path> {
    Path C(Path path);

    h0 Q(i0 i0Var, f0... f0VarArr);

    boolean endsWith(String str);

    boolean equals(Object obj);

    Path getFileName();

    h getFileSystem();

    Path getName(int i);

    int getNameCount();

    Path getParent();

    Path getRoot();

    boolean isAbsolute();

    Iterator iterator();

    h0 j(i0 i0Var, f0[] f0VarArr, g0... g0VarArr);

    Path l(Path path);

    Path m(LinkOption... linkOptionArr);

    Path normalize();

    int p(Path path);

    boolean r(Path path);

    Path resolve(String str);

    Path resolveSibling(String str);

    boolean startsWith(String str);

    Path subpath(int i, int i2);

    boolean t(Path path);

    Path toAbsolutePath();

    File toFile();

    String toString();

    URI toUri();

    Path v(Path path);
}
