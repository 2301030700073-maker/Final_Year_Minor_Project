package androidx.glance;

import androidx.glance.GlanceModifier;
import androidx.glance.layout.ContentScale;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmittableImage implements Emittable {
    public TintColorFilterParams colorFilterParams;
    public AndroidResourceImageProvider provider;
    public GlanceModifier modifier = GlanceModifier.Companion.$$INSTANCE;
    public int contentScale = 1;

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        EmittableImage emittableImage = new EmittableImage();
        emittableImage.modifier = this.modifier;
        emittableImage.provider = this.provider;
        emittableImage.colorFilterParams = this.colorFilterParams;
        emittableImage.contentScale = this.contentScale;
        return emittableImage;
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
        return "EmittableImage(modifier=" + this.modifier + ", provider=" + this.provider + ", colorFilterParams=" + this.colorFilterParams + ", contentScale=" + ((Object) ContentScale.m749toStringimpl(this.contentScale)) + ')';
    }
}
