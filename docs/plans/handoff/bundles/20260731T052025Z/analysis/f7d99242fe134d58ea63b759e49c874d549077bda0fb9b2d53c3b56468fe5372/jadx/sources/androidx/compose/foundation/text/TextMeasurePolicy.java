package androidx.compose.foundation.text;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.viewinterop.AndroidViewHolder$layoutNode$1$3;
import androidx.compose.ui.viewinterop.AndroidView_androidKt$NoOpUpdate$1;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;
import androidx.compose.ui.window.AndroidPopup_androidKt$Popup$5$1$1;
import androidx.compose.ui.window.PopupLayout;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextMeasurePolicy implements MeasurePolicy {
    public final /* synthetic */ int $r8$classId;
    public final Object placements;
    public final Object shouldMeasureLinks;

    public /* synthetic */ TextMeasurePolicy(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.shouldMeasureLinks = obj;
        this.placements = obj2;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        switch (this.$r8$classId) {
            case 0:
                return Modifier.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
            case 1:
                ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) this.shouldMeasureLinks;
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder.measure(AndroidViewHolder.access$obtainMeasureSpec(viewFactoryHolder, 0, i, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return viewFactoryHolder.getMeasuredHeight();
            default:
                return Modifier.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i);
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        switch (this.$r8$classId) {
            case 0:
                return Modifier.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
            case 1:
                ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) this.shouldMeasureLinks;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder.measure(makeMeasureSpec, AndroidViewHolder.access$obtainMeasureSpec(viewFactoryHolder, 0, i, layoutParams.height));
                return viewFactoryHolder.getMeasuredWidth();
            default:
                return Modifier.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i);
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo108measure3p2s80s(MeasureScope measureScope, List list, long j) {
        ArrayList arrayList;
        int i;
        List list2;
        Pair pair;
        int i2 = this.$r8$classId;
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        int i3 = 0;
        Object obj = this.placements;
        Object obj2 = this.shouldMeasureLinks;
        switch (i2) {
            case 0:
                ArrayList arrayList2 = new ArrayList(list.size());
                int size = list.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Object obj3 = list.get(i4);
                    if (!(((Measurable) obj3).getParentData() instanceof TextRangeLayoutModifier)) {
                        arrayList2.add(obj3);
                    }
                }
                List list3 = (List) ((Function0) obj).invoke();
                if (list3 != null) {
                    ArrayList arrayList3 = new ArrayList(list3.size());
                    int size2 = list3.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        Rect rect = (Rect) list3.get(i5);
                        if (rect != null) {
                            float f = rect.top;
                            float f2 = rect.left;
                            list2 = list3;
                            int floor = (int) Math.floor(rect.right - f2);
                            int floor2 = (int) Math.floor(rect.bottom - f);
                            i = 0;
                            Placeable mo571measureBRTryo0 = ((Measurable) arrayList2.get(i5)).mo571measureBRTryo0(ConstraintsKt.Constraints$default(0, floor, 0, floor2, 5));
                            int round = Math.round(f2);
                            pair = new Pair(mo571measureBRTryo0, new IntOffset((Math.round(f) & 4294967295L) | (round << 32)));
                        } else {
                            i = i3;
                            list2 = list3;
                            pair = null;
                        }
                        if (pair != null) {
                            arrayList3.add(pair);
                        }
                        i5++;
                        i3 = i;
                        list3 = list2;
                    }
                    arrayList = arrayList3;
                } else {
                    arrayList = null;
                }
                ArrayList arrayList4 = new ArrayList(list.size());
                int size3 = list.size();
                for (int i6 = i3; i6 < size3; i6++) {
                    Object obj4 = list.get(i6);
                    if (((Measurable) obj4).getParentData() instanceof TextRangeLayoutModifier) {
                        arrayList4.add(obj4);
                    }
                }
                return measureScope.layout(Constraints.m734getMaxWidthimpl(j), Constraints.m733getMaxHeightimpl(j), emptyMap, new Navigator$$ExternalSyntheticLambda1(10, arrayList, BasicTextKt.access$measureWithTextRangeMeasureConstraints(arrayList4, (Function0) obj2)));
            case 1:
                ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) obj2;
                if (viewFactoryHolder.getChildCount() == 0) {
                    return measureScope.layout(Constraints.m736getMinWidthimpl(j), Constraints.m735getMinHeightimpl(j), emptyMap, AndroidView_androidKt$NoOpUpdate$1.INSTANCE$2);
                }
                if (Constraints.m736getMinWidthimpl(j) != 0) {
                    viewFactoryHolder.getChildAt(0).setMinimumWidth(Constraints.m736getMinWidthimpl(j));
                }
                if (Constraints.m735getMinHeightimpl(j) != 0) {
                    viewFactoryHolder.getChildAt(0).setMinimumHeight(Constraints.m735getMinHeightimpl(j));
                }
                int m736getMinWidthimpl = Constraints.m736getMinWidthimpl(j);
                int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder.getLayoutParams();
                layoutParams.getClass();
                int access$obtainMeasureSpec = AndroidViewHolder.access$obtainMeasureSpec(viewFactoryHolder, m736getMinWidthimpl, m734getMaxWidthimpl, layoutParams.width);
                int m735getMinHeightimpl = Constraints.m735getMinHeightimpl(j);
                int m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
                ViewGroup.LayoutParams layoutParams2 = viewFactoryHolder.getLayoutParams();
                layoutParams2.getClass();
                viewFactoryHolder.measure(access$obtainMeasureSpec, AndroidViewHolder.access$obtainMeasureSpec(viewFactoryHolder, m735getMinHeightimpl, m733getMaxHeightimpl, layoutParams2.height));
                return measureScope.layout(viewFactoryHolder.getMeasuredWidth(), viewFactoryHolder.getMeasuredHeight(), emptyMap, new AndroidViewHolder$layoutNode$1$3(viewFactoryHolder, (LayoutNode) obj, 1));
            default:
                ((PopupLayout) obj2).setParentLayoutDirection((LayoutDirection) obj);
                return measureScope.layout(0, 0, emptyMap, AndroidPopup_androidKt$Popup$5$1$1.INSTANCE$2);
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        switch (this.$r8$classId) {
            case 0:
                return Modifier.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
            case 1:
                ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) this.shouldMeasureLinks;
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder.measure(AndroidViewHolder.access$obtainMeasureSpec(viewFactoryHolder, 0, i, layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
                return viewFactoryHolder.getMeasuredHeight();
            default:
                return Modifier.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i);
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        switch (this.$r8$classId) {
            case 0:
                return Modifier.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
            case 1:
                ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) this.shouldMeasureLinks;
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                ViewGroup.LayoutParams layoutParams = viewFactoryHolder.getLayoutParams();
                layoutParams.getClass();
                viewFactoryHolder.measure(makeMeasureSpec, AndroidViewHolder.access$obtainMeasureSpec(viewFactoryHolder, 0, i, layoutParams.height));
                return viewFactoryHolder.getMeasuredWidth();
            default:
                return Modifier.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i);
        }
    }
}
