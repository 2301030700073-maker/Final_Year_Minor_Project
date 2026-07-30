package c.b.b;

import com.google.protobuf.ProtoSyntax;

/* renamed from: c.b.b.z0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0491z0 implements InterfaceC0464l0 {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0470o0 f3229a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3230b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f3231c;

    /* renamed from: d, reason: collision with root package name */
    public final int f3232d;

    public C0491z0(InterfaceC0470o0 interfaceC0470o0, String str, Object[] objArr) {
        this.f3229a = interfaceC0470o0;
        this.f3230b = str;
        this.f3231c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.f3232d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 < 55296) {
                this.f3232d = i | (charAt2 << i2);
                return;
            } else {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    @Override // c.b.b.InterfaceC0464l0
    public ProtoSyntax a() {
        return (this.f3232d & 1) == 1 ? ProtoSyntax.PROTO2 : ProtoSyntax.PROTO3;
    }

    @Override // c.b.b.InterfaceC0464l0
    public InterfaceC0470o0 b() {
        return this.f3229a;
    }

    @Override // c.b.b.InterfaceC0464l0
    public boolean c() {
        return (this.f3232d & 2) == 2;
    }
}
