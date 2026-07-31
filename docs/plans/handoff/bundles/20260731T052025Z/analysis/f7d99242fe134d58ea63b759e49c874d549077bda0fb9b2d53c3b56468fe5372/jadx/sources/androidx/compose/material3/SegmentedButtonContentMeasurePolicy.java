package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.layout.BoxMeasurePolicy$$ExternalSyntheticLambda0;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.IntrinsicMinMax;
import androidx.compose.ui.layout.IntrinsicWidthHeight;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.ConstraintsKt;
import com.fsck.k9.ui.settings.SettingsViewModel$moveAccount$1;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SegmentedButtonContentMeasurePolicy implements MultiContentMeasurePolicy {
    public Animatable animatable;
    public final SpringSpec animationSpec;
    public Integer initialOffset;
    public final CoroutineScope scope;

    public SegmentedButtonContentMeasurePolicy(CoroutineScope coroutineScope, SpringSpec springSpec) {
        this.scope = coroutineScope;
        this.animationSpec = springSpec;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            List list2 = (List) arrayList.get(i2);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height, 0));
            }
            arrayList2.add(arrayList3);
        }
        return mo207measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            List list2 = (List) arrayList.get(i2);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i3), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width, 0));
            }
            arrayList2.add(arrayList3);
        }
        return mo207measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo207measure3p2s80s(MeasureScope measureScope, List list, long j) {
        Object obj;
        Object obj2;
        Object obj3;
        ArrayList arrayList = (ArrayList) list;
        List list2 = (List) arrayList.get(0);
        int i = 1;
        List list3 = (List) arrayList.get(1);
        ArrayList arrayList2 = new ArrayList(list2.size());
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.add(((Measurable) list2.get(i2)).mo571measureBRTryo0(j));
        }
        if (arrayList2.isEmpty()) {
            obj = null;
        } else {
            obj = arrayList2.get(0);
            int i3 = ((Placeable) obj).width;
            int size2 = arrayList2.size() - 1;
            if (1 <= size2) {
                int i4 = 1;
                while (true) {
                    Object obj4 = arrayList2.get(i4);
                    int i5 = ((Placeable) obj4).width;
                    if (i3 < i5) {
                        obj = obj4;
                        i3 = i5;
                    }
                    if (i4 == size2) {
                        break;
                    }
                    i4++;
                }
            }
        }
        Placeable placeable = (Placeable) obj;
        int i6 = placeable != null ? placeable.width : 0;
        ArrayList arrayList3 = new ArrayList(list3.size());
        int size3 = list3.size();
        for (int i7 = 0; i7 < size3; i7++) {
            arrayList3.add(((Measurable) list3.get(i7)).mo571measureBRTryo0(j));
        }
        if (arrayList3.isEmpty()) {
            obj2 = null;
        } else {
            obj2 = arrayList3.get(0);
            int i8 = ((Placeable) obj2).width;
            int size4 = arrayList3.size() - 1;
            if (1 <= size4) {
                int i9 = 1;
                while (true) {
                    Object obj5 = arrayList3.get(i9);
                    int i10 = ((Placeable) obj5).width;
                    if (i8 < i10) {
                        obj2 = obj5;
                        i8 = i10;
                    }
                    if (i9 == size4) {
                        break;
                    }
                    i9++;
                }
            }
        }
        Placeable placeable2 = (Placeable) obj2;
        Integer valueOf = placeable2 != null ? Integer.valueOf(placeable2.width) : null;
        if (arrayList3.isEmpty()) {
            obj3 = null;
        } else {
            obj3 = arrayList3.get(0);
            int i11 = ((Placeable) obj3).height;
            int size5 = arrayList3.size() - 1;
            if (1 <= size5) {
                while (true) {
                    Object obj6 = arrayList3.get(i);
                    int i12 = ((Placeable) obj6).height;
                    if (i11 < i12) {
                        obj3 = obj6;
                        i11 = i12;
                    }
                    if (i == size5) {
                        break;
                    }
                    i++;
                }
            }
        }
        Placeable placeable3 = (Placeable) obj3;
        int i13 = placeable3 != null ? placeable3.height : 0;
        float f = SegmentedButtonDefaults.IconSize;
        int intValue = (valueOf != null ? valueOf.intValue() : 0) + measureScope.mo171roundToPx0680j_4(8.0f) + Math.max(measureScope.mo171roundToPx0680j_4(f), i6);
        int i14 = i6 == 0 ? (-(measureScope.mo171roundToPx0680j_4(8.0f) + measureScope.mo171roundToPx0680j_4(f))) / 2 : 0;
        Integer num = this.initialOffset;
        if (num == null) {
            this.initialOffset = Integer.valueOf(i14);
        } else {
            Animatable animatable = this.animatable;
            if (animatable == null) {
                animatable = new Animatable(num, ArcSplineKt.IntToVector, null, 12);
                this.animatable = animatable;
            }
            if (((Number) animatable.targetValue$delegate.getValue()).intValue() != i14) {
                JobKt.launch$default(this.scope, null, null, new SettingsViewModel$moveAccount$1(animatable, i14, this, (Continuation) null), 3);
            }
        }
        return measureScope.layout(intValue, i13, EmptyMap.INSTANCE, new BoxMeasurePolicy$$ExternalSyntheticLambda0(arrayList2, measureScope, this, i14, arrayList3, i13));
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            List list2 = (List) arrayList.get(i2);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i3), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height, 0));
            }
            arrayList2.add(arrayList3);
        }
        return mo207measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(0, i, 0, 0, 13)).getHeight();
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        ArrayList arrayList = (ArrayList) list;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            List list2 = (List) arrayList.get(i2);
            ArrayList arrayList3 = new ArrayList(list2.size());
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i3), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width, 0));
            }
            arrayList2.add(arrayList3);
        }
        return mo207measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(0, 0, 0, i, 7)).getWidth();
    }
}
