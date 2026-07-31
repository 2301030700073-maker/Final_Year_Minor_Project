package okio;

import java.io.Closeable;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArrayDeque;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;
import okio.internal.ResourceFileSystem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class FileSystem implements Closeable {
    public static final JvmSystemFileSystem SYSTEM;
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    static {
        JvmSystemFileSystem jvmSystemFileSystem;
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
        new ResourceFileSystem(classLoader);
    }

    public abstract Sink appendingSink(Path path);

    public abstract void atomicMove(Path path, Path path2);

    public final void createDirectories(Path path) {
        ArrayDeque arrayDeque = new ArrayDeque();
        while (path != null && !exists(path)) {
            arrayDeque.addFirst(path);
            path = path.parent();
        }
        Iterator<E> it = arrayDeque.iterator();
        while (it.hasNext()) {
            createDirectory((Path) it.next());
        }
    }

    public abstract void createDirectory(Path path);

    public abstract void delete(Path path);

    public final void delete$1(Path path) {
        path.getClass();
        delete(path);
    }

    public final boolean exists(Path path) {
        path.getClass();
        return metadataOrNull(path) != null;
    }

    public abstract List list(Path path);

    public final FileMetadata metadata(Path path) {
        path.getClass();
        FileMetadata metadataOrNull = metadataOrNull(path);
        if (metadataOrNull != null) {
            return metadataOrNull;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("no such file: ", path);
        return null;
    }

    public abstract FileMetadata metadataOrNull(Path path);

    public abstract JvmFileHandle openReadOnly(Path path);

    public abstract Sink sink(Path path, boolean z);

    public abstract Source source(Path path);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }
}
