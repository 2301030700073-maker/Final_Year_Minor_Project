package defpackage;

import defpackage.AbstractC2890hp;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Set;

/* loaded from: classes3.dex */
public final class VE {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f4064do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f4062do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew f4065do = new Cnew();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f4067do = new Ctry();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ccase f4059do = new Ccase();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Celse f4061do = new Celse();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cgoto f4063do = new Cgoto();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cthis f4066do = new Cthis();

    /* renamed from: do, reason: not valid java name */
    public static final Cbreak f4058do = new Cbreak();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f4060do = new Cdo();

    /* renamed from: VE$break, reason: invalid class name */
    public static class Cbreak extends AbstractC2890hp<Short> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Short mo249do(C3470op c3470op) {
            return Short.valueOf((short) VE.m2551do(c3470op, "a short", -32768, 32767));
        }

        public final String toString() {
            return "JsonAdapter(Short)";
        }
    }

    /* renamed from: VE$case, reason: invalid class name */
    public static class Ccase extends AbstractC2890hp<Double> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Double mo249do(C3470op c3470op) {
            return Double.valueOf(c3470op.m7737return());
        }

        public final String toString() {
            return "JsonAdapter(Double)";
        }
    }

    /* renamed from: VE$catch, reason: invalid class name */
    public static final class Ccatch<T extends Enum<T>> extends AbstractC2890hp<T> {

        /* renamed from: do, reason: not valid java name */
        public final Class<T> f4068do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final LinkedHashMap f4069do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final String[] f4070do;

        public Ccatch(Class<T> cls) {
            this.f4068do = cls;
            try {
                T[] enumConstants = cls.getEnumConstants();
                this.f4069do = new LinkedHashMap();
                this.f4070do = new String[enumConstants.length];
                for (int i = 0; i < enumConstants.length; i++) {
                    T t = enumConstants[i];
                    InterfaceC2772fp interfaceC2772fp = (InterfaceC2772fp) cls.getField(t.name()).getAnnotation(InterfaceC2772fp.class);
                    String name = interfaceC2772fp != null ? interfaceC2772fp.name() : t.name();
                    this.f4069do.put(name, t);
                    this.f4070do[i] = name;
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError("Missing field in ".concat(cls.getName()), e);
            }
        }

        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Object mo249do(C3470op c3470op) {
            String m7733interface = c3470op.m7733interface();
            LinkedHashMap linkedHashMap = this.f4069do;
            Enum r2 = (Enum) linkedHashMap.get(m7733interface);
            if (r2 != null) {
                return r2;
            }
            throw new C0623Yd("Expected one of " + linkedHashMap.keySet() + " but was " + m7733interface + " at path " + c3470op.m7723break());
        }

        public final String toString() {
            return "JsonAdapter(" + this.f4068do.getName() + ")";
        }
    }

    /* renamed from: VE$class, reason: invalid class name */
    public static final class Cclass extends AbstractC2890hp<Object> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Object mo249do(C3470op c3470op) {
            int m8819catch = C4122zt.m8819catch(c3470op.a());
            if (m8819catch == 0) {
                ArrayList arrayList = new ArrayList();
                c3470op.m7728do();
                while (c3470op.m7725class()) {
                    arrayList.add(mo249do(c3470op));
                }
                c3470op.m7724case();
                return arrayList;
            }
            if (m8819catch == 2) {
                C3765tq c3765tq = new C3765tq();
                c3470op.m7731if();
                while (c3470op.m7725class()) {
                    c3765tq.put(c3470op.m7735package(), mo249do(c3470op));
                }
                c3470op.m7730goto();
                return c3765tq;
            }
            if (m8819catch == 5) {
                return c3470op.m7733interface();
            }
            if (m8819catch == 6) {
                return Double.valueOf(c3470op.m7737return());
            }
            if (m8819catch == 7) {
                return Boolean.valueOf(c3470op.m7736public());
            }
            if (m8819catch == 8) {
                c3470op.m7738strictfp();
                return null;
            }
            throw new IllegalStateException("Expected a value but was " + Cpublic.m7819const(c3470op.a()) + " at path " + c3470op.m7723break());
        }

        public final String toString() {
            return "JsonAdapter(Object)";
        }
    }

    /* renamed from: VE$do, reason: invalid class name */
    public static class Cdo extends AbstractC2890hp<String> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final String mo249do(C3470op c3470op) {
            return c3470op.m7733interface();
        }

        public final String toString() {
            return "JsonAdapter(String)";
        }
    }

    /* renamed from: VE$else, reason: invalid class name */
    public static class Celse extends AbstractC2890hp<Float> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Float mo249do(C3470op c3470op) {
            float m7737return = (float) c3470op.m7737return();
            if (!Float.isInfinite(m7737return)) {
                return Float.valueOf(m7737return);
            }
            throw new C0623Yd("JSON forbids NaN and infinities: " + m7737return + " at path " + c3470op.m7723break());
        }

        public final String toString() {
            return "JsonAdapter(Float)";
        }
    }

    /* renamed from: VE$for, reason: invalid class name */
    public static class Cfor extends AbstractC2890hp<Boolean> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Boolean mo249do(C3470op c3470op) {
            return Boolean.valueOf(c3470op.m7736public());
        }

        public final String toString() {
            return "JsonAdapter(Boolean)";
        }
    }

    /* renamed from: VE$goto, reason: invalid class name */
    public static class Cgoto extends AbstractC2890hp<Integer> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Integer mo249do(C3470op c3470op) {
            return Integer.valueOf(c3470op.m7740throws());
        }

        public final String toString() {
            return "JsonAdapter(Integer)";
        }
    }

    /* renamed from: VE$if, reason: invalid class name */
    public static class Cif implements AbstractC2890hp.Cdo {
        @Override // defpackage.AbstractC2890hp.Cdo
        /* renamed from: do */
        public final AbstractC2890hp<?> mo250do(Type type, Set<? extends Annotation> set, C3886vt c3886vt) {
            if (!set.isEmpty()) {
                return null;
            }
            if (type == Boolean.TYPE) {
                return VE.f4062do;
            }
            if (type == Byte.TYPE) {
                return VE.f4065do;
            }
            if (type == Character.TYPE) {
                return VE.f4067do;
            }
            if (type == Double.TYPE) {
                return VE.f4059do;
            }
            if (type == Float.TYPE) {
                return VE.f4061do;
            }
            if (type == Integer.TYPE) {
                return VE.f4063do;
            }
            if (type == Long.TYPE) {
                return VE.f4066do;
            }
            if (type == Short.TYPE) {
                return VE.f4058do;
            }
            if (type == Boolean.class) {
                Cfor cfor = VE.f4062do;
                cfor.getClass();
                return new C2831gp(cfor);
            }
            if (type == Byte.class) {
                Cnew cnew = VE.f4065do;
                cnew.getClass();
                return new C2831gp(cnew);
            }
            if (type == Character.class) {
                Ctry ctry = VE.f4067do;
                ctry.getClass();
                return new C2831gp(ctry);
            }
            if (type == Double.class) {
                Ccase ccase = VE.f4059do;
                ccase.getClass();
                return new C2831gp(ccase);
            }
            if (type == Float.class) {
                Celse celse = VE.f4061do;
                celse.getClass();
                return new C2831gp(celse);
            }
            if (type == Integer.class) {
                Cgoto cgoto = VE.f4063do;
                cgoto.getClass();
                return new C2831gp(cgoto);
            }
            if (type == Long.class) {
                Cthis cthis = VE.f4066do;
                cthis.getClass();
                return new C2831gp(cthis);
            }
            if (type == Short.class) {
                Cbreak cbreak = VE.f4058do;
                cbreak.getClass();
                return new C2831gp(cbreak);
            }
            if (type == String.class) {
                Cdo cdo = VE.f4060do;
                cdo.getClass();
                return new C2831gp(cdo);
            }
            if (type == Object.class) {
                return new C2831gp(new Cclass());
            }
            Class<?> m2722case = WI.m2722case(type);
            if (m2722case.isEnum()) {
                return new C2831gp(new Ccatch(m2722case));
            }
            return null;
        }
    }

    /* renamed from: VE$new, reason: invalid class name */
    public static class Cnew extends AbstractC2890hp<Byte> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Byte mo249do(C3470op c3470op) {
            return Byte.valueOf((byte) VE.m2551do(c3470op, "a byte", -128, 255));
        }

        public final String toString() {
            return "JsonAdapter(Byte)";
        }
    }

    /* renamed from: VE$this, reason: invalid class name */
    public static class Cthis extends AbstractC2890hp<Long> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Long mo249do(C3470op c3470op) {
            long parseLong;
            int i = c3470op.f14861for;
            if (i == 0) {
                i = c3470op.m7734new();
            }
            if (i == 15) {
                c3470op.f14861for = 0;
                int[] iArr = c3470op.f14862if;
                int i2 = c3470op.f14864try - 1;
                iArr[i2] = iArr[i2] + 1;
                parseLong = c3470op.f14856do;
            } else {
                if (i == 16) {
                    c3470op.f14855break = c3470op.f14857do.m2327class(c3470op.f14863new);
                } else if (i == 9 || i == 8) {
                    String m7741volatile = i == 9 ? c3470op.m7741volatile(C3470op.f14854if) : c3470op.m7741volatile(C3470op.f14852do);
                    c3470op.f14855break = m7741volatile;
                    try {
                        parseLong = Long.parseLong(m7741volatile);
                        c3470op.f14861for = 0;
                        int[] iArr2 = c3470op.f14862if;
                        int i3 = c3470op.f14864try - 1;
                        iArr2[i3] = iArr2[i3] + 1;
                    } catch (NumberFormatException unused) {
                    }
                } else if (i != 11) {
                    throw new C0623Yd("Expected a long but was " + Cpublic.m7819const(c3470op.a()) + " at path " + c3470op.m7723break());
                }
                c3470op.f14861for = 11;
                try {
                    double parseDouble = Double.parseDouble(c3470op.f14855break);
                    long j = (long) parseDouble;
                    if (j != parseDouble) {
                        throw new C0623Yd("Expected a long but was " + c3470op.f14855break + " at path " + c3470op.m7723break());
                    }
                    c3470op.f14855break = null;
                    c3470op.f14861for = 0;
                    int[] iArr3 = c3470op.f14862if;
                    int i4 = c3470op.f14864try - 1;
                    iArr3[i4] = iArr3[i4] + 1;
                    parseLong = j;
                } catch (NumberFormatException unused2) {
                    throw new C0623Yd("Expected a long but was " + c3470op.f14855break + " at path " + c3470op.m7723break());
                }
            }
            return Long.valueOf(parseLong);
        }

        public final String toString() {
            return "JsonAdapter(Long)";
        }
    }

    /* renamed from: VE$try, reason: invalid class name */
    public static class Ctry extends AbstractC2890hp<Character> {
        @Override // defpackage.AbstractC2890hp
        /* renamed from: do */
        public final Character mo249do(C3470op c3470op) {
            String m7733interface = c3470op.m7733interface();
            if (m7733interface.length() <= 1) {
                return Character.valueOf(m7733interface.charAt(0));
            }
            throw new C0623Yd(String.format("Expected %s but was %s at path %s", "a char", "\"" + m7733interface + '\"', c3470op.m7723break()));
        }

        public final String toString() {
            return "JsonAdapter(Character)";
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m2551do(C3470op c3470op, String str, int i, int i2) {
        int m7740throws = c3470op.m7740throws();
        if (m7740throws < i || m7740throws > i2) {
            throw new C0623Yd(String.format("Expected %s but was %s at path %s", str, Integer.valueOf(m7740throws), c3470op.m7723break()));
        }
        return m7740throws;
    }
}
