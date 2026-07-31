package androidx.compose.foundation.pager;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.LazyListInterval;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.RootMeasurePolicy$measure$1;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.network.okhttp.internal.CallsKt$await$2$1;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import net.newpipe.app.screen.about.LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class PagerMeasureKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ArrayList f$0;

    public /* synthetic */ PagerMeasureKt$$ExternalSyntheticLambda1(int i, ArrayList arrayList) {
        this.$r8$classId = i;
        this.f$0 = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i;
        Unit unit;
        ArrayList arrayList;
        Placeable.PlacementScope placementScope;
        int i2 = this.$r8$classId;
        Unit unit2 = Unit.INSTANCE;
        ArrayList arrayList2 = this.f$0;
        int i3 = 1;
        switch (i2) {
            case 0:
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int size = arrayList2.size();
                int i4 = 0;
                while (i4 < size) {
                    MeasuredPage measuredPage = (MeasuredPage) arrayList2.get(i4);
                    List list = measuredPage.placeables;
                    boolean z = measuredPage.isVertical;
                    if (measuredPage.mainAxisLayoutSize == Integer.MIN_VALUE) {
                        InlineClassHelperKt.throwIllegalArgumentException("position() should be called first");
                    }
                    int size2 = list.size();
                    int i5 = 0;
                    while (i5 < size2) {
                        Placeable placeable = (Placeable) list.get(i5);
                        int i6 = size;
                        long m447plusqkQi6aY = IntOffset.m447plusqkQi6aY((r13[r14 + i3] & 4294967295L) | (measuredPage.placeableOffsets[i5 * 2] << 32), measuredPage.visualOffset);
                        if (z) {
                            Placeable.PlacementScope.m306placeWithLayeraW9wM$default(placementScope2, placeable, m447plusqkQi6aY);
                            placementScope = placementScope2;
                            i = i4;
                            unit = unit2;
                            arrayList = arrayList2;
                        } else {
                            int i7 = PlaceableKt.$r8$clinit;
                            RootMeasurePolicy$measure$1 rootMeasurePolicy$measure$1 = RootMeasurePolicy$measure$1.INSTANCE$1;
                            if (placementScope2.getParentLayoutDirection() == LayoutDirection.Ltr || placementScope2.getParentWidth() == 0) {
                                i = i4;
                                unit = unit2;
                                Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope2, placeable);
                                arrayList = arrayList2;
                                placementScope = placementScope2;
                                placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY(m447plusqkQi6aY, placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
                            } else {
                                i = i4;
                                int parentWidth = (placementScope2.getParentWidth() - placeable.width) - ((int) (m447plusqkQi6aY >> 32));
                                unit = unit2;
                                Placeable.PlacementScope.access$handleMotionFrameOfReferencePlacement(placementScope2, placeable);
                                placeable.mo295placeAtf8xVGno(IntOffset.m447plusqkQi6aY((((int) (m447plusqkQi6aY & 4294967295L)) & 4294967295L) | (parentWidth << 32), placeable.apparentToRealOffset), 0.0f, rootMeasurePolicy$measure$1);
                                arrayList = arrayList2;
                                placementScope = placementScope2;
                            }
                        }
                        i5++;
                        size = i6;
                        arrayList2 = arrayList;
                        unit2 = unit;
                        placementScope2 = placementScope;
                        i4 = i;
                        i3 = 1;
                    }
                    int i8 = i4;
                    i4 = i8 + 1;
                    arrayList2 = arrayList2;
                    unit2 = unit2;
                    placementScope2 = placementScope2;
                    i3 = 1;
                }
                break;
            default:
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                lazyListIntervalContent.intervals.addInterval(arrayList2.size(), new LazyListInterval(null, new CallsKt$await$2$1(arrayList2, 4), new ComposableLambdaImpl(802480018, true, new LicenseDialogKt$LicenseDialog$lambda$9$0$0$$inlined$items$default$4(1, arrayList2))));
                break;
        }
        return unit2;
    }
}
