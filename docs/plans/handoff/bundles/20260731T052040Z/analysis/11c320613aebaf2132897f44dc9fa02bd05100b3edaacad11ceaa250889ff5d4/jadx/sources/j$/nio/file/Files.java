package j$.nio.file;

import j$.io.InputStreamRetargetClass;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileAttribute;
import j$.util.Objects;
import j$.util.Spliterators;
import j$.util.stream.Stream;
import j$.util.stream.StreamSupport;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UncheckedIOException;
import java.nio.file.AtomicMoveNotSupportedException;
import java.nio.file.DirectoryStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.FileSystemException;
import java.nio.file.NoSuchFileException;
import java.util.Iterator;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class Files {
    public static final Set a = j$.com.android.tools.r8.a.I(new Object[]{a0.CREATE_NEW, a0.WRITE});

    public static j$.nio.file.spi.d a(Path path) {
        return path.getFileSystem().C();
    }

    public static long copy(InputStream inputStream, Path path, CopyOption... copyOptionArr) {
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
                deleteIfExists(path);
            } catch (SecurityException e) {
                e = e;
            }
        }
        e = null;
        try {
            OutputStream newOutputStream = newOutputStream(path, a0.CREATE_NEW, a0.WRITE);
            try {
                long transferTo = InputStreamRetargetClass.transferTo(inputStream, newOutputStream);
                if (newOutputStream != null) {
                    newOutputStream.close();
                }
                return transferTo;
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
            if (e != null) {
                throw e;
            }
            throw e2;
        }
    }

    public static Path createDirectories(Path path, FileAttribute<?>... fileAttributeArr) {
        try {
            try {
                a(path).c(path, fileAttributeArr);
            } catch (FileAlreadyExistsException e) {
                try {
                    if (!isDirectory(path, LinkOption.NOFOLLOW_LINKS)) {
                        throw e;
                    }
                } catch (FileAlreadyExistsException e2) {
                    throw e2;
                }
            }
            return path;
        } catch (IOException unused) {
            try {
                path = path.toAbsolutePath();
                e = null;
            } catch (SecurityException e3) {
                e = e3;
            }
            Path parent = path.getParent();
            while (parent != null) {
                try {
                    parent.getFileSystem().C().a(parent, new a[0]);
                    break;
                } catch (NoSuchFileException unused2) {
                    parent = parent.getParent();
                }
            }
            if (parent == null) {
                if (e == null) {
                    throw new FileSystemException(path.toString(), null, "Unable to determine if root directory exists");
                }
                throw e;
            }
            Iterator it = parent.C(path).iterator();
            while (it.hasNext()) {
                parent = parent.l((Path) it.next());
                try {
                    a(parent).c(parent, fileAttributeArr);
                } catch (FileAlreadyExistsException e4) {
                    if (!isDirectory(parent, LinkOption.NOFOLLOW_LINKS)) {
                        throw e4;
                    }
                }
            }
            return path;
        }
    }

    public static Path createFile(Path path, FileAttribute<?>... fileAttributeArr) {
        a(path).q(path, a, fileAttributeArr).close();
        return path;
    }

    public static boolean deleteIfExists(Path path) {
        return a(path).g(path);
    }

    public static boolean exists(Path path, LinkOption... linkOptionArr) {
        if (linkOptionArr.length == 0) {
            a(path);
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
                a(path).a(path, new a[0]);
            } else {
                readAttributes(path, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isDirectory(Path path, LinkOption... linkOptionArr) {
        if (linkOptionArr.length == 0) {
            a(path);
        }
        try {
            return readAttributes(path, BasicFileAttributes.class, linkOptionArr).isDirectory();
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isRegularFile(Path path, LinkOption... linkOptionArr) {
        if (linkOptionArr.length == 0) {
            a(path);
        }
        try {
            return readAttributes(path, BasicFileAttributes.class, linkOptionArr).isRegularFile();
        } catch (IOException unused) {
            return false;
        }
    }

    public static boolean isWritable(Path path) {
        try {
            a(path).a(path, a.WRITE);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static Stream<Path> list(Path path) {
        final DirectoryStream r = a(path).r(path, n.a);
        try {
            return (Stream) StreamSupport.stream(Spliterators.spliteratorUnknownSize(new k(r.iterator()), 1), false).onClose(new Runnable() { // from class: j$.nio.file.l
                @Override // java.lang.Runnable
                public final void run() {
                    DirectoryStream directoryStream = DirectoryStream.this;
                    Set set = Files.a;
                    try {
                        directoryStream.close();
                    } catch (IOException e) {
                        throw new UncheckedIOException(e);
                    }
                }
            });
        } catch (Error | RuntimeException e) {
            try {
                r.close();
            } catch (IOException e2) {
                try {
                    e.addSuppressed(e2);
                } catch (Throwable unused) {
                }
            }
            throw e;
        }
    }

    public static Path move(Path path, Path path2, CopyOption... copyOptionArr) {
        j$.nio.file.spi.d a2 = a(path);
        if (a(path2).equals(a2)) {
            a2.o(path, path2, copyOptionArr);
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
                    m.f("'", copyOption2, "' is not a recognized copy option");
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
            deleteIfExists(path2);
        } else if (exists(path2, new LinkOption[0])) {
            throw new FileAlreadyExistsException(path2.toString());
        }
        if (readAttributes.isDirectory()) {
            a(path2).c(path2, new FileAttribute[0]);
        } else {
            InputStream newInputStream = newInputStream(path, new OpenOption[0]);
            try {
                copy(newInputStream, path2, new CopyOption[0]);
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
                ((j$.nio.file.attribute.d) path2.getFileSystem().C().h(path2, j$.nio.file.attribute.d.class, new LinkOption[0])).a(readAttributes.lastModifiedTime(), readAttributes.lastAccessTime(), readAttributes.creationTime());
            } catch (Throwable th3) {
                try {
                    path2.getFileSystem().C().f(path2);
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        path.getFileSystem().C().f(path);
        return path2;
    }

    public static InputStream newInputStream(Path path, OpenOption... openOptionArr) {
        return a(path).v(path, openOptionArr);
    }

    public static OutputStream newOutputStream(Path path, OpenOption... openOptionArr) {
        return a(path).w(path, openOptionArr);
    }

    public static <A extends BasicFileAttributes> A readAttributes(Path path, Class<A> cls, LinkOption... linkOptionArr) {
        return (A) a(path).x(path, cls, linkOptionArr);
    }

    public static Path readSymbolicLink(Path path) {
        return a(path).z(path);
    }

    public static long size(Path path) {
        return readAttributes(path, BasicFileAttributes.class, new LinkOption[0]).size();
    }
}
