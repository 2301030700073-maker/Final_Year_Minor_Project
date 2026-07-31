package androidx.glance.layout;

import androidx.glance.Emittable;
import androidx.glance.GlanceModifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmittableSpacer implements Emittable {
    public GlanceModifier modifier = GlanceModifier.Companion.$$INSTANCE;

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        EmittableSpacer emittableSpacer = new EmittableSpacer();
        emittableSpacer.modifier = this.modifier;
        return emittableSpacer;
    }

    @Override // androidx.glance.Emittable
    public final GlanceModifier getModifier() {
        return this.modifier;
    }

    @Override // androidx.glance.Emittable
    public final void setModifier(GlanceModifier glanceModifier) {
        this.modifier = glanceModifier;
    }

    public final String toString() {
        return "EmittableSpacer(modifier=" + this.modifier + ')';
    }
}
