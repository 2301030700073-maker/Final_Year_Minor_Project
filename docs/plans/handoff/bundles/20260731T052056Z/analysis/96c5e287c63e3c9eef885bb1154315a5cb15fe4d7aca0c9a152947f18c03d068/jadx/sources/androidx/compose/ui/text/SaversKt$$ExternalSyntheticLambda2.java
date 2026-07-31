package androidx.compose.ui.text;

import android.view.View;
import android.view.ViewParent;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.material3.pulltorefresh.PullToRefreshStateImpl;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.NextFrameEndCallbackQueue$NextFrameEndAwaiter;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.platform.ViewTreeHostDefaultProvider;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.room.Room;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SaversKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SpanStyle spanStyle = null;
        spanStyle = null;
        int i = 0;
        switch (this.$r8$classId) {
            case 0:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                String str = obj2 != null ? (String) obj2 : null;
                str.getClass();
                Object obj3 = list.get(1);
                return new LinkAnnotation.Url(str, (Intrinsics.areEqual(obj3, Boolean.FALSE) || obj3 == null) ? null : (TextLinkStyles) ((Function1) SaversKt.TextLinkStylesSaver.this$0).invoke(obj3), null);
            case 1:
                Float f = (Float) obj;
                f.getClass();
                return new PullToRefreshStateImpl(new Animatable(f, ArcSplineKt.FloatToVector, spanStyle, 12));
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = HostDefaultProviderKt.LocalHostDefaultProvider;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalHashMap.getClass();
                View view = ((ViewTreeHostDefaultProvider) Updater.read(persistentCompositionLocalHashMap, staticProvidableCompositionLocal)).view;
                while (view != null) {
                    Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
                    if (tag != null) {
                        return tag;
                    }
                    ViewParent parentOrViewTreeDisjointParent = Room.getParentOrViewTreeDisjointParent(view);
                    view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
                }
                return null;
            case 3:
                LayoutNode$_foldedChildren$1 layoutNode$_foldedChildren$1 = ((NextFrameEndCallbackQueue$NextFrameEndAwaiter) obj).onNextFrameEnd;
                if (layoutNode$_foldedChildren$1 != null) {
                    layoutNode$_foldedChildren$1.invoke();
                }
                return Unit.INSTANCE;
            case 4:
                return new SaveableStateHolderImpl((Map) obj);
            case 5:
                return obj;
            case 6:
                synchronized (SnapshotKt.lock) {
                    List list2 = SnapshotKt.globalWriteObservers;
                    int size = list2.size();
                    while (i < size) {
                        ((Function1) list2.get(i)).invoke(obj);
                        i++;
                    }
                }
                return Unit.INSTANCE;
            case 7:
                return Unit.INSTANCE;
            case 8:
                return Boolean.valueOf(!(((AnnotatedString.Annotation) obj) instanceof ParagraphStyle));
            case 9:
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                StringBuilder sb = new StringBuilder("[");
                sb.append(paragraphInfo.startIndex);
                sb.append(", ");
                return Animation.CC.m(sb, paragraphInfo.endIndex, ')');
            case 10:
                obj.getClass();
                List list3 = (List) obj;
                Object obj4 = list3.get(0);
                Function1 function1 = (Function1) SaversKt.SpanStyleSaver.this$0;
                Boolean bool = Boolean.FALSE;
                SpanStyle spanStyle2 = (Intrinsics.areEqual(obj4, bool) || obj4 == null) ? null : (SpanStyle) function1.invoke(obj4);
                Object obj5 = list3.get(1);
                SpanStyle spanStyle3 = (Intrinsics.areEqual(obj5, bool) || obj5 == null) ? null : (SpanStyle) function1.invoke(obj5);
                Object obj6 = list3.get(2);
                SpanStyle spanStyle4 = (Intrinsics.areEqual(obj6, bool) || obj6 == null) ? null : (SpanStyle) function1.invoke(obj6);
                Object obj7 = list3.get(3);
                if (!Intrinsics.areEqual(obj7, bool) && obj7 != null) {
                    spanStyle = (SpanStyle) function1.invoke(obj7);
                }
                return new TextLinkStyles(spanStyle2, spanStyle3, spanStyle4, spanStyle);
            case 11:
                obj.getClass();
                List list4 = (List) obj;
                Object obj8 = list4.get(1);
                List list5 = (Intrinsics.areEqual(obj8, Boolean.FALSE) || obj8 == null) ? null : (List) ((Function1) SaversKt.AnnotationRangeListSaver.this$0).invoke(obj8);
                Object obj9 = list4.get(0);
                String str2 = obj9 != null ? (String) obj9 : null;
                str2.getClass();
                return new AnnotatedString(list5, str2);
            case 12:
                obj.getClass();
                return new TextDecoration(((Integer) obj).intValue());
            case IMAGE_VALUE:
                obj.getClass();
                List list6 = (List) obj;
                return new TextGeometricTransform(((Number) list6.get(0)).floatValue(), ((Number) list6.get(1)).floatValue());
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                obj.getClass();
                List list7 = (List) obj;
                Object obj10 = list7.get(0);
                TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
                Function1 function12 = SaversKt.TextUnitSaver.$restore;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.areEqual(obj10, bool2);
                TextUnit textUnit = obj10 != null ? (TextUnit) function12.invoke(obj10) : null;
                textUnit.getClass();
                long j = textUnit.packedValue;
                Object obj11 = list7.get(1);
                Intrinsics.areEqual(obj11, bool2);
                TextUnit textUnit2 = obj11 != null ? (TextUnit) function12.invoke(obj11) : null;
                textUnit2.getClass();
                return new TextIndent(j, textUnit2.packedValue);
            case 15:
                obj.getClass();
                return new FontWeight(((Integer) obj).intValue());
            case LAZY_VERTICAL_GRID_VALUE:
                obj.getClass();
                return new BaselineShift(((Float) obj).floatValue());
            case VERTICAL_GRID_ITEM_VALUE:
                obj.getClass();
                List list8 = (List) obj;
                Object obj12 = list8.get(0);
                Integer num = obj12 != null ? (Integer) obj12 : null;
                num.getClass();
                int intValue = num.intValue();
                Object obj13 = list8.get(1);
                Integer num2 = obj13 != null ? (Integer) obj13 : null;
                num2.getClass();
                return new TextRange(ParagraphKt.TextRange(intValue, num2.intValue()));
            case RADIO_GROUP_VALUE:
                obj.getClass();
                List list9 = (List) obj;
                Object obj14 = list9.get(0);
                int i2 = Color.$r8$clinit;
                Boolean bool3 = Boolean.FALSE;
                Intrinsics.areEqual(obj14, bool3);
                Color color = obj14 != null ? Intrinsics.areEqual(obj14, Boolean.FALSE) ? new Color(Color.Unspecified) : new Color(ColorKt.Color(((Integer) obj14).intValue())) : null;
                color.getClass();
                long j2 = color.value;
                Object obj15 = list9.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.OffsetSaver;
                Intrinsics.areEqual(obj15, bool3);
                Offset offset = obj15 != null ? (Offset) saversKt$NonNullValueClassSaver$1.$restore.invoke(obj15) : null;
                offset.getClass();
                long j3 = offset.packedValue;
                Object obj16 = list9.get(2);
                Float f2 = obj16 != null ? (Float) obj16 : null;
                f2.getClass();
                return new Shadow(j2, j3, f2.floatValue());
            case RADIO_BUTTON_VALUE:
                obj.getClass();
                return new TextAlign(((Integer) obj).intValue());
            case RADIO_ROW_VALUE:
                obj.getClass();
                return new TextDirection(((Integer) obj).intValue());
            case RADIO_COLUMN_VALUE:
                obj.getClass();
                return new Hyphens(((Integer) obj).intValue());
            case SIZE_BOX_VALUE:
                obj.getClass();
                List list10 = (List) obj;
                ArrayList arrayList = new ArrayList(list10.size());
                int size2 = list10.size();
                while (i < size2) {
                    Object obj17 = list10.get(i);
                    AnnotatedString.Range range = (Intrinsics.areEqual(obj17, Boolean.FALSE) || obj17 == null) ? null : (AnnotatedString.Range) ((Function1) SaversKt.AnnotationRangeSaver.this$0).invoke(obj17);
                    range.getClass();
                    arrayList.add(range);
                    i++;
                }
                return arrayList;
            case 23:
                obj.getClass();
                return new FontStyle(((Integer) obj).intValue());
            case 24:
                obj.getClass();
                return new FontSynthesis(((Integer) obj).intValue());
            case 25:
                Boolean bool4 = Boolean.FALSE;
                if (Intrinsics.areEqual(obj, bool4)) {
                    return new TextUnit(TextUnit.Unspecified);
                }
                obj.getClass();
                List list11 = (List) obj;
                Object obj18 = list11.get(0);
                Float f3 = obj18 != null ? (Float) obj18 : null;
                f3.getClass();
                float floatValue = f3.floatValue();
                Object obj19 = list11.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$12 = SaversKt.TextUnitTypeSaver;
                Intrinsics.areEqual(obj19, bool4);
                TextUnitType textUnitType = obj19 != null ? (TextUnitType) saversKt$NonNullValueClassSaver$12.$restore.invoke(obj19) : null;
                textUnitType.getClass();
                return new TextUnit(ContextsKt.pack(floatValue, textUnitType.type));
            case 26:
                return Intrinsics.areEqual(obj, 0) ? new TextUnitType(8589934592L) : Intrinsics.areEqual(obj, 1) ? new TextUnitType(4294967296L) : new TextUnitType(0L);
            case 27:
                if (Intrinsics.areEqual(obj, Boolean.FALSE)) {
                    return new Offset(9205357640488583168L);
                }
                obj.getClass();
                List list12 = (List) obj;
                Object obj20 = list12.get(0);
                Float f4 = obj20 != null ? (Float) obj20 : null;
                f4.getClass();
                float floatValue2 = f4.floatValue();
                Object obj21 = list12.get(1);
                (obj21 != null ? (Float) obj21 : null).getClass();
                return new Offset((Float.floatToRawIntBits(r1.floatValue()) & 4294967295L) | (Float.floatToRawIntBits(floatValue2) << 32));
            case 28:
                obj.getClass();
                List list13 = (List) obj;
                ArrayList arrayList2 = new ArrayList(list13.size());
                int size3 = list13.size();
                while (i < size3) {
                    Object obj22 = list13.get(i);
                    Locale locale = (Intrinsics.areEqual(obj22, Boolean.FALSE) || obj22 == null) ? null : (Locale) ((Function1) SaversKt.LocaleSaver.this$0).invoke(obj22);
                    locale.getClass();
                    arrayList2.add(locale);
                    i++;
                }
                return new LocaleList(arrayList2);
            default:
                obj.getClass();
                String str3 = (String) obj;
                java.util.Locale forLanguageTag = java.util.Locale.forLanguageTag(str3);
                if (Intrinsics.areEqual(forLanguageTag.toLanguageTag(), "und")) {
                    System.err.println("The language tag " + str3 + " is not well-formed. Locale is resolved to Undetermined. Note that underscore '_' is not a valid subtag delimiter and must be replaced with '-'.");
                }
                return new Locale(forLanguageTag);
        }
    }
}
