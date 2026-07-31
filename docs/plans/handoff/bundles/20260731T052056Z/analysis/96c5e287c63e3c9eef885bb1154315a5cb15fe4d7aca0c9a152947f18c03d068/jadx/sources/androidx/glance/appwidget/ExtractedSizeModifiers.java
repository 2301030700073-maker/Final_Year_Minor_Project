package androidx.glance.appwidget;

import androidx.glance.GlanceModifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ExtractedSizeModifiers {
    public final GlanceModifier nonSizeModifiers;
    public final GlanceModifier sizeModifiers;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ ExtractedSizeModifiers(androidx.glance.GlanceModifier r2, int r3) {
        /*
            r1 = this;
            r3 = r3 & 2
            androidx.glance.GlanceModifier$Companion r0 = androidx.glance.GlanceModifier.Companion.$$INSTANCE
            if (r3 == 0) goto L7
            r2 = r0
        L7:
            r1.<init>(r0, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.ExtractedSizeModifiers.<init>(androidx.glance.GlanceModifier, int):void");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExtractedSizeModifiers)) {
            return false;
        }
        ExtractedSizeModifiers extractedSizeModifiers = (ExtractedSizeModifiers) obj;
        return Intrinsics.areEqual(this.sizeModifiers, extractedSizeModifiers.sizeModifiers) && Intrinsics.areEqual(this.nonSizeModifiers, extractedSizeModifiers.nonSizeModifiers);
    }

    public final int hashCode() {
        return this.nonSizeModifiers.hashCode() + (this.sizeModifiers.hashCode() * 31);
    }

    public final String toString() {
        return "ExtractedSizeModifiers(sizeModifiers=" + this.sizeModifiers + ", nonSizeModifiers=" + this.nonSizeModifiers + ')';
    }

    public ExtractedSizeModifiers(GlanceModifier glanceModifier, GlanceModifier glanceModifier2) {
        this.sizeModifiers = glanceModifier;
        this.nonSizeModifiers = glanceModifier2;
    }
}
