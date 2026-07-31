package coil3;

import androidx.viewpager.widget.ViewPager;
import coil3.disk.RealDiskCache;
import coil3.disk.UtilsKt;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import coil3.network.NetworkFetcher;
import coil3.network.okhttp.internal.OkHttpNetworkFetcherServiceLoaderTarget;
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
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RealImageLoaderKt$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ RealImageLoaderKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                List sortedWith = CollectionsKt.sortedWith((List) ServiceLoaderComponentRegistry.fetchers$delegate.getValue(), new ViewPager.AnonymousClass1(9));
                ArrayList arrayList = new ArrayList();
                int size = sortedWith.size();
                for (int i = 0; i < size; i++) {
                    ((OkHttpNetworkFetcherServiceLoaderTarget) sortedWith.get(i)).getClass();
                    arrayList.add(new Pair(new NetworkFetcher.Factory(new UtilsKt$$ExternalSyntheticLambda0(19)), Reflection.getOrCreateKotlinClass(Uri.class)));
                }
                return arrayList;
            case 1:
                DefaultScheduler defaultScheduler = Dispatchers.Default;
                return MainDispatcherLoader.dispatcher.immediate;
            case 2:
                return (RealDiskCache) UtilsKt.instance$delegate.getValue();
            default:
                List sortedWith2 = CollectionsKt.sortedWith((List) ServiceLoaderComponentRegistry.decoders$delegate.getValue(), new ViewPager.AnonymousClass1(10));
                ArrayList arrayList2 = new ArrayList();
                if (sortedWith2.size() <= 0) {
                    return arrayList2;
                }
                sortedWith2.get(0).getClass();
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2();
                return null;
        }
    }
}
