package coil3.size;

import coil3.size.Dimension;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Size {
    public static final Companion Companion = new Companion(null);
    public static final Size ORIGINAL;
    private final Dimension height;
    private final Dimension width;

    static {
        Dimension.Undefined undefined = Dimension.Undefined.INSTANCE;
        ORIGINAL = new Size(undefined, undefined);
    }

    public Size(Dimension dimension, Dimension dimension2) {
        this.width = dimension;
        this.height = dimension2;
    }

    public static /* synthetic */ Size copy$default(Size size, Dimension dimension, Dimension dimension2, int i, Object obj) {
        if ((i & 1) != 0) {
            dimension = size.width;
        }
        if ((i & 2) != 0) {
            dimension2 = size.height;
        }
        return size.copy(dimension, dimension2);
    }

    public final Dimension component1() {
        return this.width;
    }

    public final Dimension component2() {
        return this.height;
    }

    public final Size copy(Dimension dimension, Dimension dimension2) {
        return new Size(dimension, dimension2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return Intrinsics.areEqual(this.width, size.width) && Intrinsics.areEqual(this.height, size.height);
    }

    public final Dimension getHeight() {
        return this.height;
    }

    public final Dimension getWidth() {
        return this.width;
    }

    public int hashCode() {
        return this.height.hashCode() + (this.width.hashCode() * 31);
    }

    public String toString() {
        return "Size(width=" + this.width + ", height=" + this.height + ")";
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
