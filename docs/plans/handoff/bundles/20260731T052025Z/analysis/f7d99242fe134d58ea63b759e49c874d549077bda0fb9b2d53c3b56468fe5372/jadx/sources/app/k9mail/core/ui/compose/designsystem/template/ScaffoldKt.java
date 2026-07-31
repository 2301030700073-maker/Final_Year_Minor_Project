package app.k9mail.core.ui.compose.designsystem.template;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.unit.Density;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.work.OperationKt;
import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver;
import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlin.text.StringsKt__IndentKt;
import net.thunderbird.core.ui.common.window.WindowHeightSizeClass;
import net.thunderbird.core.ui.compose.theme2.ThemeElevations;
import net.thunderbird.core.ui.compose.theme2.ThemeElevationsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ScaffoldKt {

    /* renamed from: lambda$-1338710573, reason: not valid java name */
    public static final ComposableLambdaImpl f21lambda$1338710573 = new ComposableLambdaImpl(-1338710573, new ReleaseConfigKt$$ExternalSyntheticLambda0(13), false);

    /* renamed from: lambda$-938015037, reason: not valid java name */
    public static final ComposableLambdaImpl f22lambda$938015037 = new ComposableLambdaImpl(-938015037, new ReleaseConfigKt$$ExternalSyntheticLambda0(14), false);
    public static final ComposableLambdaImpl lambda$462738596 = new ComposableLambdaImpl(462738596, new ReleaseConfigKt$$ExternalSyntheticLambda0(15), false);
    public static final ComposableLambdaImpl lambda$571120867 = new ComposableLambdaImpl(571120867, new ReleaseConfigKt$$ExternalSyntheticLambda0(16), false);

    public static final void CompactContent(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1122185718);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier then = SizeKt.FillWholeMaxSize.then(modifier);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(StringsKt__IndentKt.calculateResponsiveWidthPadding(gapComposer), gapComposer, Integer.valueOf(i2 & 112));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda1(modifier, composableLambdaImpl, i, i3);
        }
    }

    public static final void ExpandedContent(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(673837244);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        int i3 = 7;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            int ordinal = Jsoup.calculateWindowSizeInfo(gapComposer).sizeClass.heightSizeClass.ordinal();
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(-982462019);
                CompactContent(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.end(false);
            } else if (ordinal == 1) {
                gapComposer.startReplaceGroup(-982459588);
                MediumContent(modifier, composableLambdaImpl, gapComposer, i2 & 126);
                gapComposer.end(false);
            } else if (ordinal == 2) {
                gapComposer.startReplaceGroup(-391390904);
                Modifier then = SizeKt.FillWholeMaxSize.then(modifier);
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopCenter, false);
                long j = gapComposer.compositeKeyHashCode;
                int i4 = (int) ((j >>> 32) ^ j);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                ((ThemeElevations) gapComposer.consume(ThemeElevationsKt.LocalThemeElevations)).getClass();
                MathKt.m983Surface_UMDTes(null, null, 0L, 0L, 1.0f, Expect_jvmKt.rememberComposableLambda(-642952519, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, 6), gapComposer), gapComposer, 196608, 15);
                gapComposer.end(true);
                gapComposer.end(false);
            } else {
                if (ordinal != 3) {
                    throw ViewSizeResolver.CC.m(gapComposer, -982463664, false);
                }
                gapComposer.startReplaceGroup(-390932879);
                Modifier then2 = SizeKt.FillWholeMaxSize.then(modifier);
                MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
                long j2 = gapComposer.compositeKeyHashCode;
                int i5 = (int) ((j2 >>> 32) ^ j2);
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, then2);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                gapComposer.startReusableNode();
                if (gapComposer.inserting) {
                    gapComposer.createNode(layoutNode$Companion$Constructor$12);
                } else {
                    gapComposer.useNode();
                }
                Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m380setimpl(gapComposer, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m380setimpl(gapComposer, materializeModifier2, ComposeUiNode.Companion.SetModifier);
                WindowHeightSizeClass.Companion.getClass();
                Modifier m229requiredHeight3ABfNKs = SizeKt.m229requiredHeight3ABfNKs(WindowHeightSizeClass.BREAKPOINT_MEDIUM);
                ((ThemeElevations) gapComposer.consume(ThemeElevationsKt.LocalThemeElevations)).getClass();
                MathKt.m983Surface_UMDTes(m229requiredHeight3ABfNKs, null, 0L, 0L, 1.0f, Expect_jvmKt.rememberComposableLambda(-1536887430, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, i3), gapComposer), gapComposer, 196608, 14);
                gapComposer.end(true);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda1(modifier, composableLambdaImpl, i, 7);
        }
    }

    public static final void LazyColumnWithHeaderFooter(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, final Arrangement$Vertical arrangement$Vertical, Alignment.Horizontal horizontal, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Function1 function1, Composer composer, int i) {
        Modifier modifier2;
        int i2;
        GapComposer gapComposer;
        LazyListState lazyListState2;
        Alignment.Horizontal horizontal2;
        int i3;
        LazyListState rememberLazyListState;
        Alignment.Horizontal horizontal3;
        function1.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-876789258);
        if ((i & 6) == 0) {
            modifier2 = modifier;
            i2 = (gapComposer2.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(paddingValues) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(arrangement$Vertical) ? 2048 : 1024;
        }
        int i4 = i2 | 24576;
        if ((196608 & i) == 0) {
            i4 |= gapComposer2.changedInstance(composableLambdaImpl) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i4 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i4 |= gapComposer2.changedInstance(function1) ? 8388608 : 4194304;
        }
        if (gapComposer2.shouldExecute(i4 & 1, (4793491 & i4) != 4793490)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                i3 = i4 & (-113);
                rememberLazyListState = LazyListStateKt.rememberLazyListState(gapComposer2);
                horizontal3 = Alignment.Companion.Start;
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i4 & (-113);
                rememberLazyListState = lazyListState;
                horizontal3 = horizontal;
            }
            gapComposer2.endDefaults();
            Object rememberedValue = gapComposer2.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new Arrangement$Vertical() { // from class: app.k9mail.core.ui.compose.designsystem.template.LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1
                    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
                    public final void arrange(Density density, int i5, int[] iArr, int[] iArr2) {
                        density.getClass();
                        if (iArr.length == 0) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Array is empty.");
                            return;
                        }
                        int i6 = iArr[0];
                        if (iArr.length == 0) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Array is empty.");
                            return;
                        }
                        int i7 = iArr[iArr.length - 1];
                        int length = iArr.length - 1;
                        OperationKt.copyOfRangeToIndexCheck(length, iArr.length);
                        int[] copyOfRange = Arrays.copyOfRange(iArr, 1, length);
                        copyOfRange.getClass();
                        int length2 = iArr2.length - 1;
                        OperationKt.copyOfRangeToIndexCheck(length2, iArr2.length);
                        int[] copyOfRange2 = Arrays.copyOfRange(iArr2, 1, length2);
                        copyOfRange2.getClass();
                        Arrangement$Vertical.this.arrange(density, i5 - (i6 + i7), copyOfRange, copyOfRange2);
                        int i8 = 0;
                        for (int i9 : copyOfRange2) {
                            i8++;
                            iArr2[i8] = i9 + i6;
                        }
                        iArr2[0] = 0;
                        iArr2[iArr2.length - 1] = i5 - i7;
                    }

                    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
                    /* renamed from: getSpacing-D9Ej5fM */
                    public final /* bridge */ float mo200getSpacingD9Ej5fM() {
                        return 0.0f;
                    }
                };
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1 lazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1 = (LazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1) rememberedValue;
            boolean z = ((i3 & 458752) == 131072) | ((29360128 & i3) == 8388608) | ((3670016 & i3) == 1048576);
            Object rememberedValue2 = gapComposer2.rememberedValue();
            if (z || rememberedValue2 == neverEqualPolicy) {
                rememberedValue2 = new SimpleActor$$ExternalSyntheticLambda0(function1, composableLambdaImpl, composableLambdaImpl2, 24);
                gapComposer2.updateRememberedValue(rememberedValue2);
            }
            gapComposer = gapComposer2;
            ActionBar.LazyColumn((i3 & 1022) | ((i3 << 3) & 458752), 456, null, null, lazyColumnWithHeaderFooterKt$verticalArrangementWithHeaderFooter$1$1, paddingValues, rememberLazyListState, gapComposer, horizontal3, modifier2, (Function1) rememberedValue2, false);
            lazyListState2 = rememberLazyListState;
            horizontal2 = horizontal3;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            lazyListState2 = lazyListState;
            horizontal2 = horizontal;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LazyColumnWithHeaderFooterKt$$ExternalSyntheticLambda1(modifier, lazyListState2, paddingValues, arrangement$Vertical, horizontal2, composableLambdaImpl, composableLambdaImpl2, function1, i);
        }
    }

    public static final void MediumContent(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(382690040);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            Modifier then = SizeKt.FillWholeMaxSize.then(modifier);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopCenter, false);
            long j = gapComposer.compositeKeyHashCode;
            int i3 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(StringsKt__IndentKt.calculateResponsiveWidthPadding(gapComposer), gapComposer, Integer.valueOf(i2 & 112));
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda1(modifier, composableLambdaImpl, i, 6);
        }
    }

    public static final void ResponsiveContent(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        int i3;
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(694808887);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            modifier2 = i4 != 0 ? Modifier.Companion.$$INSTANCE : modifier;
            int ordinal = Jsoup.calculateWindowSizeInfo(gapComposer).sizeClass.widthSizeClass.ordinal();
            if (ordinal == 0) {
                gapComposer.startReplaceGroup(1991417741);
                CompactContent(modifier2, composableLambdaImpl, gapComposer, i3 & 126);
                gapComposer.end(false);
            } else if (ordinal == 1) {
                gapComposer.startReplaceGroup(1991420781);
                CompactContent(modifier2, composableLambdaImpl, gapComposer, i3 & 126);
                gapComposer.end(false);
            } else if (ordinal == 2) {
                gapComposer.startReplaceGroup(1991423788);
                MediumContent(modifier2, composableLambdaImpl, gapComposer, i3 & 126);
                gapComposer.end(false);
            } else {
                if (ordinal != 3) {
                    throw ViewSizeResolver.CC.m(gapComposer, 1991415335, false);
                }
                gapComposer.startReplaceGroup(1991426830);
                ExpandedContent(modifier2, composableLambdaImpl, gapComposer, i3 & 126);
                gapComposer.end(false);
            }
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda0(modifier2, composableLambdaImpl, i, i2, 0);
        }
    }

    public static final void ResponsiveWidthContainer(Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-598477271);
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            i3 = i | (gapComposer.changed(modifier) ? 4 : 2);
        } else {
            i3 = i;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 19) != 18)) {
            if (i4 != 0) {
                modifier = Modifier.Companion.$$INSTANCE;
            }
            Modifier then = SizeKt.FillWholeMaxWidth.then(modifier);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopCenter, false);
            long j = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i5), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke(StringsKt__IndentKt.calculateResponsiveWidthPadding(gapComposer), (Object) gapComposer, (Object) 48);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        Modifier modifier2 = modifier;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ResponsiveContentKt$$ExternalSyntheticLambda0(modifier2, composableLambdaImpl, i, i2, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Scaffold(androidx.compose.ui.Modifier r24, kotlin.jvm.functions.Function2 r25, kotlin.jvm.functions.Function2 r26, kotlin.jvm.functions.Function2 r27, kotlin.jvm.functions.Function2 r28, app.k9mail.core.ui.compose.designsystem.template.ScaffoldFabPosition r29, androidx.compose.runtime.internal.ComposableLambdaImpl r30, androidx.compose.runtime.Composer r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.template.ScaffoldKt.Scaffold(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, app.k9mail.core.ui.compose.designsystem.template.ScaffoldFabPosition, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.Composer, int, int):void");
    }
}
