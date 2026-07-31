package androidx.glance.text;

import androidx.compose.animation.core.Animation;
import androidx.glance.Emittable;
import androidx.glance.GlanceModifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmittableText implements Emittable {
    public TextStyle style;
    public String text = "";
    public int maxLines = Integer.MAX_VALUE;
    public GlanceModifier modifier = GlanceModifier.Companion.$$INSTANCE;

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        EmittableText emittableText = new EmittableText();
        emittableText.modifier = this.modifier;
        emittableText.text = this.text;
        emittableText.style = this.style;
        emittableText.maxLines = this.maxLines;
        return emittableText;
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
        StringBuilder sb = new StringBuilder("EmittableText(");
        sb.append(this.text);
        sb.append(", style=");
        sb.append(this.style);
        sb.append(", modifier=");
        sb.append(this.modifier);
        sb.append(", maxLines=");
        return Animation.CC.m(sb, this.maxLines, ')');
    }
}
