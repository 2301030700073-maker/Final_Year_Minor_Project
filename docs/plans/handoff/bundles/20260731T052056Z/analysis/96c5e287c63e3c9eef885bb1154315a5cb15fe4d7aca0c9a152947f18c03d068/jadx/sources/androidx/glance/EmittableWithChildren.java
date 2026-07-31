package androidx.glance;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class EmittableWithChildren implements Emittable {
    public final ArrayList children;
    public int maxDepth;
    public final boolean resetsDepthForChildren;

    public EmittableWithChildren(int i) {
        int i2 = (i & 1) != 0 ? Integer.MAX_VALUE : 50;
        boolean z = (i & 2) == 0;
        this.maxDepth = i2;
        this.resetsDepthForChildren = z;
        this.children = new ArrayList();
    }

    public final String childrenToString() {
        return StringsKt__IndentKt.prependIndent(CollectionsKt.joinToString$default(this.children, ",\n", null, null, null, 62), "  ");
    }
}
