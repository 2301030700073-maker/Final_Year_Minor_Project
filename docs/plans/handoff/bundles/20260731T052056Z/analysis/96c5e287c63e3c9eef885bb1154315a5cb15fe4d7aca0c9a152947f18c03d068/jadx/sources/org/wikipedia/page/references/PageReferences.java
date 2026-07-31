package org.wikipedia.page.references;

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
public final class PageReferences {
    public final List referencesGroup;
    public final int selectedIndex;
    public final String tid;
    public static final Companion Companion = new Companion();
    public static final Lazy[] $childSerializers = {null, null, ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Tab$$ExternalSyntheticLambda0(25))};

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return PageReferences$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class Reference {
        public static final Companion Companion = new Companion();
        public final String href;
        public final String html;
        public final String id;
        public final String text;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return PageReferences$Reference$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ Reference(int i, String str, String str2, String str3, String str4) {
            if ((i & 1) == 0) {
                this.id = null;
            } else {
                this.id = str;
            }
            if ((i & 2) == 0) {
                this.href = null;
            } else {
                this.href = str2;
            }
            if ((i & 4) == 0) {
                this.text = "";
            } else {
                this.text = str3;
            }
            if ((i & 8) == 0) {
                this.html = "";
            } else {
                this.html = str4;
            }
        }
    }

    public /* synthetic */ PageReferences(int i, int i2, String str, List list) {
        this.selectedIndex = (i & 1) == 0 ? 0 : i2;
        if ((i & 2) == 0) {
            this.tid = null;
        } else {
            this.tid = str;
        }
        if ((i & 4) == 0) {
            this.referencesGroup = EmptyList.INSTANCE;
        } else {
            this.referencesGroup = list;
        }
    }
}
