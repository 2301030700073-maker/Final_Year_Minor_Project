package defpackage;

/* renamed from: u5, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3781u5 extends BH {

    /* renamed from: do, reason: not valid java name */
    public final short f15852do;

    /* renamed from: if, reason: not valid java name */
    public final short f15853if;

    public C3781u5(BH bh, int i, int i2) {
        super(bh);
        this.f15852do = (short) i;
        this.f15853if = (short) i2;
    }

    @Override // defpackage.BH
    /* renamed from: do */
    public final void mo172do(C3840v5 c3840v5, byte[] bArr) {
        int i = 0;
        while (true) {
            short s = this.f15853if;
            if (i >= s) {
                return;
            }
            if (i == 0 || (i == 31 && s <= 62)) {
                c3840v5.m8427if(31, 5);
                if (s > 62) {
                    c3840v5.m8427if(s - 31, 16);
                } else if (i == 0) {
                    c3840v5.m8427if(Math.min((int) s, 31), 5);
                } else {
                    c3840v5.m8427if(s - 31, 5);
                }
            }
            c3840v5.m8427if(bArr[this.f15852do + i], 8);
            i++;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("<");
        sb.append((int) this.f15852do);
        sb.append("::");
        sb.append((r1 + this.f15853if) - 1);
        sb.append('>');
        return sb.toString();
    }
}
