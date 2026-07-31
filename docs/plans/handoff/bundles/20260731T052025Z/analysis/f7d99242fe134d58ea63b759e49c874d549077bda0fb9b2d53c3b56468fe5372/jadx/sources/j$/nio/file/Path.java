package j$.nio.file;

import java.io.File;
import java.net.URI;
import java.util.Iterator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public interface Path extends Comparable<Path>, Iterable<Path> {
    Path B(Path path);

    d0 O(e0 e0Var, b0... b0VarArr);

    boolean endsWith(String str);

    boolean equals(Object obj);

    Path getFileName();

    FileSystem getFileSystem();

    Path getName(int i);

    int getNameCount();

    Path getParent();

    Path getRoot();

    boolean isAbsolute();

    Iterator iterator();

    d0 j(e0 e0Var, b0[] b0VarArr, c0... c0VarArr);

    Path l(Path path);

    Path normalize();

    int o(Path path);

    boolean q(Path path);

    Path resolve(String str);

    Path resolveSibling(String str);

    boolean startsWith(String str);

    Path subpath(int i, int i2);

    boolean t(Path path);

    Path toAbsolutePath();

    File toFile();

    Path toRealPath(LinkOption... linkOptionArr);

    String toString();

    URI toUri();

    Path v(Path path);
}
