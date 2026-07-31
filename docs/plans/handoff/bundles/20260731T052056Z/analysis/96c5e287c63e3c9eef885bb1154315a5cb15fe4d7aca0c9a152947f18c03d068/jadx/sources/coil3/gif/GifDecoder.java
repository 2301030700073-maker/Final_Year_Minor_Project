package coil3.gif;

import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.AwaitKt;
import okio.BufferedSource;
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GifDecoder implements Decoder {
    public final Options options;
    public final ImageSource source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory implements Decoder.Factory {
        @Override // coil3.decode.Decoder.Factory
        public final Decoder create(SourceFetchResult sourceFetchResult, Options options) {
            BufferedSource source = sourceFetchResult.source.source();
            if (source.rangeEquals(0L, DecodeUtilsKt.GIF_HEADER_89A) || source.rangeEquals(0L, DecodeUtilsKt.GIF_HEADER_87A)) {
                return new GifDecoder(sourceFetchResult.source, options);
            }
            return null;
        }
    }

    public GifDecoder(ImageSource imageSource, Options options) {
        this.source = imageSource;
        this.options = options;
    }

    @Override // coil3.decode.Decoder
    public final Object decode(Continuation continuation) {
        DonateDialog$onCreateView$3.AnonymousClass1 anonymousClass1 = new DonateDialog$onCreateView$3.AnonymousClass1(10, new Worker$$ExternalSyntheticLambda0(15, this), null);
        return AwaitKt.withContext(EmptyCoroutineContext.INSTANCE, anonymousClass1, (ContinuationImpl) continuation);
    }
}
