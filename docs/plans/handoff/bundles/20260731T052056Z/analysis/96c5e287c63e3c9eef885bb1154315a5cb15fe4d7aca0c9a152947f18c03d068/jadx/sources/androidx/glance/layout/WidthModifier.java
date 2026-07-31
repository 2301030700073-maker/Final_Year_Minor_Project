package androidx.glance.layout;

import androidx.glance.GlanceModifier;
import androidx.glance.unit.Dimension;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WidthModifier implements GlanceModifier.Element {
    public final Dimension width;

    public WidthModifier(Dimension dimension) {
        this.width = dimension;
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
}
