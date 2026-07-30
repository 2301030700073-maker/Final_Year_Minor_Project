package c.b.b;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;

/* loaded from: classes.dex */
public class V {

    /* renamed from: a, reason: collision with root package name */
    public ByteString f3156a;

    /* renamed from: b, reason: collision with root package name */
    public volatile InterfaceC0470o0 f3157b;

    /* renamed from: c, reason: collision with root package name */
    public volatile ByteString f3158c;

    static {
        C0486x.a();
    }

    public InterfaceC0470o0 a(InterfaceC0470o0 interfaceC0470o0) {
        if (this.f3157b == null) {
            synchronized (this) {
                if (this.f3157b == null) {
                    try {
                        this.f3157b = interfaceC0470o0;
                        this.f3158c = ByteString.f3492a;
                    } catch (InvalidProtocolBufferException unused) {
                        this.f3157b = interfaceC0470o0;
                        this.f3158c = ByteString.f3492a;
                    }
                }
            }
        }
        return this.f3157b;
    }

    public ByteString b() {
        if (this.f3158c != null) {
            return this.f3158c;
        }
        synchronized (this) {
            if (this.f3158c != null) {
                return this.f3158c;
            }
            if (this.f3157b == null) {
                this.f3158c = ByteString.f3492a;
            } else {
                this.f3158c = this.f3157b.toByteString();
            }
            return this.f3158c;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof V)) {
            return false;
        }
        V v = (V) obj;
        InterfaceC0470o0 interfaceC0470o0 = this.f3157b;
        InterfaceC0470o0 interfaceC0470o02 = v.f3157b;
        return (interfaceC0470o0 == null && interfaceC0470o02 == null) ? b().equals(v.b()) : (interfaceC0470o0 == null || interfaceC0470o02 == null) ? interfaceC0470o0 != null ? interfaceC0470o0.equals(v.a(interfaceC0470o0.getDefaultInstanceForType())) : a(interfaceC0470o02.getDefaultInstanceForType()).equals(interfaceC0470o02) : interfaceC0470o0.equals(interfaceC0470o02);
    }

    public int hashCode() {
        return 1;
    }
}
