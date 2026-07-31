package org.wikipedia.compose.extensions;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.unit.IntOffset;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ModifierKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ long f$2;

    public /* synthetic */ ModifierKt$$ExternalSyntheticLambda2(int i, long j, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = j;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                LazyListState lazyListState = (LazyListState) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) obj;
                layoutNodeDrawScope.getClass();
                SVG svg = layoutNodeDrawScope.canvasDrawScope.drawContext;
                layoutNodeDrawScope.drawContent();
                LazyListMeasureResult layoutInfo = lazyListState.getLayoutInfo();
                List list = layoutInfo.visibleItemsInfo;
                if (!list.isEmpty() && (lazyListState.getCanScrollForward() || lazyListState.getCanScrollBackward())) {
                    float intBitsToFloat = Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() & 4294967295L));
                    float mo87toPx0680j_4 = layoutNodeDrawScope.mo87toPx0680j_4(48.0f);
                    LazyListMeasuredItem lazyListMeasuredItem = (LazyListMeasuredItem) CollectionsKt.first(list);
                    int i2 = lazyListMeasuredItem.size;
                    if (i2 < 1) {
                        i2 = 1;
                    }
                    int i3 = layoutInfo.totalItemsCount * i2;
                    int i4 = (lazyListMeasuredItem.index * i2) - lazyListMeasuredItem.offset;
                    float f = i3 - intBitsToFloat;
                    if (f < 1.0f) {
                        f = 1.0f;
                    }
                    float coerceIn = (intBitsToFloat - mo87toPx0680j_4) * RegexKt.coerceIn(i4 / f, RecyclerView.DECELERATION_RATE, 1.0f);
                    float mo87toPx0680j_42 = layoutNodeDrawScope.mo87toPx0680j_4(2.0f);
                    layoutNodeDrawScope.mo474drawRoundRectuAw5IA(this.f$2, (Float.floatToRawIntBits(Float.intBitsToFloat((int) (svg.m796getSizeNHjbRc() >> 32)) - layoutNodeDrawScope.mo87toPx0680j_4(4.0f)) << 32) | (Float.floatToRawIntBits(coerceIn) & 4294967295L), (Float.floatToRawIntBits(layoutNodeDrawScope.mo87toPx0680j_4(4.0f)) << 32) | (Float.floatToRawIntBits(mo87toPx0680j_4) & 4294967295L), (Float.floatToRawIntBits(mo87toPx0680j_42) << 32) | (4294967295L & Float.floatToRawIntBits(mo87toPx0680j_42)));
                    break;
                }
                break;
            default:
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) obj2;
                lazyLayoutItemAnimation.m163setPlacementDeltagyyYBs(IntOffset.m716minusqkQi6aY(((IntOffset) ((Animatable) obj).getValue()).packedValue, this.f$2));
                lazyLayoutItemAnimation.onLayerPropertyChanged.invoke();
                break;
        }
        return unit;
    }
}
