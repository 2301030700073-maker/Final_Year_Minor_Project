package org.wikipedia.views.imageservice;

import android.content.Context;
import coil3.ComponentRegistry;
import coil3.Extras;
import coil3.ImageLoader$Builder;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.Uri;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.network.NetworkFetcher;
import coil3.request.ImageRequests_androidKt;
import java.util.ArrayList;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import org.wikipedia.search.SearchResult$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CoilImageServiceLoader$$ExternalSyntheticLambda0 implements SingletonImageLoader.Factory {
    @Override // coil3.SingletonImageLoader.Factory
    public final RealImageLoader newImageLoader(Context context) {
        context.getClass();
        ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(context);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        arrayList4.add(new Regex$$ExternalSyntheticLambda0(1, new NetworkFetcher.Factory(new UtilsKt$$ExternalSyntheticLambda0(new SearchResult$$ExternalSyntheticLambda0(22))), Reflection.factory.getOrCreateKotlinClass(Uri.class)));
        imageLoader$Builder.componentRegistry = new ComponentRegistry(ExceptionsKt.toImmutableList(arrayList), ExceptionsKt.toImmutableList(arrayList2), ExceptionsKt.toImmutableList(arrayList3), ExceptionsKt.toImmutableList(arrayList4), ExceptionsKt.toImmutableList(arrayList5));
        Extras.Key key = ImageRequests_androidKt.transitionFactoryKey;
        Extras.Builder builder = (Extras.Builder) imageLoader$Builder.extras;
        builder.data.put(ImageRequests_androidKt.allowRgb565Key, Boolean.TRUE);
        return imageLoader$Builder.build();
    }
}
