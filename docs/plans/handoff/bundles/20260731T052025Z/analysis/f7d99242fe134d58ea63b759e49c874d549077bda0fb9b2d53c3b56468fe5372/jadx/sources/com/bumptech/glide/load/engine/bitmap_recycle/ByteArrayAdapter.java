package com.bumptech.glide.load.engine.bitmap_recycle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ByteArrayAdapter {
    public final /* synthetic */ int $r8$classId;

    public final int getArrayLength(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return ((byte[]) obj).length;
            default:
                return ((int[]) obj).length;
        }
    }

    public final int getElementSizeInBytes() {
        switch (this.$r8$classId) {
            case 0:
                return 1;
            default:
                return 4;
        }
    }

    public final String getTag() {
        switch (this.$r8$classId) {
            case 0:
                return "ByteArrayPool";
            default:
                return "IntegerArrayPool";
        }
    }
}
