package okio;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlinx.io.Sink$CC;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class JvmSystemFileSystem extends FileSystem {
    public static ArrayList list$1(Path path, boolean z) {
        File file = path.toFile();
        String[] list = file.list();
        if (list == null) {
            if (!z) {
                return null;
            }
            if (!file.exists()) {
                throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(Sink$CC.m(path, "failed to list "));
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            str.getClass();
            arrayList.add(path.resolve(str));
        }
        CollectionsKt__MutableCollectionsJVMKt.sort(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    public Sink appendingSink(Path path, boolean z) {
        path.getClass();
        if (!z || exists(path)) {
            return new OutputStreamSink(new FileOutputStream(path.toFile(), true), new Timeout());
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) path, (Object) " doesn't exist.");
        return null;
    }

    @Override // okio.FileSystem
    public void atomicMove(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        if (path.toFile().renameTo(path2.toFile())) {
            return;
        }
        throw new IOException("failed to move " + path + " to " + path2);
    }

    @Override // okio.FileSystem
    public Path canonicalize(Path path) {
        path.getClass();
        File canonicalFile = path.toFile().getCanonicalFile();
        if (!canonicalFile.exists()) {
            throw new FileNotFoundException("no such file");
        }
        String str = Path.DIRECTORY_SEPARATOR;
        return Path.Companion.get$default(canonicalFile);
    }

    @Override // okio.FileSystem
    public void createDirectory(Path path, boolean z) {
        path.getClass();
        if (path.toFile().mkdir()) {
            return;
        }
        FileMetadata metadataOrNull = metadataOrNull(path);
        if (metadataOrNull == null || !metadataOrNull.isDirectory) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(Sink$CC.m(path, "failed to create directory: "));
        } else if (z) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) path, (Object) " already exists.");
        }
    }

    @Override // okio.FileSystem
    public void createSymlink(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        throw new IOException("unsupported");
    }

    @Override // okio.FileSystem
    public void delete(Path path, boolean z) {
        path.getClass();
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = path.toFile();
        if (file.delete()) {
            return;
        }
        if (file.exists()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$4(Sink$CC.m(path, "failed to delete "));
        } else if (z) {
            throw new FileNotFoundException(Sink$CC.m(path, "no such file: "));
        }
    }

    @Override // okio.FileSystem
    public List list(Path path) {
        path.getClass();
        ArrayList list$1 = list$1(path, true);
        list$1.getClass();
        return list$1;
    }

    @Override // okio.FileSystem
    public List listOrNull(Path path) {
        path.getClass();
        return list$1(path, false);
    }

    @Override // okio.FileSystem
    public FileMetadata metadataOrNull(Path path) {
        path.getClass();
        File file = path.toFile();
        boolean isFile = file.isFile();
        boolean isDirectory = file.isDirectory();
        long lastModified = file.lastModified();
        long length = file.length();
        if (!isFile && !isDirectory && lastModified == 0 && length == 0 && !file.exists()) {
            return null;
        }
        return new FileMetadata(isFile, isDirectory, null, Long.valueOf(length), null, Long.valueOf(lastModified), null);
    }

    @Override // okio.FileSystem
    public FileHandle openReadOnly(Path path) {
        path.getClass();
        return new JvmFileHandle(new RandomAccessFile(path.toFile(), "r"), 0);
    }

    @Override // okio.FileSystem
    public FileHandle openReadWrite(Path path, boolean z, boolean z2) {
        path.getClass();
        if (z && z2) {
            UriKt$$ExternalSyntheticBUOutline0.m("Cannot require mustCreate and mustExist at the same time.");
            return null;
        }
        if (z && exists(path)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) path, (Object) " already exists.");
            return null;
        }
        if (!z2 || exists(path)) {
            return new JvmFileHandle(new RandomAccessFile(path.toFile(), "rw"), 0);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) path, (Object) " doesn't exist.");
        return null;
    }

    @Override // okio.FileSystem
    public Sink sink(Path path, boolean z) {
        path.getClass();
        if (!z || !exists(path)) {
            return new OutputStreamSink(new FileOutputStream(path.toFile(), false), new Timeout());
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) path, (Object) " already exists.");
        return null;
    }

    @Override // okio.FileSystem
    public Source source(Path path) {
        path.getClass();
        return new InputStreamSource(new FileInputStream(path.toFile()), Timeout.NONE);
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
