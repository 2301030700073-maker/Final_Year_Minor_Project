package okio;

import androidx.compose.ui.unit.IntOffsetKt;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import j$.nio.channels.DesugarChannels;
import j$.nio.file.CopyOption;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.OpenOption;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.StandardOpenOption;
import j$.nio.file.attribute.FileAttribute;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.nio.channels.FileChannel;
import java.nio.file.DirectoryStream;
import java.nio.file.NoSuchFileException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Reflection;
import kotlinx.io.Sink$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NioFileSystemWrappingFileSystem extends NioSystemFileSystem {
    public final j$.nio.file.FileSystem nioFileSystem;

    public NioFileSystemWrappingFileSystem(j$.nio.file.FileSystem fileSystem) {
        this.nioFileSystem = fileSystem;
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final Sink appendingSink(Path path, boolean z) {
        path.getClass();
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        createListBuilder.add(StandardOpenOption.APPEND);
        if (!z) {
            createListBuilder.add(StandardOpenOption.CREATE);
        }
        ListBuilder build = IntOffsetKt.build(createListBuilder);
        j$.nio.file.Path resolve = resolve(path);
        StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
        OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
        OutputStream newOutputStream = Files.newOutputStream(resolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
        newOutputStream.getClass();
        return new OutputStreamSink(newOutputStream, new Timeout());
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public final void atomicMove(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        try {
            Files.move(resolve(path), resolve(path2), (CopyOption[]) Arrays.copyOf(new CopyOption[]{StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING}, 2)).getClass();
        } catch (UnsupportedOperationException unused) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final Path canonicalize(Path path) {
        path.getClass();
        try {
            String str = Path.DIRECTORY_SEPARATOR;
            j$.nio.file.Path realPath = resolve(path).toRealPath(new LinkOption[0]);
            realPath.getClass();
            return Path.Companion.get$default(realPath);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
        }
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.nioFileSystem.close();
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0011, code lost:
    
        if (r0.isDirectory == true) goto L8;
     */
    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void createDirectory(okio.Path r4, boolean r5) {
        /*
            r3 = this;
            r4.getClass()
            j$.nio.file.Path r0 = r3.resolve(r4)
            okio.FileMetadata r0 = okio.NioSystemFileSystem.metadataOrNull(r0)
            r1 = 0
            if (r0 == 0) goto L14
            boolean r0 = r0.isDirectory
            r2 = 1
            if (r0 != r2) goto L14
            goto L15
        L14:
            r2 = r1
        L15:
            if (r2 == 0) goto L20
            if (r5 != 0) goto L1a
            goto L20
        L1a:
            java.lang.String r3 = " already exists."
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r4, r3)
            return
        L20:
            j$.nio.file.Path r3 = r3.resolve(r4)     // Catch: java.io.IOException -> L34
            j$.nio.file.attribute.FileAttribute[] r5 = new j$.nio.file.attribute.FileAttribute[r1]     // Catch: java.io.IOException -> L34
            java.lang.Object[] r5 = java.util.Arrays.copyOf(r5, r1)     // Catch: java.io.IOException -> L34
            j$.nio.file.attribute.FileAttribute[] r5 = (j$.nio.file.attribute.FileAttribute[]) r5     // Catch: java.io.IOException -> L34
            j$.nio.file.Path r3 = j$.nio.file.Files.createDirectory(r3, r5)     // Catch: java.io.IOException -> L34
            r3.getClass()     // Catch: java.io.IOException -> L34
            return
        L34:
            r3 = move-exception
            if (r2 == 0) goto L38
            return
        L38:
            java.io.IOException r5 = new java.io.IOException
            java.lang.String r0 = "failed to create directory: "
            java.lang.String r4 = kotlinx.io.Sink$CC.m(r4, r0)
            r5.<init>(r4, r3)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.NioFileSystemWrappingFileSystem.createDirectory(okio.Path, boolean):void");
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public final void createSymlink(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        Files.createSymbolicLink(resolve(path), resolve(path2), (FileAttribute[]) Arrays.copyOf(new FileAttribute[0], 0)).getClass();
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final void delete(Path path, boolean z) {
        path.getClass();
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        j$.nio.file.Path resolve = resolve(path);
        try {
            Files.delete(resolve);
        } catch (NoSuchFileException unused) {
            if (z) {
                throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
            }
        } catch (IOException unused2) {
            if (Files.exists(resolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$4(Sink$CC.m(path, "failed to delete "));
            }
        }
    }

    public final ArrayList list(Path path, boolean z) {
        j$.nio.file.Path resolve = resolve(path);
        try {
            DirectoryStream<j$.nio.file.Path> newDirectoryStream = Files.newDirectoryStream(resolve, "*");
            try {
                newDirectoryStream.getClass();
                List<j$.nio.file.Path> list = CollectionsKt.toList(newDirectoryStream);
                newDirectoryStream.close();
                ArrayList arrayList = new ArrayList();
                for (j$.nio.file.Path path2 : list) {
                    String str = Path.DIRECTORY_SEPARATOR;
                    arrayList.add(Path.Companion.get$default(path2));
                }
                CollectionsKt__MutableCollectionsJVMKt.sort(arrayList);
                return arrayList;
            } finally {
            }
        } catch (Exception unused) {
            if (!z) {
                return null;
            }
            if (!Files.exists(resolve, (LinkOption[]) Arrays.copyOf(new LinkOption[0], 0))) {
                throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(Sink$CC.m(path, "failed to list "));
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final List listOrNull(Path path) {
        path.getClass();
        return list(path, false);
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem, okio.FileSystem
    public final FileMetadata metadataOrNull(Path path) {
        path.getClass();
        return NioSystemFileSystem.metadataOrNull(resolve(path));
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final FileHandle openReadOnly(Path path) {
        path.getClass();
        try {
            FileChannel open = DesugarChannels.open(resolve(path), StandardOpenOption.READ);
            open.getClass();
            return new JvmFileHandle(open, 1);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final FileHandle openReadWrite(Path path, boolean z, boolean z2) {
        path.getClass();
        if (z && z2) {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot require mustCreate and mustExist at the same time.");
            return null;
        }
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        createListBuilder.add(StandardOpenOption.READ);
        createListBuilder.add(StandardOpenOption.WRITE);
        if (z) {
            createListBuilder.add(StandardOpenOption.CREATE_NEW);
        } else if (!z2) {
            createListBuilder.add(StandardOpenOption.CREATE);
        }
        ListBuilder build = IntOffsetKt.build(createListBuilder);
        try {
            j$.nio.file.Path resolve = resolve(path);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
            FileChannel open = DesugarChannels.open(resolve, (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length));
            open.getClass();
            return new JvmFileHandle(open, 1);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
        }
    }

    public final j$.nio.file.Path resolve(Path path) {
        j$.nio.file.Path path2 = this.nioFileSystem.getPath(path.bytes.utf8(), new String[0]);
        path2.getClass();
        return path2;
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final Sink sink(Path path, boolean z) {
        path.getClass();
        ListBuilder createListBuilder = IntOffsetKt.createListBuilder();
        if (z) {
            createListBuilder.add(StandardOpenOption.CREATE_NEW);
        }
        ListBuilder build = IntOffsetKt.build(createListBuilder);
        try {
            j$.nio.file.Path resolve = resolve(path);
            StandardOpenOption[] standardOpenOptionArr = (StandardOpenOption[]) build.toArray(new StandardOpenOption[0]);
            OpenOption[] openOptionArr = (OpenOption[]) Arrays.copyOf(standardOpenOptionArr, standardOpenOptionArr.length);
            OutputStream newOutputStream = Files.newOutputStream(resolve, (OpenOption[]) Arrays.copyOf(openOptionArr, openOptionArr.length));
            newOutputStream.getClass();
            return new OutputStreamSink(newOutputStream, new Timeout());
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final Source source(Path path) {
        path.getClass();
        try {
            InputStream newInputStream = Files.newInputStream(resolve(path), (OpenOption[]) Arrays.copyOf(new OpenOption[0], 0));
            newInputStream.getClass();
            return Okio.source(newInputStream);
        } catch (NoSuchFileException unused) {
            throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
        }
    }

    @Override // okio.NioSystemFileSystem, okio.JvmSystemFileSystem
    public final String toString() {
        String simpleName = Reflection.getOrCreateKotlinClass(this.nioFileSystem.getClass()).getSimpleName();
        simpleName.getClass();
        return simpleName;
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final List list(Path path) {
        path.getClass();
        ArrayList list = list(path, true);
        list.getClass();
        return list;
    }
}
