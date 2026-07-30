package c.b.a.b.b.n.q;

import c.b.b.a1.e;
import c.b.b.a1.f;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.system.SysUiStatsLog;

/* loaded from: classes.dex */
public final class c extends e {

    /* renamed from: a, reason: collision with root package name */
    public int f2785a = 0;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2786b = false;

    /* renamed from: c, reason: collision with root package name */
    public String f2787c = "";

    /* renamed from: d, reason: collision with root package name */
    public String f2788d = "";
    public a e = null;
    public a f = null;
    public int g = 0;
    public b[] h;
    public a i;
    public String j;
    public int k;
    public int l;
    public String m;
    public a n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public int s;

    public c() {
        if (b.e == null) {
            synchronized (c.b.b.a1.d.f3169b) {
                if (b.e == null) {
                    b.e = new b[0];
                }
            }
        }
        this.h = b.e;
        this.i = null;
        this.j = "";
        this.k = 0;
        this.l = 0;
        this.m = "";
        this.n = null;
        this.o = false;
        this.p = false;
        this.q = 0;
        this.r = 0;
        this.s = 0;
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        int i = this.f2785a;
        int i2 = 0;
        int b2 = i != 0 ? c.b.b.a1.b.b(1, i) + 0 : 0;
        if (!this.f2787c.equals("")) {
            b2 += c.b.b.a1.b.f(2, this.f2787c);
        }
        if (!this.f2788d.equals("")) {
            b2 += c.b.b.a1.b.f(3, this.f2788d);
        }
        a aVar = this.e;
        if (aVar != null) {
            b2 += c.b.b.a1.b.d(4, aVar);
        }
        int i3 = this.g;
        if (i3 != 0) {
            b2 += c.b.b.a1.b.b(5, i3);
        }
        b[] bVarArr = this.h;
        if (bVarArr != null && bVarArr.length > 0) {
            while (true) {
                b[] bVarArr2 = this.h;
                if (i2 >= bVarArr2.length) {
                    break;
                }
                b bVar = bVarArr2[i2];
                if (bVar != null) {
                    b2 += c.b.b.a1.b.d(6, bVar);
                }
                i2++;
            }
        }
        a aVar2 = this.i;
        if (aVar2 != null) {
            b2 += c.b.b.a1.b.d(7, aVar2);
        }
        if (!this.j.equals("")) {
            b2 += c.b.b.a1.b.f(8, this.j);
        }
        int i4 = this.k;
        if (i4 != 0) {
            b2 += c.b.b.a1.b.b(9, i4);
        }
        int i5 = this.l;
        if (i5 != 0) {
            b2 += c.b.b.a1.b.b(10, i5);
        }
        if (!this.m.equals("")) {
            b2 += c.b.b.a1.b.f(11, this.m);
        }
        a aVar3 = this.n;
        if (aVar3 != null) {
            b2 += c.b.b.a1.b.d(12, aVar3);
        }
        boolean z = this.o;
        if (z) {
            b2 += c.b.b.a1.b.a(13, z);
        }
        a aVar4 = this.f;
        if (aVar4 != null) {
            b2 += c.b.b.a1.b.d(14, aVar4);
        }
        boolean z2 = this.f2786b;
        if (z2) {
            b2 += c.b.b.a1.b.a(15, z2);
        }
        boolean z3 = this.p;
        if (z3) {
            b2 += c.b.b.a1.b.a(16, z3);
        }
        int i6 = this.q;
        if (i6 != 0) {
            b2 += c.b.b.a1.b.b(17, i6);
        }
        int i7 = this.r;
        if (i7 != 0) {
            b2 += c.b.b.a1.b.b(18, i7);
        }
        int i8 = this.s;
        return i8 != 0 ? b2 + c.b.b.a1.b.b(19, i8) : b2;
    }

