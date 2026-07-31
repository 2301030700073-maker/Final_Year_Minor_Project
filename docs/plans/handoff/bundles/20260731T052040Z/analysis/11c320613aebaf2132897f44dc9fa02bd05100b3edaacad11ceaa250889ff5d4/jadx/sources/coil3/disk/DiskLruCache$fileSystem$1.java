package coil3.disk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Reflection;
import okio.FileMetadata;
import okio.FileSystem;
import okio.JvmFileHandle;
import okio.Path;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DiskLruCache$fileSystem$1 extends FileSystem {
    public final FileSystem delegate;

    public DiskLruCache$fileSystem$1(FileSystem fileSystem) {
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
    public final Sink sink(Path path, boolean z) {
        Path parent = path.parent();
        if (parent != null) {
            ArrayDeque arrayDeque = new ArrayDeque();
            while (parent != null && !exists(parent)) {
                arrayDeque.addFirst(parent);
                parent = parent.parent();
            }
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                createDirectory((Path) it.next());
            }
        }
        return this.delegate.sink(path, z);
    }

    @Override // okio.FileSystem
    public final Source source(Path path) {
        path.getClass();
        return this.delegate.source(path);
    }

    public final String toString() {
        return Reflection.getOrCreateKotlinClass(DiskLruCache$fileSystem$1.class).getSimpleName() + '(' + this.delegate + ')';
    }
}
