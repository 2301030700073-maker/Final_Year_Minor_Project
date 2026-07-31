package androidx.compose.foundation;

import android.appwidget.AppWidgetManager;
import android.graphics.Bitmap;
import android.widget.RemoteViews;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.VerticalScrollLayoutModifier;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.DpKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.page.PageTitle;
import org.wikipedia.search.SearchResult;
import org.wikipedia.widgets.WidgetProviderFeaturedPage;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ScrollNode$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ ScrollNode$$ExternalSyntheticLambda0(Object obj, int i, Object obj2, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = i;
        this.f$2 = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Composition composition;
        Composition composition2;
        int i;
        boolean z;
        int i2 = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i3 = this.f$1;
        Object obj2 = this.f$2;
        Object obj3 = this.f$0;
        switch (i2) {
            case 0:
                ScrollNode scrollNode = (ScrollNode) obj3;
                Placeable placeable = (Placeable) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int intValue = scrollNode.state.value$delegate.getIntValue();
                if (intValue < 0) {
                    intValue = 0;
                }
                if (intValue <= i3) {
                    i3 = intValue;
                }
                int i4 = -i3;
                boolean z2 = scrollNode.isVertical;
                int i5 = z2 ? 0 : i4;
                if (!z2) {
                    i4 = 0;
                }
                placementScope.motionFrameOfReferencePlacement = true;
                Placeable.PlacementScope.placeRelativeWithLayer$default(placementScope, placeable, i5, i4);
                placementScope.motionFrameOfReferencePlacement = false;
                break;
            case 1:
                VerticalScrollLayoutModifier verticalScrollLayoutModifier = (VerticalScrollLayoutModifier) obj3;
                Placeable placeable2 = (Placeable) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int i6 = verticalScrollLayoutModifier.cursorOffset;
                TextFieldScrollerPosition textFieldScrollerPosition = verticalScrollLayoutModifier.scrollerPosition;
                TransformedText transformedText = verticalScrollLayoutModifier.transformedText;
                TextLayoutResultProxy textLayoutResultProxy = (TextLayoutResultProxy) verticalScrollLayoutModifier.textLayoutResultProvider.invoke();
                textFieldScrollerPosition.update(Orientation.Vertical, BasicTextKt.getCursorRectInScroller(placementScope2, i6, transformedText, textLayoutResultProxy != null ? textLayoutResultProxy.value : null, false, placeable2.width), i3, placeable2.height);
                Placeable.PlacementScope.placeRelative$default(placementScope2, placeable2, 0, Math.round(-textFieldScrollerPosition.offset$delegate.getFloatValue()));
                break;
            case 2:
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj3;
                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) obj2;
                Composition composition3 = (Composition) obj;
                if (recomposeScopeImpl.currentToken == i3 && Intrinsics.areEqual(mutableObjectIntMap, recomposeScopeImpl.trackedInstances) && (composition3 instanceof CompositionImpl)) {
                    long[] jArr = mutableObjectIntMap.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i7 = 0;
                        while (true) {
                            long j = jArr[i7];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i8 = 8;
                                int i9 = 8 - ((~(i7 - length)) >>> 31);
                                int i10 = 0;
                                while (i10 < i9) {
                                    if ((255 & j) < 128) {
                                        int i11 = (i7 << 3) + i10;
                                        Object obj4 = mutableObjectIntMap.keys[i11];
                                        boolean z3 = mutableObjectIntMap.values[i11] != i3;
                                        if (z3) {
                                            i = i8;
                                            CompositionImpl compositionImpl = (CompositionImpl) composition3;
                                            composition2 = composition3;
                                            MutableScatterMap mutableScatterMap = compositionImpl.observations;
                                            DpKt.m705removeimpl(mutableScatterMap, obj4, recomposeScopeImpl);
                                            z = z3;
                                            if (obj4 instanceof DerivedSnapshotState) {
                                                DerivedSnapshotState derivedSnapshotState = (DerivedSnapshotState) obj4;
                                                if (!mutableScatterMap.containsKey(derivedSnapshotState)) {
                                                    DpKt.m706removeScopeimpl(compositionImpl.derivedStates, derivedSnapshotState);
                                                }
                                                MutableScatterMap mutableScatterMap2 = recomposeScopeImpl.trackedDependencies;
                                                if (mutableScatterMap2 != null) {
                                                    mutableScatterMap2.remove(obj4);
                                                }
                                            }
                                        } else {
                                            composition2 = composition3;
                                            z = z3;
                                            i = i8;
                                        }
                                        if (z) {
                                            mutableObjectIntMap.removeValueAt(i11);
                                        }
                                    } else {
                                        composition2 = composition3;
                                        i = i8;
                                    }
                                    j >>= i;
                                    i10++;
                                    i8 = i;
                                    composition3 = composition2;
                                }
                                composition = composition3;
                                if (i9 != i8) {
                                    break;
                                }
                            } else {
                                composition = composition3;
                            }
                            if (i7 == length) {
                                break;
                            } else {
                                i7++;
                                composition3 = composition;
                            }
                        }
                    }
                }
                break;
            case 3:
                ((PageSummary) obj).getClass();
                ((Function2) obj3).invoke((PageSummary) obj2, Integer.valueOf(i3));
                break;
            case 4:
                SearchResult searchResult = (SearchResult) obj;
                searchResult.getClass();
                ((Function4) obj3).invoke(searchResult, Boolean.FALSE, Integer.valueOf(i3), ((SearchResult) obj2).getLocation());
                break;
            case 5:
                SearchResult searchResult2 = (SearchResult) obj2;
                PageTitle pageTitle = (PageTitle) obj;
                pageTitle.getClass();
                ((Function6) obj3).invoke(searchResult2, pageTitle, Boolean.FALSE, Boolean.TRUE, Integer.valueOf(i3), searchResult2.getLocation());
                break;
            default:
                RemoteViews remoteViews = (RemoteViews) obj3;
                Bitmap bitmap = (Bitmap) obj;
                int i12 = WidgetProviderFeaturedPage.$r8$clinit;
                bitmap.getClass();
                remoteViews.setImageViewBitmap(R.id.widget_content_thumbnail, bitmap);
                ((AppWidgetManager) obj2).updateAppWidget(i3, remoteViews);
                break;
        }
        return unit;
    }

    public /* synthetic */ ScrollNode$$ExternalSyntheticLambda0(Object obj, Object obj2, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$2 = obj2;
        this.f$1 = i;
    }
}
