package androidx.compose.ui.text;

import android.view.View;
import android.view.ViewParent;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.ListItemKt;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.HostDefaultProviderKt;
import androidx.compose.runtime.NextFrameEndCallbackQueue$NextFrameEndAwaiter;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolderImpl;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.platform.LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1;
import androidx.compose.ui.platform.ViewTreeHostDefaultProvider;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SaversKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda2(int i, LazyListMeasureResult lazyListMeasureResult) {
        this.$r8$classId = 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        TextLinkStyles textLinkStyles = null;
        r1 = null;
        SpanStyle spanStyle = null;
        textLinkStyles = null;
        switch (this.$r8$classId) {
            case 0:
                obj.getClass();
                List list = (List) obj;
                Object obj2 = list.get(0);
                String str = obj2 != null ? (String) obj2 : null;
                str.getClass();
                Object obj3 = list.get(1);
                CardView.AnonymousClass1 anonymousClass1 = SaversKt.TextLinkStylesSaver;
                if (!Intrinsics.areEqual(obj3, Boolean.FALSE) && obj3 != null) {
                    textLinkStyles = (TextLinkStyles) ((Function1) anonymousClass1.this$0).invoke(obj3);
                }
                return new LinkAnnotation.Url(str, textLinkStyles);
            case 1:
                return Unit.INSTANCE;
            case 2:
                List list2 = (List) obj;
                Object obj4 = list2.get(0);
                obj4.getClass();
                int intValue = ((Integer) obj4).intValue();
                Object obj5 = list2.get(1);
                obj5.getClass();
                return new DefaultPagerState(intValue, ((Float) obj5).floatValue(), new Handshake$Companion$$ExternalSyntheticLambda0(1, list2));
            case 3:
                KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.SelectableGroup;
                Unit unit = Unit.INSTANCE;
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey, unit);
                return unit;
            case 4:
                return Boolean.TRUE;
            case 5:
                LookaheadCapablePlaceable.ResettableRulerScope resettableRulerScope = (LookaheadCapablePlaceable.ResettableRulerScope) obj;
                resettableRulerScope.provides(BadgeKt.BadgeEndRuler, (int) (resettableRulerScope.getCoordinates().mo296getSizeYbymL2g() >> 32));
                resettableRulerScope.provides(BadgeKt.BadgeTopRuler, 0.0f);
                return Unit.INSTANCE;
            case 6:
                SemanticsPropertiesKt.m399setRolekuIjeqM((SemanticsPropertyReceiver) obj, 0);
                return Unit.INSTANCE;
            case 7:
                KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.IsTraversalGroup;
                KProperty kProperty = SemanticsPropertiesKt.$$delegatedProperties[6];
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey2, Boolean.TRUE);
                return Unit.INSTANCE;
            case 8:
                float f = ListItemKt.InteractiveListStartPadding;
                return Unit.INSTANCE;
            case 9:
                KProperty[] kPropertyArr3 = SemanticsPropertiesKt.$$delegatedProperties;
                SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.IsContainer;
                KProperty kProperty2 = SemanticsPropertiesKt.$$delegatedProperties[5];
                ((SemanticsPropertyReceiver) obj).set(semanticsPropertyKey3, Boolean.TRUE);
                return Unit.INSTANCE;
            case 10:
                return Unit.INSTANCE;
            case 11:
                ((TraversableNode) obj).getClass();
                throw new ClassCastException();
            case 12:
                ((TraversableNode) obj).getClass();
                throw new ClassCastException();
            case 13:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = HostDefaultProviderKt.LocalHostDefaultProvider;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalHashMap.getClass();
                View view = ((ViewTreeHostDefaultProvider) Updater.read(persistentCompositionLocalHashMap, dynamicProvidableCompositionLocal)).view;
                while (view != null) {
                    Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
                    if (tag != null) {
                        return tag;
                    }
                    ViewParent parentOrViewTreeDisjointParent = CloseableKt.getParentOrViewTreeDisjointParent(view);
                    view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
                }
                return null;
            case 14:
                LifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1 lifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1 = ((NextFrameEndCallbackQueue$NextFrameEndAwaiter) obj).onNextFrameEnd;
                if (lifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1 != null) {
                    lifecycleRetainedValuesStoreOwner$RetainedValuesStoreEntry$stopRetainingExitedValues$1.invoke();
                }
                return Unit.INSTANCE;
            case 15:
                return new SaveableStateHolderImpl((Map) obj);
            case 16:
                return obj;
            case 17:
                synchronized (SnapshotKt.lock) {
                    List list3 = SnapshotKt.globalWriteObservers;
                    int size = list3.size();
                    for (int i = 0; i < size; i++) {
                        ((Function1) list3.get(i)).invoke(obj);
                    }
                }
                return Unit.INSTANCE;
            case 18:
                SaversKt$$ExternalSyntheticLambda2 saversKt$$ExternalSyntheticLambda2 = SnapshotKt.emptyLambda;
                return Unit.INSTANCE;
            case 19:
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                StringBuilder sb = new StringBuilder("[");
                sb.append(paragraphInfo.startIndex);
                sb.append(", ");
                return Modifier.CC.m(sb, paragraphInfo.endIndex, ')');
            case 20:
                obj.getClass();
                List list4 = (List) obj;
                Object obj6 = list4.get(0);
                Function1 function1 = (Function1) SaversKt.SpanStyleSaver.this$0;
                Boolean bool = Boolean.FALSE;
                SpanStyle spanStyle2 = (Intrinsics.areEqual(obj6, bool) || obj6 == null) ? null : (SpanStyle) function1.invoke(obj6);
                Object obj7 = list4.get(1);
                SpanStyle spanStyle3 = (Intrinsics.areEqual(obj7, bool) || obj7 == null) ? null : (SpanStyle) function1.invoke(obj7);
                Object obj8 = list4.get(2);
                SpanStyle spanStyle4 = (Intrinsics.areEqual(obj8, bool) || obj8 == null) ? null : (SpanStyle) function1.invoke(obj8);
                Object obj9 = list4.get(3);
                if (!Intrinsics.areEqual(obj9, bool) && obj9 != null) {
                    spanStyle = (SpanStyle) function1.invoke(obj9);
                }
                return new TextLinkStyles(spanStyle2, spanStyle3, spanStyle4, spanStyle);
            case 21:
                obj.getClass();
                List list5 = (List) obj;
                Object obj10 = list5.get(1);
                List list6 = (Intrinsics.areEqual(obj10, Boolean.FALSE) || obj10 == null) ? null : (List) ((Function1) SaversKt.AnnotationRangeListSaver.this$0).invoke(obj10);
                Object obj11 = list5.get(0);
                String str2 = obj11 != null ? (String) obj11 : null;
                str2.getClass();
                return new AnnotatedString(list6, str2);
            case 22:
                obj.getClass();
                return new TextDecoration(((Integer) obj).intValue());
            case 23:
                obj.getClass();
                List list7 = (List) obj;
                return new TextGeometricTransform(((Number) list7.get(0)).floatValue(), ((Number) list7.get(1)).floatValue());
            case 24:
                obj.getClass();
                List list8 = (List) obj;
                Object obj12 = list8.get(0);
                TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
                Function1 function12 = SaversKt.TextUnitSaver.$restore;
                Boolean bool2 = Boolean.FALSE;
                Intrinsics.areEqual(obj12, bool2);
                TextUnit textUnit = obj12 != null ? (TextUnit) function12.invoke(obj12) : null;
                textUnit.getClass();
                long j = textUnit.packedValue;
                Object obj13 = list8.get(1);
                Intrinsics.areEqual(obj13, bool2);
                TextUnit textUnit2 = obj13 != null ? (TextUnit) function12.invoke(obj13) : null;
                textUnit2.getClass();
                return new TextIndent(j, textUnit2.packedValue);
            case 25:
                obj.getClass();
                return new FontWeight(((Integer) obj).intValue());
            case 26:
                obj.getClass();
                return new BaselineShift(((Float) obj).floatValue());
            case 27:
                obj.getClass();
                List list9 = (List) obj;
                Object obj14 = list9.get(0);
                Integer num = obj14 != null ? (Integer) obj14 : null;
                num.getClass();
                int intValue2 = num.intValue();
                Object obj15 = list9.get(1);
                Integer num2 = obj15 != null ? (Integer) obj15 : null;
                num2.getClass();
                return new TextRange(ParagraphKt.TextRange(intValue2, num2.intValue()));
            case 28:
                obj.getClass();
                List list10 = (List) obj;
                Object obj16 = list10.get(0);
                int i2 = Color.$r8$clinit;
                Boolean bool3 = Boolean.FALSE;
                Intrinsics.areEqual(obj16, bool3);
                Color color = obj16 != null ? Intrinsics.areEqual(obj16, Boolean.FALSE) ? new Color(Color.Unspecified) : new Color(Brush.Color(((Integer) obj16).intValue())) : null;
                color.getClass();
                long j2 = color.value;
                Object obj17 = list10.get(1);
                SaversKt$NonNullValueClassSaver$1 saversKt$NonNullValueClassSaver$1 = SaversKt.OffsetSaver;
                Intrinsics.areEqual(obj17, bool3);
                Offset offset = obj17 != null ? (Offset) saversKt$NonNullValueClassSaver$1.$restore.invoke(obj17) : null;
                offset.getClass();
                long j3 = offset.packedValue;
                Object obj18 = list10.get(2);
                Float f2 = obj18 != null ? (Float) obj18 : null;
                f2.getClass();
                return new Shadow(j2, j3, f2.floatValue());
            default:
                obj.getClass();
                return new TextAlign(((Integer) obj).intValue());
        }
    }

    public /* synthetic */ SaversKt$$ExternalSyntheticLambda2(int i) {
        this.$r8$classId = i;
    }
}
