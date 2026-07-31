package org.wikipedia.dataclient.restbase;

import coil3.util.ContextsKt;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import org.wikipedia.dataclient.watch.Watch$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class Metrics {
    public final Items firstItem;
    public final List items;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(22)), null};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return Metrics$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Items {
        public final String editorType;
        public final String granularity;
        public final String pageTitle;
        public final String project;
        public final List results;
        public static final Companion Companion = new Companion();
        public static final Lazy[] $childSerializers = {null, null, null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Watch$$ExternalSyntheticLambda0(23))};

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Metrics$Items$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Items(int i, String str, String str2, String str3, String str4, List list) {
            if ((i & 1) == 0) {
                this.project = "";
            } else {
                this.project = str;
            }
            if ((i & 2) == 0) {
                this.editorType = "";
            } else {
                this.editorType = str2;
            }
            if ((i & 4) == 0) {
                this.pageTitle = "";
            } else {
                this.pageTitle = str3;
            }
            if ((i & 8) == 0) {
                this.granularity = "";
            } else {
                this.granularity = str4;
            }
            if ((i & 16) == 0) {
                this.results = EmptyList.INSTANCE;
            } else {
                this.results = list;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Results {
        public static final Companion Companion = new Companion();
        public final int edits;
        public final String timestamp;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return Metrics$Results$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Results(int i, String str, int i2) {
            this.timestamp = (i & 1) == 0 ? "" : str;
            if ((i & 2) == 0) {
                this.edits = 0;
            } else {
                this.edits = i2;
            }
        }
    }

    public /* synthetic */ Metrics(int i, List list, Items items) {
        list = (i & 1) == 0 ? EmptyList.INSTANCE : list;
        this.items = list;
        if ((i & 2) == 0) {
            this.firstItem = (Items) CollectionsKt.first(list);
        } else {
            this.firstItem = items;
        }
    }
}
