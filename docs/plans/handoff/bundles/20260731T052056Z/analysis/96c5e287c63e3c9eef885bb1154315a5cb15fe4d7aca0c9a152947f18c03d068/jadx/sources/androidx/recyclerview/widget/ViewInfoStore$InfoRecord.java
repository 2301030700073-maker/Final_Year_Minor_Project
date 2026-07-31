package androidx.recyclerview.widget;

import androidx.core.util.Pools$SimplePool;
import androidx.navigation.NavOptions;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewInfoStore$InfoRecord {
    public static final Pools$SimplePool sPool = new Pools$SimplePool(20);
    public int flags;
    public NavOptions.Builder postInfo;
    public NavOptions.Builder preInfo;

    public static ViewInfoStore$InfoRecord obtain() {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) sPool.acquire();
        return viewInfoStore$InfoRecord == null ? new ViewInfoStore$InfoRecord() : viewInfoStore$InfoRecord;
    }
}
