package org.jsoup.nodes;

import java.util.WeakHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Entities$$ExternalSyntheticThreadLocal1 extends ThreadLocal {
    public final /* synthetic */ int $r8$classId;

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.$r8$classId) {
            case 0:
                return new char[2];
            default:
                return new WeakHashMap();
        }
    }
}
