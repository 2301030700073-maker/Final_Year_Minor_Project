package d.a.a.a.a.a;

import com.android.quickstep.fallback.RecentsState;
import com.android.quickstep.interaction.EdgeBackGesturePanel;
import com.google.protobuf.nano.CodedOutputByteBufferNano$OutOfSpaceException;

/* loaded from: classes.dex */
public final class b extends c.b.b.a1.e {

    /* renamed from: a, reason: collision with root package name */
    public c f3526a = null;

    /* renamed from: b, reason: collision with root package name */
    public String f3527b = "";

    /* renamed from: c, reason: collision with root package name */
    public boolean f3528c = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3529d = false;
    public float e = RecentsState.NO_OFFSET;
    public int f = 0;
    public int g = 1;
    public int h = 0;
    public e i = null;
    public boolean j = false;
    public int k = 0;
    public boolean l = false;

    public b() {
        this.cachedSize = -1;
    }

    @Override // c.b.b.a1.e
    public int computeSerializedSize() {
        c cVar = this.f3526a;
        int d2 = cVar != null ? 0 + c.b.b.a1.b.d(1, cVar) : 0;
        if (!this.f3527b.equals("")) {
            d2 += c.b.b.a1.b.f(2, this.f3527b);
        }
        boolean z = this.f3528c;
        if (z) {
            d2 += c.b.b.a1.b.a(3, z);
        }
        boolean z2 = this.f3529d;
        if (z2) {
            d2 += c.b.b.a1.b.a(4, z2);
        }
        if (Float.floatToIntBits(this.e) != Float.floatToIntBits(RecentsState.NO_OFFSET)) {
            d2 += c.b.b.a1.b.g(5) + 4;
        }
        int i = this.f;
        if (i != 0) {
            d2 += c.b.b.a1.b.b(6, i);
        }
        int i2 = this.g;
        if (i2 != 1) {
            d2 += c.b.b.a1.b.b(7, i2);
        }
        int i3 = this.h;
        if (i3 != 0) {
            d2 += c.b.b.a1.b.b(8, i3);
        }
        e eVar = this.i;
        if (eVar != null) {
            d2 += c.b.b.a1.b.d(9, eVar);
        }
        boolean z3 = this.j;
        if (z3) {
            d2 += c.b.b.a1.b.a(10, z3);
        }
        int i4 = this.k;
        if (i4 != 0) {
            d2 += c.b.b.a1.b.b(11, i4);
        }
        boolean z4 = this.l;
        return z4 ? d2 + c.b.b.a1.b.a(12, z4) : d2;
    }

    @Override // c.b.b.a1.e
    public c.b.b.a1.e mergeFrom(c.b.b.a1.a aVar) {
        while (true) {
            int k = aVar.k();
            switch (k) {
                case 0:
                    break;
                case 10:
                    if (this.f3526a == null) {
                        this.f3526a = new c();
                    }
                    aVar.d(this.f3526a);
                    break;
                case 18:
                    this.f3527b = aVar.j();
                    break;
                case 24:
                    this.f3528c = aVar.b();
                    break;
                case 32:
                    this.f3529d = aVar.b();
                    break;
                case 45:
                    this.e = Float.intBitsToFloat(aVar.g());
                    break;
                case 48:
                    this.f = aVar.i();
                    break;
                case EdgeBackGesturePanel.ARROW_ANGLE_WHEN_EXTENDED_DEGREES /* 56 */:
                    this.g = aVar.i();
                    break;
                case 64:
                    this.h = aVar.i();
                    break;
                case 74:
                    if (this.i == null) {
                        this.i = new e();
                    }
                    aVar.d(this.i);
                    break;
                case 80:
                    this.j = aVar.b();
                    break;
                case 88:
                    this.k = aVar.i();
                    break;
                case 96:
                    this.l = aVar.b();
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
        c cVar = this.f3526a;
        if (cVar != null) {
            bVar.o(1, cVar);
        }
        if (!this.f3527b.equals("")) {
            bVar.s(2, this.f3527b);
        }
        boolean z = this.f3528c;
        if (z) {
            bVar.k(3, z);
        }
        boolean z2 = this.f3529d;
        if (z2) {
            bVar.k(4, z2);
        }
        if (Float.floatToIntBits(this.e) != Float.floatToIntBits(RecentsState.NO_OFFSET)) {
            float f = this.e;
            bVar.q(45);
            int floatToIntBits = Float.floatToIntBits(f);
            if (bVar.f3167a.remaining() < 4) {
                throw new CodedOutputByteBufferNano$OutOfSpaceException(bVar.f3167a.position(), bVar.f3167a.limit());
            }
            bVar.f3167a.putInt(floatToIntBits);
        }
        int i = this.f;
        if (i != 0) {
            bVar.m(6, i);
        }
        int i2 = this.g;
        if (i2 != 1) {
            bVar.m(7, i2);
        }
        int i3 = this.h;
        if (i3 != 0) {
            bVar.m(8, i3);
        }
        e eVar = this.i;
        if (eVar != null) {
            bVar.o(9, eVar);
        }
        boolean z3 = this.j;
        if (z3) {
            bVar.k(10, z3);
        }
        int i4 = this.k;
        if (i4 != 0) {
            bVar.m(11, i4);
        }
        boolean z4 = this.l;
        if (z4) {
            bVar.k(12, z4);
        }
    }
}
