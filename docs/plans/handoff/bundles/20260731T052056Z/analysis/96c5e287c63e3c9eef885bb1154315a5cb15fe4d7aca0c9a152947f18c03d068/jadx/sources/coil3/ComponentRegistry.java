package coil3;

import java.util.ArrayList;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComponentRegistry {
    public final SynchronizedLazyImpl decoderFactories$delegate;
    public final SynchronizedLazyImpl fetcherFactories$delegate;
    public final List interceptors;
    public final List keyers;
    public List lazyDecoderFactories;
    public List lazyFetcherFactories;
    public final List mappers;

    public ComponentRegistry(List list, List list2, List list3, List list4, List list5) {
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
                int i2 = i;
                EmptyList emptyList = EmptyList.INSTANCE;
                int i3 = 0;
                ComponentRegistry componentRegistry = this.f$0;
                switch (i2) {
                    case 0:
                        List list6 = componentRegistry.lazyFetcherFactories;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            CollectionsKt.addAll(arrayList, (List) ((Function0) list6.get(i3)).invoke());
                            i3++;
                        }
                        componentRegistry.lazyFetcherFactories = emptyList;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.lazyDecoderFactories;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            CollectionsKt.addAll(arrayList2, (List) ((Function0) list7.get(i3)).invoke());
                            i3++;
                        }
                        componentRegistry.lazyDecoderFactories = emptyList;
                        return arrayList2;
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
                int i22 = i2;
                EmptyList emptyList = EmptyList.INSTANCE;
                int i3 = 0;
                ComponentRegistry componentRegistry = this.f$0;
                switch (i22) {
                    case 0:
                        List list6 = componentRegistry.lazyFetcherFactories;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            CollectionsKt.addAll(arrayList, (List) ((Function0) list6.get(i3)).invoke());
                            i3++;
                        }
                        componentRegistry.lazyFetcherFactories = emptyList;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.lazyDecoderFactories;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            CollectionsKt.addAll(arrayList2, (List) ((Function0) list7.get(i3)).invoke());
                            i3++;
                        }
                        componentRegistry.lazyDecoderFactories = emptyList;
                        return arrayList2;
                }
            }
        });
    }
}
