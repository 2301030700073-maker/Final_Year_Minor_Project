package okio;

import java.io.Closeable;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Path;
import okio.internal.ResourceFileSystem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2(path, "no such file: ");
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
