package org.wikipedia.feed.personalization.interest;

import android.content.Context;
import android.text.TextUtils;
import androidx.compose.animation.AnimatedContentScopeImpl;
import androidx.compose.animation.CrossfadeKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridState;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda7;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda13;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.UtilsKt;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.ExceptionsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.text.UStringsKt;
import org.wikipedia.R;
import org.wikipedia.activitytab.ImpactModuleKt$$ExternalSyntheticLambda4;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.feed.ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0;
import org.wikipedia.page.tabs.Tab$$ExternalSyntheticLambda0;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda7;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class InterestSelectionScreenKt {
    public static final ComposableLambdaImpl lambda$121763788 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(27), false, 121763788);

    /* renamed from: lambda$-1975292867, reason: not valid java name */
    public static final ComposableLambdaImpl f45lambda$1975292867 = new ComposableLambdaImpl(new ComposableSingletons$ForYouContentTabKt$$ExternalSyntheticLambda0(5), false, -1975292867);
    public static final ComposableLambdaImpl lambda$1475803107 = new ComposableLambdaImpl(new AppBarKt$$ExternalSyntheticLambda7(28), false, 1475803107);

    public static final void InterestOnboardingScreen(final Modifier modifier, final ArticlesState articlesState, final ArrayList arrayList, int i, final String str, LazyStaggeredGridState lazyStaggeredGridState, final Function1 function1, final Function1 function12, final Function0 function0, Function0 function02, final Function0 function03, final Function0 function04, GapComposer gapComposer, final int i2) {
        GapComposer gapComposer2;
        final int i3;
        final Function0 function05;
        final LazyStaggeredGridState lazyStaggeredGridState2;
        int i4;
        LazyStaggeredGridState rememberLazyStaggeredGridState;
        GapComposer gapComposer3;
        boolean z;
        boolean z2;
        str.getClass();
        function1.getClass();
        function0.getClass();
        function02.getClass();
        function03.getClass();
        gapComposer.startRestartGroup(-1645754278);
        int i5 = i2 | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(articlesState) ? 32 : 16) | (gapComposer.changedInstance(arrayList) ? 256 : 128) | (gapComposer.changed(i) ? 2048 : 1024) | (gapComposer.changed(str) ? 16384 : 8192) | 65536 | (gapComposer.changedInstance(function1) ? 1048576 : 524288) | (gapComposer.changedInstance(function12) ? 8388608 : 4194304) | (gapComposer.changedInstance(function0) ? 67108864 : 33554432) | (gapComposer.changedInstance(function02) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i5 & 1, ((i5 & 306783379) == 306783378 && (((gapComposer.changedInstance(function03) ? (char) 4 : (char) 2) | (gapComposer.changedInstance(function04) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            gapComposer.startDefaults();
            if ((i2 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i4 = i5 & (-458753);
                rememberLazyStaggeredGridState = UStringsKt.rememberLazyStaggeredGridState(gapComposer);
            } else {
                gapComposer.skipToGroupEnd();
                i4 = i5 & (-458753);
                rememberLazyStaggeredGridState = lazyStaggeredGridState;
            }
            gapComposer.endDefaults();
            InfiniteTransition rememberInfiniteTransition = ArcSplineKt.rememberInfiniteTransition("shimmerTransition", gapComposer, 0);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            LazyStaggeredGridState lazyStaggeredGridState3 = rememberLazyStaggeredGridState;
            long j = gapComposer.compositeKeyHashCode;
            int i6 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            Integer valueOf = Integer.valueOf(i6);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            Updater.m327setimpl(gapComposer, valueOf, composeUiNode$Companion$SetModifier$13);
            OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
            Updater.m326reconcileimpl(gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j2 = gapComposer.compositeKeyHashCode;
            int i7 = (int) (j2 ^ (j2 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i7, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            Modifier m134paddingVpY3zN4$default = OffsetKt.m134paddingVpY3zN4$default(companion, 16.0f, RecyclerView.DECELERATION_RATE, 2);
            RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f5Start, Alignment.Companion.CenterVertically, gapComposer, 48);
            long j3 = gapComposer.compositeKeyHashCode;
            int i8 = (int) (j3 ^ (j3 >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer, m134paddingVpY3zN4$default);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$12);
            Animation.CC.m(i8, gapComposer, composeUiNode$Companion$SetModifier$13, gapComposer, ownerSnapshotObserver$onCommitAffectingLayout$1);
            Updater.m327setimpl(gapComposer, materializeModifier3, composeUiNode$Companion$SetModifier$14);
            if (function04 != null) {
                gapComposer.startReplaceGroup(1059699333);
                z = false;
                z2 = true;
                IconKt.m286Iconww6aTOc(UnsignedKt.painterResource(R.drawable.ic_arrow_back_black_24dp, 0, gapComposer), null, ImageKt.m51clickableoSLSa3U$default(15, companion, null, function04, false), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer, 56, 0);
                gapComposer3 = gapComposer;
                OffsetKt.Spacer(gapComposer3, SizeKt.m149width3ABfNKs(companion, 12.0f));
                gapComposer3.end(false);
            } else {
                gapComposer3 = gapComposer;
                z = false;
                z2 = true;
                gapComposer3.startReplaceGroup(1060132744);
                gapComposer3.end(false);
            }
            String stringResource = UtilsKt.stringResource(R.string.recommended_reading_list_interest_pick_title, gapComposer3);
            TextStyle m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer3.consume(TypographyKt.LocalTypography)).titleLarge, 0L, 0L, FontWeight.Medium, null, 0L, 0L, null, 16777211);
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
            GapComposer gapComposer4 = gapComposer3;
            TextKt.m308TextNvy7gAk(stringResource, null, ((WikipediaColor) gapComposer3.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer4, 0, 0, 131066);
            gapComposer2 = gapComposer4;
            gapComposer2.end(z2);
            OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 16.0f));
            boolean z3 = z2;
            Updater.CompositionLocalProvider(CompositionLocalsKt.LocalLayoutDirection.defaultProvidedValue$runtime(TextUtils.getLayoutDirectionFromLocale(new Locale(str)) == z2 ? LayoutDirection.Rtl : LayoutDirection.Ltr), Expect_jvmKt.rememberComposableLambda(-2018542058, new NavHostKt$$ExternalSyntheticLambda13(lazyStaggeredGridState3, function0, arrayList, str, function1, articlesState, modifier, function03, rememberInfiniteTransition, function12), gapComposer2), gapComposer2, 56);
            gapComposer2.end(z3);
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(BoxScopeInstance.INSTANCE.align(companion, Alignment.Companion.BottomStart), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).paperColor, ColorKt.RectangleShape);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new Tab$$ExternalSyntheticLambda0(8);
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            i3 = i;
            function05 = function02;
            SelectionBottomBar(i3, ((i4 >> 9) & 14) | ((i4 >> 21) & 896), gapComposer2, ImageKt.m51clickableoSLSa3U$default(14, m46backgroundbw27NRU, null, (Function0) rememberedValue, false), function05);
            gapComposer2.end(z3);
            lazyStaggeredGridState2 = lazyStaggeredGridState3;
        } else {
            gapComposer2 = gapComposer;
            i3 = i;
            function05 = function02;
            gapComposer2.skipToGroupEnd();
            lazyStaggeredGridState2 = lazyStaggeredGridState;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(articlesState, arrayList, i3, str, lazyStaggeredGridState2, function1, function12, function0, function05, function03, function04, i2) { // from class: org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$$ExternalSyntheticLambda8
                public final /* synthetic */ ArticlesState f$1;
                public final /* synthetic */ Function0 f$10;
                public final /* synthetic */ Function0 f$11;
                public final /* synthetic */ ArrayList f$2;
                public final /* synthetic */ int f$3;
                public final /* synthetic */ String f$4;
                public final /* synthetic */ LazyStaggeredGridState f$5;
                public final /* synthetic */ Function1 f$6;
                public final /* synthetic */ Function1 f$7;
                public final /* synthetic */ Function0 f$8;
                public final /* synthetic */ Function0 f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    InterestSelectionScreenKt.InterestOnboardingScreen(Modifier.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, this.f$8, this.f$9, this.f$10, this.f$11, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SelectionBottomBar(final int i, int i2, GapComposer gapComposer, Modifier modifier, final Function0 function0) {
        int i3;
        function0.getClass();
        gapComposer.startRestartGroup(1793065869);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer, 0);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) ((j >>> 32) ^ j);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m326reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            CardKt.m266HorizontalDivider9IZ8Weo(null, 0.5f, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).borderColor, gapComposer, 48, 1);
            CrossfadeKt.AnimatedContent(Boolean.valueOf(i > 0), null, null, null, null, null, Expect_jvmKt.rememberComposableLambda(2006915188, new Function4() { // from class: org.wikipedia.feed.personalization.interest.InterestSelectionScreenKt$$ExternalSyntheticLambda9
                @Override // kotlin.jvm.functions.Function4
                public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                    boolean booleanValue = ((Boolean) obj2).booleanValue();
                    GapComposer gapComposer2 = (GapComposer) obj3;
                    ((Integer) obj4).getClass();
                    Arrangement$End$1 arrangement$End$1 = OffsetKt.SpaceBetween;
                    BiasAlignment.Vertical vertical = Alignment.Companion.CenterVertically;
                    ((AnimatedContentScopeImpl) obj).getClass();
                    Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                    if (booleanValue) {
                        gapComposer2.startReplaceGroup(2065714479);
                        Modifier m133paddingVpY3zN4 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 14.0f);
                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer2, 54);
                        long j2 = gapComposer2.compositeKeyHashCode;
                        int i5 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m133paddingVpY3zN4);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer2, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                        String stringResource = UtilsKt.stringResource(R.string.multi_select_items_selected, new Object[]{Integer.valueOf(i)}, gapComposer2);
                        TextStyle textStyle = ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).labelLarge;
                        FontWeight fontWeight = FontWeight.Bold;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                        TextKt.m308TextNvy7gAk(stringResource, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(textStyle, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, 0L, fontWeight, null, 0L, 0L, null, 16777210), gapComposer2, 0, 0, 131070);
                        PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
                        CardKt.Button(function0, null, false, null, ButtonDefaults.m261filledTonalButtonColorsro_MJ88(((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).backgroundColor, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).secondaryColor, gapComposer2), null, null, null, InterestSelectionScreenKt.lambda$1475803107, gapComposer2, 805306368, 494);
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                    } else {
                        gapComposer2.startReplaceGroup(2067246561);
                        Modifier m133paddingVpY3zN42 = OffsetKt.m133paddingVpY3zN4(SizeKt.fillMaxWidth(companion, 1.0f), 16.0f, 14.0f);
                        RowMeasurePolicy rowMeasurePolicy2 = RowKt.rowMeasurePolicy(arrangement$End$1, vertical, gapComposer2, 54);
                        long j3 = gapComposer2.compositeKeyHashCode;
                        int i6 = (int) ((j3 >>> 32) ^ j3);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m133paddingVpY3zN42);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$13 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$13);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, rowMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                        Updater.m327setimpl(gapComposer2, Integer.valueOf(i6), ComposeUiNode.Companion.SetCompositeKeyHash);
                        Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                        Updater.m327setimpl(gapComposer2, materializeModifier3, ComposeUiNode.Companion.SetModifier);
                        TextKt.m308TextNvy7gAk(UtilsKt.stringResource(R.string.recommended_reading_list_interest_select_minimum, gapComposer2), null, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).labelLarge, gapComposer2, 0, 0, 131066);
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 1572864, 62);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ImpactModuleKt$$ExternalSyntheticLambda4(i, modifier, function0, i2);
        }
    }

    public static final void TopicFilterChipRow(ArrayList arrayList, Modifier modifier, String str, Function1 function1, GapComposer gapComposer, int i) {
        Modifier modifier2;
        str.getClass();
        function1.getClass();
        gapComposer.startRestartGroup(165195123);
        int i2 = i | (gapComposer.changedInstance(arrayList) ? 4 : 2) | 48 | (gapComposer.changed(str) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Context context = (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext);
            Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(8.0f, true, new EasingKt$$ExternalSyntheticLambda0(10));
            PaddingValuesImpl m125PaddingValuesYgX7TsA$default = OffsetKt.m125PaddingValuesYgX7TsA$default(2, 16.0f);
            boolean changedInstance = gapComposer.changedInstance(arrayList) | ((i2 & 7168) == 2048) | gapComposer.changedInstance(context) | ((i2 & 896) == 256);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda7(arrayList, function1, (Object) context, str, 10);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ExceptionsKt.LazyRow(companion, null, m125PaddingValuesYgX7TsA$default, arrangement$SpacedAligned, null, null, false, null, (Function1) rememberedValue, gapComposer, 24966, 490);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda1((Object) arrayList, (Object) modifier2, (Object) str, function1, i, 7);
        }
    }
}
