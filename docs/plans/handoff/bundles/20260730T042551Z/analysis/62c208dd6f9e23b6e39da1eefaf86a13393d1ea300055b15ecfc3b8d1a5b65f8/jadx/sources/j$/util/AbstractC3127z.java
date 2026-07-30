package j$.util;

import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;

/* renamed from: j$.util.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC3127z {
    public static Optional a(java.util.Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.isPresent() ? Optional.of(optional.get()) : Optional.empty();
    }

    public static A b(OptionalDouble optionalDouble) {
        if (optionalDouble == null) {
            return null;
        }
        return optionalDouble.isPresent() ? A.d(optionalDouble.getAsDouble()) : A.a();
    }

    public static B c(OptionalInt optionalInt) {
        if (optionalInt == null) {
            return null;
        }
        return optionalInt.isPresent() ? B.d(optionalInt.getAsInt()) : B.a();
    }

    public static C d(OptionalLong optionalLong) {
        if (optionalLong == null) {
            return null;
        }
        return optionalLong.isPresent() ? C.d(optionalLong.getAsLong()) : C.a();
    }

    public static java.util.Optional e(Optional optional) {
        if (optional == null) {
            return null;
        }
        return optional.b() ? java.util.Optional.of(optional.a()) : java.util.Optional.empty();
    }

    public static OptionalDouble f(A a) {
        if (a == null) {
            return null;
        }
        return a.c() ? OptionalDouble.of(a.b()) : OptionalDouble.empty();
    }

    public static OptionalInt g(B b) {
        if (b == null) {
            return null;
        }
        return b.c() ? OptionalInt.of(b.b()) : OptionalInt.empty();
    }

    public static OptionalLong h(C c) {
        if (c == null) {
            return null;
        }
        return c.c() ? OptionalLong.of(c.b()) : OptionalLong.empty();
    }
}
