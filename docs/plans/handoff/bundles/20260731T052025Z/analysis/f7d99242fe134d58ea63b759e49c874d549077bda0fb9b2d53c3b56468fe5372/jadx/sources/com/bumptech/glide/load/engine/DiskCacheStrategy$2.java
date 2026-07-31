package com.bumptech.glide.load.engine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DiskCacheStrategy$2 {
    public final /* synthetic */ int $r8$classId;
    public static final DiskCacheStrategy$2 NONE = new DiskCacheStrategy$2(0);
    public static final DiskCacheStrategy$2 DATA = new DiskCacheStrategy$2(1);
    public static final DiskCacheStrategy$2 AUTOMATIC = new DiskCacheStrategy$2(2);

    public /* synthetic */ DiskCacheStrategy$2(int i) {
        this.$r8$classId = i;
    }

    public final boolean isDataCacheable(int i) {
        switch (this.$r8$classId) {
            case 0:
                break;
            case 1:
                if (i == 3 || i == 5) {
                }
                break;
            default:
                if (i == 2) {
                }
                break;
        }
        return false;
    }
}
