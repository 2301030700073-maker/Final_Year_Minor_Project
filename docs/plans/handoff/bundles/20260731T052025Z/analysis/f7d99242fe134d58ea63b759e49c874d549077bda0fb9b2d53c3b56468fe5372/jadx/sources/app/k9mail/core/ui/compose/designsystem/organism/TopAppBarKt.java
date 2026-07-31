package app.k9mail.core.ui.compose.designsystem.organism;

import androidx.appcompat.app.ActionBar;
import androidx.camera.core.impl.Config;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.FlowRowOverflow;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.window.DialogProperties;
import androidx.core.util.DebugUtils;
import androidx.lifecycle.compose.LifecycleEffectKt$$ExternalSyntheticLambda0;
import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda3;
import kotlin.Function;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeShapes;
import net.thunderbird.core.ui.compose.theme2.ThemeShapesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TopAppBarKt {

    /* renamed from: lambda$-1692121950, reason: not valid java name */
    public static final ComposableLambdaImpl f16lambda$1692121950 = new ComposableLambdaImpl(-1692121950, new ReleaseConfigKt$$ExternalSyntheticLambda0(8), false);

    /* renamed from: lambda$-1561479040, reason: not valid java name */
    public static final ComposableLambdaImpl f15lambda$1561479040 = new ComposableLambdaImpl(-1561479040, new WelcomeContentKt$$ExternalSyntheticLambda9(2), false);

    /* renamed from: lambda$-410948748, reason: not valid java name */
    public static final ComposableLambdaImpl f17lambda$410948748 = new ComposableLambdaImpl(-410948748, new WelcomeContentKt$$ExternalSyntheticLambda9(3), false);

    public static final void AlertDialog(final String str, final String str2, final Function0 function0, final Function0 function02, final ImageVector imageVector, final String str3, final Function0 function03, final boolean z, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        Function0 function04;
        GapComposer gapComposer;
        ComposableLambdaImpl composableLambdaImpl2;
        ComposableLambdaImpl rememberComposableLambda;
        str.getClass();
        str2.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(2064674409);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changed(str2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changedInstance(function0) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            function04 = function02;
            i2 |= gapComposer2.changedInstance(function04) ? 2048 : 1024;
        } else {
            function04 = function02;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(Modifier.Companion.$$INSTANCE) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changed(imageVector) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer2.changed(str3) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i2 |= gapComposer2.changedInstance(function03) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i2 |= gapComposer2.changed(z) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl) ? 536870912 : 268435456;
        }
        int i3 = 0;
        if (gapComposer2.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            if (imageVector == null) {
                gapComposer2.startReplaceGroup(489251398);
                gapComposer2.end(false);
                composableLambdaImpl2 = null;
            } else {
                gapComposer2.startReplaceGroup(489251399);
                ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1042158406, new AlertDialogKt$$ExternalSyntheticLambda2(imageVector, i3), gapComposer2);
                gapComposer2.end(false);
                composableLambdaImpl2 = rememberComposableLambda2;
            }
            if (str3 == null) {
                gapComposer2.startReplaceGroup(489603186);
                gapComposer2.end(false);
                rememberComposableLambda = null;
            } else {
                gapComposer2.startReplaceGroup(489603187);
                rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1603656345, new GapComposer$$ExternalSyntheticLambda3(18, str3, function03), gapComposer2);
                gapComposer2.end(false);
            }
            gapComposer = gapComposer2;
            CardKt.m328AlertDialogOix01E0(function04, Expect_jvmKt.rememberComposableLambda(170363681, new MessageListFragmentKt$$ExternalSyntheticLambda3(3, str2, function0, z), gapComposer2), rememberComposableLambda, composableLambdaImpl2, Expect_jvmKt.rememberComposableLambda(-367967075, new AlertDialogKt$$ExternalSyntheticLambda5(str, imageVector), gapComposer2), Expect_jvmKt.rememberComposableLambda(-502549764, new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, 4), gapComposer2), null, 0L, 0L, 0L, 0L, null, gapComposer, ((i2 >> 9) & 14) | 1769520 | ((i2 >> 6) & 896));
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: app.k9mail.core.ui.compose.designsystem.organism.AlertDialogKt$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TopAppBarKt.AlertDialog(str, str2, function0, function02, imageVector, str3, function03, z, composableLambdaImpl, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00e9  */
    /* JADX WARN: Type inference failed for: r2v19, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* renamed from: BasicDialog-FItCLgY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m844BasicDialogFItCLgY(final java.lang.String r27, final kotlin.jvm.functions.Function0 r28, final androidx.compose.runtime.internal.ComposableLambdaImpl r29, final androidx.compose.runtime.internal.ComposableLambdaImpl r30, final androidx.compose.ui.Modifier r31, final java.lang.String r32, final androidx.compose.foundation.layout.PaddingValuesImpl r33, boolean r34, long r35, androidx.compose.ui.window.DialogProperties r37, androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt.m844BasicDialogFItCLgY(java.lang.String, kotlin.jvm.functions.Function0, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.runtime.internal.ComposableLambdaImpl, androidx.compose.ui.Modifier, java.lang.String, androidx.compose.foundation.layout.PaddingValuesImpl, boolean, long, androidx.compose.ui.window.DialogProperties, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: BasicDialogContent-88mDfTA, reason: not valid java name */
    public static final void m846BasicDialogContent88mDfTA(final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, Modifier modifier, final Function3 function3, final Function3 function32, final PaddingValuesImpl paddingValuesImpl, final boolean z, final long j, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-349380577);
        int i2 = i | (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | (gapComposer.changedInstance(composableLambdaImpl2) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128) | (gapComposer.changedInstance(function3) ? 2048 : 1024) | (gapComposer.changedInstance(function32) ? 16384 : 8192) | (gapComposer.changed(paddingValuesImpl) ? 131072 : 65536) | (gapComposer.changed(z) ? 1048576 : 524288) | (gapComposer.changed(j) ? 8388608 : 4194304);
        if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            MathKt.m983Surface_UMDTes(modifier, ((ThemeShapes) gapComposer.consume(ThemeShapesKt.LocalThemeShapes)).extraLarge, 0L, 0L, 0.0f, Expect_jvmKt.rememberComposableLambda(-345839748, new Function2() { // from class: app.k9mail.core.ui.compose.designsystem.organism.BasicDialogKt$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    boolean z2;
                    Integer num;
                    Modifier.Companion companion;
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1;
                    boolean z3;
                    boolean z4;
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12;
                    Modifier.Companion companion2;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        FlowRowOverflow flowRowOverflow = OffsetKt.Top;
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(flowRowOverflow, horizontal, gapComposer2, 0);
                        long j2 = gapComposer2.compositeKeyHashCode;
                        int i3 = (int) (j2 ^ (j2 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier.Companion companion3 = Modifier.Companion.$$INSTANCE;
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, companion3);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$12 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetMeasurePolicy;
                        Updater.m380setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$13);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                        Updater.m380setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$14);
                        Integer valueOf = Integer.valueOf(i3);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        Updater.m380setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$15);
                        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                        Updater.m379reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$16 = ComposeUiNode.Companion.SetModifier;
                        Updater.m380setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$16);
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        Arrangement$SpacedAligned arrangement$SpacedAligned = new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7));
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        Modifier m221paddingqDBjuR0 = OffsetKt.m221paddingqDBjuR0(companion3, 24.0f, 24.0f, 24.0f, 16.0f);
                        ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$SpacedAligned, horizontal, gapComposer2, 0);
                        long j3 = gapComposer2.compositeKeyHashCode;
                        int i4 = (int) (j3 ^ (j3 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, m221paddingqDBjuR0);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$12);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m380setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$13);
                        Updater.m380setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$14);
                        Config.CC.m(i4, gapComposer2, composeUiNode$Companion$SetModifier$15, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m380setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$16);
                        Function3 function33 = function3;
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        if (function33 == null) {
                            gapComposer2.startReplaceGroup(-1268844827);
                            z2 = false;
                        } else {
                            z2 = false;
                            gapComposer2.startReplaceGroup(-1842045796);
                            function33.invoke(columnScopeInstance, gapComposer2, 6);
                        }
                        gapComposer2.end(z2);
                        Function3 function34 = function32;
                        if (function34 == null) {
                            gapComposer2.startReplaceGroup(-1268800187);
                        } else {
                            gapComposer2.startReplaceGroup(-1842044356);
                            function34.invoke(columnScopeInstance, gapComposer2, 6);
                        }
                        gapComposer2.end(z2);
                        gapComposer2.end(true);
                        boolean z5 = z;
                        long j4 = j;
                        if (!z5 || (function33 == null && function34 == null)) {
                            num = 6;
                            companion = companion3;
                            composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                            layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                            z3 = false;
                            z4 = z5;
                            composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                            gapComposer2.startReplaceGroup(1061446780);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(1061301235);
                            companion = companion3;
                            layoutNode$Companion$Constructor$1 = layoutNode$Companion$Constructor$12;
                            z4 = z5;
                            composeUiNode$Companion$SetModifier$12 = composeUiNode$Companion$SetModifier$16;
                            composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$13;
                            num = 6;
                            ActionBar.m0DividerHorizontal9IZ8Weo(SizeKt.wrapContentSize$default(companion3, 3), 0.0f, j4, gapComposer2, 6, 2);
                            z3 = false;
                            gapComposer2.end(false);
                        }
                        gapComposer2.startReplaceGroup(1061476912);
                        Modifier padding = OffsetKt.padding(ColumnScopeInstance.weight(z3), paddingValuesImpl);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, z3);
                        long j5 = gapComposer2.compositeKeyHashCode;
                        int i5 = (int) (j5 ^ (j5 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        Updater.m380setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$14);
                        Config.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$15, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m380setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$12);
                        composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                        gapComposer2.end(true);
                        gapComposer2.end(false);
                        if (z4) {
                            gapComposer2.startReplaceGroup(1061806163);
                            companion2 = companion;
                            ActionBar.m0DividerHorizontal9IZ8Weo(SizeKt.wrapContentSize$default(companion, 3), 0.0f, j4, gapComposer2, 6, 2);
                            gapComposer2.end(false);
                        } else {
                            companion2 = companion;
                            gapComposer2.startReplaceGroup(1061951708);
                            gapComposer2.end(false);
                        }
                        HorizontalAlignElement horizontalAlignElement = new HorizontalAlignElement(Alignment.Companion.End);
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        ByteStreamsKt.getSpacings(gapComposer2).getClass();
                        Modifier m222paddingqDBjuR0$default = OffsetKt.m222paddingqDBjuR0$default(horizontalAlignElement, 24.0f, 0.0f, 24.0f, 24.0f, 2);
                        MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                        long j6 = gapComposer2.compositeKeyHashCode;
                        int i6 = (int) (j6 ^ (j6 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, m222paddingqDBjuR0$default);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m380setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                        Updater.m380setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$14);
                        Config.CC.m(i6, gapComposer2, composeUiNode$Companion$SetModifier$15, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m380setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$12);
                        RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(OffsetKt.f7Start, Alignment.Companion.Top, gapComposer2, 0);
                        long j7 = gapComposer2.compositeKeyHashCode;
                        int i7 = (int) (j7 ^ (j7 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer2, companion2);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m380setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        Updater.m380setimpl(gapComposer2, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$14);
                        Config.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$15, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m380setimpl(gapComposer2, materializeModifier5, composeUiNode$Companion$SetModifier$12);
                        composableLambdaImpl2.invoke(RowScopeInstance.INSTANCE, gapComposer2, num);
                        gapComposer2.end(true);
                        gapComposer2.end(true);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, ((i2 >> 6) & 14) | 196608, 28);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new BasicDialogKt$$ExternalSyntheticLambda3(composableLambdaImpl, composableLambdaImpl2, modifier, function3, function32, paddingValuesImpl, z, j, i);
        }
    }

    public static final void SubtitleTopAppBar(String str, String str2, ComposableLambdaImpl composableLambdaImpl, Function3 function3, Composer composer, int i) {
        int i2;
        str.getClass();
        str2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-2102676006);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(str2) ? 32 : 16;
        }
        int i3 = i & 384;
        Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
        if (i3 == 0) {
            i2 |= gapComposer.changed(companion) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(function3) ? 16384 : 8192;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 9363) != 9362)) {
            int i4 = i2 >> 3;
            AppBarKt.m322TopAppBarGHTll3U(Expect_jvmKt.rememberComposableLambda(-1756937826, new GapComposer$$ExternalSyntheticLambda3(19, str, str2), gapComposer), companion, composableLambdaImpl, function3, 0.0f, null, CardKt.m339topAppBarColors5tl4gsc(((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surfaceContainer, gapComposer), gapComposer, (i4 & 112) | 6 | (i4 & 896) | (i4 & 7168));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(str, str2, composableLambdaImpl, function3, i, 4);
        }
    }

    public static final void SubtitleTopAppBarWithBackButton(String str, String str2, Function0 function0, Modifier modifier, Function3 function3, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        str.getClass();
        str2.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(340643376);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(str2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 256 : 128;
        }
        int i3 = i2 | 3072;
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(function3) ? 16384 : 8192;
        }
        int i4 = 1;
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 9363) != 9362)) {
            SubtitleTopAppBar(str, str2, Expect_jvmKt.rememberComposableLambda(-1899892561, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(i4, function0), gapComposer), function3, gapComposer, (i3 & 14) | 3072 | (i3 & 112) | ((i3 >> 3) & 896) | (i3 & 57344));
            modifier2 = Modifier.Companion.$$INSTANCE;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda0((Object) str, (Object) str2, (Function) function0, modifier2, (Object) function3, i, 4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TopAppBar(java.lang.String r16, androidx.compose.ui.Modifier r17, kotlin.jvm.functions.Function2 r18, kotlin.jvm.functions.Function3 r19, androidx.compose.runtime.Composer r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: app.k9mail.core.ui.compose.designsystem.organism.TopAppBarKt.TopAppBar(java.lang.String, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void TopAppBarWithBackButton(String str, Function0 function0, Modifier modifier, Function3 function3, Composer composer, int i) {
        int i2;
        Modifier modifier2;
        Function3 function32;
        str.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1638046565);
        int i3 = 2;
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function0) ? 32 : 16;
        }
        int i4 = i2 | 3456;
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            ComposableLambdaImpl composableLambdaImpl = f17lambda$410948748;
            TopAppBar(str, companion, Expect_jvmKt.rememberComposableLambda(-1093181291, new ExposedDropdownMenu_androidKt$$ExternalSyntheticLambda0(i3, function0), gapComposer), composableLambdaImpl, gapComposer, (i4 & 14) | 384 | ((i4 >> 3) & 112) | (i4 & 7168), 0);
            modifier2 = companion;
            function32 = composableLambdaImpl;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            function32 = function3;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new LifecycleEffectKt$$ExternalSyntheticLambda0(str, function0, modifier2, function32, i, 5);
        }
    }

    public static final void AlertDialog(String str, String str2, String str3, Function0 function0, Function0 function02, Modifier modifier, String str4, Function0 function03, boolean z, Composer composer, int i) {
        Modifier modifier2;
        boolean z2;
        str.getClass();
        str2.getClass();
        str3.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1656958803);
        int i2 = i | (gapComposer.changed(str) ? 4 : 2) | (gapComposer.changed(str2) ? 32 : 16) | (gapComposer.changed(str3) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | 1769472 | (gapComposer.changed(str4) ? 8388608 : 4194304) | 805306368;
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            int i3 = 805306368 | (i2 & 14);
            int i4 = i2 >> 3;
            AlertDialog(str, str3, function0, function02, (ImageVector) null, str4, function03, true, Expect_jvmKt.rememberComposableLambda(-1384586845, new LoadingItemKt$$ExternalSyntheticLambda0(str2, 3), gapComposer), (Composer) gapComposer, (i4 & 3670016) | i3 | (i4 & 112) | (i4 & 896) | 224256 | 113246208);
            modifier2 = Modifier.Companion.$$INSTANCE;
            z2 = true;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda1(str, str2, str3, function0, function02, modifier2, str4, function03, z2, i);
        }
    }

    /* renamed from: BasicDialog-FItCLgY, reason: not valid java name */
    public static final void m845BasicDialogFItCLgY(final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, final ComposableLambdaImpl composableLambdaImpl2, final Modifier modifier, final Function3 function3, final Function3 function32, final PaddingValuesImpl paddingValuesImpl, final boolean z, final long j, final DialogProperties dialogProperties, Composer composer, final int i) {
        int i2;
        ComposableLambdaImpl composableLambdaImpl3;
        Modifier modifier2;
        Function3 function33;
        Function3 function34;
        PaddingValuesImpl paddingValuesImpl2;
        boolean z2;
        long j2;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1445410409);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            composableLambdaImpl3 = composableLambdaImpl2;
            i2 |= gapComposer.changedInstance(composableLambdaImpl3) ? 256 : 128;
        } else {
            composableLambdaImpl3 = composableLambdaImpl2;
        }
        if ((i & 3072) == 0) {
            modifier2 = modifier;
            i2 |= gapComposer.changed(modifier2) ? 2048 : 1024;
        } else {
            modifier2 = modifier;
        }
        if ((i & 24576) == 0) {
            function33 = function3;
            i2 |= gapComposer.changedInstance(function33) ? 16384 : 8192;
        } else {
            function33 = function3;
        }
        if ((196608 & i) == 0) {
            function34 = function32;
            i2 |= gapComposer.changedInstance(function34) ? 131072 : 65536;
        } else {
            function34 = function32;
        }
        if ((1572864 & i) == 0) {
            paddingValuesImpl2 = paddingValuesImpl;
            i2 |= gapComposer.changed(paddingValuesImpl2) ? 1048576 : 524288;
        } else {
            paddingValuesImpl2 = paddingValuesImpl;
        }
        if ((12582912 & i) == 0) {
            z2 = z;
            i2 |= gapComposer.changed(z2) ? 8388608 : 4194304;
        } else {
            z2 = z;
        }
        if ((100663296 & i) == 0) {
            j2 = j;
            i2 |= gapComposer.changed(j2) ? 67108864 : 33554432;
        } else {
            j2 = j;
        }
        if ((805306368 & i) == 0) {
            i2 |= gapComposer.changed(dialogProperties) ? 536870912 : 268435456;
        }
        if (gapComposer.shouldExecute(i2 & 1, (306783379 & i2) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            DebugUtils.Dialog(function0, dialogProperties, Expect_jvmKt.rememberComposableLambda(-1639842258, new BasicDialogKt$$ExternalSyntheticLambda3(composableLambdaImpl, composableLambdaImpl3, modifier2, function33, function34, paddingValuesImpl2, z2, j2), gapComposer), gapComposer, ((i2 >> 24) & 112) | (i2 & 14) | 384);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: app.k9mail.core.ui.compose.designsystem.organism.BasicDialogKt$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TopAppBarKt.m845BasicDialogFItCLgY(Function0.this, composableLambdaImpl, composableLambdaImpl2, modifier, function3, function32, paddingValuesImpl, z, j, dialogProperties, (Composer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
