package coil3.fetch;

import coil3.ImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.util.FileSystemsKt;
import coil3.util.MimeTypeMap;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.FileSystem;
import okio.Path;
import okio.internal.ZipFilesKt;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class JarFileFetcher implements Fetcher {
    private final Options options;
    private final Uri uri;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Uri> {
        private final boolean isApplicable(Uri uri) {
            return Intrinsics.areEqual(uri.getScheme(), "jar:file");
        }

        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Uri uri, Options options, ImageLoader imageLoader) {
            if (isApplicable(uri)) {
                return new JarFileFetcher(uri, options);
            }
            return null;
        }
    }

    public JarFileFetcher(Uri uri, Options options) {
        this.uri = uri;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        String path = this.uri.getPath();
        if (path == null) {
            path = "";
        }
        int indexOf$default = StringsKt.indexOf$default(path, '!', 0, 6);
        if (indexOf$default == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) this.uri, "Invalid jar:file URI: ");
            return null;
        }
        String str = Path.DIRECTORY_SEPARATOR;
        Path path2 = Path.Companion.get(path.substring(0, indexOf$default));
        Path path3 = Path.Companion.get(path.substring(indexOf$default + 1, path.length()));
        FileSystem fileSystem = this.options.getFileSystem();
        fileSystem.getClass();
        return new SourceFetchResult(ImageSourceKt.ImageSource$default(path3, ZipFilesKt.openZip(path2, fileSystem, new ZipFilesKt$$ExternalSyntheticLambda0(0)), null, null, null, 28, null), MimeTypeMap.INSTANCE.getMimeTypeFromExtension(FileSystemsKt.getExtension(path3)), DataSource.DISK);
    }
}
