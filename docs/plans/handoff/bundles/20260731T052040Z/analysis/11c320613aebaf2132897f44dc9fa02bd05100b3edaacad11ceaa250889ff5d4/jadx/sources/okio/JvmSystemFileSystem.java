package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class JvmSystemFileSystem extends FileSystem {
    @Override // okio.FileSystem
    public final Sink appendingSink(Path path) {
        path.getClass();
        return new OutputStreamSink(new FileOutputStream(path.toFile(), true), new Timeout());
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
    public final void createDirectory(Path path) {
        path.getClass();
        if (path.toFile().mkdir()) {
            return;
        }
        FileMetadata metadataOrNull = metadataOrNull(path);
        if (metadataOrNull == null || !metadataOrNull.isDirectory) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3(path, "failed to create directory: ");
        }
    }

    @Override // okio.FileSystem
    public final void delete(Path path) {
        path.getClass();
        if (Thread.interrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        File file = path.toFile();
        if (file.delete() || !file.exists()) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$3(path, "failed to delete ");
    }

    @Override // okio.FileSystem
    public final List list(Path path) {
        File file = path.toFile();
        String[] list = file.list();
        if (list == null) {
            if (file.exists()) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$3(path, "failed to list ");
                return null;
            }
            _UtilJvmKt$$ExternalSyntheticLambda1.m$2(path, "no such file: ");
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
    public final JvmFileHandle openReadOnly(Path path) {
        return new JvmFileHandle(new RandomAccessFile(path.toFile(), "r"));
    }

    @Override // okio.FileSystem
    public final Sink sink(Path path, boolean z) {
        path.getClass();
        if (!z || !exists(path)) {
            return new OutputStreamSink(new FileOutputStream(path.toFile(), false), new Timeout());
        }
        throw new IOException(path + " already exists.");
    }

    @Override // okio.FileSystem
    public final Source source(Path path) {
        path.getClass();
        return new InputStreamSource(new FileInputStream(path.toFile()), Timeout.NONE);
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
