package okio.internal;

import androidx.work.Worker$$ExternalSyntheticLambda0;
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
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileMetadata;
import okio.FileSystem;
import okio.JvmFileHandle;
import okio.JvmSystemFileSystem;
import okio.Okio__JvmOkioKt;
import okio.Path;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
        JvmSystemFileSystem jvmSystemFileSystem = FileSystem.SYSTEM;
        jvmSystemFileSystem.getClass();
        this.classLoader = classLoader;
        this.systemFileSystem = jvmSystemFileSystem;
        this.roots$delegate = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(27, this));
    }

    @Override // okio.FileSystem
    public final Sink appendingSink(Path path) {
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
    public final void createDirectory(Path path) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final void delete(Path path) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final List list(Path path) {
        Path path2 = ROOT;
        path2.getClass();
        String utf8 = Path.commonResolve(path2, path, true).relativeTo(path2).bytes.utf8();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z = false;
        for (Pair pair : (List) this.roots$delegate.getValue()) {
            FileSystem fileSystem = (FileSystem) pair.first;
            Path path3 = (Path) pair.second;
            try {
                List list = fileSystem.list(path3.resolve(utf8));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (ZipFilesKt.keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Path path4 = (Path) it.next();
                    path4.getClass();
                    String replace = StringsKt.removePrefix(path3.bytes.utf8(), path4.bytes.utf8()).replace('\\', '/');
                    replace.getClass();
                    arrayList2.add(path2.resolve(replace));
                }
                CollectionsKt.addAll(linkedHashSet, arrayList2);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt.toList(linkedHashSet);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("file not found: ", path);
        return null;
    }

    @Override // okio.FileSystem
    public final FileMetadata metadataOrNull(Path path) {
        path.getClass();
        if (!ZipFilesKt.keepPath(path)) {
            return null;
        }
        Path path2 = ROOT;
        path2.getClass();
        String utf8 = Path.commonResolve(path2, path, true).relativeTo(path2).bytes.utf8();
        for (Pair pair : (List) this.roots$delegate.getValue()) {
            FileMetadata metadataOrNull = ((FileSystem) pair.first).metadataOrNull(((Path) pair.second).resolve(utf8));
            if (metadataOrNull != null) {
                return metadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    public final JvmFileHandle openReadOnly(Path path) {
        if (!ZipFilesKt.keepPath(path)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("file not found: ", path);
            return null;
        }
        Path path2 = ROOT;
        path2.getClass();
        String utf8 = Path.commonResolve(path2, path, true).relativeTo(path2).bytes.utf8();
        Iterator it = ((List) this.roots$delegate.getValue()).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            try {
                return ((FileSystem) pair.first).openReadOnly(((Path) pair.second).resolve(utf8));
            } catch (FileNotFoundException unused) {
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("file not found: ", path);
        return null;
    }

    @Override // okio.FileSystem
    public final Sink sink(Path path, boolean z) {
        path.getClass();
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public final Source source(Path path) {
        path.getClass();
        if (!ZipFilesKt.keepPath(path)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("file not found: ", path);
            return null;
        }
        Path path2 = ROOT;
        path2.getClass();
        URL resource = this.classLoader.getResource(Path.commonResolve(path2, path, false).relativeTo(path2).bytes.utf8());
        if (resource == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("file not found: ", path);
            return null;
        }
        URLConnection openConnection = resource.openConnection();
        if (openConnection instanceof JarURLConnection) {
            ((JarURLConnection) openConnection).setUseCaches(false);
        }
        InputStream inputStream = openConnection.getInputStream();
        inputStream.getClass();
        return Okio__JvmOkioKt.source(inputStream);
    }
}
