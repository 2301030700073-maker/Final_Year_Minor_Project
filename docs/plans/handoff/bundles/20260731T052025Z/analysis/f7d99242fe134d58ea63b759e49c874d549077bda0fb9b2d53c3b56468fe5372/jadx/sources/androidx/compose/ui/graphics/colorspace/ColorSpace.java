package androidx.compose.ui.graphics.colorspace;

import coil3.UriKt$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ColorSpace {
    public final int id;
    public final long model;
    public final String name;

    public ColorSpace(int i, long j, String str) {
        this.name = str;
        this.model = j;
        this.id = i;
        if (str.length() == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m("The name of a color space cannot be null and must contain at least 1 character");
            throw null;
        }
        if (i < -1 || i > 63) {
            UriKt$$ExternalSyntheticBUOutline0.m("The id must be between -1 and 63");
            throw null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ColorSpace colorSpace = (ColorSpace) obj;
        if (this.id == colorSpace.id && this.name.equals(colorSpace.name)) {
            return Illuminant.m517equalsimpl0(this.model, colorSpace.model);
        }
        return false;
    }

    public abstract float getMaxValue(int i);

    public abstract float getMinValue(int i);

    public int hashCode() {
        int hashCode = this.name.hashCode() * 31;
        long j = this.model;
        return ((hashCode + ((int) (j ^ (j >>> 32)))) * 31) + this.id;
    }

    public boolean isSrgb() {
        return false;
    }

    public final String toString() {
        return this.name + " (id=" + this.id + ", model=" + ((Object) Illuminant.m518toStringimpl(this.model)) + ')';
    }

    public abstract long toXy$ui_graphics(float f, float f2, float f3);

    public abstract float toZ$ui_graphics(float f, float f2, float f3);

    /* renamed from: xyzaToColor-JlNiLsg$ui_graphics, reason: not valid java name */
    public abstract long mo514xyzaToColorJlNiLsg$ui_graphics(float f, float f2, float f3, float f4, ColorSpace colorSpace);
}
