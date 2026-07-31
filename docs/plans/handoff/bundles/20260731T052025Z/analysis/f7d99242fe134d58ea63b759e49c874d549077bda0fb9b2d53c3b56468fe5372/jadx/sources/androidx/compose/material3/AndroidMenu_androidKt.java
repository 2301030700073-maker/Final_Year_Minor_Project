package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.internal.DropdownMenuPositionProvider;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidMenu_androidKt {
    public static final PopupProperties DefaultMenuProperties = new PopupProperties(true);

    /* renamed from: DropdownMenu-IlH_yew, reason: not valid java name */
    public static final void m320DropdownMenuIlH_yew(final boolean z, final Function0 function0, Modifier modifier, long j, ScrollState scrollState, PopupProperties popupProperties, Shape shape, long j2, float f, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        Function0 function02;
        Modifier modifier2;
        int i3;
        final ScrollState scrollState2;
        final PopupProperties popupProperties2;
        final Shape shape2;
        final long j3;
        final float f2;
        final Modifier modifier3;
        final long j4;
        int i4;
        PopupProperties popupProperties3;
        final ScrollState scrollState3;
        final Modifier modifier4;
        final float f3;
        final Shape shape3;
        final long j5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1725609375);
        int i5 = i | (gapComposer.changed(z) ? 4 : 2);
        if ((i & 48) == 0) {
            function02 = function0;
            i5 |= gapComposer.changedInstance(function02) ? 32 : 16;
        } else {
            function02 = function0;
        }
        int i6 = i2 & 4;
        if (i6 != 0) {
            i3 = i5 | 384;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            i3 = i5 | (gapComposer.changed(modifier2) ? 256 : 128);
        }
        int i7 = i3 | 910896128;
        if (gapComposer.shouldExecute(i7 & 1, (306783379 & i7) != 306783378)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                Modifier modifier5 = i6 != 0 ? Modifier.Companion.$$INSTANCE : modifier2;
                j4 = (Float.floatToRawIntBits(0.0f) & 4294967295L) | (Float.floatToRawIntBits(0.0f) << 32);
                ScrollState rememberScrollState = ImageKt.rememberScrollState(gapComposer);
                float f4 = MenuDefaults.ShadowElevation;
                Shape value = ShapesKt.getValue(ListTokens.ContainerShape$3, gapComposer);
                long value2 = ColorSchemeKt.getValue(ListTokens.ContainerColor$6, gapComposer);
                i4 = i7 & (-33087489);
                float f5 = MenuDefaults.ShadowElevation;
                popupProperties3 = DefaultMenuProperties;
                scrollState3 = rememberScrollState;
                modifier4 = modifier5;
                f3 = f5;
                shape3 = value;
                j5 = value2;
            } else {
                gapComposer.skipToGroupEnd();
                i4 = i7 & (-33087489);
                scrollState3 = scrollState;
                popupProperties3 = popupProperties;
                shape3 = shape;
                j5 = j2;
                f3 = f;
                modifier4 = modifier2;
                j4 = j;
            }
            gapComposer.endDefaults();
            Object rememberedValue = gapComposer.rememberedValue();
            NeverEqualPolicy neverEqualPolicy = Composer.Companion.Empty;
            if (rememberedValue == neverEqualPolicy) {
                rememberedValue = new MutableTransitionState(Boolean.FALSE);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            final MutableTransitionState mutableTransitionState = (MutableTransitionState) rememberedValue;
            mutableTransitionState.targetState$delegate.setValue(Boolean.valueOf(z));
            if (((Boolean) mutableTransitionState.currentState$delegate.getValue()).booleanValue() || ((Boolean) mutableTransitionState.targetState$delegate.getValue()).booleanValue()) {
                gapComposer.startReplaceGroup(1165905588);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = Updater.mutableStateOf$default(new TransformOrigin(TransformOrigin.Center));
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                final MutableState mutableState = (MutableState) rememberedValue2;
                Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
                boolean changed = gapComposer.changed(density);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed || rememberedValue3 == neverEqualPolicy) {
                    rememberedValue3 = new DropdownMenuPositionProvider(j4, density, new AndroidMenu_androidKt$$ExternalSyntheticLambda0(mutableState, 0));
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                AndroidPopup_androidKt.Popup((DropdownMenuPositionProvider) rememberedValue3, function02, popupProperties3, Expect_jvmKt.rememberComposableLambda(-917492520, new Function2() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int intValue = ((Number) obj2).intValue();
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                            CardKt.m329DropdownMenuContentQj0Zi0g(Modifier.this, mutableTransitionState, mutableState, scrollState3, shape3, j5, f3, composableLambdaImpl, gapComposer2, 384);
                        } else {
                            gapComposer2.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, gapComposer), gapComposer, (i4 & 112) | 3456, 0);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1166965571);
                gapComposer.end(false);
            }
            popupProperties2 = popupProperties3;
            modifier3 = modifier4;
            scrollState2 = scrollState3;
            shape2 = shape3;
            j3 = j5;
            f2 = f3;
        } else {
            gapComposer.skipToGroupEnd();
            scrollState2 = scrollState;
            popupProperties2 = popupProperties;
            shape2 = shape;
            j3 = j2;
            f2 = f;
            modifier3 = modifier2;
            j4 = j;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.AndroidMenu_androidKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    AndroidMenu_androidKt.m320DropdownMenuIlH_yew(z, function0, modifier3, j4, scrollState2, popupProperties2, shape2, j3, f2, composableLambdaImpl, (Composer) obj, updateChangedFlags, i2);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void DropdownMenuItem(ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, Composer composer, int i) {
        Modifier modifier2;
        boolean z2;
        MenuItemColors menuItemColors2;
        MenuItemColors menuItemColors3;
        int i2;
        Modifier modifier3;
        MenuItemColors menuItemColors4;
        long Color;
        long Color2;
        long Color3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-532959117);
        int i3 = i | (gapComposer.changedInstance(function0) ? 32 : 16) | 748928 | (gapComposer.changed(paddingValues) ? 8388608 : 4194304) | 100663296;
        boolean z3 = true;
        if (gapComposer.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                float f = MenuDefaults.ShadowElevation;
                ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
                MenuItemColors menuItemColors5 = colorScheme.defaultMenuItemColorsCached;
                if (menuItemColors5 == null) {
                    long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemLabelTextColor);
                    long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemLeadingIconColor);
                    long fromToken3 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemTrailingIconColor);
                    Color = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), ListTokens.ListItemDisabledLabelTextOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemDisabledLabelTextColor)));
                    Color2 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), ListTokens.ListItemDisabledLeadingIconOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemDisabledLeadingIconColor)));
                    Color3 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), ListTokens.ListItemDisabledTrailingIconOpacity, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.ListItemDisabledTrailingIconColor)));
                    menuItemColors3 = new MenuItemColors(fromToken, fromToken2, fromToken3, Color, Color2, Color3);
                    colorScheme.defaultMenuItemColorsCached = menuItemColors3;
                } else {
                    menuItemColors3 = menuItemColors5;
                }
                i2 = i3 & (-3670017);
                modifier3 = Modifier.Companion.$$INSTANCE;
                menuItemColors4 = menuItemColors3;
            } else {
                gapComposer.skipToGroupEnd();
                i2 = i3 & (-3670017);
                modifier3 = modifier;
                z3 = z;
                menuItemColors4 = menuItemColors;
            }
            gapComposer.endDefaults();
            CardKt.DropdownMenuItemContent(composableLambdaImpl, function0, modifier3, z3, menuItemColors4, paddingValues, gapComposer, i2 & 268435454);
            modifier2 = modifier3;
            z2 = z3;
            menuItemColors2 = menuItemColors4;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z2 = z;
            menuItemColors2 = menuItemColors;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AndroidMenu_androidKt$$ExternalSyntheticLambda2(composableLambdaImpl, function0, modifier2, z2, menuItemColors2, paddingValues, i);
        }
    }
}
