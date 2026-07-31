package coil3.fetch;

import coil3.RealImageLoader;
import coil3.intercept.EngineInterceptor$fetch$1;
import coil3.request.Options;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Fetcher {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public interface Factory {
        Fetcher create(Object obj, Options options, RealImageLoader realImageLoader);
    }

    Object fetch(EngineInterceptor$fetch$1 engineInterceptor$fetch$1);
}
