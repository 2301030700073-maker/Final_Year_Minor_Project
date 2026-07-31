package androidx.compose.material3;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class OutlinedTextFieldDefaults {
    public static final OutlinedTextFieldDefaults INSTANCE$1 = new OutlinedTextFieldDefaults();
    public static final OutlinedTextFieldDefaults INSTANCE = new OutlinedTextFieldDefaults();

    public static TextFieldColors colors(Composer composer) {
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        long Color7;
        long Color8;
        long Color9;
        GapComposer gapComposer = (GapComposer) composer;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        TextFieldColors textFieldColors = colorScheme.defaultOutlinedTextFieldColorsCached;
        if (textFieldColors == null) {
            gapComposer.startReplaceGroup(390452338);
            gapComposer.end(false);
            textFieldColors = null;
        } else {
            long j = textFieldColors.errorPlaceholderColor;
            long j2 = textFieldColors.disabledPlaceholderColor;
            long j3 = textFieldColors.unfocusedPlaceholderColor;
            long j4 = textFieldColors.focusedPlaceholderColor;
            long j5 = textFieldColors.errorLabelColor;
            long j6 = textFieldColors.disabledLabelColor;
            long j7 = textFieldColors.unfocusedLabelColor;
            long j8 = textFieldColors.focusedLabelColor;
            long j9 = textFieldColors.errorTrailingIconColor;
            long j10 = textFieldColors.disabledTrailingIconColor;
            long j11 = textFieldColors.unfocusedTrailingIconColor;
            long j12 = textFieldColors.focusedTrailingIconColor;
            long j13 = textFieldColors.errorLeadingIconColor;
            long j14 = textFieldColors.disabledLeadingIconColor;
            long j15 = textFieldColors.unfocusedLeadingIconColor;
            long j16 = textFieldColors.focusedLeadingIconColor;
            long j17 = textFieldColors.errorIndicatorColor;
            long j18 = textFieldColors.disabledIndicatorColor;
            long j19 = textFieldColors.unfocusedIndicatorColor;
            long j20 = textFieldColors.focusedIndicatorColor;
            TextSelectionColors textSelectionColors = textFieldColors.textSelectionColors;
            gapComposer.startReplaceGroup(390452339);
            TextSelectionColors textSelectionColors2 = (TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors);
            if (!Intrinsics.areEqual(textSelectionColors, textSelectionColors2)) {
                TextFieldColors textFieldColors2 = new TextFieldColors(textFieldColors.focusedTextColor, textFieldColors.unfocusedTextColor, textFieldColors.disabledTextColor, textFieldColors.errorTextColor, textFieldColors.focusedContainerColor, textFieldColors.unfocusedContainerColor, textFieldColors.disabledContainerColor, textFieldColors.errorContainerColor, textFieldColors.cursorColor, textFieldColors.errorCursorColor, textSelectionColors2 == null ? textSelectionColors : textSelectionColors2, j20, j19, j18, j17, j16, j15, j14, j13, j12, j11, j10, j9, j8, j7, j6, j5, j4, j3, j2, j, textFieldColors.focusedSupportingTextColor, textFieldColors.unfocusedSupportingTextColor, textFieldColors.disabledSupportingTextColor, textFieldColors.errorSupportingTextColor, textFieldColors.focusedPrefixColor, textFieldColors.unfocusedPrefixColor, textFieldColors.disabledPrefixColor, textFieldColors.errorPrefixColor, textFieldColors.focusedSuffixColor, textFieldColors.unfocusedSuffixColor, textFieldColors.disabledSuffixColor, textFieldColors.errorSuffixColor);
                colorScheme.defaultOutlinedTextFieldColorsCached = textFieldColors2;
                textFieldColors = textFieldColors2;
            }
            gapComposer.end(false);
        }
        if (textFieldColors != null) {
            gapComposer.startReplaceGroup(-1788515437);
            gapComposer.end(false);
            return textFieldColors;
        }
        gapComposer.startReplaceGroup(-1788321191);
        long fromToken = ColorSchemeKt.fromToken(colorScheme, ListTokens.FocusInputColor);
        long fromToken2 = ColorSchemeKt.fromToken(colorScheme, ListTokens.InputColor);
        ColorSchemeKeyTokens colorSchemeKeyTokens = ListTokens.DisabledInputColor;
        Color = ColorKt.Color(Color.m487getRedimpl(r8), Color.m486getGreenimpl(r8), Color.m484getBlueimpl(r8), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens)));
        long fromToken3 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ErrorInputColor);
        long j21 = Color.Transparent;
        long fromToken4 = ColorSchemeKt.fromToken(colorScheme, ListTokens.CaretColor);
        long fromToken5 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ErrorFocusCaretColor);
        TextSelectionColors textSelectionColors3 = (TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors);
        long fromToken6 = ColorSchemeKt.fromToken(colorScheme, ListTokens.FocusOutlineColor);
        long fromToken7 = ColorSchemeKt.fromToken(colorScheme, ListTokens.OutlineColor$3);
        Color2 = ColorKt.Color(Color.m487getRedimpl(r10), Color.m486getGreenimpl(r10), Color.m484getBlueimpl(r10), 0.12f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledOutlineColor)));
        long fromToken8 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ErrorOutlineColor);
        long fromToken9 = ColorSchemeKt.fromToken(colorScheme, ListTokens.FocusLeadingIconColor);
        long fromToken10 = ColorSchemeKt.fromToken(colorScheme, ListTokens.LeadingIconColor$1);
        Color3 = ColorKt.Color(Color.m487getRedimpl(r10), Color.m486getGreenimpl(r10), Color.m484getBlueimpl(r10), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledLeadingIconColor)));
        long fromToken11 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ErrorLeadingIconColor);
        long fromToken12 = ColorSchemeKt.fromToken(colorScheme, ListTokens.FocusTrailingIconColor);
        long fromToken13 = ColorSchemeKt.fromToken(colorScheme, ListTokens.TrailingIconColor$1);
        Color4 = ColorKt.Color(Color.m487getRedimpl(r10), Color.m486getGreenimpl(r10), Color.m484getBlueimpl(r10), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledTrailingIconColor)));
        long fromToken14 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ErrorTrailingIconColor);
        long fromToken15 = ColorSchemeKt.fromToken(colorScheme, ListTokens.FocusLabelColor);
        long fromToken16 = ColorSchemeKt.fromToken(colorScheme, ListTokens.LabelColor);
        Color5 = ColorKt.Color(Color.m487getRedimpl(r10), Color.m486getGreenimpl(r10), Color.m484getBlueimpl(r10), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledLabelColor)));
        long fromToken17 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ErrorLabelColor);
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = ListTokens.InputPlaceholderColor;
        long fromToken18 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
        long fromToken19 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
        Color6 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens)));
        long fromToken20 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
        long fromToken21 = ColorSchemeKt.fromToken(colorScheme, ListTokens.FocusSupportingColor);
        long fromToken22 = ColorSchemeKt.fromToken(colorScheme, ListTokens.SupportingColor);
        Color7 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, ListTokens.DisabledSupportingColor)));
        long fromToken23 = ColorSchemeKt.fromToken(colorScheme, ListTokens.ErrorSupportingColor);
        ColorSchemeKeyTokens colorSchemeKeyTokens3 = ListTokens.InputPrefixColor;
        long fromToken24 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
        long fromToken25 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
        Color8 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3)));
        long fromToken26 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
        ColorSchemeKeyTokens colorSchemeKeyTokens4 = ListTokens.InputSuffixColor;
        long fromToken27 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4);
        long fromToken28 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4);
        Color9 = ColorKt.Color(Color.m487getRedimpl(r4), Color.m486getGreenimpl(r4), Color.m484getBlueimpl(r4), 0.38f, Color.m485getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4)));
        TextFieldColors textFieldColors3 = new TextFieldColors(fromToken, fromToken2, Color, fromToken3, j21, j21, j21, j21, fromToken4, fromToken5, textSelectionColors3, fromToken6, fromToken7, Color2, fromToken8, fromToken9, fromToken10, Color3, fromToken11, fromToken12, fromToken13, Color4, fromToken14, fromToken15, fromToken16, Color5, fromToken17, fromToken18, fromToken19, Color6, fromToken20, fromToken21, fromToken22, Color7, fromToken23, fromToken24, fromToken25, Color8, fromToken26, fromToken27, fromToken28, Color9, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4));
        colorScheme.defaultOutlinedTextFieldColorsCached = textFieldColors3;
        gapComposer.end(false);
        return textFieldColors3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01e8  */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* renamed from: Container-4EFweAY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m350Container4EFweAY(final boolean r23, final boolean r24, final androidx.compose.foundation.interaction.MutableInteractionSourceImpl r25, androidx.compose.ui.Modifier r26, final androidx.compose.material3.TextFieldColors r27, final androidx.compose.ui.graphics.Shape r28, float r29, float r30, androidx.compose.runtime.Composer r31, final int r32, final int r33) {
        /*
            Method dump skipped, instructions count: 510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldDefaults.m350Container4EFweAY(boolean, boolean, androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.ui.Modifier, androidx.compose.material3.TextFieldColors, androidx.compose.ui.graphics.Shape, float, float, androidx.compose.runtime.Composer, int, int):void");
    }

    public void DecorationBox(final String str, final Function2 function2, final boolean z, final boolean z2, final VisualTransformation visualTransformation, final MutableInteractionSourceImpl mutableInteractionSourceImpl, final boolean z3, final Function2 function22, final Function2 function23, final TextFieldColors textFieldColors, PaddingValues paddingValues, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        Function2 function24;
        boolean z4;
        boolean z5;
        GapComposer gapComposer;
        final PaddingValues paddingValues2;
        PaddingValues paddingValuesImpl;
        int i3;
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-1732281618);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            function24 = function2;
            i2 |= gapComposer2.changedInstance(function24) ? 32 : 16;
        } else {
            function24 = function2;
        }
        if ((i & 384) == 0) {
            z4 = z;
            i2 |= gapComposer2.changed(z4) ? 256 : 128;
        } else {
            z4 = z;
        }
        if ((i & 3072) == 0) {
            z5 = z2;
            i2 |= gapComposer2.changed(z5) ? 2048 : 1024;
        } else {
            z5 = z2;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(visualTransformation) ? 16384 : 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer2.changed(mutableInteractionSourceImpl) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i2 |= gapComposer2.changed(z3) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i2 |= gapComposer2.changedInstance(function22) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i2 |= gapComposer2.changedInstance(null) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i2 |= gapComposer2.changedInstance(null) ? 536870912 : 268435456;
        }
        int i4 = 14155776 | (gapComposer2.changedInstance(function23) ? 4 : 2) | (gapComposer2.changedInstance(null) ? 32 : 16) | (gapComposer2.changedInstance(null) ? 256 : 128) | (gapComposer2.changedInstance(null) ? 2048 : 1024) | (gapComposer2.changed(textFieldColors) ? 16384 : 8192) | 65536;
        if (gapComposer2.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (4793491 & i4) == 4793490) ? false : true)) {
            gapComposer2.startDefaults();
            if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                paddingValuesImpl = new PaddingValuesImpl(16.0f, 16.0f, 16.0f, 16.0f);
                i3 = i4 & (-458753);
            } else {
                gapComposer2.skipToGroupEnd();
                i3 = i4 & (-458753);
                paddingValuesImpl = paddingValues;
            }
            gapComposer2.endDefaults();
            boolean z6 = ((i2 & 14) == 4) | ((i2 & 57344) == 16384);
            Object rememberedValue = gapComposer2.rememberedValue();
            if (z6 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = visualTransformation.filter(new AnnotatedString(str));
                gapComposer2.updateRememberedValue(rememberedValue);
            }
            String str2 = ((TransformedText) rememberedValue).text.text;
            TextFieldLabelPosition$Attached textFieldLabelPosition$Attached = new TextFieldLabelPosition$Attached();
            int i5 = 3;
            if (function22 == null) {
                gapComposer2.startReplaceGroup(1927058812);
                gapComposer2.end(false);
                composableLambdaImpl2 = null;
            } else {
                gapComposer2.startReplaceGroup(1927058813);
                ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1459717586, new TooltipKt$animateTooltip$2(i5, function22), gapComposer2);
                gapComposer2.end(false);
                composableLambdaImpl2 = rememberComposableLambda;
            }
            int i6 = i2 >> 9;
            int i7 = i3 << 21;
            gapComposer = gapComposer2;
            Icons$Filled.CommonDecorationBox(str2, function24, textFieldLabelPosition$Attached, composableLambdaImpl2, function23, z5, z4, z3, mutableInteractionSourceImpl, paddingValuesImpl, textFieldColors, composableLambdaImpl, gapComposer, ((i2 << 3) & 896) | 6 | (i6 & 458752) | (i6 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192), (i2 & 896) | ((i3 >> 9) & 14) | ((i2 >> 6) & 112) | (i6 & 7168) | ((i2 >> 3) & 57344) | ((i3 << 6) & 3670016) | 12582912);
            paddingValues2 = paddingValuesImpl;
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
            paddingValues2 = paddingValues;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(i | 1);
                    OutlinedTextFieldDefaults.this.DecorationBox(str, function2, z, z2, visualTransformation, mutableInteractionSourceImpl, z3, function22, function23, textFieldColors, paddingValues2, composableLambdaImpl, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
