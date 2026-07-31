package coil3.fetch;

import coil3.ImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import kotlin.coroutines.Continuation;
import kotlin.io.encoding.Base64;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Buffer;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DataUriFetcher implements Fetcher {
    private static final String BASE64_TAG = ";base64,";
    private static final Companion Companion = new Companion(null);
    private final Options options;
    private final Uri uri;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public Fetcher create(Uri uri, Options options, ImageLoader imageLoader) {
            if (Intrinsics.areEqual(uri.getScheme(), "data")) {
                return new DataUriFetcher(uri, options);
            }
            return null;
        }
    }

    public DataUriFetcher(Uri uri, Options options) {
        this.uri = uri;
        this.options = options;
    }

    @Override // coil3.fetch.Fetcher
    public Object fetch(Continuation continuation) {
        int indexOf$default = StringsKt.indexOf$default(this.uri.toString(), BASE64_TAG, 0, false, 6);
        Uri uri = this.uri;
        if (indexOf$default == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) uri, "invalid data uri: ");
            return null;
        }
        int indexOf$default2 = StringsKt.indexOf$default(uri.toString(), ':', 0, 6);
        Uri uri2 = this.uri;
        if (indexOf$default2 == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) uri2, "invalid data uri: ");
            return null;
        }
        String substring = uri2.toString().substring(indexOf$default2 + 1, indexOf$default);
        byte[] decode$default = Base64.decode$default(Base64.Default, this.uri.toString(), indexOf$default + 8, 4);
        Buffer buffer = new Buffer();
        buffer.write(decode$default.length, decode$default);
        return new SourceFetchResult(ImageSourceKt.ImageSource$default(buffer, this.options.getFileSystem(), null, 4, null), substring, DataSource.MEMORY);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
