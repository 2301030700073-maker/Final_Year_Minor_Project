package org.wikipedia.games;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.lazy.LazyItemScopeImpl;
import androidx.compose.foundation.pager.PagerScopeImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.jsoup.Jsoup;
import org.wikipedia.feed.ForYouModule;
import org.wikipedia.feed.ForYouModulePagerKt$$ExternalSyntheticLambda4;
import org.wikipedia.games.onthisday.OnThisDayGameArchiveCalendarHelper;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda25 implements Function4 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Function1 f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda25(List list, Function1 function1, GamesHubViewModel gamesHubViewModel, OnThisDayGameArchiveCalendarHelper onThisDayGameArchiveCalendarHelper, MutableState mutableState) {
        this.f$0 = list;
        this.f$1 = function1;
        this.f$2 = gamesHubViewModel;
        this.f$3 = onThisDayGameArchiveCalendarHelper;
        this.f$4 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj5 = this.f$4;
        Object obj6 = this.f$3;
        Object obj7 = this.f$2;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                List list = (List) obj8;
                Object obj9 = (GamesHubViewModel) obj7;
                Object obj10 = (OnThisDayGameArchiveCalendarHelper) obj6;
                MutableState mutableState = (MutableState) obj5;
                int intValue = ((Integer) obj2).intValue();
                GapComposer gapComposer = (GapComposer) obj3;
                int intValue2 = ((Integer) obj4).intValue();
                ((LazyItemScopeImpl) obj).getClass();
                if ((intValue2 & 48) == 0) {
                    intValue2 |= gapComposer.changed(intValue) ? 32 : 16;
                }
                if (!gapComposer.shouldExecute(intValue2 & 1, (intValue2 & 145) != 144)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    String str = (String) list.get(intValue);
                    boolean areEqual = Intrinsics.areEqual(str, (String) mutableState.getValue());
                    boolean changed = gapComposer.changed(str);
                    Object obj11 = this.f$1;
                    boolean changed2 = changed | gapComposer.changed(obj11);
                    Object rememberedValue = gapComposer.rememberedValue();
                    Object obj12 = Composer$Companion.Empty;
                    if (changed2 || rememberedValue == obj12) {
                        rememberedValue = new GamesHubScreenKt$$ExternalSyntheticLambda8(18, str, obj11);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Function1 function1 = (Function1) rememberedValue;
                    boolean changed3 = gapComposer.changed(str) | gapComposer.changedInstance(obj9) | gapComposer.changedInstance(obj10);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changed3 || rememberedValue2 == obj12) {
                        Object gamesHubScreenKt$$ExternalSyntheticLambda28 = new GamesHubScreenKt$$ExternalSyntheticLambda28(str, obj9, obj10, mutableState, 0);
                        gapComposer.updateRememberedValue(gamesHubScreenKt$$ExternalSyntheticLambda28);
                        rememberedValue2 = gamesHubScreenKt$$ExternalSyntheticLambda28;
                    }
                    Jsoup.GamesHubLanguageChip(areEqual, str, function1, (Function0) rememberedValue2, gapComposer, 0);
                    break;
                }
            default:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj8;
                SnapshotStateMap snapshotStateMap = (SnapshotStateMap) obj7;
                ForYouModule forYouModule = (ForYouModule) obj6;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj5;
                Integer num = (Integer) obj2;
                int intValue3 = num.intValue();
                GapComposer gapComposer2 = (GapComposer) obj3;
                int intValue4 = ((Integer) obj4).intValue();
                ((PagerScopeImpl) obj).getClass();
                Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(Modifier.Companion.$$INSTANCE, new ForYouModulePagerKt$$ExternalSyntheticLambda4(ref$ObjectRef, snapshotStateMap, intValue3, this.f$1, forYouModule, 0));
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j = gapComposer2.compositeKeyHashCode;
                int i2 = (int) ((j >>> 32) ^ j);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, onGloballyPositioned);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i2), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                composableLambdaImpl.invoke(num, gapComposer2, Integer.valueOf((intValue4 >> 3) & 14));
                gapComposer2.end(true);
                break;
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda25(Ref$ObjectRef ref$ObjectRef, SnapshotStateMap snapshotStateMap, Function1 function1, ForYouModule forYouModule, ComposableLambdaImpl composableLambdaImpl) {
        this.f$0 = ref$ObjectRef;
        this.f$2 = snapshotStateMap;
        this.f$1 = function1;
        this.f$3 = forYouModule;
        this.f$4 = composableLambdaImpl;
    }
}
