package org.wikipedia.dataclient.restbase;

import coil3.util.ContextsKt;
import j$.time.LocalDateTime;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class UserEdits {
    public final List items;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(27))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return UserEdits$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Item {
        public static final Companion Companion = new Companion();
        public final int editCount;
        public final LocalDateTime timestamp;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return UserEdits$Item$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Item(int i, LocalDateTime localDateTime, int i2) {
            this.timestamp = (i & 1) == 0 ? null : localDateTime;
            if ((i & 2) == 0) {
                this.editCount = 0;
            } else {
                this.editCount = i2;
            }
        }
    }

    public /* synthetic */ UserEdits(List list, int i) {
        if ((i & 1) == 0) {
            this.items = EmptyList.INSTANCE;
        } else {
            this.items = list;
        }
    }

    public UserEdits() {
        this.items = EmptyList.INSTANCE;
    }
}
