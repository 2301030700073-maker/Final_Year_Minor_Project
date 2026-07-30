package j$.util.stream;

/* renamed from: j$.util.stream.y1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C3113y1 extends AbstractC3118z1 {
    public final /* synthetic */ int c;
    private final Object d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3113y1(H0 h0, Object obj) {
        this(h0, obj, 0);
        this.c = 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3113y1(I0 i0, Object obj, int i) {
        super(i0);
        this.c = i;
        this.d = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3113y1(I0 i0, Object[] objArr) {
        this(i0, objArr, 1);
        this.c = 1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3113y1(C3113y1 c3113y1, H0 h0, int i) {
        super(c3113y1, h0, i);
        this.c = 0;
        this.d = c3113y1.d;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3113y1(C3113y1 c3113y1, I0 i0, int i) {
        super(c3113y1, i0, i);
        this.c = 1;
        this.d = (Object[]) c3113y1.d;
    }

    @Override // j$.util.stream.AbstractC3118z1
    final void a() {
        switch (this.c) {
            case 0:
                ((H0) this.a).f(this.b, this.d);
                break;
            default:
                this.a.j((Object[]) this.d, this.b);
                break;
        }
    }

    @Override // j$.util.stream.AbstractC3118z1
    final C3113y1 b(int i, int i2) {
        switch (this.c) {
            case 0:
                return new C3113y1(this, ((H0) this.a).a(i), i2);
            default:
                return new C3113y1(this, this.a.a(i), i2);
        }
    }
}
