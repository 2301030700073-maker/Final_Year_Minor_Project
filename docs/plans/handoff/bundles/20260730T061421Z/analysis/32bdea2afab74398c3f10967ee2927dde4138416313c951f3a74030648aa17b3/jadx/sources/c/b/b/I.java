package c.b.b;

import com.google.protobuf.WireFormat$FieldType;
import com.google.protobuf.WireFormat$JavaType;

/* loaded from: classes.dex */
public final class I implements B {

    /* renamed from: a, reason: collision with root package name */
    public final int f3124a;

    @Override // c.b.b.B
    public boolean a() {
        return false;
    }

    @Override // c.b.b.B
    public WireFormat$FieldType b() {
        return null;
    }

    @Override // c.b.b.B
    public WireFormat$JavaType c() {
        throw null;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        int i = ((I) obj).f3124a;
        return 0;
    }

    @Override // c.b.b.B
    public boolean d() {
        return false;
    }

    @Override // c.b.b.B
    public InterfaceC0468n0 f(InterfaceC0468n0 interfaceC0468n0, InterfaceC0470o0 interfaceC0470o0) {
        F f = (F) interfaceC0468n0;
        f.mergeFrom((K) interfaceC0470o0);
        return f;
    }

    @Override // c.b.b.B
    public int getNumber() {
        return 0;
    }
}
