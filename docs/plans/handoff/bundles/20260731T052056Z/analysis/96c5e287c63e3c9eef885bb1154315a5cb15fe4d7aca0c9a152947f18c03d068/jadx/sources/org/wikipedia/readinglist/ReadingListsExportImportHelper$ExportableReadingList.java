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
public final class ReadingListsExportImportHelper$ExportableReadingList {
    public final String description;
    public final String name;
    public final List pages;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(28))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ReadingListsExportImportHelper$ExportableReadingList$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ReadingListsExportImportHelper$ExportableReadingList(int i, String str, String str2, List list) {
        if ((i & 1) == 0) {
            this.name = null;
        } else {
            this.name = str;
        }
        if ((i & 2) == 0) {
            this.description = null;
        } else {
            this.description = str2;
        }
        if ((i & 4) == 0) {
            this.pages = EmptyList.INSTANCE;
        } else {
            this.pages = list;
        }
    }

    public ReadingListsExportImportHelper$ExportableReadingList(String str, String str2, ArrayList arrayList) {
        this.name = str;
        this.description = str2;
        this.pages = arrayList;
    }
}
