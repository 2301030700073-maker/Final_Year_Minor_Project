package androidx.glance;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface GlanceModifier {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface Element extends GlanceModifier {
    }

    boolean all();

    boolean any(Function1 function1);

    Object foldIn(Object obj, Function2 function2);

    GlanceModifier then(GlanceModifier glanceModifier);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion implements GlanceModifier {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        @Override // androidx.glance.GlanceModifier
        public final boolean all() {
            return true;
        }

        @Override // androidx.glance.GlanceModifier
        public final boolean any(Function1 function1) {
            return false;
        }

        public final String toString() {
            return "Modifier";
        }

        @Override // androidx.glance.GlanceModifier
        public final GlanceModifier then(GlanceModifier glanceModifier) {
            return glanceModifier;
        }

        @Override // androidx.glance.GlanceModifier
        public final Object foldIn(Object obj, Function2 function2) {
            return obj;
        }
    }
}
