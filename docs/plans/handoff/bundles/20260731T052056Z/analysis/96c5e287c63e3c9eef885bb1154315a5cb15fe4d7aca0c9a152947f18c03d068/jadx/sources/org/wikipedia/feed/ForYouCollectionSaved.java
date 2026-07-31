package org.wikipedia.feed;

import coil3.util.ContextsKt;
import j$.time.LocalDateTime;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyMap;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.edit.Edit$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ForYouCollectionSaved {
    public final LocalDateTime dateTime;
    public final Map modulesPerLanguage;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Edit$$ExternalSyntheticLambda0(15))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ForYouCollectionSaved$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ForYouCollectionSaved(int i, LocalDateTime localDateTime, Map map) {
        this.dateTime = (i & 1) == 0 ? null : localDateTime;
        if ((i & 2) == 0) {
            this.modulesPerLanguage = EmptyMap.INSTANCE;
        } else {
            this.modulesPerLanguage = map;
        }
    }

    public ForYouCollectionSaved(LocalDateTime localDateTime, Map map) {
        this.dateTime = localDateTime;
        this.modulesPerLanguage = map;
    }
}
