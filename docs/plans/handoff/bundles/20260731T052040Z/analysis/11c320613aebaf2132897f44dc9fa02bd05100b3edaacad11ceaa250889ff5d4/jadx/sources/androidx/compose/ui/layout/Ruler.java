package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class Ruler {
    public final Function2 calculate;

    public Ruler(Function2 function2) {
        this.calculate = function2;
    }

    public abstract float calculateCoordinate$ui(float f, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2);
}
