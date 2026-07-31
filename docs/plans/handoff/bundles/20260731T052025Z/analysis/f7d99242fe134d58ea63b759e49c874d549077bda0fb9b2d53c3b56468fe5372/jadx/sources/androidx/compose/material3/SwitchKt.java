package androidx.compose.material3;

import androidx.compose.animation.core.SnapSpec;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SwitchKt {
    public static final SnapSpec SnapSpec;
    public static final float SwitchHeight;
    public static final float SwitchWidth;
    public static final float ThumbDiameter;
    public static final float ThumbPadding;
    public static final float UncheckedThumbDiameter;

    static {
        float f = ListTokens.SelectedHandleWidth;
        ThumbDiameter = f;
        UncheckedThumbDiameter = ListTokens.UnselectedHandleWidth;
        SwitchWidth = ListTokens.TrackWidth;
        float f2 = ListTokens.TrackHeight;
        SwitchHeight = f2;
        ThumbPadding = (f2 - f) / 2.0f;
        SnapSpec = new SnapSpec(0);
    }

    public static final void Switch(boolean z, Function1 function1, Modifier modifier, SwitchColors switchColors, Composer composer, int i) {
        int i2;
        SwitchColors switchColors2;
        int i3;
        GapComposer gapComposer;
        SwitchColors switchColors3;
        int i4;
        SwitchColors switchColors4;
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        long Color7;
        int i5;
        Modifier modifier2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-263339167);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(z) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(function1) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 256 : 128;
        }
        int i6 = i2 | 3072;
        if ((i & 24576) == 0) {
            i6 |= gapComposer2.changed(true) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i6 |= 65536;
        }
        int i7 = i6 | 1572864;
        if (gapComposer2.shouldExecute(i7 & 1, (599187 & i7) != 599186)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                ColorScheme colorScheme = (ColorScheme) gapComposer2.consume(ColorSchemeKt.LocalColorScheme);
                SwitchColors switchColors5 = colorScheme.defaultSwitchColorsCached;
                long j = colorScheme.surface;
                if (switchColors5 == null) {
                    long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.SelectedHandleColor);
                    long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.SelectedTrackColor);
                    long j2 = Color.Transparent;
                    long fromToken3 = ColorSchemeKt.fromToken(colorScheme, ListTokens.SelectedIconColor$1);
                    long fromToken4 = ColorSchemeKt.fromToken(colorScheme, ListTokens.UnselectedHandleColor);
                    long fromToken5 = ColorSchemeKt.fromToken(colorScheme, ListTokens.UnselectedTrackColor);
                    long fromToken6 = ColorSchemeKt.fromToken(colorScheme, ListTokens.UnselectedFocusTrackOutlineColor);
                    long fromToken7 = ColorSchemeKt.fromToken(colorScheme, ListTokens.UnselectedIconColor$1);
                    i3 = -458753;
                    gapComposer = gapComposer2;
                    Color = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), ListTokens.DisabledSelectedHandleOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledSelectedHandleColor)));
                    long m490compositeOverOWjLjI = ColorKt.m490compositeOverOWjLjI(Color, j);
                    long fromToken8 = ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledSelectedTrackColor);
                    float f = ListTokens.DisabledTrackOpacity;
                    Color2 = ColorKt.Color(Color.m487getRedimpl(fromToken8), Color.m486getGreenimpl(fromToken8), Color.m484getBlueimpl(fromToken8), f, Color.m485getColorSpaceimpl(fromToken8));
                    long m490compositeOverOWjLjI2 = ColorKt.m490compositeOverOWjLjI(Color2, j);
                    Color3 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), ListTokens.DisabledSelectedIconOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledSelectedIconColor$1)));
                    long m490compositeOverOWjLjI3 = ColorKt.m490compositeOverOWjLjI(Color3, j);
                    Color4 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), ListTokens.DisabledUnselectedHandleOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledUnselectedHandleColor)));
                    long m490compositeOverOWjLjI4 = ColorKt.m490compositeOverOWjLjI(Color4, j);
                    Color5 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledUnselectedTrackColor)));
                    long m490compositeOverOWjLjI5 = ColorKt.m490compositeOverOWjLjI(Color5, j);
                    Color6 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledUnselectedTrackOutlineColor)));
                    long m490compositeOverOWjLjI6 = ColorKt.m490compositeOverOWjLjI(Color6, j);
                    Color7 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), ListTokens.DisabledUnselectedIconOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledUnselectedIconColor$1)));
                    switchColors3 = new SwitchColors(fromToken, fromToken2, j2, fromToken3, fromToken4, fromToken5, fromToken6, fromToken7, m490compositeOverOWjLjI, m490compositeOverOWjLjI2, j2, m490compositeOverOWjLjI3, m490compositeOverOWjLjI4, m490compositeOverOWjLjI5, m490compositeOverOWjLjI6, ColorKt.m490compositeOverOWjLjI(Color7, j));
                    colorScheme.defaultSwitchColorsCached = switchColors3;
                } else {
                    i3 = -458753;
                    gapComposer = gapComposer2;
                    switchColors3 = switchColors5;
                }
                i4 = i7 & i3;
                switchColors4 = switchColors3;
            } else {
                gapComposer2.skipToGroupEnd();
                i4 = i7 & (-458753);
                switchColors4 = switchColors;
                gapComposer = gapComposer2;
            }
            gapComposer.endDefaults();
            gapComposer2 = gapComposer;
            gapComposer2.startReplaceGroup(1768604058);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new MutableInteractionSourceImpl();
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
            gapComposer2.end(false);
            if (function1 != null) {
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.MinimumInteractiveTopAlignmentLine;
                i5 = 2;
                modifier2 = SelectableKt.m260toggleableO2vRcR0(z, mutableInteractionSourceImpl, new Role(2), function1);
            } else {
                i5 = 2;
                modifier2 = Modifier.Companion.$$INSTANCE;
            }
            int i8 = i4 << 3;
            SwitchImpl(SizeKt.m231requiredSizeVpY3zN4(SizeKt.wrapContentSize$default(modifier.then(modifier2), i5), SwitchWidth, SwitchHeight), z, switchColors4, mutableInteractionSourceImpl, ShapesKt.getValue(ListTokens.HandleShape, gapComposer2), gapComposer2, ((i4 >> 6) & 896) | (i8 & 112) | (i8 & 57344));
            switchColors2 = switchColors4;
        } else {
            gapComposer2.skipToGroupEnd();
            switchColors2 = switchColors;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda0(z, function1, modifier, switchColors2, i);
        }
    }

    public static final void SwitchImpl(Modifier modifier, boolean z, SwitchColors switchColors, MutableInteractionSourceImpl mutableInteractionSourceImpl, Shape shape, Composer composer, int i) {
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
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
            i2 |= gapComposer.changed(true) ? 256 : 128;
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
            long j = z ? switchColors.checkedTrackColor : switchColors.uncheckedTrackColor;
            long j2 = z ? switchColors.checkedThumbColor : switchColors.uncheckedThumbColor;
            Shape value = ShapesKt.getValue(ListTokens.TrackShape, gapComposer);
            Modifier m132backgroundbw27NRU = ImageKt.m132backgroundbw27NRU(ImageKt.m133borderxT4_qwU(modifier, ListTokens.TrackOutlineWidth, z ? switchColors.checkedBorderColor : switchColors.uncheckedBorderColor, value), j, value);
            MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
            int currentCompositeKeyHash = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, m132backgroundbw27NRU);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetMeasurePolicy;
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$1);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$12);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                Modifier.CC.m(currentCompositeKeyHash, gapComposer, currentCompositeKeyHash, composeUiNode$Companion$SetModifier$13);
            }
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetModifier;
            Updater.m380setimpl(gapComposer, materializeModifier, composeUiNode$Companion$SetModifier$14);
            Modifier m132backgroundbw27NRU2 = ImageKt.m132backgroundbw27NRU(IndicationKt.indication(BoxScopeInstance.INSTANCE.align(Modifier.Companion.$$INSTANCE, Alignment.Companion.CenterStart).then(new ThumbElement(mutableInteractionSourceImpl, z, CardKt.value(MotionSchemeKeyTokens.FastSpatial, gapComposer))), mutableInteractionSourceImpl, RippleKt.m355rippleH2RKhps$default(false, ListTokens.StateLayerSize$1 / 2.0f, 4)), j2, shape);
            MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.Center, false);
            int currentCompositeKeyHash2 = Updater.getCurrentCompositeKeyHash(gapComposer);
            PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer.currentCompositionLocalScope();
            Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer, m132backgroundbw27NRU2);
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$12);
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(currentCompositeKeyHash2))) {
                Modifier.CC.m(currentCompositeKeyHash2, gapComposer, currentCompositeKeyHash2, composeUiNode$Companion$SetModifier$13);
            }
            Updater.m380setimpl(gapComposer, materializeModifier2, composeUiNode$Companion$SetModifier$14);
            gapComposer.startReplaceGroup(1236071411);
            gapComposer.end(false);
            gapComposer.end(true);
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SwitchKt$$ExternalSyntheticLambda1(modifier, z, switchColors, mutableInteractionSourceImpl, shape, i, 0);
        }
    }
}
