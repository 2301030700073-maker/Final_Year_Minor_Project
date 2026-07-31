package j$.nio.file;

import j$.io.DesugarInputStream;
import j$.io.InputStreamRetargetInterface;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class Files {
    public static final /* synthetic */ int a = 0;

    static {
        j$.com.android.tools.r8.a.G(new Object[]{StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE});
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(InputStream inputStream, Path path, CopyOption... copyOptionArr) {
        Objects.requireNonNull(inputStream);
        int length = copyOptionArr.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            CopyOption copyOption = copyOptionArr[i];
            if (copyOption != StandardCopyOption.REPLACE_EXISTING) {
                if (copyOption == null) {
                    throw new NullPointerException("options contains 'null'");
                }
                throw new UnsupportedOperationException(copyOption + " not supported");
            }
            i++;
            z = true;
        }
        if (z) {
            try {
                path.getFileSystem().B().g(path);
            } catch (SecurityException e) {
                e = e;
            }
        }
        e = null;
        try {
            OutputStream newOutputStream = newOutputStream(path, StandardOpenOption.CREATE_NEW, StandardOpenOption.WRITE);
            try {
                if (inputStream instanceof InputStreamRetargetInterface) {
                    ((InputStreamRetargetInterface) inputStream).transferTo(newOutputStream);
                } else {
                    DesugarInputStream.transferTo(inputStream, newOutputStream);
                }
                if (newOutputStream != null) {
                    newOutputStream.close();
                }
            } catch (Throwable th) {
                if (newOutputStream != null) {
                    try {
                        newOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (FileAlreadyExistsException e2) {
            if (e == null) {
                throw e2;
            }
            throw e;
        }
    }

    public static j$.nio.file.spi.c b(Path path) {
        return path.getFileSystem().B();
    }

    public static Path createDirectory(Path path, FileAttribute<?>... fileAttributeArr) {
        b(path).c(path, fileAttributeArr);
        return path;
    }

    public static Path createSymbolicLink(Path path, Path path2, FileAttribute<?>... fileAttributeArr) {
        b(path).e(path, path2, fileAttributeArr);
        return path;
    }

    public static void delete(Path path) {
        b(path).f(path);
    }

    public static boolean exists(Path path, LinkOption... linkOptionArr) {
        if (linkOptionArr.length == 0) {
            b(path);
        }
        try {
            int length = linkOptionArr.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                LinkOption linkOption = linkOptionArr[i];
                if (linkOption != LinkOption.NOFOLLOW_LINKS) {
                    linkOption.getClass();
                    throw new AssertionError("Should not get here");
                }
                i++;
                z = false;
            }
            if (z) {
                b(path).a(path, new a[0]);
            } else {
                readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static Path move(Path path, Path path2, CopyOption... copyOptionArr) {
        j$.nio.file.spi.c b = b(path);
        if (b(path2).equals(b)) {
            b.o(path, path2, copyOptionArr);
            return path2;
        }
        int length = copyOptionArr.length;
        int i = length + 2;
        CopyOption[] copyOptionArr2 = new CopyOption[i];
        for (int i2 = 0; i2 < length; i2++) {
            CopyOption copyOption = copyOptionArr[i2];
            if (copyOption == StandardCopyOption.ATOMIC_MOVE) {
                throw new AtomicMoveNotSupportedException(null, null, "Atomic move between providers is not supported");
            }
            copyOptionArr2[i2] = copyOption;
        }
        copyOptionArr2[length] = LinkOption.NOFOLLOW_LINKS;
        copyOptionArr2[length + 1] = StandardCopyOption.COPY_ATTRIBUTES;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < i; i3++) {
            CopyOption copyOption2 = copyOptionArr2[i3];
            if (copyOption2 == StandardCopyOption.REPLACE_EXISTING) {
                z2 = true;
            } else if (copyOption2 == LinkOption.NOFOLLOW_LINKS) {
                z = false;
            } else {
                if (copyOption2 != StandardCopyOption.COPY_ATTRIBUTES) {
                    copyOption2.getClass();
                    j.f("'", copyOption2, "' is not a recognized copy option");
                    return null;
                }
                z3 = true;
            }
        }
        BasicFileAttributes readAttributes = readAttributes(path, BasicFileAttributes.class, z ? new LinkOption[0] : new LinkOption[]{LinkOption.NOFOLLOW_LINKS});
        if (readAttributes.isSymbolicLink()) {
            throw new IOException("Copying of symbolic links not supported");
        }
        if (z2) {
            path2.getFileSystem().B().g(path2);
        } else if (exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (readAttributes.isDirectory()) {
            createDirectory(path2, new FileAttribute[0]);
        } else {
            InputStream newInputStream = newInputStream(path, new OpenOption[0]);
            try {
                a(newInputStream, path2, new CopyOption[0]);
                if (newInputStream != null) {
                    newInputStream.close();
                }
            } catch (Throwable th) {
                if (newInputStream != null) {
                    try {
                        newInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        if (z3) {
            try {
                ((j$.nio.file.attribute.d) path2.getFileSystem().B().h(path2, j$.nio.file.attribute.d.class, new LinkOption[0])).a(readAttributes.lastModifiedTime(), readAttributes.lastAccessTime(), readAttributes.creationTime());
            } catch (Throwable th3) {
                try {
                    delete(path2);
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        delete(path);
        return path2;
    }

    public static DirectoryStream<Path> newDirectoryStream(Path path, String str) {
        if (str.equals("*")) {
            return b(path).r(path, k.a);
        }
        FileSystem fileSystem = path.getFileSystem();
        return fileSystem.B().r(path, new j$.desugar.sun.nio.fs.g(1, fileSystem.j("glob:".concat(str))));
    }

    public static InputStream newInputStream(Path path, OpenOption... openOptionArr) {
        return b(path).v(path, openOptionArr);
    }

    public static OutputStream newOutputStream(Path path, OpenOption... openOptionArr) {
        return b(path).w(path, openOptionArr);
    }

    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        return (A) b(path).x(path, cls, linkOptionArr);
    }

    public static Path readSymbolicLink(Path path) {
        return b(path).z(path);
    }
}
