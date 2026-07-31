package app.k9mail.core.ui.compose.designsystem.organism.banner.global;

import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.text.TextFieldCursorKt$$ExternalSyntheticLambda0;
import androidx.compose.material3.CardKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.room.util.RelationUtil;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.organism.banner.BannerNotificationCardDefaults;
import app.k9mail.dev.ReleaseConfigKt$$ExternalSyntheticLambda0;
import app.k9mail.feature.account.common.ui.item.LoadingItemKt$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BannerGlobalNotificationCardKt {

    /* renamed from: lambda$-544424655, reason: not valid java name */
    public static final ComposableLambdaImpl f19lambda$544424655 = new ComposableLambdaImpl(-544424655, new ReleaseConfigKt$$ExternalSyntheticLambda0(9), false);

    /* renamed from: lambda$-2065177311, reason: not valid java name */
    public static final ComposableLambdaImpl f18lambda$2065177311 = new ComposableLambdaImpl(-2065177311, new ReleaseConfigKt$$ExternalSyntheticLambda0(10), false);
    public static final ComposableLambdaImpl lambda$1973074191 = new ComposableLambdaImpl(1973074191, new ReleaseConfigKt$$ExternalSyntheticLambda0(11), false);

    public static final void BannerGlobalNotificationCard(ComposableLambdaImpl composableLambdaImpl, String str, Modifier modifier, CardColors cardColors, Shape shape, Function2 function2, Composer composer, int i) {
        int i2;
        ComposableLambdaImpl composableLambdaImpl2;
        CardColors cardColors2;
        Function2 function22;
        Modifier modifier2;
        Shape shape2;
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-841000676);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changedInstance(composableLambdaImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= (i & 64) == 0 ? gapComposer.changed(str) : gapComposer.changedInstance(str) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= (i & 4096) == 0 ? gapComposer.changed(cardColors) : gapComposer.changedInstance(cardColors) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= 8192;
        }
        if ((196608 & i) == 0) {
            i2 |= gapComposer.changedInstance(function2) ? 131072 : 65536;
        }
        if (gapComposer.shouldExecute(i2 & 1, (74899 & i2) != 74898)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                i3 = i2 & (-57345);
                shape = ColorKt.RectangleShape;
            } else {
                gapComposer.skipToGroupEnd();
                i3 = i2 & (-57345);
            }
            Shape shape3 = shape;
            gapComposer.endDefaults();
            composableLambdaImpl2 = composableLambdaImpl;
            cardColors2 = cardColors;
            BannerGlobalNotificationCard(composableLambdaImpl2, Expect_jvmKt.rememberComposableLambda(-1152714716, new LoadingItemKt$$ExternalSyntheticLambda0(str, 5), gapComposer), cardColors2, shape3, modifier, function2, gapComposer, (i3 & 14) | 48 | ((i3 >> 3) & 896) | (57344 & (i3 << 6)) | (i3 & 458752));
            modifier2 = modifier;
            function22 = function2;
            shape2 = shape3;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            cardColors2 = cardColors;
            function22 = function2;
            modifier2 = modifier;
            gapComposer.skipToGroupEnd();
            shape2 = shape;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(composableLambdaImpl2, str, modifier2, cardColors2, shape2, function22, i);
        }
    }

    public static final void ErrorBannerGlobalNotificationCard(int i, Composer composer, Modifier modifier, String str, Function2 function2) {
        Modifier modifier2;
        String str2;
        Function2 function22;
        function2.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(883069626);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            modifier2 = modifier;
            str2 = str;
            function22 = function2;
            BannerGlobalNotificationCard(f19lambda$544424655, str2, modifier2, BannerNotificationCardDefaults.m847errorCardColorsdgg9oW8(gapComposer), (Shape) null, function22, gapComposer, ((i2 << 3) & 112) | 6 | (i2 & 896) | ((i2 << 12) & 458752));
        } else {
            modifier2 = modifier;
            str2 = str;
            function22 = function2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0(str2, function22, modifier2, i);
        }
    }

    public static final void InfoBannerGlobalNotificationCard(int i, Composer composer, Modifier modifier, String str, Function2 function2) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1219000086);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changedInstance(function2) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
            int i3 = i2 << 3;
            BannerGlobalNotificationCard(f18lambda$2065177311, str, modifier, RelationUtil.m810outlinedCardColorsro_MJ88(((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).infoContainer, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).onInfoContainer, gapComposer), (Shape) null, function2, gapComposer, (i3 & 896) | (i3 & 112) | 6 | ((i2 << 9) & 458752));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0(str, modifier, function2, i, 0);
        }
    }

    public static final void WarningBannerGlobalNotificationCard(int i, Composer composer, Modifier modifier, String str, Function2 function2) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-112680424);
        int i2 = (gapComposer.changed(str) ? 4 : 2) | i | (gapComposer.changed(modifier) ? 32 : 16) | (gapComposer.changedInstance(function2) ? 256 : 128);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
            int i3 = i2 << 3;
            BannerGlobalNotificationCard(lambda$1973074191, str, modifier, RelationUtil.m810outlinedCardColorsro_MJ88(((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).warningContainer, ((ThemeColorScheme) gapComposer.consume(staticProvidableCompositionLocal)).onWarningContainer, gapComposer), (Shape) null, function2, gapComposer, (i3 & 896) | (i3 & 112) | 6 | ((i2 << 9) & 458752));
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new InfoBannerGlobalNotificationCardKt$$ExternalSyntheticLambda0(str, modifier, function2, i, 2);
        }
    }

    public static final void BannerGlobalNotificationCard(ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, CardColors cardColors, Shape shape, Modifier modifier, Function2 function2, Composer composer, int i) {
        int i2;
        Function2 function22;
        GapComposer gapComposer;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.startRestartGroup(-823759098);
        if ((i & 6) == 0) {
            i2 = (gapComposer2.changedInstance(composableLambdaImpl) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer2.changedInstance(composableLambdaImpl2) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i2 |= (i & 512) == 0 ? gapComposer2.changed(cardColors) : gapComposer2.changedInstance(cardColors) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer2.changed(shape) ? 2048 : 1024;
        }
        if ((i & 24576) == 0) {
            i2 |= gapComposer2.changed(modifier) ? 16384 : 8192;
        }
        if ((i & 196608) == 0) {
            function22 = function2;
            i2 |= gapComposer2.changedInstance(function22) ? 131072 : 65536;
        } else {
            function22 = function2;
        }
        int i3 = i2;
        if (gapComposer2.shouldExecute(i3 & 1, (74899 & i3) != 74898)) {
            gapComposer = gapComposer2;
            ActionBar.CardFilled(modifier, shape, cardColors, null, Expect_jvmKt.rememberComposableLambda(-823892038, new TextFieldCursorKt$$ExternalSyntheticLambda0(composableLambdaImpl, cardColors, composableLambdaImpl2, function22, 3), gapComposer2), gapComposer, ((i3 >> 12) & 14) | 196608 | ((i3 >> 6) & 112) | (i3 & 896), 24);
        } else {
            gapComposer = gapComposer2;
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new CardKt$$ExternalSyntheticLambda1(composableLambdaImpl, composableLambdaImpl2, cardColors, shape, modifier, function2, i);
        }
    }
}
