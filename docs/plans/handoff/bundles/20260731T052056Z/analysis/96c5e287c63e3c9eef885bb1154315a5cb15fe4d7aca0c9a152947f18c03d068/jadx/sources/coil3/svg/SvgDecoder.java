package coil3.svg;

import androidx.work.Data$$ExternalSyntheticLambda0;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.decode.Decoder;
import coil3.decode.ImageSource;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import okio.BufferedSource;
import org.wikipedia.donate.DonateDialog$onCreateView$3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SvgDecoder implements Decoder {
    public static final Data$$ExternalSyntheticLambda0 NO_DENSITY = new Data$$ExternalSyntheticLambda0(18);
    public final Function1 density;
    public final Options options;
    public final ImageSource source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Factory implements Decoder.Factory {
        public final Function1 density = SvgDecoder.NO_DENSITY;

        @Override // coil3.decode.Decoder.Factory
        public final Decoder create(SourceFetchResult sourceFetchResult, Options options) {
            String str = sourceFetchResult.mimeType;
            ImageSource imageSource = sourceFetchResult.source;
            if (!Intrinsics.areEqual(str, "image/svg+xml")) {
                BufferedSource source = imageSource.source();
                if (!source.rangeEquals(0L, DecodeUtilsKt.LEFT_ANGLE_BRACKET) || source.indexOf(1024L, DecodeUtilsKt.SVG_TAG) == -1) {
                    return null;
                }
            }
            return new SvgDecoder(imageSource, options, this.density);
        }
    }

    public SvgDecoder(ImageSource imageSource, Options options, Function1 function1) {
        this.source = imageSource;
        this.options = options;
        this.density = function1;
    }

    @Override // coil3.decode.Decoder
    public final Object decode(Continuation continuation) {
        DonateDialog$onCreateView$3.AnonymousClass1 anonymousClass1 = new DonateDialog$onCreateView$3.AnonymousClass1(10, new Worker$$ExternalSyntheticLambda0(17, this), null);
        return AwaitKt.withContext(EmptyCoroutineContext.INSTANCE, anonymousClass1, (ContinuationImpl) continuation);
    }
}
