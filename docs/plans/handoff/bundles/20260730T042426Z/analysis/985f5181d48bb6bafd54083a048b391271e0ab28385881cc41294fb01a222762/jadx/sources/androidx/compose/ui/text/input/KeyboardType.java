package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: KeyboardType.kt */
/* loaded from: classes.dex */
public final class KeyboardType {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Unspecified = m2228constructorimpl(0);
    private static final int Text = m2228constructorimpl(1);
    private static final int Ascii = m2228constructorimpl(2);
    private static final int Number = m2228constructorimpl(3);
    private static final int Phone = m2228constructorimpl(4);
    private static final int Uri = m2228constructorimpl(5);
    private static final int Email = m2228constructorimpl(6);
    private static final int Password = m2228constructorimpl(7);
    private static final int NumberPassword = m2228constructorimpl(8);
    private static final int Decimal = m2228constructorimpl(9);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ KeyboardType m2227boximpl(int i) {
        return new KeyboardType(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2228constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2229equalsimpl(int i, Object obj) {
        return (obj instanceof KeyboardType) && i == ((KeyboardType) obj).m2233unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2230equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2231hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2229equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2231hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2233unboximpl() {
        return this.value;
    }

    private /* synthetic */ KeyboardType(int i) {
        this.value = i;
    }

    public String toString() {
        return m2232toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2232toStringimpl(int i) {
        return m2230equalsimpl0(i, Unspecified) ? "Unspecified" : m2230equalsimpl0(i, Text) ? "Text" : m2230equalsimpl0(i, Ascii) ? "Ascii" : m2230equalsimpl0(i, Number) ? "Number" : m2230equalsimpl0(i, Phone) ? "Phone" : m2230equalsimpl0(i, Uri) ? "Uri" : m2230equalsimpl0(i, Email) ? "Email" : m2230equalsimpl0(i, Password) ? "Password" : m2230equalsimpl0(i, NumberPassword) ? "NumberPassword" : m2230equalsimpl0(i, Decimal) ? "Decimal" : "Invalid";
    }

    /* compiled from: KeyboardType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getUnspecified-PjHm6EE, reason: not valid java name */
        public final int m2242getUnspecifiedPjHm6EE() {
            return KeyboardType.Unspecified;
        }

        /* renamed from: getText-PjHm6EE, reason: not valid java name */
        public final int m2241getTextPjHm6EE() {
            return KeyboardType.Text;
        }

        /* renamed from: getAscii-PjHm6EE, reason: not valid java name */
        public final int m2234getAsciiPjHm6EE() {
            return KeyboardType.Ascii;
        }

        /* renamed from: getNumber-PjHm6EE, reason: not valid java name */
        public final int m2237getNumberPjHm6EE() {
            return KeyboardType.Number;
        }

        /* renamed from: getPhone-PjHm6EE, reason: not valid java name */
        public final int m2240getPhonePjHm6EE() {
            return KeyboardType.Phone;
        }

        /* renamed from: getUri-PjHm6EE, reason: not valid java name */
        public final int m2243getUriPjHm6EE() {
            return KeyboardType.Uri;
        }

        /* renamed from: getEmail-PjHm6EE, reason: not valid java name */
        public final int m2236getEmailPjHm6EE() {
            return KeyboardType.Email;
        }

        /* renamed from: getPassword-PjHm6EE, reason: not valid java name */
        public final int m2239getPasswordPjHm6EE() {
            return KeyboardType.Password;
        }

        /* renamed from: getNumberPassword-PjHm6EE, reason: not valid java name */
        public final int m2238getNumberPasswordPjHm6EE() {
            return KeyboardType.NumberPassword;
        }

        /* renamed from: getDecimal-PjHm6EE, reason: not valid java name */
        public final int m2235getDecimalPjHm6EE() {
            return KeyboardType.Decimal;
        }
    }
}
