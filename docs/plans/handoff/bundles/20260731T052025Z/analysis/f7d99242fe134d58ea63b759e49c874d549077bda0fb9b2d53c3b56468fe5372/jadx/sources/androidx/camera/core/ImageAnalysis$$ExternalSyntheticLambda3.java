package androidx.camera.core;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class ImageAnalysis$$ExternalSyntheticLambda3 {
    public static final /* synthetic */ int[] $VALUES = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17};

    public static /* synthetic */ boolean equals(int i, int i2) {
        if (i != 0) {
            return i == i2;
        }
        throw null;
    }

    public static String m(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static /* synthetic */ int ordinal(int i) {
        if (i != 0) {
            return i - 1;
        }
        throw null;
    }

    public static /* synthetic */ String stringValueOf(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "null" : "CLOSED" : "CLOSING" : "OPEN" : "OPENING" : "PENDING_OPEN";
    }

    public static /* synthetic */ int[] values(int i) {
        int[] iArr = new int[i];
        System.arraycopy($VALUES, 0, iArr, 0, i);
        return iArr;
    }

    public static /* synthetic */ boolean m(Object obj) {
        return obj != null;
    }
}
