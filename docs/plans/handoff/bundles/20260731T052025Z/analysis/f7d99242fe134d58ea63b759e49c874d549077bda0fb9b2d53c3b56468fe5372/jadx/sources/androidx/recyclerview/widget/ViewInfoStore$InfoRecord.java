package androidx.recyclerview.widget;

import androidx.compose.material3.FabPlacement;
import androidx.core.util.Pools$SimplePool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
