package okio.internal;

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
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.ByteString;
import okio.FileMetadata;
import okio.FileSystem;
import okio.JvmFileHandle;
import okio.JvmSystemFileSystem;
import okio.Okio;
import okio.Path;
import okio.Sink;
import okio.Source;
import org.koin.core.scope.Scope$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        this.roots$delegate = new SynchronizedLazyImpl(new Scope$$ExternalSyntheticLambda0(this, 4));
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
            FileSystem fileSystem = (FileSystem) pair.component1();
            Path path3 = (Path) pair.component2();
            try {
                List list = fileSystem.list(path3.resolve(utf8));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (ByteString.Companion.access$keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Path path4 = (Path) it.next();
                    path4.getClass();
                    String replace = StringsKt.removePrefix(path4.bytes.utf8(), path3.bytes.utf8()).replace('\\', '/');
                    replace.getClass();
                    arrayList2.add(path2.resolve(replace));
                }
                CollectionsKt__MutableCollectionsKt.addAll(arrayList2, linkedHashSet);
                z = true;
            } catch (IOException unused) {
            }
        }
        if (z) {
            return CollectionsKt.toList(linkedHashSet);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2(path, "file not found: ");
        return null;
    }

    @Override // okio.FileSystem
    public final FileMetadata metadataOrNull(Path path) {
        path.getClass();
        if (!ByteString.Companion.access$keepPath(path)) {
            return null;
        }
        Path path2 = ROOT;
        path2.getClass();
        String utf8 = Path.commonResolve(path2, path, true).relativeTo(path2).bytes.utf8();
        for (Pair pair : (List) this.roots$delegate.getValue()) {
            FileMetadata metadataOrNull = ((FileSystem) pair.component1()).metadataOrNull(((Path) pair.component2()).resolve(utf8));
            if (metadataOrNull != null) {
                return metadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    public final JvmFileHandle openReadOnly(Path path) {
        if (!ByteString.Companion.access$keepPath(path)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(path, "file not found: ");
            return null;
        }
        Path path2 = ROOT;
        path2.getClass();
        String utf8 = Path.commonResolve(path2, path, true).relativeTo(path2).bytes.utf8();
        Iterator it = ((List) this.roots$delegate.getValue()).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            try {
                return ((FileSystem) pair.component1()).openReadOnly(((Path) pair.component2()).resolve(utf8));
            } catch (FileNotFoundException unused) {
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$2(path, "file not found: ");
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
        if (!ByteString.Companion.access$keepPath(path)) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(path, "file not found: ");
            return null;
        }
        Path path2 = ROOT;
        path2.getClass();
        URL resource = this.classLoader.getResource(Path.commonResolve(path2, path, false).relativeTo(path2).bytes.utf8());
        if (resource == null) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(path, "file not found: ");
            return null;
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
