package androidx.compose.ui.graphics.colorspace;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ColorSpace {
    public final int id;
    public final long model;
    public final String name;

    public ColorSpace(String str, long j, int i) {
        this.name = str;
        this.model = j;
        this.id = i;
        if (str.length() == 0) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("The name of a color space cannot be null and must contain at least 1 character");
            throw null;
        }
        if (i < -1 || i > 63) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("The id must be between -1 and 63");
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
            return Illuminant.m258equalsimpl0(this.model, colorSpace.model);
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
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append(" (id=");
        sb.append(this.id);
        sb.append(", model=");
        long j = this.model;
        sb.append((Object) (Illuminant.m258equalsimpl0(j, 12884901888L) ? "Rgb" : Illuminant.m258equalsimpl0(j, 12884901889L) ? "Xyz" : Illuminant.m258equalsimpl0(j, 12884901890L) ? "Lab" : Illuminant.m258equalsimpl0(j, 17179869187L) ? "Cmyk" : "Unknown"));
        sb.append(')');
        return sb.toString();
    }

    public abstract long toXy$ui_graphics(float f, float f2, float f3);

    public abstract float toZ$ui_graphics(float f, float f2, float f3);

    /* renamed from: xyzaToColor-JlNiLsg$ui_graphics, reason: not valid java name */
    public abstract long mo255xyzaToColorJlNiLsg$ui_graphics(float f, float f2, float f3, float f4, ColorSpace colorSpace);
}
