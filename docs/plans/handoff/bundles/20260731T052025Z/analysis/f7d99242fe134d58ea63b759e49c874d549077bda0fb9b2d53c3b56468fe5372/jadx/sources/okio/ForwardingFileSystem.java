package okio;

import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.Sequence;
import kotlin.sequences.TakeWhileSequence;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ForwardingFileSystem extends FileSystem {
    private final FileSystem delegate;

    public ForwardingFileSystem(FileSystem fileSystem) {
        fileSystem.getClass();
        this.delegate = fileSystem;
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path path, boolean z) {
        path.getClass();
        return this.delegate.appendingSink(onPathParameter(path, "appendingSink", UtilsKt.SCHEME_FILE), z);
    }

    @Override // okio.FileSystem
    public void atomicMove(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        this.delegate.atomicMove(onPathParameter(path, "atomicMove", "source"), onPathParameter(path2, "atomicMove", "target"));
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) {
        path.getClass();
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", "path")), "canonicalize");
    }

    @Override // okio.FileSystem, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // okio.FileSystem
    public void createDirectory(Path path, boolean z) {
        path.getClass();
        this.delegate.createDirectory(onPathParameter(path, "createDirectory", "dir"), z);
    }

    @Override // okio.FileSystem
    public void createSymlink(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        this.delegate.createSymlink(onPathParameter(path, "createSymlink", "source"), onPathParameter(path2, "createSymlink", "target"));
    }

    public final FileSystem delegate() {
        return this.delegate;
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z) {
        path.getClass();
        this.delegate.delete(onPathParameter(path, "delete", "path"), z);
    }

    @Override // okio.FileSystem
    public List<Path> list(Path path) {
        path.getClass();
        List list = this.delegate.list(onPathParameter(path, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        CollectionsKt__MutableCollectionsJVMKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public List<Path> listOrNull(Path path) {
        path.getClass();
        List listOrNull = this.delegate.listOrNull(onPathParameter(path, "listOrNull", "dir"));
        if (listOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = listOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        CollectionsKt__MutableCollectionsJVMKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public Sequence listRecursively(Path path, boolean z) {
        path.getClass();
        Sequence listRecursively = this.delegate.listRecursively(onPathParameter(path, "listRecursively", "dir"), z);
        ForwardingFileSystem$$ExternalSyntheticLambda0 forwardingFileSystem$$ExternalSyntheticLambda0 = new ForwardingFileSystem$$ExternalSyntheticLambda0(0, this);
        listRecursively.getClass();
        return new TakeWhileSequence(listRecursively, forwardingFileSystem$$ExternalSyntheticLambda0, 2);
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) {
        path.getClass();
        FileMetadata metadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", "path"));
        if (metadataOrNull == null) {
            return null;
        }
        Path path2 = metadataOrNull.symlinkTarget;
        if (path2 == null) {
            return metadataOrNull;
        }
        Path onPathResult = onPathResult(path2, "metadataOrNull");
        boolean z = metadataOrNull.isRegularFile;
        boolean z2 = metadataOrNull.isDirectory;
        Long l = metadataOrNull.size;
        Long l2 = metadataOrNull.createdAtMillis;
        Long l3 = metadataOrNull.lastModifiedAtMillis;
        Long l4 = metadataOrNull.lastAccessedAtMillis;
        Map map = metadataOrNull.extras;
        map.getClass();
        return new FileMetadata(z, z2, onPathResult, l, l2, l3, l4, map);
    }

    public Path onPathParameter(Path path, String str, String str2) {
        path.getClass();
        str.getClass();
        str2.getClass();
        return path;
    }

    public Path onPathResult(Path path, String str) {
        path.getClass();
        str.getClass();
        return path;
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path path) {
        path.getClass();
        return this.delegate.openReadOnly(onPathParameter(path, "openReadOnly", UtilsKt.SCHEME_FILE));
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path path, boolean z, boolean z2) {
        path.getClass();
        return this.delegate.openReadWrite(onPathParameter(path, "openReadWrite", UtilsKt.SCHEME_FILE), z, z2);
    }

    @Override // okio.FileSystem
    public Sink sink(Path path, boolean z) {
        path.getClass();
        return this.delegate.sink(onPathParameter(path, "sink", UtilsKt.SCHEME_FILE), z);
    }

    @Override // okio.FileSystem
    public Source source(Path path) {
        path.getClass();
        return this.delegate.source(onPathParameter(path, "source", UtilsKt.SCHEME_FILE));
    }

    public String toString() {
        return Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + '(' + this.delegate + ')';
    }
}
