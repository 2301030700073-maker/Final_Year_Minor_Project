package org.wikipedia.readinglist;

import coil3.util.ContextsKt;
import java.util.ArrayList;
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
public final class ReadingListsExportImportHelper$ExportableContents {
    public final List readingListsV1;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(27))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ReadingListsExportImportHelper$ExportableContents$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ReadingListsExportImportHelper$ExportableContents(List list, int i) {
        if ((i & 1) == 0) {
            this.readingListsV1 = EmptyList.INSTANCE;
        } else {
            this.readingListsV1 = list;
        }
    }

    public ReadingListsExportImportHelper$ExportableContents(ArrayList arrayList) {
        this.readingListsV1 = arrayList;
    }
}
