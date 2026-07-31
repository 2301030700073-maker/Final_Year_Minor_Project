package coil3.decode;

import coil3.ImageLoader;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Decoder {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Factory {
        Decoder create(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader);
    }

    Object decode(Continuation continuation);
}
