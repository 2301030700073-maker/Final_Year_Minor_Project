package org.wikipedia.feed.onthisday;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class OnThisDay {
    public static final Lazy[] $childSerializers;
    public static final Companion Companion = new Companion();
    public final List births;
    public final List deaths;
    public final List events;
    public final List holidays;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return OnThisDay$$serializer.INSTANCE;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        $childSerializers = new Lazy[]{ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(1)), ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(2)), ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(3)), ContextsKt.lazy(lazyThreadSafetyMode, new Tab$$ExternalSyntheticLambda0(4))};
    }

    public /* synthetic */ OnThisDay(int i, List list, List list2, List list3, List list4) {
        int i2 = i & 1;
        EmptyList emptyList = EmptyList.INSTANCE;
        if (i2 == 0) {
            this.events = emptyList;
        } else {
            this.events = list;
        }
        if ((i & 2) == 0) {
            this.births = emptyList;
        } else {
            this.births = list2;
        }
        if ((i & 4) == 0) {
            this.deaths = emptyList;
        } else {
            this.deaths = list3;
        }
        if ((i & 8) == 0) {
            this.holidays = emptyList;
        } else {
            this.holidays = list4;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Event {
        public final List pages;
        public final String text;
        public final int year;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(5)), null, null};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return OnThisDay$Event$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Event(int i, int i2, String str, List list) {
            this.pages = (i & 1) == 0 ? EmptyList.INSTANCE : list;
            this.text = (i & 2) == 0 ? "" : str;
            if ((i & 4) == 0) {
                this.year = 0;
            } else {
                this.year = i2;
            }
        }

        public Event() {
            this.pages = EmptyList.INSTANCE;
            this.text = "";
            this.year = 0;
        }
    }
}
