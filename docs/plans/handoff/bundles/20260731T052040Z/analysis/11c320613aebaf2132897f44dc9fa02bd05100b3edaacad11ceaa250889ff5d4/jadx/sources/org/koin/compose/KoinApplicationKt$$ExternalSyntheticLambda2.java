package org.koin.compose;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.gestures.ScrollingLogic$nestedScrollScope$1;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.BadgeKt;
import androidx.compose.material3.ListItemKt;
import androidx.compose.material3.TabRowKt$TabRowImpl$1$scope$1$1;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.TypographyKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.DefaultIntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.IntrinsicMinMax;
import androidx.compose.ui.layout.IntrinsicWidthHeight;
import androidx.compose.ui.layout.IntrinsicsMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.ranges.RangesKt;
import kotlin.text.UStringsKt;
import net.newpipe.app.model.Library;
import net.newpipe.app.model.Link;
import net.newpipe.app.navigation.Destination;
import net.newpipe.app.navigation.NavDisplayKt;
import net.newpipe.app.navigation.Navigator;
import net.newpipe.app.screen.settings.SettingsHomeScreenKt;
import okhttp3.ConnectionPool;
import okio.Okio;
import org.jsoup.Jsoup;
import org.koin.core.logger.Level;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class KoinApplicationKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ KoinApplicationKt$$ExternalSyntheticLambda2(TypographyKeyTokens typographyKeyTokens, ComposableLambdaImpl composableLambdaImpl, Transition.TransitionAnimationState transitionAnimationState) {
        this.$r8$classId = 2;
        this.f$0 = typographyKeyTokens;
        this.f$2 = composableLambdaImpl;
        this.f$1 = transitionAnimationState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$2;
        Object obj4 = this.f$1;
        Object obj5 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                KoinApplicationKt.KoinApplication((ConnectionPool) obj5, (Level) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, Updater.updateChangedFlags(385));
                break;
            case 1:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj5;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj4;
                float floatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                long m75toOffsettuRUvjQ = scrollingLogic.m75toOffsettuRUvjQ(scrollingLogic.reverseIfNeeded(floatValue - ref$FloatRef.element));
                ScrollingLogic scrollingLogic2 = ((ScrollingLogic$nestedScrollScope$1) obj3).this$0;
                ref$FloatRef.element += scrollingLogic.reverseIfNeeded(scrollingLogic.m74toFloatk4lQ0M(scrollingLogic2.m72performScroll3eAAhYA(scrollingLogic2.outerStateScope, m75toOffsettuRUvjQ, 1)));
                break;
            case 2:
                TypographyKeyTokens typographyKeyTokens = (TypographyKeyTokens) obj5;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj3;
                Transition.TransitionAnimationState transitionAnimationState = (Transition.TransitionAnimationState) obj4;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) composer;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ListItemKt.m148ContentDecorator3JVO9M(((Color) transitionAnimationState.value$delegate.getValue()).value, typographyKeyTokens, composableLambdaImpl, gapComposer, 48);
                    break;
                }
            case 3:
                ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj3;
                Function2 function2 = (Function2) obj5;
                ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj4;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    FiniteAnimationSpec value = BadgeKt.value(MotionSchemeKeyTokens.DefaultSpatial, gapComposer2);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
                    if (rememberedValue == neverEqualPolicy) {
                        rememberedValue = new TabRowKt$TabRowImpl$1$scope$1$1(value);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    final TabRowKt$TabRowImpl$1$scope$1$1 tabRowKt$TabRowImpl$1$scope$1$1 = (TabRowKt$TabRowImpl$1$scope$1$1) rememberedValue;
                    FillElement fillElement = SizeKt.FillWholeMaxWidth;
                    List listOf = Jsoup.listOf((Object[]) new Function2[]{composableLambdaImpl2, function2, Expect_jvmKt.rememberComposableLambda(-1333331860, new TextKt$$ExternalSyntheticLambda2(composableLambdaImpl3, tabRowKt$TabRowImpl$1$scope$1$1, 12), gapComposer2)});
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new MultiContentMeasurePolicy() { // from class: androidx.compose.material3.TabRowKt$TabRowImpl$1$2$1
                            @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
                            public final int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
                                ArrayList arrayList = (ArrayList) list;
                                ArrayList arrayList2 = new ArrayList(arrayList.size());
                                int size = arrayList.size();
                                for (int i3 = 0; i3 < size; i3++) {
                                    List list2 = (List) arrayList.get(i3);
                                    ArrayList arrayList3 = new ArrayList(list2.size());
                                    int size2 = list2.size();
                                    for (int i4 = 0; i4 < size2; i4++) {
                                        arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i4), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height, 0));
                                    }
                                    arrayList2.add(arrayList3);
                                }
                                return mo82measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(i2, 0, 13)).getHeight();
                            }

                            @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
                            public final int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
                                ArrayList arrayList = (ArrayList) list;
                                ArrayList arrayList2 = new ArrayList(arrayList.size());
                                int size = arrayList.size();
                                for (int i3 = 0; i3 < size; i3++) {
                                    List list2 = (List) arrayList.get(i3);
                                    ArrayList arrayList3 = new ArrayList(list2.size());
                                    int size2 = list2.size();
                                    for (int i4 = 0; i4 < size2; i4++) {
                                        arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i4), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width, 0));
                                    }
                                    arrayList2.add(arrayList3);
                                }
                                return mo82measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(0, i2, 7)).getWidth();
                            }

                            @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
                            /* renamed from: measure-3p2s80s */
                            public final MeasureResult mo82measure3p2s80s(MeasureScope measureScope, List list, long j) {
                                ArrayList arrayList = (ArrayList) list;
                                List list2 = (List) arrayList.get(0);
                                List list3 = (List) arrayList.get(1);
                                List list4 = (List) arrayList.get(2);
                                int m434getMaxWidthimpl = Constraints.m434getMaxWidthimpl(j);
                                int size = list2.size();
                                Ref$IntRef ref$IntRef = new Ref$IntRef();
                                if (size > 0) {
                                    ref$IntRef.element = m434getMaxWidthimpl / size;
                                }
                                Integer num = 0;
                                int size2 = list2.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    num = Integer.valueOf(Math.max(((Measurable) list2.get(i2)).maxIntrinsicHeight(ref$IntRef.element), num.intValue()));
                                }
                                int intValue3 = num.intValue();
                                ArrayList arrayList2 = new ArrayList(size);
                                for (int i3 = 0; i3 < size; i3++) {
                                    Dp dp = new Dp(measureScope.mo61toDpu2uoSUM(Math.min(((Measurable) list2.get(i3)).maxIntrinsicWidth(intValue3), ref$IntRef.element)) - (TabKt.HorizontalTextPadding * 2.0f));
                                    Dp dp2 = new Dp(24.0f);
                                    if (dp.compareTo(dp2) < 0) {
                                        dp = dp2;
                                    }
                                    arrayList2.add(new TabPosition(measureScope.mo61toDpu2uoSUM(ref$IntRef.element) * i3, measureScope.mo61toDpu2uoSUM(ref$IntRef.element), dp.value));
                                }
                                TabRowKt$TabRowImpl$1$scope$1$1.this.tabPositions.setValue(arrayList2);
                                ArrayList arrayList3 = new ArrayList(list2.size());
                                int size3 = list2.size();
                                for (int i4 = 0; i4 < size3; i4++) {
                                    Measurable measurable = (Measurable) list2.get(i4);
                                    int i5 = ref$IntRef.element;
                                    arrayList3.add(measurable.mo292measureBRTryo0(Constraints.m426copyZbe2FdA(i5, i5, intValue3, intValue3)));
                                }
                                ArrayList arrayList4 = new ArrayList(list3.size());
                                int size4 = list3.size();
                                for (int i6 = 0; i6 < size4; i6++) {
                                    arrayList4.add(((Measurable) list3.get(i6)).mo292measureBRTryo0(Constraints.m427copyZbe2FdA$default(0, 0, 0, j, 11)));
                                }
                                ArrayList arrayList5 = new ArrayList(list4.size());
                                int size5 = list4.size();
                                for (int i7 = 0; i7 < size5; i7++) {
                                    Measurable measurable2 = (Measurable) list4.get(i7);
                                    int i8 = ref$IntRef.element;
                                    arrayList5.add(measurable2.mo292measureBRTryo0(Constraints.m426copyZbe2FdA(i8, i8, 0, intValue3)));
                                }
                                return measureScope.layout(m434getMaxWidthimpl, intValue3, EmptyMap.INSTANCE, new TabRowKt$TabRowImpl$1$2$1$$ExternalSyntheticLambda0(arrayList3, arrayList4, arrayList5, ref$IntRef, intValue3));
                            }

                            @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
                            public final int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
                                ArrayList arrayList = (ArrayList) list;
                                ArrayList arrayList2 = new ArrayList(arrayList.size());
                                int size = arrayList.size();
                                for (int i3 = 0; i3 < size; i3++) {
                                    List list2 = (List) arrayList.get(i3);
                                    ArrayList arrayList3 = new ArrayList(list2.size());
                                    int size2 = list2.size();
                                    for (int i4 = 0; i4 < size2; i4++) {
                                        arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i4), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height, 0));
                                    }
                                    arrayList2.add(arrayList3);
                                }
                                return mo82measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(i2, 0, 13)).getHeight();
                            }

                            @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
                            public final int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i2) {
                                ArrayList arrayList = (ArrayList) list;
                                ArrayList arrayList2 = new ArrayList(arrayList.size());
                                int size = arrayList.size();
                                for (int i3 = 0; i3 < size; i3++) {
                                    List list2 = (List) arrayList.get(i3);
                                    ArrayList arrayList3 = new ArrayList(list2.size());
                                    int size2 = list2.size();
                                    for (int i4 = 0; i4 < size2; i4++) {
                                        arrayList3.add(new DefaultIntrinsicMeasurable((Measurable) list2.get(i4), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width, 0));
                                    }
                                    arrayList2.add(arrayList3);
                                }
                                return mo82measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList2, ConstraintsKt.Constraints$default(0, i2, 7)).getWidth();
                            }
                        };
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    MultiContentMeasurePolicy multiContentMeasurePolicy = (MultiContentMeasurePolicy) rememberedValue2;
                    ComposableLambdaImpl combineAsVirtualLayouts = RulerKt.combineAsVirtualLayouts(listOf);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new MultiContentMeasurePolicyImpl(multiContentMeasurePolicy);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue3;
                    long j = gapComposer2.compositeKeyHashCode;
                    int i2 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier = RangesKt.materializeModifier(gapComposer2, fillElement);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    Updater.m170setimpl(gapComposer2, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m170setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    Updater.m170setimpl(gapComposer2, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                    Updater.m169reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                    Updater.m170setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    combineAsVirtualLayouts.invoke((Object) gapComposer2, (Object) 0);
                    gapComposer2.end(true);
                    break;
                }
            case 4:
                ((Integer) obj2).getClass();
                UStringsKt.LibraryListItem((Modifier) obj5, (Library) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                Okio.LinkListItem((Modifier) obj5, (Link) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                NavDisplayKt.NavDisplay((Destination) obj5, (Function0) obj4, (Navigator) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                SettingsHomeScreenKt.SettingsHomeScreenContent((ArrayList) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ KoinApplicationKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, Function2 function2, ComposableLambdaImpl composableLambdaImpl2) {
        this.$r8$classId = 3;
        this.f$2 = composableLambdaImpl;
        this.f$0 = function2;
        this.f$1 = composableLambdaImpl2;
    }

    public /* synthetic */ KoinApplicationKt$$ExternalSyntheticLambda2(Object obj, Object obj2, Object obj3, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }

    public /* synthetic */ KoinApplicationKt$$ExternalSyntheticLambda2(Ref$FloatRef ref$FloatRef, ScrollingLogic scrollingLogic, ScrollingLogic$nestedScrollScope$1 scrollingLogic$nestedScrollScope$1) {
        this.$r8$classId = 1;
        this.f$0 = ref$FloatRef;
        this.f$1 = scrollingLogic;
        this.f$2 = scrollingLogic$nestedScrollScope$1;
    }
}
