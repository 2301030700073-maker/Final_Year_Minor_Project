package androidx.core.view;

import androidx.compose.ui.Modifier;
import j$.util.Objects;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DisplayShapeCompat {
    public final ImplBase mImpl;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ImplBase {
        public final int mDisplayHeight;
        public final String mDisplayShapeSpec;
        public final int mDisplayWidth;

        public ImplBase(String str, int i, int i2) {
            this.mDisplayShapeSpec = str;
            this.mDisplayWidth = i;
            this.mDisplayHeight = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ImplBase)) {
                return false;
            }
            ImplBase implBase = (ImplBase) obj;
            return this.mDisplayShapeSpec.equals(implBase.mDisplayShapeSpec) && this.mDisplayWidth == implBase.mDisplayWidth && this.mDisplayHeight == implBase.mDisplayHeight;
        }

        public final int hashCode() {
            Integer valueOf = Integer.valueOf(this.mDisplayWidth);
            Integer valueOf2 = Integer.valueOf(this.mDisplayHeight);
            Float valueOf3 = Float.valueOf(1.0f);
            return Objects.hash(this.mDisplayShapeSpec, valueOf, valueOf2, valueOf3, 0, 0, 0, valueOf3);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("DisplayShapeCompat{ spec=");
            sb.append(Integer.valueOf(this.mDisplayShapeSpec.hashCode()));
            sb.append(" displayWidth=");
            sb.append(this.mDisplayWidth);
            sb.append(" displayHeight=");
            return Modifier.CC.m(sb, this.mDisplayHeight, " physicalPixelDisplaySizeRatio=1.0 rotation=0 offsetX=0 offsetY=0 scale=1.0}");
        }
    }

    static {
        new DisplayShapeCompat("", 0, 0);
    }

    public DisplayShapeCompat(String str, int i, int i2) {
        this.mImpl = new ImplBase(str, i, i2);
    }

    public static DisplayShapeCompat create(int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        String sb;
        if (z) {
            int i7 = i / 2;
            int i8 = i2 / 2;
            sb = "M0," + i8 + " A" + i7 + "," + i8 + " 0 1,1 " + i + "," + i8 + " A" + i7 + "," + i8 + " 0 1,1 0," + i8 + " Z";
        } else {
            StringBuilder sb2 = new StringBuilder("M ");
            int min = Math.min(i / 2, i2 / 2);
            int min2 = Math.min(min, i3);
            int min3 = Math.min(min, i4);
            int min4 = Math.min(min, i5);
            int min5 = Math.min(min, i6);
            sb2.append(min2);
            sb2.append(",0 L ");
            sb2.append(i - min3);
            sb2.append(",0");
            if (min3 > 0) {
                sb2.append(" A ");
                sb2.append(min3);
                sb2.append(",");
                sb2.append(min3);
                sb2.append(" 0 0,1 ");
                sb2.append(i);
                sb2.append(",");
                sb2.append(min3);
            }
            sb2.append(" L ");
            sb2.append(i);
            sb2.append(",");
            sb2.append(i2 - min4);
            if (min4 > 0) {
                sb2.append(" A ");
                sb2.append(min4);
                sb2.append(",");
                sb2.append(min4);
                sb2.append(" 0 0,1 ");
                sb2.append(i - min4);
                sb2.append(",");
                sb2.append(i2);
            }
            sb2.append(" L ");
            sb2.append(min5);
            sb2.append(",");
            sb2.append(i2);
            if (min5 > 0) {
                sb2.append(" A ");
                sb2.append(min5);
                sb2.append(",");
                sb2.append(min5);
                sb2.append(" 0 0,1 0,");
                sb2.append(i2 - min5);
            }
            if (min2 > 0) {
                sb2.append(" L 0,");
                sb2.append(min2);
                sb2.append(" A ");
                sb2.append(min2);
                sb2.append(",");
                sb2.append(min2);
                sb2.append(" 0 0,1 ");
                sb2.append(min2);
                sb2.append(",0");
            }
            sb2.append(" Z");
            sb = sb2.toString();
        }
        return new DisplayShapeCompat(sb, i, i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DisplayShapeCompat) {
            return this.mImpl.equals(((DisplayShapeCompat) obj).mImpl);
        }
        return false;
    }

    public final int hashCode() {
        return this.mImpl.hashCode();
    }

    public final String toString() {
        return this.mImpl.toString();
    }
}
