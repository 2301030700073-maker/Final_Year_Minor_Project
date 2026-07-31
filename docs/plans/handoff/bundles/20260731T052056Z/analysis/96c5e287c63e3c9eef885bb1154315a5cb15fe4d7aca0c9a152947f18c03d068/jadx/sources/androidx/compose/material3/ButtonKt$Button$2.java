package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.AppendedSemanticsElement;
import androidx.compose.ui.text.TextStyle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.compose.ComposeNavigator;
import androidx.navigation.compose.DialogNavigator;
import androidx.work.Operation$State;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt$$ExternalSyntheticLambda0;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ButtonKt$Button$2 implements Function2 {
    public final /* synthetic */ Function $content;
    public final /* synthetic */ long $contentColor;
    public final /* synthetic */ Object $contentPadding;
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ ButtonKt$Button$2(long j, Object obj, Function function, int i) {
        this.$r8$classId = i;
        this.$contentColor = j;
        this.$contentPadding = obj;
        this.$content = function;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.$content;
        Object obj3 = this.$contentPadding;
        Object[] objArr = 0;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Number) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    LayoutUtilKt.m317ProvideContentColorTextStyle3JVO9M(this.$contentColor, ((Typography) gapComposer.consume(TypographyKt.LocalTypography)).labelLarge, Expect_jvmKt.rememberComposableLambda(417635459, new AnonymousClass1(objArr == true ? 1 : 0, (PaddingValues) obj3, (Function3) function), gapComposer), gapComposer, 384);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Number) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    LayoutUtilKt.m315Decoration3JVO9M(this.$contentColor, (TextStyle) obj3, (Function2) function, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.compose.material3.ButtonKt$Button$2$1, reason: invalid class name */
    public final class AnonymousClass1 implements Function2 {
        public final /* synthetic */ Object $content;
        public final /* synthetic */ Object $contentPadding;
        public final /* synthetic */ int $r8$classId;

        public AnonymousClass1(Function3 function3, TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1 textFieldImplKt$CommonDecorationBox$3$labelScope$1$1) {
            this.$r8$classId = 7;
            this.$content = function3;
            this.$contentPadding = textFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            int i = this.$r8$classId;
            NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Unit unit = Unit.INSTANCE;
            Object obj3 = this.$content;
            Object obj4 = this.$contentPadding;
            switch (i) {
                case 0:
                    GapComposer gapComposer = (GapComposer) obj;
                    int intValue = ((Number) obj2).intValue();
                    if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        gapComposer.skipToGroupEnd();
                        break;
                    } else {
                        Modifier padding = OffsetKt.padding(SizeKt.m138defaultMinSizeVpY3zN4(companion, ButtonDefaults.MinWidth, ButtonDefaults.MinHeight), (PaddingValues) obj4);
                        Function3 function3 = (Function3) obj3;
                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.Center, Alignment.Companion.CenterVertically, gapComposer, 54);
                        int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, padding);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer.startReusableNode();
                        if (gapComposer.inserting) {
                            gapComposer.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer.useNode();
                        }
                        Updater.m327setimpl(gapComposer, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
                        }
                        Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                        function3.invoke(RowScopeInstance.INSTANCE, gapComposer, 6);
                        gapComposer.end(true);
                        break;
                    }
                    break;
                case 1:
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue2 = ((Number) obj2).intValue();
                    if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                        gapComposer2.skipToGroupEnd();
                        break;
                    } else {
                        Modifier then = OffsetKt.padding(companion, AlertDialogKt.TitlePadding).then(new HorizontalAlignElement(((Function2) obj4) == null ? Alignment.Companion.Start : Alignment.Companion.CenterHorizontally));
                        Function2 function2 = (Function2) obj3;
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, then);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$12);
                        }
                        Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                        function2.invoke(gapComposer2, 0);
                        gapComposer2.end(true);
                        break;
                    }
                    break;
                case 2:
                    GapComposer gapComposer3 = (GapComposer) obj;
                    int intValue3 = ((Number) obj2).intValue();
                    if (!gapComposer3.shouldExecute(intValue3 & 1, (intValue3 & 3) != 2)) {
                        gapComposer3.skipToGroupEnd();
                        break;
                    } else {
                        CardKt.m269ProvideTextStyleFromToken3JVO9M(((ListItemColors) obj4).headlineColor, ListTokens.ListItemLabelTextFont, (ComposableLambdaImpl) obj3, gapComposer3, 48);
                        break;
                    }
                case 3:
                    GapComposer gapComposer4 = (GapComposer) obj;
                    int intValue4 = ((Number) obj2).intValue();
                    if (!gapComposer4.shouldExecute(intValue4 & 1, (intValue4 & 3) != 2)) {
                        gapComposer4.skipToGroupEnd();
                        break;
                    } else {
                        ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                        ScaffoldKt$ScaffoldLayout$contentPadding$1$1 scaffoldKt$ScaffoldLayout$contentPadding$1$1 = (ScaffoldKt$ScaffoldLayout$contentPadding$1$1) obj3;
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        int currentCompositeKeyHash3 = Updater.getCurrentCompositeKeyHash(gapComposer4);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer4.currentCompositionLocalScope();
                        Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer4, companion);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                        gapComposer4.startReusableNode();
                        if (gapComposer4.inserting) {
                            gapComposer4.createNode(layoutNode$Companion$Constructor$13);
                        } else {
                            gapComposer4.useNode();
                        }
                        Updater.m327setimpl(gapComposer4, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer4, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer4.inserting || !Intrinsics.areEqual(gapComposer4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                            Modifier.CC.m(currentCompositeKeyHash3, gapComposer4, currentCompositeKeyHash3, composeUiNode$Companion$SetModifier$13);
                        }
                        Updater.m327setimpl(gapComposer4, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                        composableLambdaImpl.invoke((Object) scaffoldKt$ScaffoldLayout$contentPadding$1$1, (Object) gapComposer4, (Object) 6);
                        gapComposer4.end(true);
                        break;
                    }
                    break;
                case 4:
                    GapComposer gapComposer5 = (GapComposer) obj;
                    int intValue5 = ((Number) obj2).intValue();
                    if (!gapComposer5.shouldExecute(intValue5 & 1, (intValue5 & 3) != 2)) {
                        gapComposer5.skipToGroupEnd();
                        break;
                    } else {
                        SnackbarHostState.SnackbarDataImpl snackbarDataImpl = (SnackbarHostState.SnackbarDataImpl) obj3;
                        snackbarDataImpl.getClass();
                        ((ComposableLambdaImpl) obj4).invoke((Object) snackbarDataImpl, (Object) gapComposer5, (Object) 0);
                        break;
                    }
                case 5:
                    GapComposer gapComposer6 = (GapComposer) obj;
                    int intValue6 = ((Number) obj2).intValue();
                    if (!gapComposer6.shouldExecute(intValue6 & 1, (intValue6 & 3) != 2)) {
                        gapComposer6.skipToGroupEnd();
                        break;
                    } else {
                        MutableState mutableState = (MutableState) obj4;
                        Object rememberedValue = gapComposer6.rememberedValue();
                        if (rememberedValue == neverEqualPolicy) {
                            rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda2(mutableState, 9);
                            gapComposer6.updateRememberedValue(rememberedValue);
                        }
                        Modifier onGloballyPositioned = RulerKt.onGloballyPositioned(companion, (Function1) rememberedValue);
                        ComposableLambdaImpl composableLambdaImpl2 = (ComposableLambdaImpl) obj3;
                        MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        int currentCompositeKeyHash4 = Updater.getCurrentCompositeKeyHash(gapComposer6);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer6.currentCompositionLocalScope();
                        Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer6, onGloballyPositioned);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$14 = ComposeUiNode.Companion.Constructor;
                        gapComposer6.startReusableNode();
                        if (gapComposer6.inserting) {
                            gapComposer6.createNode(layoutNode$Companion$Constructor$14);
                        } else {
                            gapComposer6.useNode();
                        }
                        Updater.m327setimpl(gapComposer6, maybeCachedBoxMeasurePolicy3, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer6, currentCompositionLocalScope4, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer6.inserting || !Intrinsics.areEqual(gapComposer6.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                            Modifier.CC.m(currentCompositeKeyHash4, gapComposer6, currentCompositeKeyHash4, composeUiNode$Companion$SetModifier$14);
                        }
                        Updater.m327setimpl(gapComposer6, materializeModifier4, ComposeUiNode.Companion.SetModifier);
                        composableLambdaImpl2.invoke((Object) gapComposer6, (Object) 0);
                        gapComposer6.end(true);
                        break;
                    }
                    break;
                case 6:
                    GapComposer gapComposer7 = (GapComposer) obj;
                    int intValue7 = ((Number) obj2).intValue();
                    String str = (String) obj4;
                    if (!gapComposer7.shouldExecute(intValue7 & 1, (intValue7 & 3) != 2)) {
                        gapComposer7.skipToGroupEnd();
                        break;
                    } else {
                        boolean changed = gapComposer7.changed(str);
                        Object rememberedValue2 = gapComposer7.rememberedValue();
                        if (changed || rememberedValue2 == neverEqualPolicy) {
                            rememberedValue2 = new StringsKt__IndentKt$$ExternalSyntheticLambda0(4, str);
                            gapComposer7.updateRememberedValue(rememberedValue2);
                        }
                        AppendedSemanticsElement appendedSemanticsElement = new AppendedSemanticsElement((Function1) rememberedValue2, false);
                        ComposableLambdaImpl composableLambdaImpl3 = (ComposableLambdaImpl) obj3;
                        MeasurePolicy maybeCachedBoxMeasurePolicy4 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        int currentCompositeKeyHash5 = Updater.getCurrentCompositeKeyHash(gapComposer7);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer7.currentCompositionLocalScope();
                        Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer7, appendedSemanticsElement);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$15 = ComposeUiNode.Companion.Constructor;
                        gapComposer7.startReusableNode();
                        if (gapComposer7.inserting) {
                            gapComposer7.createNode(layoutNode$Companion$Constructor$15);
                        } else {
                            gapComposer7.useNode();
                        }
                        Updater.m327setimpl(gapComposer7, maybeCachedBoxMeasurePolicy4, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer7, currentCompositionLocalScope5, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer7.inserting || !Intrinsics.areEqual(gapComposer7.rememberedValue(), Integer.valueOf(currentCompositeKeyHash5))) {
                            Modifier.CC.m(currentCompositeKeyHash5, gapComposer7, currentCompositeKeyHash5, composeUiNode$Companion$SetModifier$15);
                        }
                        Updater.m327setimpl(gapComposer7, materializeModifier5, ComposeUiNode.Companion.SetModifier);
                        composableLambdaImpl3.invoke((Object) gapComposer7, (Object) 0);
                        gapComposer7.end(true);
                        break;
                    }
                    break;
                case 7:
                    GapComposer gapComposer8 = (GapComposer) obj;
                    int intValue8 = ((Number) obj2).intValue();
                    if (!gapComposer8.shouldExecute(intValue8 & 1, (intValue8 & 3) != 2)) {
                        gapComposer8.skipToGroupEnd();
                        break;
                    } else {
                        ((Function3) obj3).invoke((TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1) obj4, gapComposer8, 6);
                        break;
                    }
                case 8:
                    GapComposer gapComposer9 = (GapComposer) obj;
                    if ((((Number) obj2).intValue() & 3) != 2 || !gapComposer9.getSkipping()) {
                        ((DialogNavigator.Destination) obj4).content.invoke(obj3, (Object) gapComposer9, (Object) 0);
                        break;
                    } else {
                        gapComposer9.skipToGroupEnd();
                        break;
                    }
                    break;
                case 9:
                    GapComposer gapComposer10 = (GapComposer) obj;
                    if ((((Number) obj2).intValue() & 3) != 2 || !gapComposer10.getSkipping()) {
                        Operation$State.SaveableStateProvider((SaveableStateHolder) obj4, (ComposableLambdaImpl) obj3, gapComposer10, 0);
                        break;
                    } else {
                        gapComposer10.skipToGroupEnd();
                        break;
                    }
                default:
                    GapComposer gapComposer11 = (GapComposer) obj;
                    NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj4;
                    if ((((Number) obj2).intValue() & 3) != 2 || !gapComposer11.getSkipping()) {
                        NavDestination navDestination = navBackStackEntry.destination;
                        navDestination.getClass();
                        ((ComposeNavigator.Destination) navDestination).content.invoke(obj3, (Object) navBackStackEntry, (Object) gapComposer11, (Object) 0);
                        break;
                    } else {
                        gapComposer11.skipToGroupEnd();
                        break;
                    }
                    break;
            }
            return unit;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.$contentPadding = obj;
            this.$content = obj2;
        }
    }
}
