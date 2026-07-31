package org.wikimedia.testkitchen.config;

import coil3.util.ContextsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikimedia.testkitchen.config.sampling.SampleConfig;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class StreamConfig {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final boolean canaryEventsEnabled;
    public final DestinationEventService destinationEventService;
    public final String destinationEventServiceKey;
    public final ProducerConfig producerConfig;
    public final SampleConfig sampleConfig;
    public final String schemaTitle;
    public final String streamName;
    public final List topicPrefixes;
    public final List topics;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return StreamConfig$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class MetricsPlatformClientConfig {
        public static final Lazy[] $childSerializers;
        public static final Companion Companion = new Companion();
        public CurationFilter curationFilter;
        public List events;
        public List requestedValues;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return StreamConfig$MetricsPlatformClientConfig$$serializer.INSTANCE;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(18)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(19)), null};
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ProducerConfig {
        public static final Companion Companion = new Companion();
        public MetricsPlatformClientConfig metricsPlatformClientConfig;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return StreamConfig$ProducerConfig$$serializer.INSTANCE;
            }
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{null, null, null, null, null, null, ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(16)), ContextsKt.lazy(lazyThreadSafetyMode, new WikipediaApp$$ExternalSyntheticLambda2(17))};
    }

    public /* synthetic */ StreamConfig(int i, String str, boolean z, String str2, String str3, ProducerConfig producerConfig, SampleConfig sampleConfig, List list, List list2) {
        this.streamName = (i & 1) == 0 ? "" : str;
        if ((i & 2) == 0) {
            this.canaryEventsEnabled = false;
        } else {
            this.canaryEventsEnabled = z;
        }
        if ((i & 4) == 0) {
            this.destinationEventServiceKey = "eventgate-analytics-external";
        } else {
            this.destinationEventServiceKey = str2;
        }
        Object obj = null;
        if ((i & 8) == 0) {
            this.schemaTitle = null;
        } else {
            this.schemaTitle = str3;
        }
        if ((i & 16) == 0) {
            this.producerConfig = null;
        } else {
            this.producerConfig = producerConfig;
        }
        if ((i & 32) == 0) {
            this.sampleConfig = null;
        } else {
            this.sampleConfig = sampleConfig;
        }
        int i2 = i & 64;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (i2 == 0) {
            this.topicPrefixes = emptyList;
        } else {
            this.topicPrefixes = list;
        }
        this.destinationEventService = DestinationEventService.ANALYTICS;
        if ((i & 128) == 0) {
            this.topics = emptyList;
        } else {
            this.topics = list2;
        }
        Iterator<E> it = DestinationEventService.getEntries().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((DestinationEventService) next).getId(), this.destinationEventServiceKey)) {
                obj = next;
                break;
            }
        }
        DestinationEventService destinationEventService = (DestinationEventService) obj;
        this.destinationEventService = destinationEventService == null ? DestinationEventService.ANALYTICS : destinationEventService;
    }
}
