package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.Owner;
import java.io.Serializable;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RectRulersImpl {
    public final /* synthetic */ int $r8$classId;
    public final HorizontalRuler bottom;
    public final VerticalRuler left;
    public final Serializable name;
    public final VerticalRuler right;
    public final HorizontalRuler top;

    /* JADX WARN: Multi-variable type inference failed */
    public RectRulersImpl(RectRulersImpl[] rectRulersImplArr) {
        this.$r8$classId = 1;
        this.name = rectRulersImplArr;
        int length = rectRulersImplArr.length;
        final VerticalRuler[] verticalRulerArr = new VerticalRuler[length];
        for (int i = 0; i < length; i++) {
            verticalRulerArr[i] = ((RectRulersImpl[]) this.name)[i].getLeft();
        }
        this.left = new VerticalRuler(new Function2() { // from class: androidx.compose.ui.layout.VerticalRuler$Companion$maxOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.access$mergeRulerValues((Placeable.PlacementScope) obj, true, verticalRulerArr, ((Number) obj2).floatValue()));
            }
        });
        int length2 = ((RectRulersImpl[]) this.name).length;
        final HorizontalRuler[] horizontalRulerArr = new HorizontalRuler[length2];
        for (int i2 = 0; i2 < length2; i2++) {
            horizontalRulerArr[i2] = ((RectRulersImpl[]) this.name)[i2].getTop();
        }
        this.top = new HorizontalRuler(new Function2() { // from class: androidx.compose.ui.layout.HorizontalRuler$Companion$maxOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.access$mergeRulerValues((Placeable.PlacementScope) obj, true, horizontalRulerArr, ((Number) obj2).floatValue()));
            }
        });
        int length3 = ((RectRulersImpl[]) this.name).length;
        final VerticalRuler[] verticalRulerArr2 = new VerticalRuler[length3];
        for (int i3 = 0; i3 < length3; i3++) {
            verticalRulerArr2[i3] = ((RectRulersImpl[]) this.name)[i3].getRight();
        }
        this.right = new VerticalRuler(new Function2() { // from class: androidx.compose.ui.layout.VerticalRuler$Companion$minOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.access$mergeRulerValues((Placeable.PlacementScope) obj, false, verticalRulerArr2, ((Number) obj2).floatValue()));
            }
        });
        int length4 = ((RectRulersImpl[]) this.name).length;
        final HorizontalRuler[] horizontalRulerArr2 = new HorizontalRuler[length4];
        for (int i4 = 0; i4 < length4; i4++) {
            horizontalRulerArr2[i4] = ((RectRulersImpl[]) this.name)[i4].getBottom();
        }
        this.bottom = new HorizontalRuler(new Function2() { // from class: androidx.compose.ui.layout.HorizontalRuler$Companion$minOf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return Float.valueOf(RulerKt.access$mergeRulerValues((Placeable.PlacementScope) obj, false, horizontalRulerArr2, ((Number) obj2).floatValue()));
            }
        });
    }

    public final HorizontalRuler getBottom() {
        int i = this.$r8$classId;
        return this.bottom;
    }

    public final VerticalRuler getLeft() {
        int i = this.$r8$classId;
        return this.left;
    }

    public final VerticalRuler getRight() {
        int i = this.$r8$classId;
        return this.right;
    }

    public final HorizontalRuler getTop() {
        int i = this.$r8$classId;
        return this.top;
    }

    public final String toString() {
        int i = this.$r8$classId;
        Object obj = this.name;
        switch (i) {
            case 0:
                return Owner.CC.m(')', "RectRulers(", (String) obj);
            default:
                return ArraysKt.joinToString$default((RectRulersImpl[]) obj, "innermostOf(", ")", 57);
        }
    }

    public RectRulersImpl(String str) {
        this.$r8$classId = 0;
        this.name = str;
        this.left = new VerticalRuler(null);
        this.top = new HorizontalRuler(null);
        this.right = new VerticalRuler(null);
        this.bottom = new HorizontalRuler(null);
    }
}
