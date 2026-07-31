package androidx.lifecycle.viewmodel;

import java.util.LinkedHashMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class CreationExtras {
    public final LinkedHashMap extras = new LinkedHashMap();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Empty extends CreationExtras {
        public static final Empty INSTANCE = new Empty();

        @Override // androidx.lifecycle.viewmodel.CreationExtras
        public final Object get(Key key) {
            return null;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Key {
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CreationExtras) {
            return this.extras.equals(((CreationExtras) obj).extras);
        }
        return false;
    }

    public abstract Object get(Key key);

    public final int hashCode() {
        return this.extras.hashCode();
    }

    public final String toString() {
        return "CreationExtras(extras=" + this.extras + ")";
    }
}
