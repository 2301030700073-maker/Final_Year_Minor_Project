package defpackage;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class CG {

    /* renamed from: do, reason: not valid java name */
    public int f347do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ByteBuffer f348do;

    /* renamed from: for, reason: not valid java name */
    public int f349for;

    /* renamed from: if, reason: not valid java name */
    public int f350if;

    public CG() {
        if (QJ.f2902do == null) {
            QJ.f2902do = new QJ();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final int m255do(int i) {
        if (i < this.f349for) {
            return this.f348do.getShort(this.f350if + i);
        }
        return 0;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m256if(int i, ByteBuffer byteBuffer) {
        this.f348do = byteBuffer;
        if (byteBuffer == null) {
            this.f347do = 0;
            this.f350if = 0;
            this.f349for = 0;
        } else {
            this.f347do = i;
            int i2 = i - byteBuffer.getInt(i);
            this.f350if = i2;
            this.f349for = this.f348do.getShort(i2);
        }
    }
}
