package androidx.compose.ui.text;

import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.layout.LazySaveableStateHolder;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.material3.BadgeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SaversKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                AnnotatedString annotatedString = (AnnotatedString) obj2;
                return Jsoup.arrayListOf(annotatedString.text, SaversKt.save(annotatedString.annotations, SaversKt.AnnotationRangeListSaver, (SaveableHolder) obj));
            case 1:
                LazyListState lazyListState = (LazyListState) obj2;
                return Jsoup.listOf((Object[]) new Integer[]{Integer.valueOf(((ParcelableSnapshotMutableIntState) lazyListState.scrollPosition.imageLoader).getIntValue()), Integer.valueOf(((ParcelableSnapshotMutableIntState) lazyListState.scrollPosition.activityCallbacks).getIntValue())});
            case 2:
                Map performSave = ((LazySaveableStateHolder) obj2).performSave();
                if (performSave.isEmpty()) {
                    return null;
                }
                return performSave;
            case 3:
                DefaultPagerState defaultPagerState = (DefaultPagerState) obj2;
                return Jsoup.listOf(Integer.valueOf(defaultPagerState.getCurrentPage()), Float.valueOf(RangesKt.coerceIn(defaultPagerState.getCurrentPageOffsetFraction(), -0.5f, 0.5f)), Integer.valueOf(defaultPagerState.getPageCount()));
            case 4:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                }
                return unit;
            case 5:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                }
                return unit;
            case 6:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                    gapComposer3.skipToGroupEnd();
                }
                return unit;
            case 7:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                    gapComposer4.skipToGroupEnd();
                }
                return unit;
            case 8:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                    gapComposer5.skipToGroupEnd();
                }
                return unit;
            case 9:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                    gapComposer6.skipToGroupEnd();
                }
                return unit;
            case 10:
                Composer composer7 = (Composer) obj;
                int intValue7 = ((Integer) obj2).intValue();
                GapComposer gapComposer7 = (GapComposer) composer7;
                if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                    gapComposer7.skipToGroupEnd();
                }
                return unit;
            case 11:
                Composer composer8 = (Composer) obj;
                int intValue8 = ((Integer) obj2).intValue();
                GapComposer gapComposer8 = (GapComposer) composer8;
                if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                    gapComposer8.skipToGroupEnd();
                }
                return unit;
            case 12:
                Composer composer9 = (Composer) obj;
                int intValue9 = ((Integer) obj2).intValue();
                GapComposer gapComposer9 = (GapComposer) composer9;
                if (gapComposer9.shouldExecute(intValue9 & 1, (intValue9 & 3) != 2)) {
                    BadgeKt.m133HorizontalDivider9IZ8Weo(null, 0.0f, 0L, gapComposer9, 0);
                } else {
                    gapComposer9.skipToGroupEnd();
                }
                return unit;
            case 13:
                SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj2;
                Map map = saveableStateHolderImpl.savedStates;
                MutableScatterMap mutableScatterMap = saveableStateHolderImpl.registries;
                Object[] objArr = mutableScatterMap.keys;
                Object[] objArr2 = mutableScatterMap.values;
                long[] jArr = mutableScatterMap.metadata;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j = jArr[i2];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8 - ((~(i2 - length)) >>> 31);
                            for (int i4 = 0; i4 < i3; i4++) {
                                if ((255 & j) < 128) {
                                    int i5 = (i2 << 3) + i4;
                                    Object obj3 = objArr[i5];
                                    Map performSave2 = ((SaveableStateRegistry) objArr2[i5]).performSave();
                                    if (performSave2.isEmpty()) {
                                        map.remove(obj3);
                                    } else {
                                        map.put(obj3, performSave2);
                                    }
                                }
                                j >>= 8;
                            }
                            if (i3 != 8) {
                            }
                        }
                        if (i2 != length) {
                            i2++;
                        }
                    }
                }
                if (map.isEmpty()) {
                    return null;
                }
                return map;
            case 14:
                return obj2;
            case 15:
                return Integer.valueOf(((TextDecoration) obj2).mask);
            case 16:
                TextGeometricTransform textGeometricTransform = (TextGeometricTransform) obj2;
                return Jsoup.arrayListOf(Float.valueOf(textGeometricTransform.scaleX), Float.valueOf(textGeometricTransform.skewX));
            case 17:
                SaveableHolder saveableHolder = (SaveableHolder) obj;
                TextIndent textIndent = (TextIndent) obj2;
                TextUnit textUnit = new TextUnit(textIndent.firstLine);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.TextUnitSaver;
                return Jsoup.arrayListOf(SaversKt.save(textUnit, saversKt$NonNullValueClassSaver$1, saveableHolder), SaversKt.save(new TextUnit(textIndent.restLine), saversKt$NonNullValueClassSaver$1, saveableHolder));
            case 18:
                return Integer.valueOf(((FontWeight) obj2).weight);
            case 19:
                LinkAnnotation.Url url = (LinkAnnotation.Url) obj2;
                return Jsoup.arrayListOf(url.url, SaversKt.save(url.styles, SaversKt.TextLinkStylesSaver, (SaveableHolder) obj));
            case 20:
                return Float.valueOf(((BaselineShift) obj2).multiplier);
            case 21:
                SaveableHolder saveableHolder2 = (SaveableHolder) obj;
                List list = (List) obj2;
                ArrayList arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i6 = 0; i6 < size; i6++) {
                    arrayList.add(SaversKt.save((AnnotatedString.Range) list.get(i6), SaversKt.AnnotationRangeSaver, saveableHolder2));
                }
                return arrayList;
            case 22:
                TextRange textRange = (TextRange) obj2;
                return Jsoup.arrayListOf(Integer.valueOf((int) (textRange.packedValue >> 32)), Integer.valueOf((int) (textRange.packedValue & 4294967295L)));
            case 23:
                SaveableHolder saveableHolder3 = (SaveableHolder) obj;
                Shadow shadow = (Shadow) obj2;
                return Jsoup.arrayListOf(SaversKt.save(new Color(shadow.color), SaversKt.ColorSaver, saveableHolder3), SaversKt.save(new Offset(shadow.offset), SaversKt.OffsetSaver, saveableHolder3), Float.valueOf(shadow.blurRadius));
            case 24:
                return Integer.valueOf(((TextAlign) obj2).value);
            case 25:
                return Integer.valueOf(((TextDirection) obj2).value);
            case 26:
                return Integer.valueOf(((Hyphens) obj2).value);
            case 27:
                return Integer.valueOf(((FontStyle) obj2).value);
            case 28:
                return Integer.valueOf(((FontSynthesis) obj2).value);
            default:
                TextUnit textUnit2 = (TextUnit) obj2;
                return textUnit2 == null ? false : TextUnit.m451equalsimpl0(textUnit2.packedValue, TextUnit.Unspecified) ? Boolean.FALSE : Jsoup.arrayListOf(Float.valueOf(TextUnit.m453getValueimpl(textUnit2.packedValue)), SaversKt.save(new TextUnitType(TextUnit.m452getTypeUIouoOA(textUnit2.packedValue)), SaversKt.TextUnitTypeSaver, (SaveableHolder) obj));
        }
    }
}
