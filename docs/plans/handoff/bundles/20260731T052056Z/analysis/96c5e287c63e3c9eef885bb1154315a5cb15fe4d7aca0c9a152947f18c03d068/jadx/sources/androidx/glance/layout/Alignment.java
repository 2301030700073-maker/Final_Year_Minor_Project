package androidx.glance.layout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Alignment {
    public final int horizontal;
    public final int vertical;
    public static final Alignment TopStart = new Alignment(0, 0);
    public static final Alignment CenterStart = new Alignment(0, 1);
    public static final Alignment Center = new Alignment(1, 1);
    public static final Alignment CenterEnd = new Alignment(2, 1);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Horizontal {
        public final int value;

        public /* synthetic */ Horizontal(int i) {
            this.value = i;
        }

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Horizontal m745boximpl(int i) {
            return new Horizontal(i);
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m746toStringimpl(int i) {
            return "Horizontal(value=" + i + ')';
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Horizontal) {
                return this.value == ((Horizontal) obj).value;
            }
            return false;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return m746toStringimpl(this.value);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Vertical {
        public final int value;

        public /* synthetic */ Vertical(int i) {
            this.value = i;
        }

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Vertical m747boximpl(int i) {
            return new Vertical(i);
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m748toStringimpl(int i) {
            return "Vertical(value=" + i + ')';
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Vertical) {
                return this.value == ((Vertical) obj).value;
            }
            return false;
        }

        public final int hashCode() {
            return this.value;
        }

        public final String toString() {
            return m748toStringimpl(this.value);
        }
    }

    public Alignment(int i, int i2) {
        this.horizontal = i;
        this.vertical = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Alignment.class.equals(obj != null ? obj.getClass() : null)) {
            return false;
        }
        obj.getClass();
        Alignment alignment = (Alignment) obj;
        return this.horizontal == alignment.horizontal && this.vertical == alignment.vertical;
    }

    public final int hashCode() {
        return (this.horizontal * 31) + this.vertical;
    }

    public final String toString() {
        return "Alignment(horizontal=" + ((Object) Horizontal.m746toStringimpl(this.horizontal)) + ", vertical=" + ((Object) Vertical.m748toStringimpl(this.vertical)) + ')';
    }
}
