package kotlin.reflect.jvm.internal.impl.descriptors;

import androidx.appcompat.view.ActionMode;
import kotlin.collections.builders.MapBuilder;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Visibilities {
    public static final MapBuilder ORDERED_VISIBILITIES;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Inherited extends ActionMode {
        public static final Inherited INSTANCE = new Inherited("inherited", false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Internal extends ActionMode {
        public static final Internal INSTANCE = new Internal("internal", false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class InvisibleFake extends ActionMode {
        public static final InvisibleFake INSTANCE = new InvisibleFake("invisible_fake", false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Local extends ActionMode {
        public static final Local INSTANCE = new Local("local", false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Private extends ActionMode {
        public static final Private INSTANCE = new Private("private", false);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class PrivateToThis extends ActionMode {
        public static final PrivateToThis INSTANCE = new PrivateToThis("private_to_this", false);

        @Override // androidx.appcompat.view.ActionMode
        public final String getInternalDisplayName() {
            return "private/*private to this*/";
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Protected extends ActionMode {
        public static final Protected INSTANCE = new Protected("protected", true);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Public extends ActionMode {
        public static final Public INSTANCE = new Public("public", true);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Unknown extends ActionMode {
        public static final Unknown INSTANCE = new Unknown("unknown", false);
    }

    static {
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put(PrivateToThis.INSTANCE, 0);
        mapBuilder.put(Private.INSTANCE, 0);
        mapBuilder.put(Internal.INSTANCE, 1);
        mapBuilder.put(Protected.INSTANCE, 1);
        mapBuilder.put(Public.INSTANCE, 2);
        ORDERED_VISIBILITIES = mapBuilder.build();
    }
}
