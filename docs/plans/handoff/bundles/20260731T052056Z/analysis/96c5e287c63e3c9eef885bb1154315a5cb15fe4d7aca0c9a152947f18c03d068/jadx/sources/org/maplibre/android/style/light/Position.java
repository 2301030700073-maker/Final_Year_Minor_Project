package org.maplibre.android.style.light;

import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Position {
    private float azimuthalAngle;
    private float polarAngle;
    private float radialCoordinate;

    public static Position fromPosition(float f, float f2, float f3) {
        Position position = new Position();
        position.radialCoordinate = f;
        position.azimuthalAngle = f2;
        position.polarAngle = f3;
        return position;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Position position = (Position) obj;
            if (Float.compare(position.radialCoordinate, this.radialCoordinate) == 0 && Float.compare(position.azimuthalAngle, this.azimuthalAngle) == 0 && Float.compare(position.polarAngle, this.polarAngle) == 0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        float f = this.radialCoordinate;
        int floatToIntBits = (f != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f) : 0) * 31;
        float f2 = this.azimuthalAngle;
        int floatToIntBits2 = (floatToIntBits + (f2 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f2) : 0)) * 31;
        float f3 = this.polarAngle;
        return floatToIntBits2 + (f3 != RecyclerView.DECELERATION_RATE ? Float.floatToIntBits(f3) : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Position{radialCoordinate=");
        sb.append(this.radialCoordinate);
        sb.append(", azimuthalAngle=");
        sb.append(this.azimuthalAngle);
        sb.append(", polarAngle=");
        return Animation.CC.m(sb, this.polarAngle, '}');
    }
}
