package org.wikipedia.analytics.eventplatform;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public abstract class Event {
    public final Meta meta;
    public final String stream;
    public static final Companion Companion = new Companion();
    public static final Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(24));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) Event.$cachedSerializer$delegate.getValue();
        }
    }

    public /* synthetic */ Event(int i, Meta meta) {
        this.stream = "";
        if ((i & 1) == 0) {
            this.meta = new Meta("");
        } else {
            this.meta = meta;
        }
    }

    public static final /* synthetic */ void write$Self(Event event, UuidKt uuidKt, SerialDescriptor serialDescriptor) {
        if (!uuidKt.shouldEncodeElementDefault(serialDescriptor) && Intrinsics.areEqual(event.meta, new Meta(event.stream))) {
            return;
        }
        uuidKt.encodeSerializableElement(serialDescriptor, 0, Event$Meta$$serializer.INSTANCE, event.meta);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Meta {
        public static final Companion Companion = new Companion();
        public final String stream;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Event$Meta$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Meta(int i, String str) {
            if (1 == (i & 1)) {
                this.stream = str;
            } else {
                TuplesKt.throwMissingFieldException(i, 1, Event$Meta$$serializer.INSTANCE.getDescriptor());
                throw null;
            }
        }

        public Meta(String str) {
            this.stream = str;
        }
    }

    public Event(String str) {
        this.stream = str;
        this.meta = new Meta(str);
    }
}
