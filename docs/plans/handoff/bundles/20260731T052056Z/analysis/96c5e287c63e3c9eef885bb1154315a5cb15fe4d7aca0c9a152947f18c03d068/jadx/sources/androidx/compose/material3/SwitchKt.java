package androidx.compose.material3;

import androidx.compose.animation.core.SnapSpec;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.Role;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SwitchKt {
    public static final SnapSpec SnapSpec;
    public static final float SwitchHeight;
    public static final float SwitchWidth;
    public static final float ThumbDiameter;
    public static final float ThumbPadding;
    public static final float UncheckedThumbDiameter;

    static {
        float f = SwitchTokens.SelectedHandleWidth;
        ThumbDiameter = f;
        UncheckedThumbDiameter = SwitchTokens.UnselectedHandleWidth;
        SwitchWidth = SwitchTokens.TrackWidth;
        float f2 = SwitchTokens.TrackHeight;
        SwitchHeight = f2;
        ThumbPadding = (f2 - f) / 2.0f;
        SnapSpec = new SnapSpec();
    }

    public static final void Switch(final boolean z, final Function1 function1, Modifier modifier, boolean z2, final SwitchColors switchColors, GapComposer gapComposer, final int i) {
        final Modifier modifier2;
        final boolean z3;
        boolean z4;
        Modifier modifier3;
        gapComposer.startRestartGroup(-263339167);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | 28032 | (gapComposer.changed(switchColors) ? 131072 : 65536) | 1572864;
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            gapComposer.startDefaults();
            int i3 = i & 1;
            Modifier modifier4 = Modifier.Companion.$$INSTANCE;
            if (i3 == 0 || gapComposer.getDefaultsInvalid()) {
                z4 = true;
                modifier3 = modifier4;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                z4 = z2;
            }
            gapComposer.endDefaults();
            gapComposer.startReplaceGroup(1768604058);
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer.end(false);
            if (function1 != null) {
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                modifier4 = SelectableKt.m175toggleableO2vRcR0(z, mutableInteractionSourceImpl, z4, new Role(2), function1);
            }
            boolean z5 = z4;
            SwitchImpl(SizeKt.m143requiredSizeVpY3zN4(SizeKt.wrapContentSize$default(modifier3.then(modifier4)), SwitchWidth, SwitchHeight), z, z5, switchColors, mutableInteractionSourceImpl, ShapesKt.getValue(SwitchTokens.HandleShape, gapComposer), gapComposer, ((i2 >> 6) & 7168) | ((i2 << 3) & 112) | 384 | 24576);
            z3 = z5;
            modifier2 = modifier3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z3 = z2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(z, function1, modifier2, z3, switchColors, i) { // from class: androidx.compose.material3.SwitchKt$$ExternalSyntheticLambda0
                public final /* synthetic */ boolean f$0;
                public final /* synthetic */ Function1 f$1;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ boolean f$4;
                public final /* synthetic */ SwitchColors f$5;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    SwitchKt.Switch(this.f$0, this.f$1, this.f$2, this.f$4, this.f$5, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void SwitchImpl(final Modifier modifier, final boolean z, final boolean z2, final SwitchColors switchColors, final MutableInteractionSourceImpl mutableInteractionSourceImpl, final Shape shape, GapComposer gapComposer, final int i) {
        int i2;
        long j;
        long j2;
        gapComposer.startRestartGroup(-670917213);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(z2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(switchColors) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changed(mutableInteractionSourceImpl) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i2 |= gapComposer.changed(shape) ? 1048576 : 524288;
        }
        if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
            long j3 = z2 ? z ? switchColors.checkedTrackColor : switchColors.uncheckedTrackColor : z ? switchColors.disabledCheckedTrackColor : switchColors.disabledUncheckedTrackColor;
            long j4 = z2 ? z ? switchColors.checkedThumbColor : switchColors.uncheckedThumbColor : z ? switchColors.disabledCheckedThumbColor : switchColors.disabledUncheckedThumbColor;
            Shape value = ShapesKt.getValue(SwitchTokens.TrackShape, gapComposer);
            float f = SwitchTokens.TrackOutlineWidth;
            if (z2) {
                j = j4;
                j2 = z ? switchColors.checkedBorderColor : switchColors.uncheckedBorderColor;
            } else {
                j = j4;
                j2 = z ? switchColors.disabledCheckedBorderColor : switchColors.disabledUncheckedBorderColor;
            }
            Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(ImageKt.m48borderxT4_qwU(modifier, f, j2, value), j3, value);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m46backgroundbw27NRU);
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
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m327setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier m46backgroundbw27NRU2 = ImageKt.m46backgroundbw27NRU(IndicationKt.indication(BoxScopeInstance.INSTANCE.align(Modifier.Companion.$$INSTANCE, Alignment.Companion.CenterStart).then(new ThumbElement(mutableInteractionSourceImpl, z, CardKt.value(MotionSchemeKeyTokens.FastSpatial, gapComposer))), mutableInteractionSourceImpl, RippleKt.m294rippleH2RKhps$default(SwitchTokens.StateLayerSize / 2.0f, 4, false)), j, shape);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m46backgroundbw27NRU2);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                Modifier.CC.m(currentCompositeKeyHash2, gapComposer, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$13);
            }
            Updater.m327setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            gapComposer.startReplaceGroup(1236071411);
            gapComposer.end(false);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.SwitchKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SwitchKt.SwitchImpl(Modifier.this, z, z2, switchColors, mutableInteractionSourceImpl, shape, (GapComposer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
