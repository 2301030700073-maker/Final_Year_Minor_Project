package okhttp3.internal.http2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Settings {
    public int set;
    public final int[] values = new int[10];

    public final int getInitialWindowSize() {
        if ((this.set & 16) != 0) {
            return this.values[4];
        }
        return 65535;
    }

    public final void set(int i, int i2) {
        if (i >= 0) {
            int[] iArr = this.values;
            if (i >= iArr.length) {
                return;
            }
            this.set = (1 << i) | this.set;
            iArr[i] = i2;
        }
    }
}
