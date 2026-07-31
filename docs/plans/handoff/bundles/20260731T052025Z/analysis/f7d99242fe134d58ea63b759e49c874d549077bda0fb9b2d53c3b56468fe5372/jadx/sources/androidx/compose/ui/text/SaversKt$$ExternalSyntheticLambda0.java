package androidx.compose.ui.text;

import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.TextFieldScrollerPosition;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Operation$State;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
                return IntOffsetKt.arrayListOf(annotatedString.text, SaversKt.save(annotatedString.annotations, SaversKt.AnnotationRangeListSaver, (SaveableHolder) obj));
            case 1:
                return Integer.valueOf(((ScrollState) obj2).value$delegate.getIntValue());
            case 2:
                LazyListState lazyListState = (LazyListState) obj2;
                return IntOffsetKt.listOf((Object[]) new Integer[]{Integer.valueOf(lazyListState.scrollPosition.index$delegate.getIntValue()), Integer.valueOf(lazyListState.scrollPosition.scrollOffset$delegate.getIntValue())});
            case 3:
                ((Integer) obj2).intValue();
                return new GridItemSpan(Operation$State.GridItemSpan(1));
            case 4:
                LazyGridState lazyGridState = (LazyGridState) obj2;
                return IntOffsetKt.listOf((Object[]) new Integer[]{Integer.valueOf(lazyGridState.scrollPosition.index$delegate.getIntValue()), Integer.valueOf(lazyGridState.scrollPosition.scrollOffset$delegate.getIntValue())});
            case 5:
                Map performSave = ((LazySaveableStateHolder) obj2).performSave();
                if (performSave.isEmpty()) {
                    return null;
                }
                return performSave;
            case 6:
                TextFieldScrollerPosition textFieldScrollerPosition = (TextFieldScrollerPosition) obj2;
                return IntOffsetKt.listOf(Float.valueOf(textFieldScrollerPosition.offset$delegate.getFloatValue()), Boolean.valueOf(((Orientation) textFieldScrollerPosition.orientation$delegate.getValue()) == Orientation.Vertical));
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Integer.valueOf(((Measurable) obj).minIntrinsicHeight(((Integer) obj2).intValue()));
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Integer.valueOf(((Measurable) obj).maxIntrinsicWidth(((Integer) obj2).intValue()));
            case 9:
                return Integer.valueOf(((Measurable) obj).maxIntrinsicHeight(((Integer) obj2).intValue()));
            case 10:
                return Integer.valueOf(((Measurable) obj).minIntrinsicWidth(((Integer) obj2).intValue()));
            case 11:
                return (SheetValue) ((SheetState) obj2).anchoredDraggableState.currentValue$delegate.getValue();
            case BasicTextKt.ShiftMeta /* 12 */:
                return (Float) ((PullToRefreshStateImpl) obj2).anim.getValue();
            case 13:
                SaveableHolder saveableHolder = (SaveableHolder) obj;
                MutableState mutableState = (MutableState) obj2;
                if (!(mutableState instanceof SnapshotMutableState)) {
                    UriKt$$ExternalSyntheticBUOutline0.m("If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()");
                    return null;
                }
                SnapshotMutableState snapshotMutableState = (SnapshotMutableState) mutableState;
                Object invoke = ((Function2) TextFieldValue.Saver.values).invoke(saveableHolder, snapshotMutableState.getValue());
                if (invoke == null) {
                    return null;
                }
                NeverEqualPolicy policy = snapshotMutableState.getPolicy();
                policy.getClass();
                return new ParcelableSnapshotMutableState(invoke, policy);
            case 14:
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
            case OffsetKt.Horizontal /* 15 */:
                return obj2;
            case 16:
                return Integer.valueOf(((TextDecoration) obj2).mask);
            case 17:
                TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj2;
                return IntOffsetKt.arrayListOf(Float.valueOf(textGeometricTransform.scaleX), Float.valueOf(textGeometricTransform.skewX));
            case 18:
                SaveableHolder saveableHolder2 = (SaveableHolder) obj;
                TextIndent textIndent = (TextIndent) obj2;
                TextUnit textUnit = new TextUnit(textIndent.firstLine);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.TextUnitSaver;
                return IntOffsetKt.arrayListOf(SaversKt.save(textUnit, saversKt$NonNullValueClassSaver$1, saveableHolder2), SaversKt.save(new TextUnit(textIndent.restLine), saversKt$NonNullValueClassSaver$1, saveableHolder2));
            case 19:
                return Integer.valueOf(((FontWeight) obj2).weight);
            case 20:
                LinkAnnotation.Url url = (LinkAnnotation.Url) obj2;
                return IntOffsetKt.arrayListOf(url.url, SaversKt.save(url.styles, SaversKt.TextLinkStylesSaver, (SaveableHolder) obj));
            case 21:
                return Float.valueOf(((BaselineShift) obj2).multiplier);
            case 22:
                SaveableHolder saveableHolder3 = (SaveableHolder) obj;
                List list = (List) obj2;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i5 = 0; i5 < size; i5++) {
                    arrayList.add(SaversKt.save((AnnotatedString.Range) list.get(i5), SaversKt.AnnotationRangeSaver, saveableHolder3));
                }
                return arrayList;
            case 23:
                TextRange textRange = (TextRange) obj2;
                return IntOffsetKt.arrayListOf(Integer.valueOf((int) (textRange.packedValue >> 32)), Integer.valueOf((int) (textRange.packedValue & 4294967295L)));
            case 24:
                SaveableHolder saveableHolder4 = (SaveableHolder) obj;
                Shadow shadow = (Shadow) obj2;
                return IntOffsetKt.arrayListOf(SaversKt.save(new Color(shadow.color), SaversKt.ColorSaver, saveableHolder4), SaversKt.save(new Offset(shadow.offset), SaversKt.OffsetSaver, saveableHolder4), Float.valueOf(shadow.blurRadius));
            case 25:
                return Integer.valueOf(((TextAlign) obj2).value);
            case 26:
                return Integer.valueOf(((TextDirection) obj2).value);
            case 27:
                return Integer.valueOf(((Hyphens) obj2).value);
            case 28:
                return Integer.valueOf(((FontStyle) obj2).value);
            default:
                return Integer.valueOf(((FontSynthesis) obj2).value);
        }
    }
}
