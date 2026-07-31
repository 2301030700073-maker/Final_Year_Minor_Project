package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LazyLayoutMeasureScopeImpl implements MeasureScope {
    public final LazyLayoutItemContentFactory itemContentFactory;
    public final LazyLayoutItemProvider itemProvider;
    public final MutableIntObjectMap measurablesCache;
    public final SubcomposeMeasureScope subcomposeMeasureScope;

    public LazyLayoutMeasureScopeImpl(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeMeasureScope subcomposeMeasureScope) {
        this.itemContentFactory = lazyLayoutItemContentFactory;
        this.subcomposeMeasureScope = subcomposeMeasureScope;
        this.itemProvider = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.itemProvider.invoke();
        IntObjectMapKt.mutableIntObjectMapOf();
        this.measurablesCache = new MutableIntObjectMap();
    }

    public final List compose(int i) {
        MutableIntObjectMap mutableIntObjectMap = this.measurablesCache;
        List list = (List) mutableIntObjectMap.get(i);
        if (list != null) {
            return list;
        }
        LazyLayoutItemProvider lazyLayoutItemProvider = this.itemProvider;
        Object key = lazyLayoutItemProvider.getKey(i);
        List subcompose = this.subcomposeMeasureScope.subcompose(key, this.itemContentFactory.getContent(key, lazyLayoutItemProvider.getContentType(i), i));
        mutableIntObjectMap.set(i, subcompose);
        return subcompose;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.subcomposeMeasureScope.getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getFontScale() {
        return this.subcomposeMeasureScope.getFontScale();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.subcomposeMeasureScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean isLookingAhead() {
        return this.subcomposeMeasureScope.isLookingAhead();
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult layout(int i, int i2, Map map, Function1 function1, Function1 function12) {
        return this.subcomposeMeasureScope.layout(i, i2, EmptyMap.INSTANCE, function1, function12);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public final int mo57roundToPxR2X_6o(long j) {
        return this.subcomposeMeasureScope.mo57roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public final int mo58roundToPx0680j_4(float f) {
        return this.subcomposeMeasureScope.mo58roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public final float mo59toDpGaN1DYA(long j) {
        return this.subcomposeMeasureScope.mo59toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo61toDpu2uoSUM(int i) {
        return this.subcomposeMeasureScope.mo61toDpu2uoSUM(i);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public final float mo62toPxR2X_6o(long j) {
        return this.subcomposeMeasureScope.mo62toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public final float mo63toPx0680j_4(float f) {
        return this.subcomposeMeasureScope.mo63toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public final long mo64toSizeXkaWNTQ(long j) {
        return this.subcomposeMeasureScope.mo64toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public final long mo65toSpkPz2Gy4(float f) {
        return this.subcomposeMeasureScope.mo65toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public final float mo60toDpu2uoSUM(float f) {
        return this.subcomposeMeasureScope.mo60toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult layout(int i, int i2, Map map, Function1 function1) {
        return this.subcomposeMeasureScope.layout(i, i2, map, function1);
    }
}
