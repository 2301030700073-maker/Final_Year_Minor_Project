package okio;

import j$.nio.file.Files;
import j$.nio.file.LinkOption;
import j$.nio.file.Paths;
import j$.nio.file.StandardCopyOption;
import j$.nio.file.attribute.BasicFileAttributes;
import j$.nio.file.attribute.FileTime;
import java.io.FileNotFoundException;
import java.nio.file.FileSystemException;
import java.nio.file.NoSuchFileException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Path;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class NioSystemFileSystem extends JvmSystemFileSystem {
    public static Long zeroToNull(FileTime fileTime) {
        long millis = fileTime.toMillis();
        Long valueOf = Long.valueOf(millis);
        if (millis != 0) {
            return valueOf;
        }
        return null;
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final void atomicMove(Path path, Path path2) {
        path.getClass();
        path2.getClass();
        try {
            j$.nio.file.Path path3 = Paths.get(path.bytes.utf8(), new String[0]);
            path3.getClass();
            j$.nio.file.Path path4 = Paths.get(path2.bytes.utf8(), new String[0]);
            path4.getClass();
            Files.move(path3, path4, StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
        } catch (UnsupportedOperationException unused) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$3("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public final FileMetadata metadataOrNull(Path path) {
        Path path2;
        path.getClass();
        j$.nio.file.Path path3 = Paths.get(path.bytes.utf8(), new String[0]);
        path3.getClass();
        try {
            BasicFileAttributes readAttributes = Files.readAttributes(path3, BasicFileAttributes.class, LinkOption.NOFOLLOW_LINKS);
            j$.nio.file.Path readSymbolicLink = readAttributes.isSymbolicLink() ? Files.readSymbolicLink(path3) : null;
            boolean isRegularFile = readAttributes.isRegularFile();
            boolean isDirectory = readAttributes.isDirectory();
            if (readSymbolicLink != null) {
                String str = Path.DIRECTORY_SEPARATOR;
                path2 = Path.Companion.get(readSymbolicLink.toString());
            } else {
                path2 = null;
            }
            Long valueOf = Long.valueOf(readAttributes.size());
            FileTime creationTime = readAttributes.creationTime();
            Long zeroToNull = creationTime != null ? zeroToNull(creationTime) : null;
            FileTime lastModifiedTime = readAttributes.lastModifiedTime();
            Long zeroToNull2 = lastModifiedTime != null ? zeroToNull(lastModifiedTime) : null;
            FileTime lastAccessTime = readAttributes.lastAccessTime();
            return new FileMetadata(isRegularFile, isDirectory, path2, valueOf, zeroToNull, zeroToNull2, lastAccessTime != null ? zeroToNull(lastAccessTime) : null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    @Override // okio.JvmSystemFileSystem
    public final String toString() {
        return "NioSystemFileSystem";
    }
}
