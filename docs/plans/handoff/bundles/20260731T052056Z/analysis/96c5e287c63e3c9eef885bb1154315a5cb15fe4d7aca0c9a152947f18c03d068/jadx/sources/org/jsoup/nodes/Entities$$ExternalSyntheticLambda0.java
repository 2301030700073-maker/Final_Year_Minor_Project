package org.jsoup.nodes;

import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.WeakHashMap;
import java.util.function.Supplier;
import org.jsoup.select.Elements;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Entities$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Entities$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.$r8$classId) {
            case 0:
                return new char[2];
            case 1:
                return new SoftReference(new ArrayDeque());
            case 2:
                return new StringBuilder(1024);
            case 3:
                return new String[512];
            case 4:
                return new char[2048];
            case 5:
                return new Elements();
            case 6:
                return new WeakHashMap();
            default:
                return new NodeIterator(new TextNode(""), Node.class);
        }
    }
}
