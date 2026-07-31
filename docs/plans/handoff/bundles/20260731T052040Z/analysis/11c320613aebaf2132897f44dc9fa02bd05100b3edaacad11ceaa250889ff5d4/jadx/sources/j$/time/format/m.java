package j$.time.format;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class m extends n {
    @Override // j$.time.format.n
    public final boolean b(char c, char c2) {
        return w.b(c, c2);
    }

    @Override // j$.time.format.n
    public final n d(String str, String str2, n nVar) {
        return new m(str, str2, nVar);
    }

    @Override // j$.time.format.n
    public final boolean e(CharSequence charSequence, int i, int i2) {
        int length = this.a.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!w.b(this.a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
