package coil3;

import androidx.compose.ui.unit.IntOffsetKt;
import coil3.decode.Decoder;
import coil3.fetch.Fetcher;
import coil3.fetch.SourceFetchResult;
import coil3.intercept.Interceptor;
import coil3.key.Keyer;
import coil3.map.Mapper;
import coil3.request.Options;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.UtilsKt$$ExternalSyntheticLambda1;
import coil3.util.UtilsKt$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;
import kotlin.text.Regex$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComponentRegistry {
    private final Lazy decoderFactories$delegate;
    private final Lazy fetcherFactories$delegate;
    private final List<Interceptor> interceptors;
    private final List<Pair> keyers;
    private List<? extends Function0> lazyDecoderFactories;
    private List<? extends Function0> lazyFetcherFactories;
    private final List<Pair> mappers;

    /* JADX WARN: Multi-variable type inference failed */
    private ComponentRegistry(List<? extends Interceptor> list, List<? extends Pair> list2, List<? extends Pair> list3, List<? extends Function0> list4, List<? extends Function0> list5) {
        this.interceptors = list;
        this.mappers = list2;
        this.keyers = list3;
        this.lazyFetcherFactories = list4;
        this.lazyDecoderFactories = list5;
        final int i = 0;
        this.fetcherFactories$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: coil3.ComponentRegistry$$ExternalSyntheticLambda0
            public final /* synthetic */ ComponentRegistry f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List fetcherFactories_delegate$lambda$0;
                List decoderFactories_delegate$lambda$0;
                int i2 = i;
                ComponentRegistry componentRegistry = this.f$0;
                switch (i2) {
                    case 0:
                        fetcherFactories_delegate$lambda$0 = ComponentRegistry.fetcherFactories_delegate$lambda$0(componentRegistry);
                        return fetcherFactories_delegate$lambda$0;
                    default:
                        decoderFactories_delegate$lambda$0 = ComponentRegistry.decoderFactories_delegate$lambda$0(componentRegistry);
                        return decoderFactories_delegate$lambda$0;
                }
            }
        });
        final int i2 = 1;
        this.decoderFactories$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: coil3.ComponentRegistry$$ExternalSyntheticLambda0
            public final /* synthetic */ ComponentRegistry f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List fetcherFactories_delegate$lambda$0;
                List decoderFactories_delegate$lambda$0;
                int i22 = i2;
                ComponentRegistry componentRegistry = this.f$0;
                switch (i22) {
                    case 0:
                        fetcherFactories_delegate$lambda$0 = ComponentRegistry.fetcherFactories_delegate$lambda$0(componentRegistry);
                        return fetcherFactories_delegate$lambda$0;
                    default:
                        decoderFactories_delegate$lambda$0 = ComponentRegistry.decoderFactories_delegate$lambda$0(componentRegistry);
                        return decoderFactories_delegate$lambda$0;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List decoderFactories_delegate$lambda$0(ComponentRegistry componentRegistry) {
        List<? extends Function0> list = componentRegistry.lazyDecoderFactories;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            CollectionsKt.addAll((List) list.get(i).invoke(), arrayList);
        }
        componentRegistry.lazyDecoderFactories = EmptyList.INSTANCE;
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List fetcherFactories_delegate$lambda$0(ComponentRegistry componentRegistry) {
        List<? extends Function0> list = componentRegistry.lazyFetcherFactories;
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            CollectionsKt.addAll((List) list.get(i).invoke(), arrayList);
        }
        componentRegistry.lazyFetcherFactories = EmptyList.INSTANCE;
        return arrayList;
    }

    public static /* synthetic */ Pair newDecoder$default(ComponentRegistry componentRegistry, SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader, int i, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            i = 0;
        }
        return componentRegistry.newDecoder(sourceFetchResult, options, imageLoader, i);
    }

    public static /* synthetic */ Pair newFetcher$default(ComponentRegistry componentRegistry, Object obj, Options options, ImageLoader imageLoader, int i, int i2, Object obj2) {
        if ((i2 & 8) != 0) {
            i = 0;
        }
        return componentRegistry.newFetcher(obj, options, imageLoader, i);
    }

    public final List<Decoder.Factory> getDecoderFactories() {
        return (List) this.decoderFactories$delegate.getValue();
    }

    public final List<Pair> getFetcherFactories() {
        return (List) this.fetcherFactories$delegate.getValue();
    }

    public final List<Interceptor> getInterceptors() {
        return this.interceptors;
    }

    public final List<Pair> getKeyers() {
        return this.keyers;
    }

    public final List<Pair> getMappers() {
        return this.mappers;
    }

    public final String key(Object obj, Options options) {
        List<Pair> list = this.keyers;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Pair pair = list.get(i);
            Keyer keyer = (Keyer) pair.first;
            if (((ClassReference) ((KClass) pair.second)).isInstance(obj)) {
                keyer.getClass();
                String key = keyer.key(obj, options);
                if (key != null) {
                    return key;
                }
            }
        }
        return null;
    }

    public final Object map(Object obj, Options options) {
        List<Pair> list = this.mappers;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Pair pair = list.get(i);
            Mapper mapper = (Mapper) pair.first;
            if (((ClassReference) ((KClass) pair.second)).isInstance(obj)) {
                mapper.getClass();
                Object map = mapper.map(obj, options);
                if (map != null) {
                    obj = map;
                }
            }
        }
        return obj;
    }

    public final Builder newBuilder() {
        return new Builder(this);
    }

    public final Pair newDecoder(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader, int i) {
        int size = getDecoderFactories().size();
        while (i < size) {
            Decoder create = getDecoderFactories().get(i).create(sourceFetchResult, options, imageLoader);
            if (create != null) {
                return new Pair(create, Integer.valueOf(i));
            }
            i++;
        }
        return null;
    }

    public final Pair newFetcher(Object obj, Options options, ImageLoader imageLoader, int i) {
        int size = getFetcherFactories().size();
        while (i < size) {
            Pair pair = getFetcherFactories().get(i);
            Fetcher.Factory factory = (Fetcher.Factory) pair.first;
            if (((ClassReference) ((KClass) pair.second)).isInstance(obj)) {
                factory.getClass();
                Fetcher create = factory.create(obj, options, imageLoader);
                if (create != null) {
                    return new Pair(create, Integer.valueOf(i));
                }
            }
            i++;
        }
        return null;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Builder {
        private final List<Interceptor> interceptors;
        private final List<Pair> keyers;
        private final List<Function0> lazyDecoderFactories;
        private final List<Function0> lazyFetcherFactories;
        private final List<Pair> mappers;

        public Builder(ComponentRegistry componentRegistry) {
            int i;
            this.interceptors = CollectionsKt.toMutableList((Collection) componentRegistry.getInterceptors());
            this.mappers = CollectionsKt.toMutableList((Collection) componentRegistry.getMappers());
            this.keyers = CollectionsKt.toMutableList((Collection) componentRegistry.getKeyers());
            List<Pair> fetcherFactories = componentRegistry.getFetcherFactories();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = fetcherFactories.iterator();
            while (true) {
                i = 1;
                if (!it.hasNext()) {
                    break;
                } else {
                    arrayList.add(new UtilsKt$$ExternalSyntheticLambda1((Pair) it.next(), i));
                }
            }
            this.lazyFetcherFactories = arrayList;
            List<Decoder.Factory> decoderFactories = componentRegistry.getDecoderFactories();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = decoderFactories.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new UtilsKt$$ExternalSyntheticLambda2((Decoder.Factory) it2.next(), i));
            }
            this.lazyDecoderFactories = arrayList2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final List add$lambda$3$0(Fetcher.Factory factory, KClass kClass) {
            return IntOffsetKt.listOf(new Pair(factory, kClass));
        }

        public final <T> Builder add(Fetcher.Factory<T> factory, KClass kClass) {
            this.lazyFetcherFactories.add(new Regex$$ExternalSyntheticLambda1(16, factory, kClass));
            return this;
        }

        public final Builder addDecoderFactories(Function0 function0) {
            this.lazyDecoderFactories.add(function0);
            return this;
        }

        public final Builder addFetcherFactories(Function0 function0) {
            this.lazyFetcherFactories.add(function0);
            return this;
        }

        public final ComponentRegistry build() {
            return new ComponentRegistry(Collections_jvmCommonKt.toImmutableList(this.interceptors), Collections_jvmCommonKt.toImmutableList(this.mappers), Collections_jvmCommonKt.toImmutableList(this.keyers), Collections_jvmCommonKt.toImmutableList(this.lazyFetcherFactories), Collections_jvmCommonKt.toImmutableList(this.lazyDecoderFactories), null);
        }

        public final List<Interceptor> getInterceptors$coil_core() {
            return this.interceptors;
        }

        public final List<Pair> getKeyers$coil_core() {
            return this.keyers;
        }

        public final List<Function0> getLazyDecoderFactories$coil_core() {
            return this.lazyDecoderFactories;
        }

        public final List<Function0> getLazyFetcherFactories$coil_core() {
            return this.lazyFetcherFactories;
        }

        public final List<Pair> getMappers$coil_core() {
            return this.mappers;
        }

        public final <T> Builder add(Mapper<T, ?> mapper, KClass kClass) {
            this.mappers.add(new Pair(mapper, kClass));
            return this;
        }

        public final <T> Builder add(Keyer<T> keyer, KClass kClass) {
            this.keyers.add(new Pair(keyer, kClass));
            return this;
        }

        public final Builder add(Interceptor interceptor) {
            this.interceptors.add(interceptor);
            return this;
        }

        public final Builder add(Decoder.Factory factory) {
            this.lazyDecoderFactories.add(new UtilsKt$$ExternalSyntheticLambda2(factory, 2));
            return this;
        }

        public final <T> Builder add(Fetcher.Factory<T> factory) {
            throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        }

        public final <T> Builder add(Keyer<T> keyer) {
            throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        }

        public final <T> Builder add(Mapper<T, ?> mapper) {
            throw new UnsupportedOperationException("This function has a reified type parameter and thus can only be inlined at compilation time, not called directly.");
        }

        public Builder() {
            this.interceptors = new ArrayList();
            this.mappers = new ArrayList();
            this.keyers = new ArrayList();
            this.lazyFetcherFactories = new ArrayList();
            this.lazyDecoderFactories = new ArrayList();
        }
    }

    public /* synthetic */ ComponentRegistry(List list, List list2, List list3, List list4, List list5, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, list4, list5);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ComponentRegistry() {
        /*
            r6 = this;
            kotlin.collections.EmptyList r1 = kotlin.collections.EmptyList.INSTANCE
            r2 = r1
            r3 = r1
            r4 = r1
            r5 = r1
            r0 = r6
            r0.<init>(r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.ComponentRegistry.<init>():void");
    }

    public final Pair newDecoder(SourceFetchResult sourceFetchResult, Options options, ImageLoader imageLoader) {
        return newDecoder$default(this, sourceFetchResult, options, imageLoader, 0, 8, null);
    }

    public final Pair newFetcher(Object obj, Options options, ImageLoader imageLoader) {
        return newFetcher$default(this, obj, options, imageLoader, 0, 8, null);
    }
}
