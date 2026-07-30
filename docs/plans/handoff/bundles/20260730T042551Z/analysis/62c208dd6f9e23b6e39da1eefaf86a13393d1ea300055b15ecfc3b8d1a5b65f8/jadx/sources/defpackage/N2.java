package defpackage;

import defpackage.InterfaceC2899hy;
import java.lang.annotation.Annotation;

/* loaded from: classes3.dex */
public final class N2 implements InterfaceC2899hy {

    /* renamed from: do, reason: not valid java name */
    public final int f2285do;

    public N2(int i) {
        this.f2285do = i;
    }

    @Override // java.lang.annotation.Annotation
    public final Class<? extends Annotation> annotationType() {
        return InterfaceC2899hy.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InterfaceC2899hy)) {
            return false;
        }
        N2 n2 = (N2) ((InterfaceC2899hy) obj);
        if (this.f2285do == n2.f2285do) {
            Object obj2 = InterfaceC2899hy.Cdo.DEFAULT;
            n2.getClass();
            if (obj2.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (14552422 ^ this.f2285do) + (InterfaceC2899hy.Cdo.DEFAULT.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.f2285do + "intEncoding=" + InterfaceC2899hy.Cdo.DEFAULT + ')';
    }
}
