package coil3.decode;

import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Decoder {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Factory {
        Decoder create(SourceFetchResult sourceFetchResult, Options options);
    }

    Object decode(ContinuationImpl continuationImpl);
}
