package org.wikipedia.gallery;

import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class MediaList {
    public final List items;
    public final String revision;
    public final String tid;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(16))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return MediaList$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ MediaList(int i, String str, String str2, List list) {
        if ((i & 1) == 0) {
            this.revision = null;
        } else {
            this.revision = str;
        }
        if ((i & 2) == 0) {
            this.tid = null;
        } else {
            this.tid = str2;
        }
        if ((i & 4) == 0) {
            this.items = null;
        } else {
            this.items = list;
        }
    }

    public final ArrayList getItems(String... strArr) {
        ArrayList arrayList = new ArrayList();
        List list = this.items;
        if (list != null) {
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : list) {
                MediaListItem mediaListItem = (MediaListItem) obj;
                if (mediaListItem.showInGallery && ArraysKt___ArraysKt.contains(mediaListItem.type, strArr)) {
                    arrayList2.add(obj);
                }
            }
            arrayList.addAll(arrayList2);
        }
        return arrayList;
    }
}
