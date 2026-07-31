package androidx.glance.appwidget;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface SizeMode {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Exact implements SizeMode {
        public static final Exact INSTANCE = new Exact();

        public final String toString() {
            return "SizeMode.Exact";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Single implements SizeMode {
        public static final Single INSTANCE = new Single();

        public final String toString() {
            return "SizeMode.Single";
        }
    }
}
