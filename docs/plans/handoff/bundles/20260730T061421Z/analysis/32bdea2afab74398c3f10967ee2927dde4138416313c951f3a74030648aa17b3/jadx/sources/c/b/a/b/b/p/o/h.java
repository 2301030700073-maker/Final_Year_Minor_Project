package c.b.a.b.b.p.o;

import com.android.quickstep.interaction.EdgeBackGesturePanel;
import com.android.systemui.shared.recents.ISystemUiProxy;

/* loaded from: classes.dex */
public final class h extends c.b.b.a1.e {
    public static volatile h[] n;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2840a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f2841b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f2842c = 0;

    /* renamed from: d, reason: collision with root package name */
    public f f2843d = null;
    public f e = null;
    public f f = null;
    public c g = null;
    public int h = 0;
    public g i = null;
    public long j = 0;
    public long k = 0;
    public long l = 0;
    public b m = null;

    public h() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        boolean z = this.f2840a;
        int a2 = z ? 0 + c.b.b.a1.b.a(1, z) : 0;
        int i = this.f2842c;
        if (i != 0) {
            a2 += c.b.b.a1.b.b(2, i);
        }
        f fVar = this.f2843d;
        if (fVar != null) {
            a2 += c.b.b.a1.b.d(3, fVar);
        }
        f fVar2 = this.e;
        if (fVar2 != null) {
            a2 += c.b.b.a1.b.d(4, fVar2);
        }
        f fVar3 = this.f;
        if (fVar3 != null) {
            a2 += c.b.b.a1.b.d(5, fVar3);
        }
        c cVar = this.g;
        if (cVar != null) {
            a2 += c.b.b.a1.b.d(6, cVar);
        }
        int i2 = this.h;
        if (i2 != 0) {
            a2 += c.b.b.a1.b.b(7, i2);
        }
        g gVar = this.i;
        if (gVar != null) {
            a2 += c.b.b.a1.b.d(8, gVar);
        }
        long j = this.j;
        if (j != 0) {
            a2 += c.b.b.a1.b.c(9, j);
        }
        long j2 = this.k;
        if (j2 != 0) {
            a2 += c.b.b.a1.b.c(10, j2);
        }
        long j3 = this.l;
        if (j3 != 0) {
            a2 += c.b.b.a1.b.c(11, j3);
        }
        b bVar = this.m;
        if (bVar != null) {
            a2 += c.b.b.a1.b.d(12, bVar);
        }
        int i3 = this.f2841b;
        return i3 != 0 ? a2 + c.b.b.a1.b.b(13, i3) : a2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            switch (k) {
                case 0:
                    break;
                case 8:
                    this.f2840a = aVar.b();
                    break;
                case 16:
                    this.f2842c = aVar.i();
                    break;
                case ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask /* 26 */:
                    if (this.f2843d == null) {
                        this.f2843d = new f();
                    }
                    aVar.d(this.f2843d);
                    break;
                case 34:
                    if (this.e == null) {
                        this.e = new f();
                    }
                    aVar.d(this.e);
                    break;
                case 42:
                    if (this.f == null) {
                        this.f = new f();
                    }
                    aVar.d(this.f);
                    break;
                case 50:
                    if (this.g == null) {
                        this.g = new c();
                    }
                    aVar.d(this.g);
                    break;
                case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                    int i = aVar.i();
                    switch (i) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            this.h = i;
                            break;
                    }
                case 66:
                    if (this.i == null) {
                        this.i = new g();
                    }
                    aVar.d(this.i);
                    break;
                case 72:
                    this.j = aVar.c();
                    break;
                case 80:
                    this.k = aVar.c();
                    break;
                case 88:
                    this.l = aVar.c();
                    break;
                case 98:
                    if (this.m == null) {
                        this.m = new b();
                    }
                    aVar.d(this.m);
                    break;
                case 104:
                    int i2 = aVar.i();
                    if (i2 != 0 && i2 != 1 && i2 != 2) {
                        break;
                    } else {
                        this.f2841b = i2;
                        break;
                    }
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
        boolean z = this.f2840a;
        if (z) {
            bVar.k(1, z);
        }
        int i = this.f2842c;
        if (i != 0) {
            bVar.m(2, i);
        }
        f fVar = this.f2843d;
        if (fVar != null) {
            bVar.o(3, fVar);
        }
        f fVar2 = this.e;
        if (fVar2 != null) {
            bVar.o(4, fVar2);
        }
        f fVar3 = this.f;
        if (fVar3 != null) {
            bVar.o(5, fVar3);
        }
        c cVar = this.g;
        if (cVar != null) {
            bVar.o(6, cVar);
        }
        int i2 = this.h;
        if (i2 != 0) {
            bVar.m(7, i2);
        }
        g gVar = this.i;
        if (gVar != null) {
            bVar.o(8, gVar);
        }
        long j = this.j;
        if (j != 0) {
            bVar.n(9, j);
        }
        long j2 = this.k;
        if (j2 != 0) {
            bVar.n(10, j2);
        }
        long j3 = this.l;
        if (j3 != 0) {
            bVar.n(11, j3);
        }
        b bVar2 = this.m;
        if (bVar2 != null) {
            bVar.o(12, bVar2);
        }
        int i3 = this.f2841b;
        if (i3 != 0) {
            bVar.m(13, i3);
        }
    }
}
