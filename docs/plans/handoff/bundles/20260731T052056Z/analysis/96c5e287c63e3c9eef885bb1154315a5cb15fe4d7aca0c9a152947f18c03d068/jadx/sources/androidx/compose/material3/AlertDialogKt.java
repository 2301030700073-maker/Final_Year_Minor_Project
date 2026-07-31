package androidx.compose.material3;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.HorizontalAlignElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.ButtonKt$Button$2;
import androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.tokens.DialogTokens;
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
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.window.DialogProperties;
import androidx.recyclerview.widget.RecyclerView;
import coil3.ImageLoader$Builder;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda27;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AlertDialogKt {
    public static final PaddingValuesImpl DialogPadding = new PaddingValuesImpl(24.0f, 24.0f, 24.0f, 24.0f);
    public static final PaddingValuesImpl IconPadding = OffsetKt.m126PaddingValuesa9UjIt4$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7);
    public static final PaddingValuesImpl TitlePadding = OffsetKt.m126PaddingValuesa9UjIt4$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 16.0f, 7);
    public static final PaddingValuesImpl TextPadding = OffsetKt.m126PaddingValuesa9UjIt4$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 24.0f, 7);
    public static final StaticProvidableCompositionLocal LocalBasicAlertDialogOverride = new StaticProvidableCompositionLocal(1, new ImmLeaksCleaner$$ExternalSyntheticLambda0(23));

    /* renamed from: AlertDialogContent-4hvqGtA, reason: not valid java name */
    public static final void m249AlertDialogContent4hvqGtA(final ComposableLambdaImpl composableLambdaImpl, Modifier modifier, final Function2 function2, final Function2 function22, final Function2 function23, final Shape shape, final long j, final long j2, final long j3, final long j4, final long j5, GapComposer gapComposer, final int i) {
        final Modifier modifier2;
        gapComposer.startRestartGroup(1378716401);
        int i2 = i | 48 | (gapComposer.changedInstance(function2) ? 256 : 128) | (gapComposer.changedInstance(function22) ? 2048 : 1024) | (gapComposer.changedInstance(function23) ? 16384 : 8192) | (gapComposer.changed(shape) ? 131072 : 65536) | (gapComposer.changed(j) ? 1048576 : 524288) | (gapComposer.changed(RecyclerView.DECELERATION_RATE) ? 8388608 : 4194304) | (gapComposer.changed(j2) ? 67108864 : 33554432) | (gapComposer.changed(j3) ? 536870912 : 268435456);
        if (gapComposer.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (((gapComposer.changed(j4) ? (char) 4 : (char) 2) | (gapComposer.changed(j5) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-652798794, new Function2() { // from class: androidx.compose.material3.AlertDialogKt$AlertDialogContent$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Number) obj2).intValue();
                    int i3 = 1;
                    int i4 = 2;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        Modifier padding = OffsetKt.padding(Modifier.Companion.$$INSTANCE, AlertDialogKt.DialogPadding);
                        ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Top, Alignment.Companion.Start, gapComposer2, 0);
                        int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, padding);
                        ComposeUiNode.Companion.getClass();
                        LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
                        Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                            Modifier.CC.m(currentCompositeKeyHash, gapComposer2, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
                        }
                        ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
                        Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$14);
                        Function2 function24 = Function2.this;
                        if (function24 == null) {
                            gapComposer2.startReplaceGroup(346092326);
                        } else {
                            gapComposer2.startReplaceGroup(346092327);
                            Updater.CompositionLocalProvider(ContentColorKt.LocalContentColor.defaultProvidedValue$runtime(new Color(j3)), Expect_jvmKt.rememberComposableLambda(-1128150638, new MenuKt$DropdownMenuItemContent$1$1.AnonymousClass1(i3, function24), gapComposer2), gapComposer2, 56);
                        }
                        gapComposer2.end(false);
                        Function2 function25 = function22;
                        if (function25 == null) {
                            gapComposer2.startReplaceGroup(346396529);
                        } else {
                            gapComposer2.startReplaceGroup(346396530);
                            LayoutUtilKt.m317ProvideContentColorTextStyle3JVO9M(j4, TypographyKt.getValue(DialogTokens.HeadlineFont, gapComposer2), Expect_jvmKt.rememberComposableLambda(71284337, new ButtonKt$Button$2.AnonymousClass1(i3, function24, function25), gapComposer2), gapComposer2, 384);
                        }
                        gapComposer2.end(false);
                        Function2 function26 = function23;
                        if (function26 == null) {
                            gapComposer2.startReplaceGroup(347174009);
                        } else {
                            gapComposer2.startReplaceGroup(347174010);
                            LayoutUtilKt.m317ProvideContentColorTextStyle3JVO9M(j5, TypographyKt.getValue(DialogTokens.SupportingTextFont, gapComposer2), Expect_jvmKt.rememberComposableLambda(705583346, new MenuKt$DropdownMenuItemContent$1$1.AnonymousClass1(i4, function26), gapComposer2), gapComposer2, 384);
                        }
                        gapComposer2.end(false);
                        HorizontalAlignElement horizontalAlignElement = new HorizontalAlignElement(Alignment.Companion.End);
                        MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                        int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer2);
                        PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                        Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, horizontalAlignElement);
                        gapComposer2.startReusableNode();
                        if (gapComposer2.inserting) {
                            gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                        } else {
                            gapComposer2.useNode();
                        }
                        Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                        Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
                        if (gapComposer2.inserting || !Intrinsics.areEqual(gapComposer2.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                            Modifier.CC.m(currentCompositeKeyHash2, gapComposer2, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$13);
                        }
                        Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$14);
                        LayoutUtilKt.m317ProvideContentColorTextStyle3JVO9M(j2, TypographyKt.getValue(DialogTokens.ActionLabelTextFont, gapComposer2), composableLambdaImpl, gapComposer2, 0);
                        gapComposer2.end(true);
                        gapComposer2.end(true);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer);
            int i3 = i2 >> 12;
            int i4 = (i3 & 896) | (i3 & 112) | 12582918 | ((i2 >> 9) & 57344);
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            SurfaceKt.m297SurfaceT9BRK9s(companion, shape, j, 0L, RecyclerView.DECELERATION_RATE, null, rememberComposableLambda, gapComposer, i4, 104);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(modifier2, function2, function22, function23, shape, j, j2, j3, j4, j5, i) { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda2
                public final /* synthetic */ Modifier f$1;
                public final /* synthetic */ long f$10;
                public final /* synthetic */ long f$11;
                public final /* synthetic */ Function2 f$2;
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
                    AlertDialogKt.m249AlertDialogContent4hvqGtA(ComposableLambdaImpl.this, this.f$1, this.f$2, this.f$3, this.f$4, this.f$5, this.f$6, this.f$8, this.f$9, this.f$10, this.f$11, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: AlertDialogFlowRow-ixp7dh8, reason: not valid java name */
    public static final void m250AlertDialogFlowRowixp7dh8(ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(-917637668);
        if (gapComposer.shouldExecute(i & 1, (i & 147) != 146)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new SnackbarKt$OneRowSnackbar$2$1(1);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) rememberedValue;
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, Modifier.Companion.$$INSTANCE);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, measurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$1);
            }
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            composableLambdaImpl.invoke((Object) gapComposer, (Object) 6);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AlertDialogKt$$ExternalSyntheticLambda4(composableLambdaImpl, i, 0);
        }
    }

    /* renamed from: AlertDialogImpl-wrnwzgE, reason: not valid java name */
    public static final void m251AlertDialogImplwrnwzgE(final Function0 function0, final ComposableLambdaImpl composableLambdaImpl, final Modifier modifier, final Function2 function2, final Function2 function22, final Function2 function23, final Function2 function24, final Shape shape, final long j, final long j2, final long j3, final long j4, final DialogProperties dialogProperties, GapComposer gapComposer, final int i, final int i2) {
        int i3;
        ComposableLambdaImpl composableLambdaImpl2;
        Function2 function25;
        int i4;
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
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            function25 = function2;
            i3 |= gapComposer.changedInstance(function25) ? 2048 : 1024;
        } else {
            function25 = function2;
        }
        if ((i & 24576) == 0) {
            i3 |= gapComposer.changedInstance(function22) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            i3 |= gapComposer.changedInstance(function23) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i3 |= gapComposer.changedInstance(function24) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i3 |= gapComposer.changed(shape) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i3 |= gapComposer.changed(j) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i3 |= gapComposer.changed(j2) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(j3) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposer.changed(j4) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i4 |= gapComposer.changed(RecyclerView.DECELERATION_RATE) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposer.changed(dialogProperties) ? 2048 : 1024;
        }
        int i5 = i4;
        if (gapComposer.shouldExecute(i3 & 1, ((i3 & 306783379) == 306783378 && (i5 & 1171) == 1170) ? false : true)) {
            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            final Function2 function26 = function25;
            BasicAlertDialog(function0, modifier, dialogProperties, Expect_jvmKt.rememberComposableLambda(527420759, new Function2() { // from class: androidx.compose.material3.AlertDialogKt$AlertDialogImpl$1

                /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
                /* renamed from: androidx.compose.material3.AlertDialogKt$AlertDialogImpl$1$1, reason: invalid class name */
                public final class AnonymousClass1 implements Function2 {
                    public final /* synthetic */ ComposableLambdaImpl $confirmButton;
                    public final /* synthetic */ Function2 $dismissButton;
                    public final /* synthetic */ int $r8$classId;

                    public /* synthetic */ AnonymousClass1(Function2 function2, ComposableLambdaImpl composableLambdaImpl, int i) {
                        this.$r8$classId = i;
                        this.$dismissButton = function2;
                        this.$confirmButton = composableLambdaImpl;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i = this.$r8$classId;
                        Unit unit = Unit.INSTANCE;
                        ComposableLambdaImpl composableLambdaImpl = this.$confirmButton;
                        Function2 function2 = this.$dismissButton;
                        int i2 = 1;
                        switch (i) {
                            case 0:
                                GapComposer gapComposer = (GapComposer) obj;
                                int intValue = ((Number) obj2).intValue();
                                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                                    gapComposer.skipToGroupEnd();
                                    break;
                                } else {
                                    PaddingValuesImpl paddingValuesImpl = AlertDialogKt.DialogPadding;
                                    AlertDialogKt.m250AlertDialogFlowRowixp7dh8(Expect_jvmKt.rememberComposableLambda(-459506658, new AnonymousClass1(function2, composableLambdaImpl, i2), gapComposer), gapComposer, 438);
                                    break;
                                }
                            default:
                                GapComposer gapComposer2 = (GapComposer) obj;
                                int intValue2 = ((Number) obj2).intValue();
                                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                                    gapComposer2.skipToGroupEnd();
                                    break;
                                } else {
                                    if (function2 == null) {
                                        gapComposer2.startReplaceGroup(-1102039173);
                                    } else {
                                        gapComposer2.startReplaceGroup(795734342);
                                        function2.invoke(gapComposer2, 0);
                                    }
                                    gapComposer2.end(false);
                                    composableLambdaImpl.invoke((Object) gapComposer2, (Object) 0);
                                    break;
                                }
                        }
                        return unit;
                    }
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    int intValue = ((Number) obj2).intValue();
                    int i6 = 0;
                    if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                        AlertDialogKt.m249AlertDialogContent4hvqGtA(Expect_jvmKt.rememberComposableLambda(1367541877, new AnonymousClass1(function26, composableLambdaImpl3, i6), gapComposer2), null, Function2.this, function23, function24, shape, j, ColorSchemeKt.getValue(DialogTokens.ActionLabelTextColor, gapComposer2), j2, j3, j4, gapComposer2, 6);
                    } else {
                        gapComposer2.skipToGroupEnd();
                    }
                    return Unit.INSTANCE;
                }
            }, gapComposer), gapComposer, (i3 & 14) | 3072 | ((i3 >> 3) & 112) | ((i5 >> 3) & 896));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AlertDialogKt$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    int updateChangedFlags2 = Updater.updateChangedFlags(i2);
                    AlertDialogKt.m251AlertDialogImplwrnwzgE(Function0.this, composableLambdaImpl, modifier, function2, function22, function23, function24, shape, j, j2, j3, j4, dialogProperties, (GapComposer) obj, updateChangedFlags, updateChangedFlags2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void BasicAlertDialog(Function0 function0, Modifier modifier, DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        ComposableLambdaImpl composableLambdaImpl2;
        DialogProperties dialogProperties2;
        Modifier modifier2;
        Function0 function02;
        gapComposer.startRestartGroup(24925658);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(modifier) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(dialogProperties) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            DefaultBasicAlertDialogOverride defaultBasicAlertDialogOverride = (DefaultBasicAlertDialogOverride) gapComposer.consume(LocalBasicAlertDialogOverride);
            composableLambdaImpl2 = composableLambdaImpl;
            ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(function0, modifier, dialogProperties, composableLambdaImpl2, 4);
            function02 = function0;
            modifier2 = modifier;
            dialogProperties2 = dialogProperties;
            defaultBasicAlertDialogOverride.BasicAlertDialog(imageLoader$Builder, gapComposer, 0);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            dialogProperties2 = dialogProperties;
            modifier2 = modifier;
            function02 = function0;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda27(function02, modifier2, dialogProperties2, composableLambdaImpl2, i);
        }
    }
}
