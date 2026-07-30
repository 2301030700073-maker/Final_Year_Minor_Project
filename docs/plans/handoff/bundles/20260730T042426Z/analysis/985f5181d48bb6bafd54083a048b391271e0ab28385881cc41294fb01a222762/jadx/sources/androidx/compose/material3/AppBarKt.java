package androidx.compose.material3;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: AppBar.kt */
/* loaded from: classes.dex */
public abstract class AppBarKt {
    private static final float BottomAppBarHorizontalPadding;
    private static final float BottomAppBarVerticalPadding;
    private static final float FABHorizontalPadding;
    private static final float FABVerticalPadding;
    private static final float LargeTitleBottomPadding;
    private static final float MediumTitleBottomPadding;
    private static final float TopAppBarHorizontalPadding;
    private static final float TopAppBarTitleInset;
    private static final CubicBezierEasing TopTitleAlphaEasing;

    private static final long SingleRowTopAppBar_cJHQLPU$lambda$10(State state) {
        return ((Color) state.getValue()).m1312unboximpl();
    }

    private static final float SingleRowTopAppBar_cJHQLPU$lambda$9(State state) {
        return ((Number) state.getValue()).floatValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00db  */
    /* renamed from: TopAppBar-GHTll3U, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m607TopAppBarGHTll3U(final kotlin.jvm.functions.Function2 r24, androidx.compose.ui.Modifier r25, kotlin.jvm.functions.Function2 r26, kotlin.jvm.functions.Function3 r27, float r28, androidx.compose.foundation.layout.WindowInsets r29, androidx.compose.material3.TopAppBarColors r30, androidx.compose.material3.TopAppBarScrollBehavior r31, androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.m607TopAppBarGHTll3U(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, float, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:102:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0153  */
    /* renamed from: SingleRowTopAppBar-cJHQLPU, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m606SingleRowTopAppBarcJHQLPU(androidx.compose.ui.Modifier r33, final kotlin.jvm.functions.Function2 r34, final androidx.compose.ui.text.TextStyle r35, final boolean r36, final kotlin.jvm.functions.Function2 r37, final kotlin.jvm.functions.Function3 r38, final float r39, final androidx.compose.foundation.layout.WindowInsets r40, final androidx.compose.material3.TopAppBarColors r41, final androidx.compose.material3.TopAppBarScrollBehavior r42, androidx.compose.runtime.Composer r43, final int r44, final int r45) {
        /*
            Method dump skipped, instructions count: 740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.m606SingleRowTopAppBarcJHQLPU(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, androidx.compose.ui.text.TextStyle, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, float, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TopAppBarLayout-kXwM9vE, reason: not valid java name */
    public static final void m608TopAppBarLayoutkXwM9vE(final Modifier modifier, final ScrolledOffset scrolledOffset, final long j, final long j2, final long j3, final Function2 function2, final TextStyle textStyle, final float f, final Arrangement.Vertical vertical, final Arrangement.Horizontal horizontal, final int i, final boolean z, final Function2 function22, final Function2 function23, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Composer startRestartGroup = composer.startRestartGroup(-742442296);
        if ((i2 & 6) == 0) {
            i4 = (startRestartGroup.changed(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= (i2 & 64) == 0 ? startRestartGroup.changed(scrolledOffset) : startRestartGroup.changedInstance(scrolledOffset) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= startRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= startRestartGroup.changed(j2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= startRestartGroup.changed(j3) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= startRestartGroup.changedInstance(function2) ? PKIFailureInfo.unsupportedVersion : PKIFailureInfo.notAuthorized;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= startRestartGroup.changed(textStyle) ? PKIFailureInfo.badCertTemplate : PKIFailureInfo.signerNotTrusted;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= startRestartGroup.changed(f) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= startRestartGroup.changed(vertical) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i4 |= startRestartGroup.changed(horizontal) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = (startRestartGroup.changed(i) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i3 & 384) == 0) {
            i5 |= startRestartGroup.changedInstance(function22) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= startRestartGroup.changedInstance(function23) ? 2048 : 1024;
        }
        if ((306783379 & i4) == 306783378 && (i5 & 1171) == 1170 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-742442296, i4, i5, "androidx.compose.material3.TopAppBarLayout (AppBar.kt:2134)");
            }
            boolean z2 = ((i4 & 112) == 32 || ((i4 & 64) != 0 && startRestartGroup.changedInstance(scrolledOffset))) | ((1879048192 & i4) == 536870912) | ((234881024 & i4) == 67108864) | ((i5 & 14) == 4);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z2 || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new MeasurePolicy() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$2$1
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i6) {
                        return MeasurePolicy.CC.$default$maxIntrinsicHeight(this, intrinsicMeasureScope, list, i6);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i6) {
                        return MeasurePolicy.CC.$default$maxIntrinsicWidth(this, intrinsicMeasureScope, list, i6);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i6) {
                        return MeasurePolicy.CC.$default$minIntrinsicHeight(this, intrinsicMeasureScope, list, i6);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i6) {
                        return MeasurePolicy.CC.$default$minIntrinsicWidth(this, intrinsicMeasureScope, list, i6);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* renamed from: measure-3p2s80s */
                    public final MeasureResult mo21measure3p2s80s(final MeasureScope measureScope, List list, final long j4) {
                        int coerceAtLeast;
                        int m2396getMaxHeightimpl;
                        int size = list.size();
                        for (int i6 = 0; i6 < size; i6++) {
                            Measurable measurable = (Measurable) list.get(i6);
                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), "navigationIcon")) {
                                final Placeable mo1751measureBRTryo0 = measurable.mo1751measureBRTryo0(Constraints.m2389copyZbe2FdA$default(j4, 0, 0, 0, 0, 14, null));
                                int size2 = list.size();
                                for (int i7 = 0; i7 < size2; i7++) {
                                    Measurable measurable2 = (Measurable) list.get(i7);
                                    if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), "actionIcons")) {
                                        final Placeable mo1751measureBRTryo02 = measurable2.mo1751measureBRTryo0(Constraints.m2389copyZbe2FdA$default(j4, 0, 0, 0, 0, 14, null));
                                        if (Constraints.m2397getMaxWidthimpl(j4) == Integer.MAX_VALUE) {
                                            coerceAtLeast = Constraints.m2397getMaxWidthimpl(j4);
                                        } else {
                                            coerceAtLeast = RangesKt.coerceAtLeast((Constraints.m2397getMaxWidthimpl(j4) - mo1751measureBRTryo0.getWidth()) - mo1751measureBRTryo02.getWidth(), 0);
                                        }
                                        int i8 = coerceAtLeast;
                                        int size3 = list.size();
                                        for (int i9 = 0; i9 < size3; i9++) {
                                            Measurable measurable3 = (Measurable) list.get(i9);
                                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable3), "title")) {
                                                final Placeable mo1751measureBRTryo03 = measurable3.mo1751measureBRTryo0(Constraints.m2389copyZbe2FdA$default(j4, 0, i8, 0, 0, 12, null));
                                                final int i10 = mo1751measureBRTryo03.get(AlignmentLineKt.getLastBaseline()) != Integer.MIN_VALUE ? mo1751measureBRTryo03.get(AlignmentLineKt.getLastBaseline()) : 0;
                                                float offset = ScrolledOffset.this.offset();
                                                int roundToInt = Float.isNaN(offset) ? 0 : MathKt.roundToInt(offset);
                                                if (Constraints.m2396getMaxHeightimpl(j4) == Integer.MAX_VALUE) {
                                                    m2396getMaxHeightimpl = Constraints.m2396getMaxHeightimpl(j4);
                                                } else {
                                                    m2396getMaxHeightimpl = Constraints.m2396getMaxHeightimpl(j4) + roundToInt;
                                                }
                                                final int i11 = m2396getMaxHeightimpl;
                                                int m2397getMaxWidthimpl = Constraints.m2397getMaxWidthimpl(j4);
                                                final Arrangement.Horizontal horizontal2 = horizontal;
                                                final Arrangement.Vertical vertical2 = vertical;
                                                final int i12 = i;
                                                return MeasureScope.CC.layout$default(measureScope, m2397getMaxWidthimpl, i11, null, new Function1() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$2$1.1
                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                                        invoke((Placeable.PlacementScope) obj);
                                                        return Unit.INSTANCE;
                                                    }

                                                    public final void invoke(Placeable.PlacementScope placementScope) {
                                                        float f2;
                                                        int max;
                                                        int i13;
                                                        int height;
                                                        int m2397getMaxWidthimpl2;
                                                        Placeable placeable = Placeable.this;
                                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, (i11 - placeable.getHeight()) / 2, 0.0f, 4, null);
                                                        Placeable placeable2 = mo1751measureBRTryo03;
                                                        Arrangement.Horizontal horizontal3 = horizontal2;
                                                        Arrangement arrangement = Arrangement.INSTANCE;
                                                        if (Intrinsics.areEqual(horizontal3, arrangement.getCenter())) {
                                                            max = (Constraints.m2397getMaxWidthimpl(j4) - mo1751measureBRTryo03.getWidth()) / 2;
                                                            if (max < Placeable.this.getWidth()) {
                                                                m2397getMaxWidthimpl2 = Placeable.this.getWidth() - max;
                                                            } else if (mo1751measureBRTryo03.getWidth() + max > Constraints.m2397getMaxWidthimpl(j4) - mo1751measureBRTryo02.getWidth()) {
                                                                m2397getMaxWidthimpl2 = (Constraints.m2397getMaxWidthimpl(j4) - mo1751measureBRTryo02.getWidth()) - (mo1751measureBRTryo03.getWidth() + max);
                                                            }
                                                            max += m2397getMaxWidthimpl2;
                                                        } else if (Intrinsics.areEqual(horizontal3, arrangement.getEnd())) {
                                                            max = (Constraints.m2397getMaxWidthimpl(j4) - mo1751measureBRTryo03.getWidth()) - mo1751measureBRTryo02.getWidth();
                                                        } else {
                                                            MeasureScope measureScope2 = measureScope;
                                                            f2 = AppBarKt.TopAppBarTitleInset;
                                                            max = Math.max(measureScope2.mo207roundToPx0680j_4(f2), Placeable.this.getWidth());
                                                        }
                                                        int i14 = max;
                                                        Arrangement.Vertical vertical3 = vertical2;
                                                        if (!Intrinsics.areEqual(vertical3, arrangement.getCenter())) {
                                                            if (Intrinsics.areEqual(vertical3, arrangement.getBottom())) {
                                                                int i15 = i12;
                                                                if (i15 == 0) {
                                                                    height = i11 - mo1751measureBRTryo03.getHeight();
                                                                } else {
                                                                    int height2 = i15 - (mo1751measureBRTryo03.getHeight() - i10);
                                                                    int height3 = mo1751measureBRTryo03.getHeight() + height2;
                                                                    if (height3 > Constraints.m2396getMaxHeightimpl(j4)) {
                                                                        height2 -= height3 - Constraints.m2396getMaxHeightimpl(j4);
                                                                    }
                                                                    i13 = (i11 - mo1751measureBRTryo03.getHeight()) - Math.max(0, height2);
                                                                }
                                                            } else {
                                                                i13 = 0;
                                                            }
                                                            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i14, i13, 0.0f, 4, null);
                                                            Placeable.PlacementScope.placeRelative$default(placementScope, mo1751measureBRTryo02, Constraints.m2397getMaxWidthimpl(j4) - mo1751measureBRTryo02.getWidth(), (i11 - mo1751measureBRTryo02.getHeight()) / 2, 0.0f, 4, null);
                                                        }
                                                        height = (i11 - mo1751measureBRTryo03.getHeight()) / 2;
                                                        i13 = height;
                                                        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i14, i13, 0.0f, 4, null);
                                                        Placeable.PlacementScope.placeRelative$default(placementScope, mo1751measureBRTryo02, Constraints.m2397getMaxWidthimpl(j4) - mo1751measureBRTryo02.getWidth(), (i11 - mo1751measureBRTryo02.getHeight()) / 2, 0.0f, 4, null);
                                                    }
                                                }, 4, null);
                                            }
                                        }
                                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                    }
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, modifier);
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            Function0 constructor = companion.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl, measurePolicy, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl, currentCompositionLocalMap, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl.getInserting() || !Intrinsics.areEqual(m1043constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m1043constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m1043constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m1044setimpl(m1043constructorimpl, materializeModifier, companion.getSetModifier());
            Modifier.Companion companion2 = Modifier.Companion;
            Modifier layoutId = LayoutIdKt.layoutId(companion2, "navigationIcon");
            float f2 = TopAppBarHorizontalPadding;
            Modifier m269paddingqDBjuR0$default = PaddingKt.m269paddingqDBjuR0$default(layoutId, f2, 0.0f, 0.0f, 0.0f, 14, null);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
            int currentCompositeKeyHash2 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap2 = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier2 = ComposedModifierKt.materializeModifier(startRestartGroup, m269paddingqDBjuR0$default);
            Function0 constructor2 = companion.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor2);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl2 = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl2, maybeCachedBoxMeasurePolicy, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl2, currentCompositionLocalMap2, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash2 = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl2.getInserting() || !Intrinsics.areEqual(m1043constructorimpl2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                m1043constructorimpl2.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash2));
                m1043constructorimpl2.apply(Integer.valueOf(currentCompositeKeyHash2), setCompositeKeyHash2);
            }
            Updater.m1044setimpl(m1043constructorimpl2, materializeModifier2, companion.getSetModifier());
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ProvidedValue provides = ContentColorKt.getLocalContentColor().provides(Color.m1298boximpl(j));
            int i6 = ProvidedValue.$stable;
            CompositionLocalKt.CompositionLocalProvider(provides, function22, startRestartGroup, ((i5 >> 3) & 112) | i6);
            startRestartGroup.endNode();
            Modifier m1342graphicsLayerAp8cVGQ$default = GraphicsLayerModifierKt.m1342graphicsLayerAp8cVGQ$default(PaddingKt.m267paddingVpY3zN4$default(LayoutIdKt.layoutId(companion2, "title"), f2, 0.0f, 2, null).then(z ? SemanticsModifierKt.clearAndSetSemantics(companion2, new Function1() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$1$2
                public final void invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((SemanticsPropertyReceiver) obj);
                    return Unit.INSTANCE;
                }
            }) : companion2), 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131067, null);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
            int currentCompositeKeyHash3 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap3 = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier3 = ComposedModifierKt.materializeModifier(startRestartGroup, m1342graphicsLayerAp8cVGQ$default);
            Function0 constructor3 = companion.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor3);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl3 = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl3, maybeCachedBoxMeasurePolicy2, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl3, currentCompositionLocalMap3, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash3 = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl3.getInserting() || !Intrinsics.areEqual(m1043constructorimpl3.rememberedValue(), Integer.valueOf(currentCompositeKeyHash3))) {
                m1043constructorimpl3.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash3));
                m1043constructorimpl3.apply(Integer.valueOf(currentCompositeKeyHash3), setCompositeKeyHash3);
            }
            Updater.m1044setimpl(m1043constructorimpl3, materializeModifier3, companion.getSetModifier());
            int i7 = i4 >> 9;
            ProvideContentColorTextStyleKt.m790ProvideContentColorTextStyle3JVO9M(j2, textStyle, function2, startRestartGroup, ((i4 >> 15) & 112) | (i7 & 14) | (i7 & 896));
            startRestartGroup.endNode();
            Modifier m269paddingqDBjuR0$default2 = PaddingKt.m269paddingqDBjuR0$default(LayoutIdKt.layoutId(companion2, "actionIcons"), 0.0f, 0.0f, f2, 0.0f, 11, null);
            MeasurePolicy maybeCachedBoxMeasurePolicy3 = BoxKt.maybeCachedBoxMeasurePolicy(companion3.getTopStart(), false);
            int currentCompositeKeyHash4 = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap4 = startRestartGroup.getCurrentCompositionLocalMap();
            Modifier materializeModifier4 = ComposedModifierKt.materializeModifier(startRestartGroup, m269paddingqDBjuR0$default2);
            Function0 constructor4 = companion.getConstructor();
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor4);
            } else {
                startRestartGroup.useNode();
            }
            Composer m1043constructorimpl4 = Updater.m1043constructorimpl(startRestartGroup);
            Updater.m1044setimpl(m1043constructorimpl4, maybeCachedBoxMeasurePolicy3, companion.getSetMeasurePolicy());
            Updater.m1044setimpl(m1043constructorimpl4, currentCompositionLocalMap4, companion.getSetResolvedCompositionLocals());
            Function2 setCompositeKeyHash4 = companion.getSetCompositeKeyHash();
            if (m1043constructorimpl4.getInserting() || !Intrinsics.areEqual(m1043constructorimpl4.rememberedValue(), Integer.valueOf(currentCompositeKeyHash4))) {
                m1043constructorimpl4.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash4));
                m1043constructorimpl4.apply(Integer.valueOf(currentCompositeKeyHash4), setCompositeKeyHash4);
            }
            Updater.m1044setimpl(m1043constructorimpl4, materializeModifier4, companion.getSetModifier());
            CompositionLocalKt.CompositionLocalProvider(ContentColorKt.getLocalContentColor().provides(Color.m1298boximpl(j3)), function23, startRestartGroup, ((i5 >> 6) & 112) | i6);
            startRestartGroup.endNode();
            startRestartGroup.endNode();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i8) {
                    AppBarKt.m608TopAppBarLayoutkXwM9vE(Modifier.this, scrolledOffset, j, j2, j3, function2, textStyle, f, vertical, horizontal, i, z, function22, function23, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
                }
            });
        }
    }

    static {
        float f = 16;
        float f2 = 12;
        float m2424constructorimpl = Dp.m2424constructorimpl(Dp.m2424constructorimpl(f) - Dp.m2424constructorimpl(f2));
        BottomAppBarHorizontalPadding = m2424constructorimpl;
        float m2424constructorimpl2 = Dp.m2424constructorimpl(Dp.m2424constructorimpl(f) - Dp.m2424constructorimpl(f2));
        BottomAppBarVerticalPadding = m2424constructorimpl2;
        FABHorizontalPadding = Dp.m2424constructorimpl(Dp.m2424constructorimpl(f) - m2424constructorimpl);
        FABVerticalPadding = Dp.m2424constructorimpl(Dp.m2424constructorimpl(f2) - m2424constructorimpl2);
        TopTitleAlphaEasing = new CubicBezierEasing(0.8f, 0.0f, 0.8f, 0.15f);
        MediumTitleBottomPadding = Dp.m2424constructorimpl(24);
        LargeTitleBottomPadding = Dp.m2424constructorimpl(28);
        float m2424constructorimpl3 = Dp.m2424constructorimpl(4);
        TopAppBarHorizontalPadding = m2424constructorimpl3;
        TopAppBarTitleInset = Dp.m2424constructorimpl(Dp.m2424constructorimpl(f) - m2424constructorimpl3);
    }
}
