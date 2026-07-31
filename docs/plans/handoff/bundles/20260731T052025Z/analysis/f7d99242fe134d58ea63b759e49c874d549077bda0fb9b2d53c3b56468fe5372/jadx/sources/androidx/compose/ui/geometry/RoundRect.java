package androidx.compose.ui.geometry;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RoundRect {
    public final float bottom;
    public final long bottomLeftCornerRadius;
    public final long bottomRightCornerRadius;
    public final float left;
    public final float right;
    public final float top;
    public final long topLeftCornerRadius;
    public final long topRightCornerRadius;

    static {
        DBUtil.m805RoundRectgG7oq9Y(0.0f, 0.0f, 0.0f, 0.0f, 0L);
    }

    public RoundRect(float f, float f2, float f3, float f4, long j, long j2, long j3, long j4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
        this.topLeftCornerRadius = j;
        this.topRightCornerRadius = j2;
        this.bottomRightCornerRadius = j3;
        this.bottomLeftCornerRadius = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundRect)) {
            return false;
        }
        RoundRect roundRect = (RoundRect) obj;
        return Float.compare(this.left, roundRect.left) == 0 && Float.compare(this.top, roundRect.top) == 0 && Float.compare(this.right, roundRect.right) == 0 && Float.compare(this.bottom, roundRect.bottom) == 0 && Validate.m1069equalsimpl0(this.topLeftCornerRadius, roundRect.topLeftCornerRadius) && Validate.m1069equalsimpl0(this.topRightCornerRadius, roundRect.topRightCornerRadius) && Validate.m1069equalsimpl0(this.bottomRightCornerRadius, roundRect.bottomRightCornerRadius) && Validate.m1069equalsimpl0(this.bottomLeftCornerRadius, roundRect.bottomLeftCornerRadius);
    }

    public final int hashCode() {
        int m = CameraDevices$CC.m(CameraDevices$CC.m(CameraDevices$CC.m(Float.floatToIntBits(this.left) * 31, this.top, 31), this.right, 31), this.bottom, 31);
        long j = this.topLeftCornerRadius;
        long j2 = this.topRightCornerRadius;
        int i = (((int) (j2 ^ (j2 >>> 32))) + ((((int) (j ^ (j >>> 32))) + m) * 31)) * 31;
        long j3 = this.bottomRightCornerRadius;
        int i2 = (((int) (j3 ^ (j3 >>> 32))) + i) * 31;
        long j4 = this.bottomLeftCornerRadius;
        return ((int) (j4 ^ (j4 >>> 32))) + i2;
    }

    public final String toString() {
        String str = SQLite.toStringAsFixed(this.left) + ", " + SQLite.toStringAsFixed(this.top) + ", " + SQLite.toStringAsFixed(this.right) + ", " + SQLite.toStringAsFixed(this.bottom);
        long j = this.topLeftCornerRadius;
        long j2 = this.topRightCornerRadius;
        boolean m1069equalsimpl0 = Validate.m1069equalsimpl0(j, j2);
        long j3 = this.bottomRightCornerRadius;
        long j4 = this.bottomLeftCornerRadius;
        if (!m1069equalsimpl0 || !Validate.m1069equalsimpl0(j2, j3) || !Validate.m1069equalsimpl0(j3, j4)) {
            StringBuilder m31m = CameraDevices$CC.m31m("RoundRect(rect=", str, ", topLeft=");
            m31m.append((Object) Validate.m1073toStringimpl(j));
            m31m.append(", topRight=");
            m31m.append((Object) Validate.m1073toStringimpl(j2));
            m31m.append(", bottomRight=");
            m31m.append((Object) Validate.m1073toStringimpl(j3));
            m31m.append(", bottomLeft=");
            m31m.append((Object) Validate.m1073toStringimpl(j4));
            m31m.append(')');
            return m31m.toString();
        }
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
            StringBuilder m31m2 = CameraDevices$CC.m31m("RoundRect(rect=", str, ", radius=");
            m31m2.append(SQLite.toStringAsFixed(Float.intBitsToFloat(i)));
            m31m2.append(')');
            return m31m2.toString();
        }
        StringBuilder m31m3 = CameraDevices$CC.m31m("RoundRect(rect=", str, ", x=");
        m31m3.append(SQLite.toStringAsFixed(Float.intBitsToFloat(i)));
        m31m3.append(", y=");
        m31m3.append(SQLite.toStringAsFixed(Float.intBitsToFloat(i2)));
        m31m3.append(')');
        return m31m3.toString();
    }
}
