package androidx.recyclerview.widget;

import androidx.compose.material3.FabPlacement;
import androidx.core.util.Pools$SimplePool;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewInfoStore$InfoRecord {
    public static final Pools$SimplePool sPool = new Pools$SimplePool(20);
    public int flags;
    public FabPlacement postInfo;
    public FabPlacement preInfo;

    public static ViewInfoStore$InfoRecord obtain() {
        ViewInfoStore$InfoRecord viewInfoStore$InfoRecord = (ViewInfoStore$InfoRecord) sPool.acquire();
        return viewInfoStore$InfoRecord == null ? new ViewInfoStore$InfoRecord() : viewInfoStore$InfoRecord;
    }
}
