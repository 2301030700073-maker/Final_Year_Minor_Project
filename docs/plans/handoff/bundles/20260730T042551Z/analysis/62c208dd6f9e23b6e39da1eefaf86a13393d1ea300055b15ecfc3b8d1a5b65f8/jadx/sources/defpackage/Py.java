package defpackage;

import com.google.protobuf.Cstatic;
import com.google.protobuf.Cthis;

/* loaded from: classes3.dex */
public final class Py implements InterfaceC0418Os {

    /* renamed from: do, reason: not valid java name */
    public final int f2846do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cstatic f2847do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2848do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object[] f2849do;

    public Py(Cthis cthis, String str, Object[] objArr) {
        this.f2847do = cthis;
        this.f2848do = str;
        this.f2849do = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f2846do = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 < 55296) {
                this.f2846do = i | (charAt2 << i3);
                return;
            } else {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    @Override // defpackage.InterfaceC0418Os
    /* renamed from: do */
    public final boolean mo586do() {
        return (this.f2846do & 2) == 2;
    }

    @Override // defpackage.InterfaceC0418Os
    /* renamed from: for */
    public final Cstatic mo587for() {
        return this.f2847do;
    }

    @Override // defpackage.InterfaceC0418Os
    /* renamed from: if */
    public final int mo588if() {
        int i = this.f2846do;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }

    /* renamed from: new, reason: not valid java name */
    public final Object[] m1816new() {
        return this.f2849do;
    }

    /* renamed from: try, reason: not valid java name */
    public final String m1817try() {
        return this.f2848do;
    }
}
