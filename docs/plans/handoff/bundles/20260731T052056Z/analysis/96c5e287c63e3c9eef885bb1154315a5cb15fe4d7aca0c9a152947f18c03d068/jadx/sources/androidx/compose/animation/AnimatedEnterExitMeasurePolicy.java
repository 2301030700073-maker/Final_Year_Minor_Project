package androidx.compose.animation;

import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.RootMeasurePolicy$measure$3;
import androidx.compose.ui.unit.IntSize;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyMap;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnimatedEnterExitMeasurePolicy implements MeasurePolicy {
    public boolean hasLookaheadOccurred;
    public final AnimatedVisibilityScopeImpl scope;

    public AnimatedEnterExitMeasurePolicy(AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl) {
        this.scope = animatedVisibilityScopeImpl;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int maxIntrinsicHeight = ((Measurable) list.get(0)).maxIntrinsicHeight(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int maxIntrinsicHeight2 = ((Measurable) list.get(i2)).maxIntrinsicHeight(i);
                if (maxIntrinsicHeight2 > maxIntrinsicHeight) {
                    maxIntrinsicHeight = maxIntrinsicHeight2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return maxIntrinsicHeight;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int maxIntrinsicWidth = ((Measurable) list.get(0)).maxIntrinsicWidth(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int maxIntrinsicWidth2 = ((Measurable) list.get(i2)).maxIntrinsicWidth(i);
                if (maxIntrinsicWidth2 > maxIntrinsicWidth) {
                    maxIntrinsicWidth = maxIntrinsicWidth2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return maxIntrinsicWidth;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* renamed from: measure-3p2s80s */
    public final MeasureResult mo15measure3p2s80s(MeasureScope measureScope, List list, long j) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Placeable mo512measureBRTryo0 = ((Measurable) list.get(i3)).mo512measureBRTryo0(j);
            i = Math.max(i, mo512measureBRTryo0.width);
            i2 = Math.max(i2, mo512measureBRTryo0.height);
            arrayList.add(mo512measureBRTryo0);
        }
        boolean isLookingAhead = measureScope.isLookingAhead();
        AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl = this.scope;
        if (isLookingAhead) {
            this.hasLookaheadOccurred = true;
            animatedVisibilityScopeImpl.targetSize.setValue(new IntSize((4294967295L & i2) | (i << 32)));
        } else if (!this.hasLookaheadOccurred) {
            animatedVisibilityScopeImpl.targetSize.setValue(new IntSize((4294967295L & i2) | (i << 32)));
        }
        return measureScope.layout(i, i2, EmptyMap.INSTANCE, new RootMeasurePolicy$measure$3(1, arrayList));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int minIntrinsicHeight = ((Measurable) list.get(0)).minIntrinsicHeight(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int minIntrinsicHeight2 = ((Measurable) list.get(i2)).minIntrinsicHeight(i);
                if (minIntrinsicHeight2 > minIntrinsicHeight) {
                    minIntrinsicHeight = minIntrinsicHeight2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return minIntrinsicHeight;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int minIntrinsicWidth = ((Measurable) list.get(0)).minIntrinsicWidth(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int minIntrinsicWidth2 = ((Measurable) list.get(i2)).minIntrinsicWidth(i);
                if (minIntrinsicWidth2 > minIntrinsicWidth) {
                    minIntrinsicWidth = minIntrinsicWidth2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return minIntrinsicWidth;
    }
}
