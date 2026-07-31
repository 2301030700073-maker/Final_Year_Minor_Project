package okio.internal;

import com.mikepenz.fastadapter.VerboseLogger;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.JarURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlinx.io.Sink$CC;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceFileSystem extends FileSystem {
    public static final Path ROOT;
    public final ClassLoader classLoader;
    public final SynchronizedLazyImpl roots$delegate;
    public final FileSystem systemFileSystem;

    static {
        String str = Path.DIRECTORY_SEPARATOR;
        ROOT = Path.Companion.get("/");
    }

    public ResourceFileSystem(ClassLoader classLoader) {
        FileSystem fileSystem = FileSystem.SYSTEM;
        fileSystem.getClass();
        this.classLoader = classLoader;
        this.systemFileSystem = fileSystem;
        this.roots$delegate = new SynchronizedLazyImpl(new ResourceFileSystem$$ExternalSyntheticLambda0(0, this));
    }

    public static String toRelativePath(Path path) {
        Path path2 = ROOT;
        return path2.resolve(path, true).relativeTo(path2).bytes.utf8();
    }

    @Override // okio.FileSystem
    public final Sink appendingSink(Path path, boolean z) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void atomicMove(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final Path canonicalize(Path path) {
        path.getClass();
        return ROOT.resolve(path, true);
    }

    @Override // okio.FileSystem
    public final void createDirectory(Path path, boolean z) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void createSymlink(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void delete(Path path, boolean z) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final List list(Path path) {
        path.getClass();
        String relativePath = toRelativePath(path);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair pair : (List) this.roots$delegate.getValue()) {
            FileSystem fileSystem = (FileSystem) pair.first;
            Path path2 = (Path) pair.second;
            try {
                List list = fileSystem.list(path2.resolve(relativePath));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (VerboseLogger.access$keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(VerboseLogger.removeBase((Path) it.next(), path2));
                }
                CollectionsKt.addAll(arrayList2, linkedHashSet);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt.toList(linkedHashSet);
        }
        throw new FileNotFoundException(Sink$CC.m(path, "file not found: "));
    }

    @Override // okio.FileSystem
    public final List listOrNull(Path path) {
        path.getClass();
        String relativePath = toRelativePath(path);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = ((List) this.roots$delegate.getValue()).iterator();
        boolean z = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            Pair pair = (Pair) it.next();
            FileSystem fileSystem = (FileSystem) pair.first;
            Path path2 = (Path) pair.second;
            List listOrNull = fileSystem.listOrNull(path2.resolve(relativePath));
            if (listOrNull != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listOrNull) {
                    if (VerboseLogger.access$keepPath((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(VerboseLogger.removeBase((Path) it2.next(), path2));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                CollectionsKt.addAll(arrayList, linkedHashSet);
                z = true;
            }
        }
        if (z) {
            return CollectionsKt.toList(linkedHashSet);
        }
        return null;
    }

    @Override // okio.FileSystem
    public final FileMetadata metadataOrNull(Path path) {
        path.getClass();
        if (!VerboseLogger.access$keepPath(path)) {
            return null;
        }
        String relativePath = toRelativePath(path);
        for (Pair pair : (List) this.roots$delegate.getValue()) {
            FileMetadata metadataOrNull = ((FileSystem) pair.first).metadataOrNull(((Path) pair.second).resolve(relativePath));
            if (metadataOrNull != null) {
                return metadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    public final FileHandle openReadOnly(Path path) {
        path.getClass();
        if (!VerboseLogger.access$keepPath(path)) {
            throw new FileNotFoundException(Sink$CC.m(path, "file not found: "));
        }
        String relativePath = toRelativePath(path);
        Iterator it = ((List) this.roots$delegate.getValue()).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            try {
                return ((FileSystem) pair.first).openReadOnly(((Path) pair.second).resolve(relativePath));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException(Sink$CC.m(path, "file not found: "));
    }

    @Override // okio.FileSystem
    public final FileHandle openReadWrite(Path path, boolean z, boolean z2) {
        path.getClass();
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    public final Sink sink(Path path, boolean z) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final Source source(Path path) {
        path.getClass();
        if (!VerboseLogger.access$keepPath(path)) {
            throw new FileNotFoundException(Sink$CC.m(path, "file not found: "));
        }
        Path path2 = ROOT;
        path2.getClass();
        URL resource = this.classLoader.getResource(Path.commonResolve(path2, path, false).relativeTo(path2).bytes.utf8());
        if (resource == null) {
            throw new FileNotFoundException(Sink$CC.m(path, "file not found: "));
        }
        URLConnection openConnection = resource.openConnection();
        if (openConnection instanceof JarURLConnection) {
            ((JarURLConnection) openConnection).setUseCaches(false);
        }
        InputStream inputStream = openConnection.getInputStream();
        inputStream.getClass();
        return Okio.source(inputStream);
    }
}
