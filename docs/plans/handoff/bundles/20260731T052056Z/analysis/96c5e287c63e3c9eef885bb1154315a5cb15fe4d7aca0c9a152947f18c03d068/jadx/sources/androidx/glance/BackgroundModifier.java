package androidx.glance;

import androidx.glance.GlanceModifier;
import androidx.glance.layout.ContentScale;
import androidx.glance.unit.FixedColorProvider;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface BackgroundModifier extends GlanceModifier.Element {

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Color implements BackgroundModifier {
        public final FixedColorProvider colorProvider;

        public Color(FixedColorProvider fixedColorProvider) {
            this.colorProvider = fixedColorProvider;
        }

        @Override // androidx.glance.GlanceModifier
        public final boolean all() {
            return true;
        }

        @Override // androidx.glance.GlanceModifier
        public final boolean any(Function1 function1) {
            return ((Boolean) function1.invoke(this)).booleanValue();
        }

        @Override // androidx.glance.GlanceModifier
        public final Object foldIn(Object obj, Function2 function2) {
            return function2.invoke(obj, this);
        }

        @Override // androidx.glance.GlanceModifier
        public final /* synthetic */ GlanceModifier then(GlanceModifier glanceModifier) {
            return ViewSizeResolver$CC.$default$then(this, glanceModifier);
        }

        public final String toString() {
            return "BackgroundModifier(colorProvider=" + this.colorProvider + ')';
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Image implements BackgroundModifier {
        public final ColorFilter colorFilter;
        public final AndroidResourceImageProvider imageProvider;

        public Image(AndroidResourceImageProvider androidResourceImageProvider, ColorFilter colorFilter) {
            this.imageProvider = androidResourceImageProvider;
            this.colorFilter = colorFilter;
        }

        @Override // androidx.glance.GlanceModifier
        public final boolean all() {
            return true;
        }

        @Override // androidx.glance.GlanceModifier
        public final boolean any(Function1 function1) {
            return ((Boolean) function1.invoke(this)).booleanValue();
        }

        @Override // androidx.glance.GlanceModifier
        public final Object foldIn(Object obj, Function2 function2) {
            return function2.invoke(obj, this);
        }

        @Override // androidx.glance.GlanceModifier
        public final /* synthetic */ GlanceModifier then(GlanceModifier glanceModifier) {
            return ViewSizeResolver$CC.$default$then(this, glanceModifier);
        }

        public final String toString() {
            return "BackgroundModifier(colorFilter=" + this.colorFilter + ", imageProvider=" + this.imageProvider + ", contentScale=" + ((Object) ContentScale.m749toStringimpl(2)) + ')';
        }
    }
}