    @Override // c.b.b.a1.e
    public e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            switch (k) {
                case 0:
                    break;
                case 8:
                    this.f2785a = aVar.i();
                    break;
                case 18:
                    this.f2787c = aVar.j();
                    break;
                case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                    this.f2788d = aVar.j();
                    break;
                case 34:
                    if (this.e == null) {
                        this.e = new a();
                    }
                    aVar.d(this.e);
                    break;
                case 40:
                    this.g = aVar.i();
                    break;
                case 50:
                    int a2 = f.a(aVar, 50);
                    b[] bVarArr = this.h;
                    int length = bVarArr == null ? 0 : bVarArr.length;
                    int i = a2 + length;
                    b[] bVarArr2 = new b[i];
                    if (length != 0) {
                        System.arraycopy(this.h, 0, bVarArr2, 0, length);
                    }
                    while (length < i - 1) {
                        bVarArr2[length] = new b();
                        aVar.d(bVarArr2[length]);
                        aVar.k();
                        length++;
                    }
                    bVarArr2[length] = new b();
                    aVar.d(bVarArr2[length]);
                    this.h = bVarArr2;
                    break;
                case 58:
                    if (this.i == null) {
                        this.i = new a();
                    }
                    aVar.d(this.i);
                    break;
                case 66:
                    this.j = aVar.j();
                    break;
                case 72:
                    this.k = aVar.i();
                    break;
                case 80:
                    this.l = aVar.i();
                    break;
                case SysUiStatsLog.UI_EVENT_REPORTED /* 90 */:
                    this.m = aVar.j();
                    break;
                case 98:
                    if (this.n == null) {
                        this.n = new a();
                    }
                    aVar.d(this.n);
                    break;
                case 104:
                    this.o = aVar.b();
                    break;
                case 114:
                    if (this.f == null) {
                        this.f = new a();
                    }
                    aVar.d(this.f);
                    break;
                case 120:
                    this.f2786b = aVar.b();
                    break;
                case 128:
                    this.p = aVar.b();
                    break;
                case 136:
                    int i2 = aVar.i();
                    if (i2 != 0 && i2 != 1 && i2 != 2 && i2 != 3) {
                        break;
                    } else {
                        this.q = i2;
                        break;
                    }
                case 144:
                    this.r = aVar.i();
                    break;
                case 152:
                    int i3 = aVar.i();
                    if (i3 != 0 && i3 != 1 && i3 != 2 && i3 != 3) {
                        break;
                    } else {
                        this.s = i3;
                        break;
                    }
                    break;
                default:
                    if (!aVar.m(k)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }

    @Override // c.b.b.a1.e
    public void writeTo(c.b.b.a1.b bVar) {
        int i = this.f2785a;
        if (i != 0) {
            bVar.m(1, i);
        }
        if (!this.f2787c.equals("")) {
            bVar.s(2, this.f2787c);
        }
        if (!this.f2788d.equals("")) {
            bVar.s(3, this.f2788d);
        }
        a aVar = this.e;
        if (aVar != null) {
            bVar.o(4, aVar);
        }
        int i2 = this.g;
        if (i2 != 0) {
            bVar.m(5, i2);
        }
        b[] bVarArr = this.h;
        if (bVarArr != null && bVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                b[] bVarArr2 = this.h;
                if (i3 >= bVarArr2.length) {
                    break;
                }
                b bVar2 = bVarArr2[i3];
                if (bVar2 != null) {
                    bVar.o(6, bVar2);
                }
                i3++;
            }
        }
        a aVar2 = this.i;
        if (aVar2 != null) {
            bVar.o(7, aVar2);
        }
        if (!this.j.equals("")) {
            bVar.s(8, this.j);
        }
        int i4 = this.k;
        if (i4 != 0) {
            bVar.m(9, i4);
        }
        int i5 = this.l;
        if (i5 != 0) {
            bVar.m(10, i5);
        }
        if (!this.m.equals("")) {
            bVar.s(11, this.m);
        }
        a aVar3 = this.n;
        if (aVar3 != null) {
            bVar.o(12, aVar3);
        }
        boolean z = this.o;
        if (z) {
            bVar.k(13, z);
        }
        a aVar4 = this.f;
        if (aVar4 != null) {
            bVar.o(14, aVar4);
        }
        boolean z2 = this.f2786b;
        if (z2) {
            bVar.k(15, z2);
        }
        boolean z3 = this.p;
        if (z3) {
            bVar.k(16, z3);
        }
        int i6 = this.q;
        if (i6 != 0) {
            bVar.m(17, i6);
        }
        int i7 = this.r;
        if (i7 != 0) {
            bVar.m(18, i7);
        }
        int i8 = this.s;
        if (i8 != 0) {
            bVar.m(19, i8);
        }
    }
}
