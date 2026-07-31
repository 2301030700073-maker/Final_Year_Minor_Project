package app.k9mail.feature.account.oauth.ui.view;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.CardKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil;
import androidx.work.Operation$State;
import app.k9mail.feature.account.oauth.AccountOAuthModuleKt$$ExternalSyntheticLambda1;
import app.k9mail.feature.onboarding.welcome.ui.WelcomeContentKt$$ExternalSyntheticLambda9;
import com.fsck.k9.R;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.math.MathKt;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SignInViewKt {
    public static final ComposableLambdaImpl lambda$1800067409 = new ComposableLambdaImpl(1800067409, new AccountOAuthModuleKt$$ExternalSyntheticLambda1(8), false);
    public static final ComposableLambdaImpl lambda$212655698 = new ComposableLambdaImpl(212655698, new WelcomeContentKt$$ExternalSyntheticLambda9(6), false);

    public static final void GoogleSignInSupportText(Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-615152413);
        if (gapComposer.shouldExecute(i & 1, i != 0)) {
            gapComposer.startReplaceGroup(1544023560);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            gapComposer.startReplaceGroup(1544024635);
            int pushStyle = builder.pushStyle(new SpanStyle(((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).primary, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (SystemFontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, TextDecoration.Underline, (Shadow) null, 61438));
            try {
                gapComposer.startReplaceGroup(1544031255);
                AnnotatedString.Builder.MutableRange mutableRange = new AnnotatedString.Builder.MutableRange(new LinkAnnotation.Url("https://support.thunderbird.net/kb/gmail-thunderbird-android", null, 6), builder.text.length(), 0, 12);
                ArrayList arrayList = builder.styleStack;
                arrayList.add(mutableRange);
                builder.annotations.add(mutableRange);
                int size = arrayList.size() - 1;
                try {
                    builder.append(Operation$State.stringResource(gapComposer, R.string.account_oauth_google_sign_in_support_text_link_text));
                    builder.pop(size);
                    gapComposer.end(false);
                    builder.pop(pushStyle);
                    gapComposer.end(false);
                    AnnotatedString annotatedString = builder.toAnnotatedString();
                    gapComposer.end(false);
                    MathKt.m985TextBodySmallZHfKjFs(DBUtil.annotatedStringResource(R.string.account_oauth_google_sign_in_support_text, annotatedString, gapComposer), null, 0L, new TextAlign(3), 0, 0, null, gapComposer, 0, 118);
                } catch (Throwable th) {
                    builder.pop(size);
                    throw th;
                }
            } catch (Throwable th2) {
                builder.pop(pushStyle);
                throw th2;
            }
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AccountOAuthModuleKt$$ExternalSyntheticLambda1(i, 9);
        }
    }

    public static final void SignInView(int i, Composer composer, Modifier modifier, Function0 function0, boolean z, boolean z2) {
        int i2;
        boolean z3;
        Modifier modifier2;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1733282042);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(z) ? 32 : 16;
        }
        int i3 = i2 | 384;
        if ((i & 3072) == 0) {
            z3 = z2;
            i3 |= gapComposer.changed(z3) ? 2048 : 1024;
        } else {
            z3 = z2;
        }
        if (gapComposer.shouldExecute(i3 & 1, (i3 & 1171) != 1170)) {
            BiasAlignment.Horizontal horizontal = Alignment.Companion.CenterHorizontally;
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new StreamSharing$$ExternalSyntheticLambda0(7)), horizontal, gapComposer, 48);
            long j = gapComposer.compositeKeyHashCode;
            int i4 = (int) (j ^ (j >>> 32));
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, companion);
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m380setimpl(gapComposer, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m380setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m380setimpl(gapComposer, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
            Updater.m379reconcileimpl(gapComposer, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
            Updater.m380setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            MathKt.m984TextBodySmallXl4FiYE(Operation$State.stringResource(gapComposer, R.string.account_oauth_sign_in_description), null, 0L, new TextAlign(3), 0, 0, gapComposer, 0, 54);
            if (z) {
                gapComposer.startReplaceGroup(1168770060);
                SignInWithGoogleButton((i3 & 14) | ((i3 >> 3) & 896), gapComposer, null, function0, z3, false);
                GoogleSignInSupportText(gapComposer, 0);
                gapComposer.end(false);
            } else {
                gapComposer.startReplaceGroup(1168953642);
                IntOffsetKt.ButtonFilled(Operation$State.stringResource(gapComposer, R.string.account_oauth_sign_in_button), function0, null, z2, null, null, null, gapComposer, ((i3 << 3) & 112) | (i3 & 7168), 244);
                gapComposer.end(false);
            }
            gapComposer.end(true);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SignInViewKt$$ExternalSyntheticLambda0(function0, z, modifier2, z2, i);
        }
    }

    public static final void SignInWithGoogleButton(int i, Composer composer, Modifier modifier, Function0 function0, boolean z, boolean z2) {
        int i2;
        Modifier modifier2;
        boolean z3;
        boolean isSystemInDarkTheme;
        int i3;
        Modifier modifier3;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-320057278);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(function0) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i4 = i2 | 48;
        if ((i & 384) == 0) {
            i4 |= gapComposer.changed(z) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i4 |= 1024;
        }
        if (gapComposer.shouldExecute(i4 & 1, (i4 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                isSystemInDarkTheme = ImageKt.isSystemInDarkTheme(gapComposer);
                i3 = i4 & (-7169);
                modifier3 = Modifier.Companion.$$INSTANCE;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i4 & (-7169);
                modifier3 = modifier;
                isSystemInDarkTheme = z2;
            }
            gapComposer.endDefaults();
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.ContentPadding;
            Modifier modifier4 = modifier3;
            CardKt.Button(function0, modifier4, z, null, ButtonDefaults.m326buttonColorsro_MJ88(isSystemInDarkTheme ? ColorKt.Color(4282549748L) : ColorKt.Color(4294967295L), isSystemInDarkTheme ? ColorKt.Color(4294967295L) : ColorKt.Color(2264924160L), 0L, 0L, gapComposer, 12), null, ImageKt.m131BorderStrokecXLIe8U(1.0f, isSystemInDarkTheme ? ColorKt.Color(4282549748L) : ColorKt.Color(2264924160L)), new PaddingValuesImpl(0.0f, 0.0f, 0.0f, 0.0f), lambda$212655698, gapComposer, (i3 & 14) | 817889280 | (i3 & 112) | (i3 & 896), 296);
            gapComposer = gapComposer;
            z3 = isSystemInDarkTheme;
            modifier2 = modifier4;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            z3 = z2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new SignInViewKt$$ExternalSyntheticLambda0(function0, modifier2, z, z3, i);
        }
    }
}
