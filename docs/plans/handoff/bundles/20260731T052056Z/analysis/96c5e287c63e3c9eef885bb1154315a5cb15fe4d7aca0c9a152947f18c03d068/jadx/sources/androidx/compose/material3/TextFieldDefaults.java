package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.material3.internal.TextFieldType;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.FilledTextFieldTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.OutlinedTextFieldTokens;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.work.OperationKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldDefaults {
    public static final TextFieldDefaults INSTANCE$1 = new TextFieldDefaults();
    public static final TextFieldDefaults INSTANCE$2 = new TextFieldDefaults();
    public static final TextFieldDefaults INSTANCE = new TextFieldDefaults();

    /* renamed from: colors-0hiis_0, reason: not valid java name */
    public static TextFieldColors m304colors0hiis_0(long j, long j2, long j3, long j4, long j5, long j6, GapComposer gapComposer, int i) {
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        long Color7;
        long Color8;
        long Color9;
        long j7 = (i & 2) != 0 ? Color.Unspecified : j2;
        long j8 = Color.Unspecified;
        long j9 = (i & 8) != 0 ? j8 : j3;
        long j10 = (i & 256) != 0 ? j8 : j4;
        long j11 = (i & 4096) != 0 ? j8 : j6;
        ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
        TextFieldColors textFieldColors = colorScheme.defaultOutlinedTextFieldColorsCached;
        if (textFieldColors == null) {
            gapComposer.startReplaceGroup(390452338);
            gapComposer.end(false);
            textFieldColors = null;
        } else {
            gapComposer.startReplaceGroup(390452339);
            TextSelectionColors textSelectionColors = (TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors);
            if (!Intrinsics.areEqual(textFieldColors.textSelectionColors, textSelectionColors)) {
                textFieldColors = textFieldColors.m302copyejIjP34(textFieldColors.focusedTextColor, textFieldColors.unfocusedTextColor, textFieldColors.disabledTextColor, textFieldColors.errorTextColor, textFieldColors.focusedContainerColor, textFieldColors.unfocusedContainerColor, textFieldColors.disabledContainerColor, textFieldColors.errorContainerColor, textFieldColors.cursorColor, textFieldColors.errorCursorColor, textSelectionColors, textFieldColors.focusedIndicatorColor, textFieldColors.unfocusedIndicatorColor, textFieldColors.disabledIndicatorColor, textFieldColors.errorIndicatorColor, textFieldColors.focusedLeadingIconColor, textFieldColors.unfocusedLeadingIconColor, textFieldColors.disabledLeadingIconColor, textFieldColors.errorLeadingIconColor, textFieldColors.focusedTrailingIconColor, textFieldColors.unfocusedTrailingIconColor, textFieldColors.disabledTrailingIconColor, textFieldColors.errorTrailingIconColor, textFieldColors.focusedLabelColor, textFieldColors.unfocusedLabelColor, textFieldColors.disabledLabelColor, textFieldColors.errorLabelColor, textFieldColors.focusedPlaceholderColor, textFieldColors.unfocusedPlaceholderColor, textFieldColors.disabledPlaceholderColor, textFieldColors.errorPlaceholderColor, textFieldColors.focusedSupportingTextColor, textFieldColors.unfocusedSupportingTextColor, textFieldColors.disabledSupportingTextColor, textFieldColors.errorSupportingTextColor, textFieldColors.focusedPrefixColor, textFieldColors.unfocusedPrefixColor, textFieldColors.disabledPrefixColor, textFieldColors.errorPrefixColor, textFieldColors.focusedSuffixColor, textFieldColors.unfocusedSuffixColor, textFieldColors.disabledSuffixColor, textFieldColors.errorSuffixColor);
                colorScheme.defaultOutlinedTextFieldColorsCached = textFieldColors;
            }
            gapComposer.end(false);
        }
        if (textFieldColors == null) {
            gapComposer.startReplaceGroup(-1788321191);
            long fromToken = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.FocusInputColor);
            long fromToken2 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.InputColor);
            ColorSchemeKeyTokens colorSchemeKeyTokens = OutlinedTextFieldTokens.DisabledInputColor;
            Color = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens)));
            long fromToken3 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.ErrorInputColor);
            long j12 = Color.Transparent;
            long fromToken4 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.CaretColor);
            long fromToken5 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.ErrorFocusCaretColor);
            TextSelectionColors textSelectionColors2 = (TextSelectionColors) gapComposer.consume(TextSelectionColorsKt.LocalTextSelectionColors);
            long fromToken6 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.FocusOutlineColor);
            long fromToken7 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.OutlineColor);
            Color2 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.12f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.DisabledOutlineColor)));
            long fromToken8 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.ErrorOutlineColor);
            long fromToken9 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.FocusLeadingIconColor);
            long fromToken10 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.LeadingIconColor);
            Color3 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.DisabledLeadingIconColor)));
            long fromToken11 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.ErrorLeadingIconColor);
            long fromToken12 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.FocusTrailingIconColor);
            long fromToken13 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.TrailingIconColor);
            Color4 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.DisabledTrailingIconColor)));
            long fromToken14 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.ErrorTrailingIconColor);
            long fromToken15 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.FocusLabelColor);
            long fromToken16 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.LabelColor);
            Color5 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.DisabledLabelColor)));
            long fromToken17 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.ErrorLabelColor);
            ColorSchemeKeyTokens colorSchemeKeyTokens2 = OutlinedTextFieldTokens.InputPlaceholderColor;
            long fromToken18 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
            long fromToken19 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
            Color6 = ColorKt.Color(Color.m433getRedimpl(r13), Color.m432getGreenimpl(r13), Color.m430getBlueimpl(r13), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens)));
            long fromToken20 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
            long fromToken21 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.FocusSupportingColor);
            long fromToken22 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.SupportingColor);
            Color7 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.DisabledSupportingColor)));
            long fromToken23 = ColorSchemeKt.fromToken(colorScheme, OutlinedTextFieldTokens.ErrorSupportingColor);
            ColorSchemeKeyTokens colorSchemeKeyTokens3 = OutlinedTextFieldTokens.InputPrefixColor;
            long fromToken24 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
            long fromToken25 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
            Color8 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3)));
            long fromToken26 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
            ColorSchemeKeyTokens colorSchemeKeyTokens4 = OutlinedTextFieldTokens.InputSuffixColor;
            long fromToken27 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4);
            long fromToken28 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4);
            Color9 = ColorKt.Color(Color.m433getRedimpl(r4), Color.m432getGreenimpl(r4), Color.m430getBlueimpl(r4), 0.38f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4)));
            textFieldColors = new TextFieldColors(fromToken, fromToken2, Color, fromToken3, j12, j12, j12, j12, fromToken4, fromToken5, textSelectionColors2, fromToken6, fromToken7, Color2, fromToken8, fromToken9, fromToken10, Color3, fromToken11, fromToken12, fromToken13, Color4, fromToken14, fromToken15, fromToken16, Color5, fromToken17, fromToken18, fromToken19, Color6, fromToken20, fromToken21, fromToken22, Color7, fromToken23, fromToken24, fromToken25, Color8, fromToken26, fromToken27, fromToken28, Color9, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4));
            colorScheme.defaultOutlinedTextFieldColorsCached = textFieldColors;
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1788515437);
            gapComposer.end(false);
        }
        return textFieldColors.m302copyejIjP34(j, j7, j8, j9, j8, j8, j8, j8, j10, j8, null, j5, j11, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8, j8);
    }

    public static TextFieldColors defaultTextFieldColors$material3(ColorScheme colorScheme, TextSelectionColors textSelectionColors) {
        long Color;
        long Color2;
        long Color3;
        long Color4;
        long Color5;
        long Color6;
        long Color7;
        long Color8;
        long Color9;
        TextFieldColors m302copyejIjP34;
        TextFieldColors textFieldColors = colorScheme.defaultTextFieldColorsCached;
        if (textFieldColors != null) {
            if (Intrinsics.areEqual(textFieldColors.textSelectionColors, textSelectionColors)) {
                return textFieldColors;
            }
            m302copyejIjP34 = textFieldColors.m302copyejIjP34(textFieldColors.focusedTextColor, textFieldColors.unfocusedTextColor, textFieldColors.disabledTextColor, textFieldColors.errorTextColor, textFieldColors.focusedContainerColor, textFieldColors.unfocusedContainerColor, textFieldColors.disabledContainerColor, textFieldColors.errorContainerColor, textFieldColors.cursorColor, textFieldColors.errorCursorColor, textSelectionColors, textFieldColors.focusedIndicatorColor, textFieldColors.unfocusedIndicatorColor, textFieldColors.disabledIndicatorColor, textFieldColors.errorIndicatorColor, textFieldColors.focusedLeadingIconColor, textFieldColors.unfocusedLeadingIconColor, textFieldColors.disabledLeadingIconColor, textFieldColors.errorLeadingIconColor, textFieldColors.focusedTrailingIconColor, textFieldColors.unfocusedTrailingIconColor, textFieldColors.disabledTrailingIconColor, textFieldColors.errorTrailingIconColor, textFieldColors.focusedLabelColor, textFieldColors.unfocusedLabelColor, textFieldColors.disabledLabelColor, textFieldColors.errorLabelColor, textFieldColors.focusedPlaceholderColor, textFieldColors.unfocusedPlaceholderColor, textFieldColors.disabledPlaceholderColor, textFieldColors.errorPlaceholderColor, textFieldColors.focusedSupportingTextColor, textFieldColors.unfocusedSupportingTextColor, textFieldColors.disabledSupportingTextColor, textFieldColors.errorSupportingTextColor, textFieldColors.focusedPrefixColor, textFieldColors.unfocusedPrefixColor, textFieldColors.disabledPrefixColor, textFieldColors.errorPrefixColor, textFieldColors.focusedSuffixColor, textFieldColors.unfocusedSuffixColor, textFieldColors.disabledSuffixColor, textFieldColors.errorSuffixColor);
            colorScheme.defaultTextFieldColorsCached = m302copyejIjP34;
            return m302copyejIjP34;
        }
        long fromToken = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.FocusInputColor);
        long fromToken2 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.InputColor);
        ColorSchemeKeyTokens colorSchemeKeyTokens = FilledTextFieldTokens.DisabledInputColor;
        long fromToken3 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens);
        float f = FilledTextFieldTokens.DisabledInputOpacity;
        Color = ColorKt.Color(Color.m433getRedimpl(fromToken3), Color.m432getGreenimpl(fromToken3), Color.m430getBlueimpl(fromToken3), f, Color.m431getColorSpaceimpl(fromToken3));
        long fromToken4 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ErrorInputColor);
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = FilledTextFieldTokens.ContainerColor;
        long fromToken5 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
        long fromToken6 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
        long fromToken7 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
        long fromToken8 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens2);
        long fromToken9 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.CaretColor);
        long fromToken10 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ErrorFocusCaretColor);
        long fromToken11 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.FocusActiveIndicatorColor);
        long fromToken12 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ActiveIndicatorColor);
        Color2 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), FilledTextFieldTokens.DisabledActiveIndicatorOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.DisabledActiveIndicatorColor)));
        long fromToken13 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ErrorActiveIndicatorColor);
        long fromToken14 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.FocusLeadingIconColor);
        long fromToken15 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.LeadingIconColor);
        Color3 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), FilledTextFieldTokens.DisabledLeadingIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.DisabledLeadingIconColor)));
        long fromToken16 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ErrorLeadingIconColor);
        long fromToken17 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.FocusTrailingIconColor);
        long fromToken18 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.TrailingIconColor);
        Color4 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), FilledTextFieldTokens.DisabledTrailingIconOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.DisabledTrailingIconColor)));
        long fromToken19 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ErrorTrailingIconColor);
        long fromToken20 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.FocusLabelColor);
        long fromToken21 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.LabelColor);
        Color5 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), FilledTextFieldTokens.DisabledLabelOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.DisabledLabelColor)));
        long fromToken22 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ErrorLabelColor);
        ColorSchemeKeyTokens colorSchemeKeyTokens3 = FilledTextFieldTokens.InputPlaceholderColor;
        long fromToken23 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
        long fromToken24 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
        Color6 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens)));
        long fromToken25 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens3);
        long fromToken26 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.FocusSupportingColor);
        long fromToken27 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.SupportingColor);
        Color7 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), FilledTextFieldTokens.DisabledSupportingOpacity, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.DisabledSupportingColor)));
        long fromToken28 = ColorSchemeKt.fromToken(colorScheme, FilledTextFieldTokens.ErrorSupportingColor);
        ColorSchemeKeyTokens colorSchemeKeyTokens4 = FilledTextFieldTokens.InputPrefixColor;
        long fromToken29 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4);
        long fromToken30 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4);
        Color8 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4)));
        long fromToken31 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens4);
        ColorSchemeKeyTokens colorSchemeKeyTokens5 = FilledTextFieldTokens.InputSuffixColor;
        long fromToken32 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens5);
        long fromToken33 = ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens5);
        Color9 = ColorKt.Color(Color.m433getRedimpl(r1), Color.m432getGreenimpl(r1), Color.m430getBlueimpl(r1), f, Color.m431getColorSpaceimpl(ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens5)));
        TextFieldColors textFieldColors2 = new TextFieldColors(fromToken, fromToken2, Color, fromToken4, fromToken5, fromToken6, fromToken7, fromToken8, fromToken9, fromToken10, textSelectionColors, fromToken11, fromToken12, Color2, fromToken13, fromToken14, fromToken15, Color3, fromToken16, fromToken17, fromToken18, Color4, fromToken19, fromToken20, fromToken21, Color5, fromToken22, fromToken23, fromToken24, Color6, fromToken25, fromToken26, fromToken27, Color7, fromToken28, fromToken29, fromToken30, Color8, fromToken31, fromToken32, fromToken33, Color9, ColorSchemeKt.fromToken(colorScheme, colorSchemeKeyTokens5));
        colorScheme.defaultTextFieldColorsCached = textFieldColors2;
        return textFieldColors2;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x005c  */
    /* renamed from: Container-4EFweAY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m306Container4EFweAY(final boolean r25, final boolean r26, final androidx.compose.foundation.interaction.MutableInteractionSourceImpl r27, androidx.compose.ui.Modifier r28, final androidx.compose.material3.TextFieldColors r29, final androidx.compose.ui.graphics.Shape r30, float r31, float r32, androidx.compose.runtime.GapComposer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TextFieldDefaults.m306Container4EFweAY(boolean, boolean, androidx.compose.foundation.interaction.MutableInteractionSourceImpl, androidx.compose.ui.Modifier, androidx.compose.material3.TextFieldColors, androidx.compose.ui.graphics.Shape, float, float, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public void DecorationBox(final String str, final Function2 function2, final boolean z, final boolean z2, final VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda0, final MutableInteractionSourceImpl mutableInteractionSourceImpl, final boolean z3, final Function2 function22, final Function2 function23, final Function2 function24, final Function2 function25, final Function2 function26, final Function2 function27, final TextFieldColors textFieldColors, PaddingValues paddingValues, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        int i2;
        boolean z4;
        final PaddingValues paddingValues2;
        PaddingValues paddingValuesImpl;
        int i3;
        ComposableLambdaImpl rememberComposableLambda;
        gapComposer.startRestartGroup(-1732281618);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            z4 = z;
            i2 |= gapComposer.changed(z4) ? 256 : 128;
        } else {
            z4 = z;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(z2) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer.changed(visualTransformation$Companion$$ExternalSyntheticLambda0) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            i2 |= gapComposer.changed(mutableInteractionSourceImpl) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i2 |= gapComposer.changed(z3) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i2 |= gapComposer.changedInstance(function22) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i2 |= gapComposer.changedInstance(function23) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 536870912 : 268435456;
        }
        int i4 = 14155776 | (gapComposer.changedInstance(function24) ? 4 : 2) | (gapComposer.changedInstance(function25) ? 32 : 16) | (gapComposer.changedInstance(function26) ? 256 : 128) | (gapComposer.changedInstance(function27) ? 2048 : 1024) | (gapComposer.changed(textFieldColors) ? 16384 : 8192) | 65536;
        if (gapComposer.shouldExecute(i2 & 1, ((i2 & 306783379) == 306783378 && (i4 & 4793491) == 4793490) ? false : true)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                paddingValuesImpl = new PaddingValuesImpl(16.0f, 16.0f, 16.0f, 16.0f);
                i3 = i4 & (-458753);
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i4 & (-458753);
                paddingValuesImpl = paddingValues;
            }
            gapComposer.endDefaults();
            PaddingValues paddingValues3 = paddingValuesImpl;
            boolean z5 = ((i2 & 14) == 4) | ((i2 & 57344) == 16384);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z5 || rememberedValue == Composer$Companion.Empty) {
                AnnotatedString annotatedString = new AnnotatedString(str);
                visualTransformation$Companion$$ExternalSyntheticLambda0.getClass();
                rememberedValue = new TransformedText(annotatedString, OffsetMapping.Companion.Identity);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            String str2 = ((TransformedText) rememberedValue).text.text;
            TextFieldType textFieldType = TextFieldType.Outlined;
            TextFieldLabelPosition$Attached textFieldLabelPosition$Attached = new TextFieldLabelPosition$Attached();
            int i5 = 3;
            if (function22 == null) {
                gapComposer.startReplaceGroup(1927058812);
                gapComposer.end(false);
                rememberComposableLambda = null;
            } else {
                gapComposer.startReplaceGroup(1927058813);
                rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1459717586, new TooltipKt$animateTooltip$2(i5, function22), gapComposer);
                gapComposer.end(false);
            }
            int i6 = i2 >> 9;
            int i7 = i3 << 21;
            ComposableLambdaImpl composableLambdaImpl2 = rememberComposableLambda;
            LayoutUtilKt.CommonDecorationBox(textFieldType, str2, function2, textFieldLabelPosition$Attached, composableLambdaImpl2, function23, function24, function25, function26, function27, z2, z4, z3, mutableInteractionSourceImpl, paddingValues3, textFieldColors, composableLambdaImpl, gapComposer, ((i2 << 3) & 896) | 6 | (i6 & 458752) | (i6 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192), (i6 & 7168) | (i2 & 896) | ((i3 >> 9) & 14) | ((i2 >> 6) & 112) | ((i2 >> 3) & 57344) | ((i3 << 6) & 3670016) | 12582912);
            paddingValues2 = paddingValues3;
        } else {
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
                    TextFieldDefaults.this.DecorationBox(str, function2, z, z2, visualTransformation$Companion$$ExternalSyntheticLambda0, mutableInteractionSourceImpl, z3, function22, function23, function24, function25, function26, function27, textFieldColors, paddingValues2, composableLambdaImpl, (GapComposer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public void DecorationBox(final String str, final Function2 function2, final boolean z, final VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda0, final MutableInteractionSourceImpl mutableInteractionSourceImpl, final Function2 function22, final Shape shape, final TextFieldColors textFieldColors, PaddingValues paddingValues, Function2 function23, GapComposer gapComposer, final int i) {
        int i2;
        Object obj;
        final PaddingValues paddingValues2;
        final Function2 function24;
        PaddingValues paddingValuesImpl;
        int i3;
        Function2 rememberComposableLambda;
        gapComposer.startRestartGroup(1806980801);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(str) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changed(false) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            obj = visualTransformation$Companion$$ExternalSyntheticLambda0;
            i2 |= gapComposer.changed(obj) ? 16384 : 8192;
        } else {
            obj = visualTransformation$Companion$$ExternalSyntheticLambda0;
        }
        if ((i & 196608) == 0) {
            i2 |= gapComposer.changed(mutableInteractionSourceImpl) ? 131072 : 65536;
        }
        if ((i & 1572864) == 0) {
            i2 |= gapComposer.changed(false) ? 1048576 : 524288;
        }
        if ((i & 12582912) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 8388608 : 4194304;
        }
        if ((i & 100663296) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 67108864 : 33554432;
        }
        if ((i & 805306368) == 0) {
            i2 |= gapComposer.changedInstance(null) ? 536870912 : 268435456;
        }
        int i4 = 100663296 | (gapComposer.changedInstance(function22) ? 4 : 2) | (gapComposer.changedInstance(null) ? 32 : 16) | (gapComposer.changedInstance(null) ? 256 : 128) | (gapComposer.changedInstance(null) ? 2048 : 1024) | (gapComposer.changed(shape) ? 16384 : 8192) | (gapComposer.changed(textFieldColors) ? 131072 : 65536) | 13107200;
        if (gapComposer.shouldExecute(i2 & 1, ((306783379 & i2) == 306783378 && (38347923 & i4) == 38347922) ? false : true)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
                rememberComposableLambda = function23;
                i3 = i4 & (-3670017);
                paddingValuesImpl = paddingValues;
            } else {
                paddingValuesImpl = new PaddingValuesImpl(16.0f, 16.0f, 16.0f, 16.0f);
                i3 = i4 & (-3670017);
                rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(417908150, new Function2() { // from class: androidx.compose.material3.TextFieldDefaults$DecorationBox$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        GapComposer gapComposer2 = (GapComposer) obj2;
                        int intValue = ((Number) obj3).intValue();
                        if (gapComposer2.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                            TextFieldDefaults.INSTANCE.m305Container4EFweAY(z, mutableInteractionSourceImpl, textFieldColors, shape, gapComposer2, 114822144);
                        } else {
                            gapComposer2.skipToGroupEnd();
                        }
                        return Unit.INSTANCE;
                    }
                }, gapComposer);
            }
            gapComposer.endDefaults();
            boolean z2 = ((i2 & 14) == 4) | ((i2 & 57344) == 16384);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z2 || rememberedValue == Composer$Companion.Empty) {
                AnnotatedString annotatedString = new AnnotatedString(str);
                obj.getClass();
                rememberedValue = new TransformedText(annotatedString, OffsetMapping.Companion.Identity);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            String str2 = ((TransformedText) rememberedValue).text.text;
            TextFieldType textFieldType = TextFieldType.Filled;
            TextFieldLabelPosition$Attached textFieldLabelPosition$Attached = new TextFieldLabelPosition$Attached();
            gapComposer.startReplaceGroup(-1353131191);
            gapComposer.end(false);
            int i5 = i2 >> 9;
            int i6 = i3 << 21;
            PaddingValues paddingValues3 = paddingValuesImpl;
            LayoutUtilKt.CommonDecorationBox(textFieldType, str2, function2, textFieldLabelPosition$Attached, null, null, function22, null, null, null, false, z, false, mutableInteractionSourceImpl, paddingValues3, textFieldColors, rememberComposableLambda, gapComposer, ((i2 << 3) & 896) | 6 | (i5 & 458752) | (i5 & 3670016) | (i6 & 29360128) | (i6 & 234881024) | (i6 & 1879048192), ((i3 >> 9) & 14) | ((i2 >> 6) & 112) | (i2 & 896) | (i5 & 7168) | ((i2 >> 3) & 57344) | ((i3 << 3) & 3670016) | 12582912);
            paddingValues2 = paddingValues3;
            function24 = rememberComposableLambda;
        } else {
            gapComposer.skipToGroupEnd();
            paddingValues2 = paddingValues;
            function24 = function23;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.compose.material3.TextFieldDefaults$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    TextFieldDefaults.this.DecorationBox(str, function2, z, visualTransformation$Companion$$ExternalSyntheticLambda0, mutableInteractionSourceImpl, function22, shape, textFieldColors, paddingValues2, function24, (GapComposer) obj2, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: Container-4EFweAY, reason: not valid java name */
    public void m305Container4EFweAY(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, TextFieldColors textFieldColors, Shape shape, GapComposer gapComposer, int i) {
        long j;
        gapComposer.startRestartGroup(-818661242);
        int i2 = 16;
        int i3 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changed(false) ? 32 : 16) | (gapComposer.changed(mutableInteractionSourceImpl) ? 256 : 128) | (gapComposer.changed(textFieldColors) ? 16384 : 8192) | (gapComposer.changed(shape) ? 131072 : 65536);
        if (gapComposer.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            boolean booleanValue = ((Boolean) OperationKt.collectIsFocusedAsState(mutableInteractionSourceImpl, gapComposer, (i3 >> 6) & 14).getValue()).booleanValue();
            if (!z) {
                j = textFieldColors.disabledContainerColor;
            } else if (booleanValue) {
                j = textFieldColors.focusedContainerColor;
            } else {
                j = textFieldColors.unfocusedContainerColor;
            }
            BoxKt.Box(ClipKt.drawWithCache(Modifier.Companion.$$INSTANCE, new NavController$$ExternalSyntheticLambda3(i2, shape, new TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(new TextFieldDefaults$Container$1(0, 0, State.class, SingleValueAnimationKt.m18animateColorAsStateeuL9pac(j, CardKt.value(MotionSchemeKeyTokens.FastEffects, gapComposer), gapComposer), "value", "getValue()Ljava/lang/Object;")))).then(new IndicatorLineElement(z, mutableInteractionSourceImpl, textFieldColors, shape)), gapComposer, 0);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new TextFieldDefaults$$ExternalSyntheticLambda1(i, 0, this, mutableInteractionSourceImpl, textFieldColors, shape, z);
        }
    }
}
