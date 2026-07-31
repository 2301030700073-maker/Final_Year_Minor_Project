package coil3.fetch;

import coil3.RealImageLoader;
import coil3.intercept.EngineInterceptor$fetch$1;
import coil3.request.Options;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Fetcher {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Factory {
        Fetcher create(Object obj, Options options, RealImageLoader realImageLoader);
    }

    Object fetch(EngineInterceptor$fetch$1 engineInterceptor$fetch$1);
}
