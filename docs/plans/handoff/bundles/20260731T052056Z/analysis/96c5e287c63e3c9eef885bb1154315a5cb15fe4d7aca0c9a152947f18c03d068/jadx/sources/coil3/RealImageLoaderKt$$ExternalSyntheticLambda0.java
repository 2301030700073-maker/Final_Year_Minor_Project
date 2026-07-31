package coil3;

import androidx.recyclerview.widget.DiffUtil;
import coil3.disk.RealDiskCache;
import coil3.disk.UtilsKt;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.network.NetworkFetcher;
import coil3.network.okhttp.internal.OkHttpNetworkFetcherServiceLoaderTarget;
import coil3.util.DecoderServiceLoaderTarget;
import coil3.util.ServiceLoaderComponentRegistry;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class RealImageLoaderKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ RealImageLoaderKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                List sortedWith = CollectionsKt.sortedWith((List) ServiceLoaderComponentRegistry.fetchers$delegate.getValue(), new DiffUtil.AnonymousClass1(10));
                ArrayList arrayList = new ArrayList();
                int size = sortedWith.size();
                while (i < size) {
                    ((OkHttpNetworkFetcherServiceLoaderTarget) sortedWith.get(i)).getClass();
                    arrayList.add(new Pair(new NetworkFetcher.Factory(new UtilsKt$$ExternalSyntheticLambda0(4)), Reflection.factory.getOrCreateKotlinClass(Uri.class)));
                    i++;
                }
                return arrayList;
            case 1:
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                return MainDispatcherLoader.dispatcher.immediate;
            case 2:
                return (RealDiskCache) UtilsKt.instance$delegate.getValue();
            default:
                List sortedWith2 = CollectionsKt.sortedWith((List) ServiceLoaderComponentRegistry.decoders$delegate.getValue(), new DiffUtil.AnonymousClass1(11));
                ArrayList arrayList2 = new ArrayList();
                int size2 = sortedWith2.size();
                while (i < size2) {
                    arrayList2.add(((DecoderServiceLoaderTarget) sortedWith2.get(i)).factory());
                    i++;
                }
                return arrayList2;
        }
    }
}
