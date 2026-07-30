package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.material3.FabPosition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: Scaffold.kt */
/* loaded from: classes.dex */
public abstract class ScaffoldKt {
    private static final float FabSpacing = Dp.m2424constructorimpl(16);

    /* JADX WARN: Removed duplicated region for block: B:101:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x025e  */
    /* renamed from: Scaffold-TvnljyQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m737ScaffoldTvnljyQ(androidx.compose.ui.Modifier r29, kotlin.jvm.functions.Function2 r30, kotlin.jvm.functions.Function2 r31, kotlin.jvm.functions.Function2 r32, kotlin.jvm.functions.Function2 r33, int r34, long r35, long r37, androidx.compose.foundation.layout.WindowInsets r39, final kotlin.jvm.functions.Function3 r40, androidx.compose.runtime.Composer r41, final int r42, final int r43) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ScaffoldKt.m737ScaffoldTvnljyQ(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, int, long, long, androidx.compose.foundation.layout.WindowInsets, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ScaffoldLayout-FMILGgc, reason: not valid java name */
    public static final void m738ScaffoldLayoutFMILGgc(final int i, final Function2 function2, final Function3 function3, final Function2 function22, final Function2 function23, final WindowInsets windowInsets, final Function2 function24, Composer composer, final int i2) {
        int i3;
        int i4;
        Composer startRestartGroup = composer.startRestartGroup(-975511942);
        if ((i2 & 6) == 0) {
            i3 = (startRestartGroup.changed(i) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= startRestartGroup.changedInstance(function3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= startRestartGroup.changedInstance(function22) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= startRestartGroup.changedInstance(function23) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= startRestartGroup.changed(windowInsets) ? 131072 : PKIFailureInfo.notAuthorized;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= startRestartGroup.changedInstance(function24) ? PKIFailureInfo.badCertTemplate : PKIFailureInfo.signerNotTrusted;
        }
        if ((i3 & 599187) != 599186 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-975511942, i3, -1, "androidx.compose.material3.ScaffoldLayout (Scaffold.kt:138)");
            }
            boolean z = ((i3 & 112) == 32) | ((i3 & 7168) == 2048) | ((458752 & i3) == 131072) | ((57344 & i3) == 16384) | ((i3 & 14) == 4) | ((3670016 & i3) == 1048576) | ((i3 & 896) == 256);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z || rememberedValue == Composer.Companion.getEmpty()) {
                i4 = 1;
                rememberedValue = new Function2() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                        return m740invoke0kLqBqw((SubcomposeMeasureScope) obj, ((Constraints) obj2).m2403unboximpl());
                    }

                    /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                    public final MeasureResult m740invoke0kLqBqw(final SubcomposeMeasureScope subcomposeMeasureScope, long j) {
                        Object obj;
                        Object obj2;
                        Object obj3;
                        FabPlacement fabPlacement;
                        Object obj4;
                        Integer num;
                        float f;
                        int mo207roundToPx0680j_4;
                        int bottom;
                        float f2;
                        Object obj5;
                        Object obj6;
                        int i5;
                        float f3;
                        float f4;
                        int mo207roundToPx0680j_42;
                        float f5;
                        float f6;
                        final int m2397getMaxWidthimpl = Constraints.m2397getMaxWidthimpl(j);
                        final int m2396getMaxHeightimpl = Constraints.m2396getMaxHeightimpl(j);
                        long m2389copyZbe2FdA$default = Constraints.m2389copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
                        List subcompose = subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.TopBar, Function2.this);
                        final ArrayList arrayList = new ArrayList(subcompose.size());
                        int size = subcompose.size();
                        for (int i6 = 0; i6 < size; i6++) {
                            arrayList.add(((Measurable) subcompose.get(i6)).mo1751measureBRTryo0(m2389copyZbe2FdA$default));
                        }
                        if (arrayList.isEmpty()) {
                            obj = null;
                        } else {
                            obj = arrayList.get(0);
                            int height = ((Placeable) obj).getHeight();
                            int lastIndex = CollectionsKt.getLastIndex(arrayList);
                            if (1 <= lastIndex) {
                                int i7 = 1;
                                while (true) {
                                    Object obj7 = arrayList.get(i7);
                                    int height2 = ((Placeable) obj7).getHeight();
                                    if (height < height2) {
                                        obj = obj7;
                                        height = height2;
                                    }
                                    if (i7 == lastIndex) {
                                        break;
                                    }
                                    i7++;
                                }
                            }
                        }
                        Placeable placeable = (Placeable) obj;
                        final int height3 = placeable != null ? placeable.getHeight() : 0;
                        List subcompose2 = subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Snackbar, function22);
                        WindowInsets windowInsets2 = windowInsets;
                        final ArrayList arrayList2 = new ArrayList(subcompose2.size());
                        int size2 = subcompose2.size();
                        for (int i8 = 0; i8 < size2; i8++) {
                            arrayList2.add(((Measurable) subcompose2.get(i8)).mo1751measureBRTryo0(ConstraintsKt.m2412offsetNN6EwU(m2389copyZbe2FdA$default, (-windowInsets2.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection())) - windowInsets2.getRight(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection()), -windowInsets2.getBottom(subcomposeMeasureScope))));
                        }
                        if (arrayList2.isEmpty()) {
                            obj2 = null;
                        } else {
                            obj2 = arrayList2.get(0);
                            int height4 = ((Placeable) obj2).getHeight();
                            int lastIndex2 = CollectionsKt.getLastIndex(arrayList2);
                            if (1 <= lastIndex2) {
                                Object obj8 = obj2;
                                int i9 = height4;
                                int i10 = 1;
                                while (true) {
                                    Object obj9 = arrayList2.get(i10);
                                    int height5 = ((Placeable) obj9).getHeight();
                                    if (i9 < height5) {
                                        obj8 = obj9;
                                        i9 = height5;
                                    }
                                    if (i10 == lastIndex2) {
                                        break;
                                    }
                                    i10++;
                                }
                                obj2 = obj8;
                            }
                        }
                        Placeable placeable2 = (Placeable) obj2;
                        int height6 = placeable2 != null ? placeable2.getHeight() : 0;
                        if (arrayList2.isEmpty()) {
                            obj3 = null;
                        } else {
                            obj3 = arrayList2.get(0);
                            int width = ((Placeable) obj3).getWidth();
                            int lastIndex3 = CollectionsKt.getLastIndex(arrayList2);
                            if (1 <= lastIndex3) {
                                Object obj10 = obj3;
                                int i11 = width;
                                int i12 = 1;
                                while (true) {
                                    Object obj11 = arrayList2.get(i12);
                                    int width2 = ((Placeable) obj11).getWidth();
                                    if (i11 < width2) {
                                        obj10 = obj11;
                                        i11 = width2;
                                    }
                                    if (i12 == lastIndex3) {
                                        break;
                                    }
                                    i12++;
                                }
                                obj3 = obj10;
                            }
                        }
                        Placeable placeable3 = (Placeable) obj3;
                        int width3 = placeable3 != null ? placeable3.getWidth() : 0;
                        List subcompose3 = subcomposeMeasureScope.subcompose(ScaffoldLayoutContent.Fab, function23);
                        WindowInsets windowInsets3 = windowInsets;
                        final ArrayList arrayList3 = new ArrayList(subcompose3.size());
                        int size3 = subcompose3.size();
                        int i13 = 0;
                        while (i13 < size3) {
                            List list = subcompose3;
                            int i14 = size3;
                            WindowInsets windowInsets4 = windowInsets3;
                            Placeable mo1751measureBRTryo0 = ((Measurable) subcompose3.get(i13)).mo1751measureBRTryo0(ConstraintsKt.m2412offsetNN6EwU(m2389copyZbe2FdA$default, (-windowInsets3.getLeft(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection())) - windowInsets3.getRight(subcomposeMeasureScope, subcomposeMeasureScope.getLayoutDirection()), -windowInsets3.getBottom(subcomposeMeasureScope)));
                            if (mo1751measureBRTryo0.getHeight() == 0 || mo1751measureBRTryo0.getWidth() == 0) {
                                mo1751measureBRTryo0 = null;
                            }
                            if (mo1751measureBRTryo0 != null) {
                                arrayList3.add(mo1751measureBRTryo0);
                            }
                            i13++;
                            windowInsets3 = windowInsets4;
                            subcompose3 = list;
                            size3 = i14;
                        }
                        if (arrayList3.isEmpty()) {
                            fabPlacement = null;
                        } else {
                            if (arrayList3.isEmpty()) {
                                obj5 = null;
                            } else {
                                obj5 = arrayList3.get(0);
                                int width4 = ((Placeable) obj5).getWidth();
                                int lastIndex4 = CollectionsKt.getLastIndex(arrayList3);
                                if (1 <= lastIndex4) {
                                    Object obj12 = obj5;
                                    int i15 = width4;
                                    int i16 = 1;
                                    while (true) {
                                        Object obj13 = arrayList3.get(i16);
                                        int width5 = ((Placeable) obj13).getWidth();
                                        if (i15 < width5) {
                                            obj12 = obj13;
                                            i15 = width5;
                                        }
                                        if (i16 == lastIndex4) {
                                            break;
                                        }
                                        i16++;
                                    }
                                    obj5 = obj12;
                                }
                            }
                            Intrinsics.checkNotNull(obj5);
                            int width6 = ((Placeable) obj5).getWidth();
                            if (arrayList3.isEmpty()) {
                                obj6 = null;
                            } else {
                                obj6 = arrayList3.get(0);
                                int height7 = ((Placeable) obj6).getHeight();
                                int lastIndex5 = CollectionsKt.getLastIndex(arrayList3);
                                if (1 <= lastIndex5) {
                                    Object obj14 = obj6;
                                    int i17 = height7;
                                    int i18 = 1;
                                    while (true) {
                                        Object obj15 = arrayList3.get(i18);
                                        Object obj16 = obj14;
                                        int height8 = ((Placeable) obj15).getHeight();
                                        if (i17 < height8) {
                                            i17 = height8;
                                            obj14 = obj15;
                                        } else {
                                            obj14 = obj16;
                                        }
                                        if (i18 == lastIndex5) {
                                            break;
                                        }
                                        i18++;
                                    }
                                    obj6 = obj14;
                                }
                            }
                            Intrinsics.checkNotNull(obj6);
                            int height9 = ((Placeable) obj6).getHeight();
                            int i19 = i;
                            FabPosition.Companion companion = FabPosition.Companion;
                            if (!FabPosition.m683equalsimpl0(i19, companion.m686getStartERTFSPs())) {
                                if (!(FabPosition.m683equalsimpl0(i19, companion.m684getEndERTFSPs()) ? true : FabPosition.m683equalsimpl0(i19, companion.m685getEndOverlayERTFSPs()))) {
                                    i5 = (m2397getMaxWidthimpl - width6) / 2;
                                } else if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.Ltr) {
                                    f4 = ScaffoldKt.FabSpacing;
                                    mo207roundToPx0680j_42 = subcomposeMeasureScope.mo207roundToPx0680j_4(f4);
                                    i5 = (m2397getMaxWidthimpl - mo207roundToPx0680j_42) - width6;
                                } else {
                                    f3 = ScaffoldKt.FabSpacing;
                                    i5 = subcomposeMeasureScope.mo207roundToPx0680j_4(f3);
                                }
                                fabPlacement = new FabPlacement(i5, width6, height9);
                            } else if (subcomposeMeasureScope.getLayoutDirection() == LayoutDirection.Ltr) {
                                f6 = ScaffoldKt.FabSpacing;
                                i5 = subcomposeMeasureScope.mo207roundToPx0680j_4(f6);
                                fabPlacement = new FabPlacement(i5, width6, height9);
                            } else {
                                f5 = ScaffoldKt.FabSpacing;
                                mo207roundToPx0680j_42 = subcomposeMeasureScope.mo207roundToPx0680j_4(f5);
                                i5 = (m2397getMaxWidthimpl - mo207roundToPx0680j_42) - width6;
                                fabPlacement = new FabPlacement(i5, width6, height9);
                            }
                        }
                        ScaffoldLayoutContent scaffoldLayoutContent = ScaffoldLayoutContent.BottomBar;
                        final Function2 function25 = function24;
                        List subcompose4 = subcomposeMeasureScope.subcompose(scaffoldLayoutContent, ComposableLambdaKt.composableLambdaInstance(-2146438447, true, new Function2() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1$bottomBarPlaceables$1
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj17, Object obj18) {
                                invoke((Composer) obj17, ((Number) obj18).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer2, int i20) {
                                if ((i20 & 3) == 2 && composer2.getSkipping()) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-2146438447, i20, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:209)");
                                }
                                Function2.this.invoke(composer2, 0);
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        }));
                        final ArrayList arrayList4 = new ArrayList(subcompose4.size());
                        int size4 = subcompose4.size();
                        for (int i20 = 0; i20 < size4; i20++) {
                            arrayList4.add(((Measurable) subcompose4.get(i20)).mo1751measureBRTryo0(m2389copyZbe2FdA$default));
                        }
                        if (arrayList4.isEmpty()) {
                            obj4 = null;
                        } else {
                            obj4 = arrayList4.get(0);
                            int height10 = ((Placeable) obj4).getHeight();
                            int lastIndex6 = CollectionsKt.getLastIndex(arrayList4);
                            if (1 <= lastIndex6) {
                                int i21 = 1;
                                while (true) {
                                    Object obj17 = arrayList4.get(i21);
                                    int height11 = ((Placeable) obj17).getHeight();
                                    if (height10 < height11) {
                                        height10 = height11;
                                        obj4 = obj17;
                                    }
                                    if (i21 == lastIndex6) {
                                        break;
                                    }
                                    i21++;
                                }
                            }
                        }
                        Placeable placeable4 = (Placeable) obj4;
                        Integer valueOf = placeable4 != null ? Integer.valueOf(placeable4.getHeight()) : null;
                        if (fabPlacement != null) {
                            int i22 = i;
                            WindowInsets windowInsets5 = windowInsets;
                            if (valueOf == null || FabPosition.m683equalsimpl0(i22, FabPosition.Companion.m685getEndOverlayERTFSPs())) {
                                int height12 = fabPlacement.getHeight();
                                f = ScaffoldKt.FabSpacing;
                                mo207roundToPx0680j_4 = height12 + subcomposeMeasureScope.mo207roundToPx0680j_4(f);
                                bottom = windowInsets5.getBottom(subcomposeMeasureScope);
                            } else {
                                mo207roundToPx0680j_4 = valueOf.intValue() + fabPlacement.getHeight();
                                f2 = ScaffoldKt.FabSpacing;
                                bottom = subcomposeMeasureScope.mo207roundToPx0680j_4(f2);
                            }
                            num = Integer.valueOf(mo207roundToPx0680j_4 + bottom);
                        } else {
                            num = null;
                        }
                        int intValue = height6 != 0 ? height6 + (num != null ? num.intValue() : valueOf != null ? valueOf.intValue() : windowInsets.getBottom(subcomposeMeasureScope)) : 0;
                        ScaffoldLayoutContent scaffoldLayoutContent2 = ScaffoldLayoutContent.MainContent;
                        final WindowInsets windowInsets6 = windowInsets;
                        final Function3 function32 = function3;
                        final int i23 = width3;
                        final Integer num2 = valueOf;
                        List subcompose5 = subcomposeMeasureScope.subcompose(scaffoldLayoutContent2, ComposableLambdaKt.composableLambdaInstance(-1213360416, true, new Function2() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1$bodyContentPlaceables$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Object invoke(Object obj18, Object obj19) {
                                invoke((Composer) obj18, ((Number) obj19).intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer2, int i24) {
                                float mo210toDpu2uoSUM;
                                float mo256calculateBottomPaddingD9Ej5fM;
                                Integer num3;
                                if ((i24 & 3) != 2 || !composer2.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1213360416, i24, -1, "androidx.compose.material3.ScaffoldLayout.<anonymous>.<anonymous>.<anonymous> (Scaffold.kt:238)");
                                    }
                                    PaddingValues asPaddingValues = WindowInsetsKt.asPaddingValues(WindowInsets.this, subcomposeMeasureScope);
                                    if (arrayList.isEmpty()) {
                                        mo210toDpu2uoSUM = asPaddingValues.mo259calculateTopPaddingD9Ej5fM();
                                    } else {
                                        mo210toDpu2uoSUM = subcomposeMeasureScope.mo210toDpu2uoSUM(height3);
                                    }
                                    if (arrayList4.isEmpty() || (num3 = num2) == null) {
                                        mo256calculateBottomPaddingD9Ej5fM = asPaddingValues.mo256calculateBottomPaddingD9Ej5fM();
                                    } else {
                                        mo256calculateBottomPaddingD9Ej5fM = subcomposeMeasureScope.mo210toDpu2uoSUM(num3.intValue());
                                    }
                                    function32.invoke(PaddingKt.m264PaddingValuesa9UjIt4(PaddingKt.calculateStartPadding(asPaddingValues, subcomposeMeasureScope.getLayoutDirection()), mo210toDpu2uoSUM, PaddingKt.calculateEndPadding(asPaddingValues, subcomposeMeasureScope.getLayoutDirection()), mo256calculateBottomPaddingD9Ej5fM), composer2, 0);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer2.skipToGroupEnd();
                            }
                        }));
                        final ArrayList arrayList5 = new ArrayList(subcompose5.size());
                        int size5 = subcompose5.size();
                        for (int i24 = 0; i24 < size5; i24++) {
                            arrayList5.add(((Measurable) subcompose5.get(i24)).mo1751measureBRTryo0(m2389copyZbe2FdA$default));
                        }
                        final WindowInsets windowInsets7 = windowInsets;
                        final FabPlacement fabPlacement2 = fabPlacement;
                        final int i25 = intValue;
                        final Integer num3 = valueOf;
                        final Integer num4 = num;
                        return MeasureScope.CC.layout$default(subcomposeMeasureScope, m2397getMaxWidthimpl, m2396getMaxHeightimpl, null, new Function1() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$1$1.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj18) {
                                invoke((Placeable.PlacementScope) obj18);
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Placeable.PlacementScope placementScope) {
                                List list2 = arrayList5;
                                int size6 = list2.size();
                                for (int i26 = 0; i26 < size6; i26++) {
                                    Placeable.PlacementScope.place$default(placementScope, (Placeable) list2.get(i26), 0, 0, 0.0f, 4, null);
                                }
                                List list3 = arrayList;
                                int size7 = list3.size();
                                for (int i27 = 0; i27 < size7; i27++) {
                                    Placeable.PlacementScope.place$default(placementScope, (Placeable) list3.get(i27), 0, 0, 0.0f, 4, null);
                                }
                                List list4 = arrayList2;
                                int i28 = m2397getMaxWidthimpl;
                                int i29 = i23;
                                WindowInsets windowInsets8 = windowInsets7;
                                SubcomposeMeasureScope subcomposeMeasureScope2 = subcomposeMeasureScope;
                                int i30 = m2396getMaxHeightimpl;
                                int i31 = i25;
                                int size8 = list4.size();
                                for (int i32 = 0; i32 < size8; i32++) {
                                    Placeable.PlacementScope.place$default(placementScope, (Placeable) list4.get(i32), ((i28 - i29) / 2) + windowInsets8.getLeft(subcomposeMeasureScope2, subcomposeMeasureScope2.getLayoutDirection()), i30 - i31, 0.0f, 4, null);
                                }
                                List list5 = arrayList4;
                                int i33 = m2396getMaxHeightimpl;
                                Integer num5 = num3;
                                int size9 = list5.size();
                                for (int i34 = 0; i34 < size9; i34++) {
                                    Placeable.PlacementScope.place$default(placementScope, (Placeable) list5.get(i34), 0, i33 - (num5 != null ? num5.intValue() : 0), 0.0f, 4, null);
                                }
                                FabPlacement fabPlacement3 = fabPlacement2;
                                if (fabPlacement3 != null) {
                                    List list6 = arrayList3;
                                    int i35 = m2396getMaxHeightimpl;
                                    Integer num6 = num4;
                                    int size10 = list6.size();
                                    for (int i36 = 0; i36 < size10; i36++) {
                                        Placeable placeable5 = (Placeable) list6.get(i36);
                                        int left = fabPlacement3.getLeft();
                                        Intrinsics.checkNotNull(num6);
                                        Placeable.PlacementScope.place$default(placementScope, placeable5, left, i35 - num6.intValue(), 0.0f, 4, null);
                                    }
                                }
                            }
                        }, 4, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            } else {
                i4 = 1;
            }
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) rememberedValue, startRestartGroup, 0, i4);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.material3.ScaffoldKt$ScaffoldLayout$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
                    invoke((Composer) obj, ((Number) obj2).intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i5) {
                    ScaffoldKt.m738ScaffoldLayoutFMILGgc(i, function2, function3, function22, function23, windowInsets, function24, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
                }
            });
        }
    }
}
