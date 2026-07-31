package androidx.compose.ui.layout;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class VerticalRuler extends Ruler {
    @Override // androidx.compose.ui.layout.Ruler
    public final float calculateCoordinate$ui(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        float mo296getSizeYbymL2g = ((int) (layoutCoordinates.mo296getSizeYbymL2g() & 4294967295L)) / 2.0f;
        return Float.intBitsToFloat((int) (layoutCoordinates2.mo297localPositionOfR5De75A(layoutCoordinates, (Float.floatToRawIntBits(mo296getSizeYbymL2g) & 4294967295L) | (Float.floatToRawIntBits(f) << 32)) >> 32));
    }
}
