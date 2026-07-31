package coil3.fetch;

import coil3.ImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.util.FileSystemsKt;
import coil3.util.MimeTypeMap;
import coil3.util.UtilsKt;
import kotlin.coroutines.Continuation;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileUriFetcher implements Fetcher {
    private final Options options;
    private final Uri uri;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Uri uri, Options options, ImageLoader imageLoader) {
            if (UtilsKt.isFileUri(uri)) {
                return new FileUriFetcher(uri, options);
            }
            return null;
        }
    }

    public FileUriFetcher(Uri uri, Options options) {
        this.uri = uri;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        String str = Path.DIRECTORY_SEPARATOR;
        String filePath = UriKt.getFilePath(this.uri);
        if (filePath != null) {
            Path path = Path.Companion.get(filePath);
            return new SourceFetchResult(ImageSourceKt.ImageSource$default(path, this.options.getFileSystem(), null, null, null, 28, null), MimeTypeMap.INSTANCE.getMimeTypeFromExtension(FileSystemsKt.getExtension(path)), DataSource.DISK);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("filePath == null");
        return null;
    }
}
