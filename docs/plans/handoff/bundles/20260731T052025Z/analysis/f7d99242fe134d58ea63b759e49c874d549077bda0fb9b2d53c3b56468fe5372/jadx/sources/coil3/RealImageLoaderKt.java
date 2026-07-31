package coil3;

import android.graphics.Bitmap;
import coil3.ComponentRegistry;
import coil3.RealImageLoader;
import coil3.decode.Decoder;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.fetch.BitmapFetcher;
import coil3.fetch.ByteArrayFetcher;
import coil3.fetch.DataUriFetcher;
import coil3.fetch.Fetcher;
import coil3.fetch.FileUriFetcher;
import coil3.key.FileUriKeyer;
import coil3.key.UriKeyer;
import coil3.map.PathMapper;
import coil3.map.StringMapper;
import coil3.util.DecoderServiceLoaderTarget;
import coil3.util.FetcherServiceLoaderTarget;
import coil3.util.Logger;
import coil3.util.ServiceLoaderComponentRegistry;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okio.Path;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealImageLoaderKt {
    private static final int REQUEST_TYPE_ENQUEUE = 0;
    private static final int REQUEST_TYPE_EXECUTE = 1;
    private static final String TAG = "RealImageLoader";

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope CoroutineScope(Logger logger) {
        return JobKt.CoroutineScope(UuidKt.plus(JobKt.SupervisorJob$default(), new RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key.$$INSTANCE, logger)));
    }

    public static final ComponentRegistry.Builder addCommonComponents(ComponentRegistry.Builder builder) {
        return builder.add(new StringMapper(), Reflection.getOrCreateKotlinClass(String.class)).add(new PathMapper(), Reflection.getOrCreateKotlinClass(Path.class)).add(new FileUriKeyer(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new UriKeyer(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new FileUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new ByteArrayFetcher.Factory(), Reflection.getOrCreateKotlinClass(byte[].class)).add(new DataUriFetcher.Factory(), Reflection.getOrCreateKotlinClass(Uri.class)).add(new BitmapFetcher.Factory(), Reflection.getOrCreateKotlinClass(Bitmap.class));
    }

    public static final ComponentRegistry.Builder addServiceLoaderComponents(ComponentRegistry.Builder builder, RealImageLoader.Options options) {
        if (ImageLoadersKt.getServiceLoaderEnabled(options)) {
            builder.addFetcherFactories(new UtilsKt$$ExternalSyntheticLambda0(22));
            builder.addDecoderFactories(new UtilsKt$$ExternalSyntheticLambda0(23));
        }
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List addServiceLoaderComponents$lambda$0() {
        KClass type;
        List sortedWith = CollectionsKt.sortedWith(ServiceLoaderComponentRegistry.INSTANCE.getFetchers(), new Comparator() { // from class: coil3.RealImageLoaderKt$addServiceLoaderComponents$lambda$0$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return Integer.valueOf(((FetcherServiceLoaderTarget) t2).priority()).compareTo(Integer.valueOf(((FetcherServiceLoaderTarget) t).priority()));
            }
        });
        ArrayList arrayList = new ArrayList();
        int size = sortedWith.size();
        for (int i = 0; i < size; i++) {
            FetcherServiceLoaderTarget fetcherServiceLoaderTarget = (FetcherServiceLoaderTarget) sortedWith.get(i);
            fetcherServiceLoaderTarget.getClass();
            Fetcher.Factory factory = fetcherServiceLoaderTarget.factory();
            Pair pair = null;
            if (factory != null && (type = fetcherServiceLoaderTarget.type()) != null) {
                pair = new Pair(factory, type);
            }
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List addServiceLoaderComponents$lambda$1() {
        List sortedWith = CollectionsKt.sortedWith(ServiceLoaderComponentRegistry.INSTANCE.getDecoders(), new Comparator() { // from class: coil3.RealImageLoaderKt$addServiceLoaderComponents$lambda$1$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return Integer.valueOf(((DecoderServiceLoaderTarget) t2).priority()).compareTo(Integer.valueOf(((DecoderServiceLoaderTarget) t).priority()));
            }
        });
        ArrayList arrayList = new ArrayList();
        int size = sortedWith.size();
        for (int i = 0; i < size; i++) {
            Decoder.Factory factory = ((DecoderServiceLoaderTarget) sortedWith.get(i)).factory();
            if (factory != null) {
                arrayList.add(factory);
            }
        }
        return arrayList;
    }
}
