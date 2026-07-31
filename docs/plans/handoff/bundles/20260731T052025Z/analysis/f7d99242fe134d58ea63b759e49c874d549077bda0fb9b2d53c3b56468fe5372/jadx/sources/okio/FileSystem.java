package okio;

import java.io.Closeable;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.io.Sink$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import okio.internal.FileSystem$commonDeleteRecursively$sequence$1;
import okio.internal.FileSystem$commonListRecursively$1;
import okio.internal.ResourceFileSystem;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FileSystem implements Closeable {
    public static final Companion Companion = new Companion();
    public static final FileSystem RESOURCES;
    public static final FileSystem SYSTEM;
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    /* renamed from: -write$default, reason: not valid java name */
    public static /* synthetic */ Object m1058write$default(FileSystem fileSystem, Path path, boolean z, Function1 function1, int i, Object obj) {
        ?? r3;
        Object th = null;
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: write");
            return null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        path.getClass();
        function1.getClass();
        RealBufferedSink buffer = Okio.buffer(fileSystem.sink(path, z));
        try {
            Object invoke = function1.invoke(buffer);
            try {
                buffer.close();
            } catch (Throwable th2) {
                th = th2;
            }
            Object obj2 = th;
            th = invoke;
            r3 = obj2;
        } catch (Throwable th3) {
            try {
                buffer.close();
                r3 = th3;
            } catch (Throwable th4) {
                ResultKt.addSuppressed(th3, th4);
                r3 = th3;
            }
        }
        if (r3 == 0) {
            return th;
        }
        throw r3;
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        String str = Path.DIRECTORY_SEPARATOR;
        String property = System.getProperty("java.io.tmpdir");
        property.getClass();
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get(property);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        classLoader.getClass();
        RESOURCES = new ResourceFileSystem(classLoader);
    }

    public static /* synthetic */ Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: appendingSink");
            return null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.appendingSink(path, z);
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: createDirectories");
            return;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectories(path, z);
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: createDirectory");
            return;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.createDirectory(path, z);
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: delete");
            return;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.delete(path, z);
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: deleteRecursively");
            return;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        fileSystem.deleteRecursively(path, z);
    }

    public static final FileSystem get(j$.nio.file.FileSystem fileSystem) {
        Companion.getClass();
        fileSystem.getClass();
        return new NioFileSystemWrappingFileSystem(fileSystem);
    }

    public static /* synthetic */ Sequence listRecursively$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: listRecursively");
            return null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.listRecursively(path, z);
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: openReadWrite");
            return null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        return fileSystem.openReadWrite(path, z, z2);
    }

    public static /* synthetic */ Sink sink$default(FileSystem fileSystem, Path path, boolean z, int i, Object obj) {
        if (obj != null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Super calls with default arguments not supported in this target, function: sink");
            return null;
        }
        if ((i & 2) != 0) {
            z = false;
        }
        return fileSystem.sink(path, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* renamed from: -read, reason: not valid java name */
    public final <T> T m1059read(Path path, Function1 function1) {
        ?? r3;
        path.getClass();
        function1.getClass();
        RealBufferedSource buffer = Okio.buffer(source(path));
        T th = null;
        try {
            ?? invoke = function1.invoke(buffer);
            try {
                buffer.close();
            } catch (Throwable th2) {
                th = th2;
            }
            r3 = th;
            th = invoke;
        } catch (Throwable th3) {
            try {
                buffer.close();
                r3 = th3;
            } catch (Throwable th4) {
                ResultKt.addSuppressed(th3, th4);
                r3 = th3;
            }
        }
        if (r3 == 0) {
            return th;
        }
        throw r3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    /* renamed from: -write, reason: not valid java name */
    public final <T> T m1060write(Path path, boolean z, Function1 function1) {
        ?? r3;
        path.getClass();
        function1.getClass();
        RealBufferedSink buffer = Okio.buffer(sink(path, z));
        T th = null;
        try {
            ?? invoke = function1.invoke(buffer);
            try {
                buffer.close();
            } catch (Throwable th2) {
                th = th2;
            }
            r3 = th;
            th = invoke;
        } catch (Throwable th3) {
            try {
                buffer.close();
                r3 = th3;
            } catch (Throwable th4) {
                ResultKt.addSuppressed(th3, th4);
                r3 = th3;
            }
        }
        if (r3 == 0) {
            return th;
        }
        throw r3;
    }

    public final Sink appendingSink(Path path) {
        path.getClass();
        return appendingSink(path, false);
    }

    public abstract Sink appendingSink(Path path, boolean z);

    public abstract void atomicMove(Path path, Path path2);

    public abstract Path canonicalize(Path path);

    public void copy(Path path, Path path2) {
        Throwable th;
        Long l;
        path.getClass();
        path2.getClass();
        Source source = source(path);
        Throwable th2 = null;
        try {
            RealBufferedSink buffer = Okio.buffer(sink$default(this, path2, false, 2, null));
            try {
                source.getClass();
                long j = 0;
                while (true) {
                    long read = source.read(buffer.bufferField, 8192L);
                    if (read == -1) {
                        break;
                    }
                    j += read;
                    buffer.emitCompleteSegments();
                }
                l = Long.valueOf(j);
                try {
                    buffer.close();
                    th = null;
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                try {
                    buffer.close();
                } catch (Throwable th5) {
                    ResultKt.addSuppressed(th4, th5);
                }
                th = th4;
                l = null;
            }
        } catch (Throwable th6) {
            th2 = th6;
            if (source != null) {
                try {
                    source.close();
                } catch (Throwable th7) {
                    ResultKt.addSuppressed(th2, th7);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        l.getClass();
        if (source != null) {
            try {
                source.close();
            } catch (Throwable th8) {
                th2 = th8;
            }
        }
        if (th2 != null) {
            throw th2;
        }
    }

    public final void createDirectories(Path path, boolean z) {
        path.getClass();
        ArrayDeque arrayDeque = new ArrayDeque();
        for (Path path2 = path; path2 != null && !exists(path2); path2 = path2.parent()) {
            arrayDeque.addFirst(path2);
        }
        if (z && arrayDeque.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) path, (Object) " already exists.");
            return;
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            createDirectory$default(this, (Path) it.next(), false, 2, null);
        }
    }

    public final void createDirectory(Path path) {
        path.getClass();
        createDirectory(path, false);
    }

    public abstract void createDirectory(Path path, boolean z);

    public abstract void createSymlink(Path path, Path path2);

    public final void delete(Path path) {
        path.getClass();
        delete(path, false);
    }

    public abstract void delete(Path path, boolean z);

    public void deleteRecursively(Path path, boolean z) {
        path.getClass();
        SequenceBuilderIterator it = Base64.iterator(new FileSystem$commonDeleteRecursively$sequence$1(this, path, null, 0));
        while (it.hasNext()) {
            delete((Path) it.next(), z && !it.hasNext());
        }
    }

    public final boolean exists(Path path) {
        path.getClass();
        return metadataOrNull(path) != null;
    }

    public abstract List list(Path path);

    public abstract List listOrNull(Path path);

    public Sequence listRecursively(Path path, boolean z) {
        path.getClass();
        return new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(3, new FileSystem$commonListRecursively$1(path, this, z, null));
    }

    public final FileMetadata metadata(Path path) {
        path.getClass();
        FileMetadata metadataOrNull = metadataOrNull(path);
        if (metadataOrNull != null) {
            return metadataOrNull;
        }
        throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
    }

    public abstract FileMetadata metadataOrNull(Path path);

    public abstract FileHandle openReadOnly(Path path);

    public final FileHandle openReadWrite(Path path) {
        path.getClass();
        return openReadWrite(path, false, false);
    }

    public abstract FileHandle openReadWrite(Path path, boolean z, boolean z2);

    public final Sink sink(Path path) {
        path.getClass();
        return sink(path, false);
    }

    public abstract Sink sink(Path path, boolean z);

    public abstract Source source(Path path);

    public final Sequence listRecursively(Path path) {
        path.getClass();
        return listRecursively(path, false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public final void deleteRecursively(Path path) {
        path.getClass();
        deleteRecursively(path, false);
    }

    public final void createDirectories(Path path) {
        path.getClass();
        createDirectories(path, false);
    }
}
