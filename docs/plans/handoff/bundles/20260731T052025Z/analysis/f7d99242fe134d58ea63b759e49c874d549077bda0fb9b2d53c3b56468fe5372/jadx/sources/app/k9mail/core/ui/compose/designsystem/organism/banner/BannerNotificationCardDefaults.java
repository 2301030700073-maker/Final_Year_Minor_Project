package app.k9mail.core.ui.compose.designsystem.organism.banner;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.room.util.RelationUtil;
import app.k9mail.core.ui.compose.designsystem.atom.card.CardColors;
import app.k9mail.core.ui.compose.designsystem.organism.banner.inline.BannerInlineNotificationCardBehaviour;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BannerNotificationCardDefaults {
    public static final BannerInlineNotificationCardBehaviour bannerInlineBehaviour = BannerInlineNotificationCardBehaviour.Expanded;

    /* renamed from: errorCardColors-dgg9oW8, reason: not valid java name */
    public static CardColors m847errorCardColorsdgg9oW8(Composer composer) {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = ThemeColorSchemeKt.LocalThemeColorScheme;
        return RelationUtil.m810outlinedCardColorsro_MJ88(((ThemeColorScheme) ((GapComposer) composer).consume(staticProvidableCompositionLocal)).errorContainer, ((ThemeColorScheme) ((GapComposer) composer).consume(staticProvidableCompositionLocal)).onErrorContainer, composer);
    }
}
