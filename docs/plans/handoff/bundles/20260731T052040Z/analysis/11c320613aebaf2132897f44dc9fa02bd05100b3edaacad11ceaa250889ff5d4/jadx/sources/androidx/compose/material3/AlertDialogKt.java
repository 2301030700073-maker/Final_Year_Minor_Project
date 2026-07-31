package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.IndicationKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.DialogProperties;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.source.ProgressiveMediaSource;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import org.acra.util.ProcessFinisher;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AlertDialogKt {
    public static final PaddingValuesImpl DialogPadding;
    public static final DynamicProvidableCompositionLocal LocalBasicAlertDialogOverride;
    public static final PaddingValuesImpl TextPadding;
    public static final PaddingValuesImpl TitlePadding;

    static {
        ParcelableSnapshotMutableState parcelableSnapshotMutableState = PrecisionPointer.shouldUsePrecisionPointerComponentSizing;
        float f = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue() ? 20.0f : 24.0f;
        float f2 = ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue() ? 16.0f : 24.0f;
        DialogPadding = new PaddingValuesImpl(f, f, f, f);
        SpacerKt.m95PaddingValuesa9UjIt4$default(16.0f);
        TitlePadding = SpacerKt.m95PaddingValuesa9UjIt4$default(16.0f);
        TextPadding = SpacerKt.m95PaddingValuesa9UjIt4$default(f2);
        LocalBasicAlertDialogOverride = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(8));
    }

    /* renamed from: AlertDialogContent-4hvqGtA, reason: not valid java name */
    public static final void m126AlertDialogContent4hvqGtA(final ComposableLambdaImpl composableLambdaImpl, Modifier modifier, final Function2 function2, final Function2 function22, final Shape shape, final long j, final long j2, final long j3, final long j4, final long j5, Composer composer, final int i) {
        final Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1378716401);
        int i2 = i | 48 | (gapComposer.changedInstance(null) ? 256 : 128) | (gapComposer.changedInstance(function2) ? 2048 : 1024) | (gapComposer.changedInstance(function22) ? 16384 : 8192) | (gapComposer.changed(shape) ? 131072 : 65536) | (gapComposer.changed(j) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288) | (gapComposer.changed(0.0f) ? 8388608 : 4194304) | (gapComposer.changed(j2) ? 67108864 : 33554432) | (gapComposer.changed(j3) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (((gapComposer.changed(j4) ? (char) 4 : (char) 2) | (gapComposer.changed(j5) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-652798794, new Function2(function22, j3, j4, j5, j2, composableLambdaImpl) { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda5
                public final /* synthetic */ Function2 f$2;
                public final /* synthetic */ long f$4;
                public final /* synthetic */ long f$5;
                public final /* synthetic */ long f$6;
                public final /* synthetic */ ComposableLambdaImpl f$7;

                {
                    this.f$4 = j4;
                    this.f$5 = j5;
                    this.f$6 = j2;
                    this.f$7 = composableLambdaImpl;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    TextStyle value;
                    OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1;
                    char c;
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    int i3 = 1;
                    byte b = 0;
                    int i4 = 2;
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Modifier padding = SpacerKt.padding(Modifier.Companion.$$INSTANCE, AlertDialogKt.DialogPadding);
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(SpacerKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                        long j6 = gapComposer2.compositeKeyHashCode;
                        int i5 = (int) (j6 ^ (j6 >>> 32));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = RangesKt.materializeModifier(gapComposer2, padding);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetMeasurePolicy;
                        Updater.m170setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                        Updater.m170setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$13);
                        Integer valueOf = Integer.valueOf(i5);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        Updater.m170setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$14);
                        OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$12 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                        Updater.m169reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$12);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetModifier;
                        Updater.m170setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$15);
                        gapComposer2.startReplaceGroup(346092326);
                        gapComposer2.end(false);
                        Function2 function23 = Function2.this;
                        if (function23 == null) {
                            gapComposer2.startReplaceGroup(346408309);
                            gapComposer2.end(false);
                            c = ' ';
                            ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                            composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                        } else {
                            gapComposer2.startReplaceGroup(346408310);
                            if (((Boolean) PrecisionPointer.shouldUsePrecisionPointerComponentSizing.getValue()).booleanValue()) {
                                gapComposer2.startReplaceGroup(1812109189);
                                value = TextStyle.m409copyp1EtxEg$default(((MaterialTheme$Values) gapComposer2.consume(MaterialThemeKt._localMaterialTheme)).typography.headlineSmall, MathKt.getSp(20), null, null, 0L, MathKt.getSp(26), null, 16646141);
                                gapComposer2.end(false);
                            } else {
                                gapComposer2.startReplaceGroup(1812321322);
                                value = TypographyKt.getValue(ListTokens.HeadlineFont, gapComposer2);
                                gapComposer2.end(false);
                            }
                            ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(71284337, new TabKt$$ExternalSyntheticLambda0(function23, i3, b), gapComposer2);
                            ownerSnapshotObserver$onCommitAffectingLayout$1 = ownerSnapshotObserver$onCommitAffectingLayout$12;
                            c = ' ';
                            composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$15;
                            LayoutUtilKt.m165ProvideContentColorTextStyle3JVO9M(this.f$4, value, rememberComposableLambda2, gapComposer2, RendererCapabilities.MODE_SUPPORT_MASK);
                            gapComposer2.end(false);
                        }
                        Function2 function24 = this.f$2;
                        if (function24 == null) {
                            gapComposer2.startReplaceGroup(347550969);
                            gapComposer2.end(false);
                        } else {
                            gapComposer2.startReplaceGroup(347550970);
                            LayoutUtilKt.m165ProvideContentColorTextStyle3JVO9M(this.f$5, TypographyKt.getValue(ListTokens.SupportingTextFont, gapComposer2), Expect_jvmKt.rememberComposableLambda(705583346, new TabKt$$ExternalSyntheticLambda0(function24, i4, b), gapComposer2), gapComposer2, RendererCapabilities.MODE_SUPPORT_MASK);
                            gapComposer2.end(false);
                        }
                        HorizontalAlignElement horizontalAlignElement = new HorizontalAlignElement(Alignment.Companion.End);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        long j7 = gapComposer2.compositeKeyHashCode;
                        int i6 = (int) (j7 ^ (j7 >>> c));
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = RangesKt.materializeModifier(gapComposer2, horizontalAlignElement);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m170setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                        Updater.m170setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$13);
                        Updater.m170setimpl(gapComposer2, Integer.valueOf(i6), composeUiNode$Companion$SetModifier$14);
                        Updater.m169reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                        Updater.m170setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$1);
                        LayoutUtilKt.m165ProvideContentColorTextStyle3JVO9M(this.f$6, TypographyKt.getValue(ListTokens.ActionLabelTextFont, gapComposer2), this.f$7, gapComposer2, 0);
                        gapComposer2.end(true);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer);
            int i3 = i2 >> 12;
            int i4 = (i3 & 896) | (i3 & Token.ASSIGN_MOD) | 12582918 | ((i2 >> 9) & 57344);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            SurfaceKt.m157SurfaceT9BRK9s(companion, shape, j, 0L, rememberComposableLambda, gapComposer, i4, Token.ASSIGN_LOGICAL_AND);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier2, function2, function22, shape, j, j2, j3, j4, j5, i) { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda6
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ long f$10;
                public final /* synthetic */ long f$11;
                public final /* synthetic */ Function2 f$3;
                public final /* synthetic */ Function2 f$4;
                public final /* synthetic */ Shape f$5;
                public final /* synthetic */ long f$6;
                public final /* synthetic */ long f$8;
                public final /* synthetic */ long f$9;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(7);
                    AlertDialogKt.m126AlertDialogContent4hvqGtA(ComposableLambdaImpl.this, this.f$1, this.f$3, this.f$4, this.f$5, this.f$6, this.f$8, this.f$9, this.f$10, this.f$11, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: AlertDialogFlowRow-ixp7dh8, reason: not valid java name */
    public static final void m127AlertDialogFlowRowixp7dh8(final float f, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        LayoutDirection layoutDirection;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-917637668);
        int i2 = (gapComposer.changed(f) ? 32 : 16) | i;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & Token.EXPR_VOID) != 146)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.LocalLayoutDirection;
            final LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer.consume(staticProvidableCompositionLocal);
            int ordinal = layoutDirection2.ordinal();
            if (ordinal == 0) {
                layoutDirection = LayoutDirection.Rtl;
            } else {
                if (ordinal != 1) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m();
                    return;
                }
                layoutDirection = LayoutDirection.Ltr;
            }
            Updater.CompositionLocalProvider(staticProvidableCompositionLocal.defaultProvidedValue$runtime(layoutDirection), Expect_jvmKt.rememberComposableLambda(-1986402020, new Function2() { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda10
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    int i3 = 2;
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        SpacerKt.FlowRow(null, new Arrangement$SpacedAligned(8.0f, true, new Arrangement$$ExternalSyntheticLambda0()), new Arrangement$SpacedAligned(f, true, new Arrangement$$ExternalSyntheticLambda0()), null, 0, 0, Expect_jvmKt.rememberComposableLambda(879927511, new IndicationKt$$ExternalSyntheticLambda0(layoutDirection2, composableLambdaImpl, i3), gapComposer2), gapComposer2, 1572864);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(f, composableLambdaImpl, i) { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda11
                public final /* synthetic */ float f$1;
                public final /* synthetic */ ComposableLambdaImpl f$2;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(391);
                    AlertDialogKt.m127AlertDialogFlowRowixp7dh8(this.f$1, this.f$2, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: AlertDialogImpl-wrnwzgE, reason: not valid java name */
    public static final void m128AlertDialogImplwrnwzgE(final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, final Function2 function2, final Function2 function22, final Function2 function23, final Shape shape, final long j, final long j2, final long j3, final long j4, final DialogProperties dialogProperties, Composer composer, final int i, final int i2) {
        int i3;
        ComposableLambdaImpl composableLambdaImpl2;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-867616355);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            i3 |= gapComposer.changedInstance(composableLambdaImpl2) ? 32 : 16;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i3 |= gapComposer.changed(Modifier.Companion.$$INSTANCE) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i3 |= gapComposer.changedInstance(function2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(null) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= gapComposer.changedInstance(function22) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i3 |= gapComposer.changedInstance(function23) ? ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer.changed(shape) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer.changed(j) ? 67108864 : 33554432;
        }
        if ((i & C.ENCODING_PCM_32BIT) == 0) {
            i3 |= gapComposer.changed(j2) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(j3) ? 4 : 2);
        } else {
            i4 = i2;
        }
        int i5 = i3;
        if ((i2 & 48) == 0) {
            i4 |= gapComposer.changed(j4) ? 32 : 16;
        }
        if ((i2 & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i4 |= gapComposer.changed(0.0f) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposer.changed(dialogProperties) ? 2048 : 1024;
        }
        int i6 = i4;
        if (gapComposer.shouldExecute(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 1171) == 1170) ? false : true)) {
            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            BasicAlertDialog(function0, dialogProperties, Expect_jvmKt.rememberComposableLambda(527420759, new Function2() { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    int i7 = 0;
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        AlertDialogKt.m126AlertDialogContent4hvqGtA(Expect_jvmKt.rememberComposableLambda(1367541877, new AlertDialogKt$$ExternalSyntheticLambda3(composableLambdaImpl3, function2, i7), gapComposer2), null, Function2.this, function23, shape, j, ColorSchemeKt.getValue(ListTokens.ActionLabelTextColor, gapComposer2), j2, j3, j4, gapComposer2, 6);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, ((i6 >> 3) & 896) | (i5 & 14) | 3072 | ((i5 >> 3) & Token.ASSIGN_MOD));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i2);
                    AlertDialogKt.m128AlertDialogImplwrnwzgE(Function0.this, composableLambdaImpl, function2, function22, function23, shape, j, j2, j3, j4, dialogProperties, (Composer) obj, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void BasicAlertDialog(Function0 function0, DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(24925658);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(Modifier.Companion.$$INSTANCE) ? 32 : 16;
        }
        if ((i & RendererCapabilities.MODE_SUPPORT_MASK) == 0) {
            i2 |= gapComposer.changed(dialogProperties) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            ((DefaultBasicAlertDialogOverride) gapComposer.consume(LocalBasicAlertDialogOverride)).BasicAlertDialog(new ProcessFinisher(5, function0, dialogProperties, composableLambdaImpl), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda4(function0, dialogProperties, composableLambdaImpl, i, 0);
        }
    }
}
