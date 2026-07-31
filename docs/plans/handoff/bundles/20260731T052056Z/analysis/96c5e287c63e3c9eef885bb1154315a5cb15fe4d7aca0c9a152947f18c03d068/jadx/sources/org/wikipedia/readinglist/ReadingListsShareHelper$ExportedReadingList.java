package org.wikipedia.readinglist;

import coil3.util.ContextsKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.EmptyMap;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ReadingListsShareHelper$ExportedReadingList {
    public final String description;
    public final Map list;
    public final String name;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(29)), null, null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ReadingListsShareHelper$ExportedReadingList$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ReadingListsShareHelper$ExportedReadingList(int i, Map map, String str, String str2) {
        this.list = (i & 1) == 0 ? EmptyMap.INSTANCE : map;
        if ((i & 2) == 0) {
            this.name = null;
        } else {
            this.name = str;
        }
        if ((i & 4) == 0) {
            this.description = null;
        } else {
            this.description = str2;
        }
    }

    public ReadingListsShareHelper$ExportedReadingList(LinkedHashMap linkedHashMap) {
        this.list = linkedHashMap;
        this.name = null;
        this.description = null;
    }
}
