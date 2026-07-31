package okhttp3.internal.http2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
