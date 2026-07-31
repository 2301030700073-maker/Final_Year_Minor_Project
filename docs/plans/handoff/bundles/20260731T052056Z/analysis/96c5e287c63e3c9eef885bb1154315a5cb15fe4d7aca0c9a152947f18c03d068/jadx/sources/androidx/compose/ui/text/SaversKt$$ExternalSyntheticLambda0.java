package androidx.compose.ui.text;

import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.foundation.text.selection.SelectionRegistrarImpl;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.room.Room;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SaversKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.$r8$classId) {
            case 0:
                AnnotatedString annotatedString = (AnnotatedString) obj2;
                return Room.arrayListOf(annotatedString.text, SaversKt.save(annotatedString.annotations, SaversKt.AnnotationRangeListSaver, (SaveableHolder) obj));
            case 1:
                return Integer.valueOf(((ScrollState) obj2).value$delegate.getIntValue());
            case 2:
                LazyListState lazyListState = (LazyListState) obj2;
                return Room.listOf((Object[]) new Integer[]{Integer.valueOf(lazyListState.getFirstVisibleItemIndex()), Integer.valueOf(lazyListState.getFirstVisibleItemScrollOffset())});
            case 3:
                ((Integer) obj2).getClass();
                return new GridItemSpan(1L);
            case 4:
                LazyGridState lazyGridState = (LazyGridState) obj2;
                return Room.listOf((Object[]) new Integer[]{Integer.valueOf(lazyGridState.scrollPosition.index$delegate.getIntValue()), Integer.valueOf(lazyGridState.scrollPosition.scrollOffset$delegate.getIntValue())});
            case 5:
                Map performSave = ((LazySaveableStateHolder) obj2).performSave();
                if (performSave.isEmpty()) {
                    return null;
                }
                return performSave;
            case 6:
                TextDelegate textDelegate = ((LazyStaggeredGridState) obj2).scrollPosition;
                return Room.listOf((Object[]) new int[][]{(int[]) textDelegate.style, (int[]) textDelegate.fontFamilyResolver});
            case 7:
                DefaultPagerState defaultPagerState = (DefaultPagerState) obj2;
                return Room.listOf(Integer.valueOf(defaultPagerState.getCurrentPage()), Float.valueOf(RegexKt.coerceIn(defaultPagerState.getCurrentPageOffsetFraction(), -0.5f, 0.5f)), Integer.valueOf(defaultPagerState.getPageCount()));
            case 8:
                TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj2;
                return Room.listOf(Float.valueOf(textFieldScrollerPosition.offset$delegate.getFloatValue()), Boolean.valueOf(((Orientation) textFieldScrollerPosition.orientation$delegate.getValue()) == Orientation.Vertical));
            case 9:
                return Long.valueOf(((SelectionRegistrarImpl) obj2).incrementId.get());
            case 10:
                return Integer.valueOf(((Measurable) obj).minIntrinsicHeight(((Integer) obj2).intValue()));
            case 11:
                return Integer.valueOf(((Measurable) obj).maxIntrinsicWidth(((Integer) obj2).intValue()));
            case 12:
                return Integer.valueOf(((Measurable) obj).maxIntrinsicHeight(((Integer) obj2).intValue()));
            case IMAGE_VALUE:
                return Integer.valueOf(((Measurable) obj).minIntrinsicWidth(((Integer) obj2).intValue()));
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return Integer.valueOf(((Measurable) obj).minIntrinsicWidth(((Integer) obj2).intValue()));
            case 15:
                return Integer.valueOf(((Measurable) obj).maxIntrinsicWidth(((Integer) obj2).intValue()));
            case LAZY_VERTICAL_GRID_VALUE:
                return Integer.valueOf(((Measurable) obj).minIntrinsicHeight(((Integer) obj2).intValue()));
            case VERTICAL_GRID_ITEM_VALUE:
                return Integer.valueOf(((Measurable) obj).maxIntrinsicHeight(((Integer) obj2).intValue()));
            case RADIO_GROUP_VALUE:
                TopAppBarState topAppBarState = (TopAppBarState) obj2;
                return Room.listOf((Object[]) new Float[]{Float.valueOf(topAppBarState.heightOffsetLimit), Float.valueOf(topAppBarState._heightOffset.getFloatValue()), Float.valueOf(topAppBarState.contentOffset$delegate.getFloatValue())});
            case RADIO_BUTTON_VALUE:
                return (Float) ((PullToRefreshStateImpl) obj2).anim.getValue();
            case RADIO_ROW_VALUE:
                SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj2;
                Map map = saveableStateHolderImpl.savedStates;
                MutableScatterMap mutableScatterMap = saveableStateHolderImpl.registries;
                Object[] objArr = mutableScatterMap.keys;
                Object[] objArr2 = mutableScatterMap.values;
                long[] jArr = mutableScatterMap.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128) {
                                    int i4 = (i << 3) + i3;
                                    Object obj3 = objArr[i4];
                                    Map performSave2 = ((SaveableStateRegistry) objArr2[i4]).performSave();
                                    if (performSave2.isEmpty()) {
                                        map.remove(obj3);
                                    } else {
                                        map.put(obj3, performSave2);
                                    }
                                }
                                j >>= 8;
                            }
                            if (i2 != 8) {
                            }
                        }
                        if (i != length) {
                            i++;
                        }
                    }
                }
                if (map.isEmpty()) {
                    return null;
                }
                return map;
            case RADIO_COLUMN_VALUE:
                return obj2;
            case SIZE_BOX_VALUE:
                return Integer.valueOf(((TextDecoration) obj2).mask);
            case 23:
                TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj2;
                return Room.arrayListOf(Float.valueOf(textGeometricTransform.scaleX), Float.valueOf(textGeometricTransform.skewX));
            case 24:
                SaveableHolder saveableHolder = (SaveableHolder) obj;
                TextIndent textIndent = (TextIndent) obj2;
                TextUnit textUnit = new TextUnit(textIndent.firstLine);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.TextUnitSaver;
                return Room.arrayListOf(SaversKt.save(textUnit, saversKt$NonNullValueClassSaver$1, saveableHolder), SaversKt.save(new TextUnit(textIndent.restLine), saversKt$NonNullValueClassSaver$1, saveableHolder));
            case 25:
                return Integer.valueOf(((FontWeight) obj2).weight);
            case 26:
                LinkAnnotation.Url url = (LinkAnnotation.Url) obj2;
                return Room.arrayListOf(url.url, SaversKt.save(url.styles, SaversKt.TextLinkStylesSaver, (SaveableHolder) obj));
            case 27:
                return Float.valueOf(((BaselineShift) obj2).multiplier);
            case 28:
                SaveableHolder saveableHolder2 = (SaveableHolder) obj;
                List list = (List) obj2;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i5 = 0; i5 < size; i5++) {
                    arrayList.add(SaversKt.save((AnnotatedString.Range) list.get(i5), SaversKt.AnnotationRangeSaver, saveableHolder2));
                }
                return arrayList;
            default:
                TextRange textRange = (TextRange) obj2;
                return Room.arrayListOf(Integer.valueOf((int) (textRange.packedValue >> 32)), Integer.valueOf((int) (textRange.packedValue & 4294967295L)));
        }
    }
}
