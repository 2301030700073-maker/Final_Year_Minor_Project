package okio;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    public final FileSystem delegate;

    public ForwardingFileSystem(FileSystem fileSystem) {
        fileSystem.getClass();
        this.delegate = fileSystem;
    }

    @Override // okio.FileSystem
    public final Sink appendingSink(Path path) {
        path.getClass();
        return this.delegate.appendingSink(path);
    }

    @Override // okio.FileSystem
    public final void atomicMove(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        this.delegate.atomicMove(path, path2);
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.delegate.close();
    }

    @Override // okio.FileSystem
    public final void createDirectory(Path path) {
        path.getClass();
        this.delegate.createDirectory(path);
    }

    @Override // okio.FileSystem
    public final void delete(Path path) {
        path.getClass();
        this.delegate.delete(path);
    }

    @Override // okio.FileSystem
    public final List list(Path path) {
        List<Path> list = this.delegate.list(path);
        ArrayList arrayList = new ArrayList();
        for (Path path2 : list) {
            path2.getClass();
            arrayList.add(path2);
        }
        CollectionsKt__MutableCollectionsJVMKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public final FileMetadata metadataOrNull(Path path) {
        path.getClass();
        FileMetadata metadataOrNull = this.delegate.metadataOrNull(path);
        if (metadataOrNull == null) {
            return null;
        }
        Path path2 = (Path) metadataOrNull.symlinkTarget;
        if (path2 == null) {
            return metadataOrNull;
        }
        boolean z = metadataOrNull.isRegularFile;
        boolean z2 = metadataOrNull.isDirectory;
        Long l = (Long) metadataOrNull.size;
        Long l2 = (Long) metadataOrNull.createdAtMillis;
        Long l3 = (Long) metadataOrNull.lastModifiedAtMillis;
        Long l4 = (Long) metadataOrNull.lastAccessedAtMillis;
        Map map = (Map) metadataOrNull.extras;
        map.getClass();
        return new FileMetadata(z, z2, path2, l, l2, l3, l4, map);
    }

    @Override // okio.FileSystem
    public final JvmFileHandle openReadOnly(Path path) {
        return this.delegate.openReadOnly(path);
    }

    @Override // okio.FileSystem
    public final Source source(Path path) {
        path.getClass();
        return this.delegate.source(path);
    }

    public final String toString() {
        return Reflection.factory.getOrCreateKotlinClass(getClass()).getSimpleName() + '(' + this.delegate + ')';
    }
}
