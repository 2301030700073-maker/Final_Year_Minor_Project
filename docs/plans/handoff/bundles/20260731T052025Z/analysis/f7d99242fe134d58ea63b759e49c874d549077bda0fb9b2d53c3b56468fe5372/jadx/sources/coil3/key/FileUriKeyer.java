package coil3.key;

import coil3.Uri;
import coil3.UriKt;
import coil3.request.ImageRequestsKt;
import coil3.request.Options;
import coil3.util.UtilsKt;
import okio.FileSystem;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileUriKeyer implements Keyer<Uri> {
    @Override // coil3.key.Keyer
    public String key(Uri uri, Options options) {
        String filePath;
        if (!UtilsKt.isFileUri(uri) || !ImageRequestsKt.getAddLastModifiedToFileCacheKey(options) || (filePath = UriKt.getFilePath(uri)) == null) {
            return null;
        }
        FileSystem fileSystem = options.getFileSystem();
        String str = Path.DIRECTORY_SEPARATOR;
        return uri + "-" + fileSystem.metadata(Path.Companion.get(filePath)).lastModifiedAtMillis;
    }
}
