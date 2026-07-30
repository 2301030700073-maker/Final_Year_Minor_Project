package androidx.compose.ui.semantics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: SemanticsProperties.kt */
/* loaded from: classes.dex */
public final class Role {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Button = m2005constructorimpl(0);
    private static final int Checkbox = m2005constructorimpl(1);
    private static final int Switch = m2005constructorimpl(2);
    private static final int RadioButton = m2005constructorimpl(3);
    private static final int Tab = m2005constructorimpl(4);
    private static final int Image = m2005constructorimpl(5);
    private static final int DropdownList = m2005constructorimpl(6);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Role m2004boximpl(int i) {
        return new Role(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m2005constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m2006equalsimpl(int i, Object obj) {
        return (obj instanceof Role) && i == ((Role) obj).m2010unboximpl();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m2007equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m2008hashCodeimpl(int i) {
        return i;
    }

    public boolean equals(Object obj) {
        return m2006equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m2008hashCodeimpl(this.value);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m2010unboximpl() {
        return this.value;
    }

    /* compiled from: SemanticsProperties.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getButton-o7Vup1c, reason: not valid java name */
        public final int m2011getButtono7Vup1c() {
            return Role.Button;
        }

        /* renamed from: getCheckbox-o7Vup1c, reason: not valid java name */
        public final int m2012getCheckboxo7Vup1c() {
            return Role.Checkbox;
        }

        /* renamed from: getSwitch-o7Vup1c, reason: not valid java name */
        public final int m2016getSwitcho7Vup1c() {
            return Role.Switch;
        }

        /* renamed from: getRadioButton-o7Vup1c, reason: not valid java name */
        public final int m2015getRadioButtono7Vup1c() {
            return Role.RadioButton;
        }

        /* renamed from: getTab-o7Vup1c, reason: not valid java name */
        public final int m2017getTabo7Vup1c() {
            return Role.Tab;
        }

        /* renamed from: getImage-o7Vup1c, reason: not valid java name */
        public final int m2014getImageo7Vup1c() {
            return Role.Image;
        }

        /* renamed from: getDropdownList-o7Vup1c, reason: not valid java name */
        public final int m2013getDropdownListo7Vup1c() {
            return Role.DropdownList;
        }
    }

    private /* synthetic */ Role(int i) {
        this.value = i;
    }

    public String toString() {
        return m2009toStringimpl(this.value);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m2009toStringimpl(int i) {
        return m2007equalsimpl0(i, Button) ? "Button" : m2007equalsimpl0(i, Checkbox) ? "Checkbox" : m2007equalsimpl0(i, Switch) ? "Switch" : m2007equalsimpl0(i, RadioButton) ? "RadioButton" : m2007equalsimpl0(i, Tab) ? "Tab" : m2007equalsimpl0(i, Image) ? "Image" : m2007equalsimpl0(i, DropdownList) ? "DropdownList" : "Unknown";
    }
}
