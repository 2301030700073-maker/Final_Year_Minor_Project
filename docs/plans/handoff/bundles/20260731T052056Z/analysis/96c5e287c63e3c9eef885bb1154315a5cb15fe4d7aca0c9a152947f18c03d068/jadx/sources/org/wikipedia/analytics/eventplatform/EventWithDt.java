package org.wikipedia.analytics.eventplatform;

import coil3.util.ContextsKt;
import j$.time.Instant;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.WikipediaApp$$ExternalSyntheticLambda2;
import org.wikipedia.analytics.eventplatform.Event;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public abstract class EventWithDt extends Event {
    public final String dt;
    public static final Companion Companion = new Companion();
    public static final Lazy $cachedSerializer$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new WikipediaApp$$ExternalSyntheticLambda2(25));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return (KSerializer) EventWithDt.$cachedSerializer$delegate.getValue();
        }
    }

    public /* synthetic */ EventWithDt(int i, Event.Meta meta, String str) {
        super(i, meta);
        if ((i & 2) != 0) {
            this.dt = str;
            return;
        }
        String instant = Instant.now().toString();
        instant.getClass();
        this.dt = instant;
    }

    public EventWithDt(String str) {
        super(str);
        String instant = Instant.now().toString();
        instant.getClass();
        this.dt = instant;
    }
}
