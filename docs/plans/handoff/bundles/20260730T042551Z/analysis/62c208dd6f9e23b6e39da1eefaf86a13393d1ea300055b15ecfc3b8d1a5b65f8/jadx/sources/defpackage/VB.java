package defpackage;

import com.facebook.internal.Utility;

/* loaded from: classes3.dex */
public final class VB {

    /* renamed from: do, reason: not valid java name */
    public int f4049do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public VB f4050do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f4051do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f4052do;

    /* renamed from: if, reason: not valid java name */
    public int f4053if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public VB f4054if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final boolean f4055if;

    public VB() {
        this.f4052do = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        this.f4055if = true;
        this.f4051do = false;
    }

    /* renamed from: do, reason: not valid java name */
    public final VB m2547do() {
        VB vb = this.f4050do;
        VB vb2 = vb != this ? vb : null;
        VB vb3 = this.f4054if;
        vb3.f4050do = vb;
        this.f4050do.f4054if = vb3;
        this.f4050do = null;
        this.f4054if = null;
        return vb2;
    }

    /* renamed from: for, reason: not valid java name */
    public final VB m2548for() {
        this.f4051do = true;
        return new VB(this.f4052do, this.f4049do, this.f4053if);
    }

    /* renamed from: if, reason: not valid java name */
    public final void m2549if(VB vb) {
        vb.f4054if = this;
        vb.f4050do = this.f4050do;
        this.f4050do.f4054if = vb;
        this.f4050do = vb;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m2550new(VB vb, int i) {
        if (!vb.f4055if) {
            throw new IllegalArgumentException();
        }
        int i2 = vb.f4053if;
        int i3 = i2 + i;
        byte[] bArr = vb.f4052do;
        if (i3 > 8192) {
            if (vb.f4051do) {
                throw new IllegalArgumentException();
            }
            int i4 = vb.f4049do;
            if ((i2 + i) - i4 > 8192) {
                throw new IllegalArgumentException();
            }
            System.arraycopy(bArr, i4, bArr, 0, i2 - i4);
            vb.f4053if -= vb.f4049do;
            vb.f4049do = 0;
        }
        System.arraycopy(this.f4052do, this.f4049do, bArr, vb.f4053if, i);
        vb.f4053if += i;
        this.f4049do += i;
    }

    public VB(byte[] bArr, int i, int i2) {
        this.f4052do = bArr;
        this.f4049do = i;
        this.f4053if = i2;
        this.f4051do = true;
        this.f4055if = false;
    }
}
