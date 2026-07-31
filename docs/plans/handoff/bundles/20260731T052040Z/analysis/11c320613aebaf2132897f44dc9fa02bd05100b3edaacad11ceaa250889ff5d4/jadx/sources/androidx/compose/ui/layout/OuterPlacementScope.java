package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class OuterPlacementScope extends Placeable.PlacementScope {
    public final /* synthetic */ int $r8$classId;
    public final Object owner;

    public /* synthetic */ OuterPlacementScope(Object obj, int i) {
        this.$r8$classId = i;
        this.owner = obj;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public float current(Ruler ruler) {
        int indexOf;
        switch (this.$r8$classId) {
            case 1:
                Function2 function2 = ruler.calculate;
                if (function2 != null) {
                    return ((Number) function2.invoke(this, Float.valueOf(Float.NaN))).floatValue();
                }
                LookaheadCapablePlaceable lookaheadCapablePlaceable = (LookaheadCapablePlaceable) this.owner;
                if (lookaheadCapablePlaceable.isPlacingForAlignment) {
                    return Float.NaN;
                }
                LookaheadCapablePlaceable lookaheadCapablePlaceable2 = lookaheadCapablePlaceable;
                while (true) {
                    RulerTrackingMap rulerTrackingMap = lookaheadCapablePlaceable2.rulerValues;
                    float f = (rulerTrackingMap == null || (indexOf = ArraysKt.indexOf((Ruler[]) rulerTrackingMap.rulers, ruler)) < 0) ? Float.NaN : ((float[]) rulerTrackingMap.values)[indexOf];
                    if (!Float.isNaN(f)) {
                        lookaheadCapablePlaceable2.addRulerReader(lookaheadCapablePlaceable.getLayoutNode(), ruler);
                        return ruler.calculateCoordinate$ui(f, lookaheadCapablePlaceable2.getCoordinates(), lookaheadCapablePlaceable.getCoordinates());
                    }
                    LookaheadCapablePlaceable parent = lookaheadCapablePlaceable2.getParent();
                    if (parent == null) {
                        lookaheadCapablePlaceable2.addRulerReader(lookaheadCapablePlaceable.getLayoutNode(), ruler);
                        return Float.NaN;
                    }
                    lookaheadCapablePlaceable2 = parent;
                }
                break;
            default:
                return super.current(ruler);
        }
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        int i = this.$r8$classId;
        Object obj = this.owner;
        switch (i) {
            case 0:
                return ((AndroidComposeView) obj).getDensity().getDensity();
            default:
                return ((LookaheadCapablePlaceable) obj).getDensity();
        }
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        int i = this.$r8$classId;
        Object obj = this.owner;
        switch (i) {
            case 0:
                return ((AndroidComposeView) obj).getDensity().getFontScale();
            default:
                return ((LookaheadCapablePlaceable) obj).getFontScale();
        }
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final LayoutDirection getParentLayoutDirection() {
        int i = this.$r8$classId;
        Object obj = this.owner;
        switch (i) {
            case 0:
                return ((AndroidComposeView) obj).getLayoutDirection();
            default:
                return ((LookaheadCapablePlaceable) obj).getLayoutDirection();
        }
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final int getParentWidth() {
        int i = this.$r8$classId;
        Object obj = this.owner;
        switch (i) {
            case 0:
                return ((AndroidComposeView) obj).getRoot().layoutDelegate.measurePassDelegate.width;
            default:
                return ((LookaheadCapablePlaceable) obj).getMeasuredWidth();
        }
    }
}
