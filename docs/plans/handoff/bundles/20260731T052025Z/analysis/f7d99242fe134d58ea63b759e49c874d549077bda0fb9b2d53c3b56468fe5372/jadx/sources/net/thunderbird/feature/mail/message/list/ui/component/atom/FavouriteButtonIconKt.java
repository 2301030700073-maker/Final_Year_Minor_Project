package net.thunderbird.feature.mail.message.list.ui.component.atom;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.CheckboxKt$$ExternalSyntheticLambda2;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.ContentColorKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.platform.TestTagKt;
import androidx.compose.ui.unit.IntRectKt;
import app.k9mail.core.ui.compose.designsystem.atom.button.ButtonIconColors;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class FavouriteButtonIconKt {
    public static final long FAVOURITE_ICON_COLOR = ColorKt.Color(4294231088L);

    /* renamed from: FavouriteButtonIcon--jt2gSs, reason: not valid java name */
    public static final void m1036FavouriteButtonIconjt2gSs(final boolean z, final Function1 function1, final Modifier modifier, final float f, Composer composer, final int i) {
        long j;
        long Color;
        long Color2;
        function1.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(1715753482);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | (gapComposer.changedInstance(function1) ? 32 : 16) | (gapComposer.changed(modifier) ? 256 : 128) | (gapComposer.changed(f) ? 2048 : 1024);
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            ImageVector imageVector = z ? Icons$Filled.Star : Icons$Outlined.Star;
            if (z) {
                gapComposer.startReplaceGroup(-428332226);
                gapComposer.end(false);
                j = FAVOURITE_ICON_COLOR;
            } else {
                gapComposer.startReplaceGroup(-428330861);
                j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).onSurface;
                gapComposer.end(false);
            }
            long j2 = Color.Unspecified;
            Color = ColorKt.Color(Color.m487getRedimpl(j), Color.m486getGreenimpl(j), Color.m484getBlueimpl(j), 0.38f, Color.m485getColorSpaceimpl(j));
            ColorScheme colorScheme = (ColorScheme) gapComposer.consume(ColorSchemeKt.LocalColorScheme);
            long j3 = ((Color) gapComposer.consume(ContentColorKt.LocalContentColor)).value;
            IconButtonColors iconButtonColors = colorScheme.defaultIconButtonColorsCached;
            if (iconButtonColors == null) {
                long j4 = Color.Transparent;
                float f2 = ListTokens.DisabledOpacity$1;
                Color2 = ColorKt.Color(Color.m487getRedimpl(j3), Color.m486getGreenimpl(j3), Color.m484getBlueimpl(j3), 0.38f, Color.m485getColorSpaceimpl(j3));
                iconButtonColors = new IconButtonColors(j4, j3, j4, Color2);
                colorScheme.defaultIconButtonColorsCached = iconButtonColors;
            }
            ButtonIconColors buttonIconColors = IntRectKt.toButtonIconColors(iconButtonColors.m343copyjRlVdoo(j2, j, j2, Color));
            Modifier testTag = TestTagKt.testTag(SizeKt.m234size3ABfNKs(modifier, f), "MessageItem_FavouriteButtonIcon");
            boolean z2 = ((i2 & 112) == 32) | ((i2 & 14) == 4);
            Object rememberedValue = gapComposer.rememberedValue();
            if (z2 || rememberedValue == Composer.Companion.Empty) {
                rememberedValue = new CheckboxKt$$ExternalSyntheticLambda2(function1, z, 5);
                gapComposer = gapComposer;
                gapComposer.updateRememberedValue(rememberedValue);
            } else {
                gapComposer = gapComposer;
            }
            IntRectKt.ButtonIcon((Function0) rememberedValue, imageVector, testTag, false, null, buttonIconColors, gapComposer, 0, 24);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(z, function1, modifier, f, i) { // from class: net.thunderbird.feature.mail.message.list.ui.component.atom.FavouriteButtonIconKt$$ExternalSyntheticLambda1
                public final /* synthetic */ boolean f$0;
                public final /* synthetic */ Function1 f$1;
                public final /* synthetic */ Modifier f$2;
                public final /* synthetic */ float f$3;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int updateChangedFlags = Updater.updateChangedFlags(1);
                    FavouriteButtonIconKt.m1036FavouriteButtonIconjt2gSs(this.f$0, this.f$1, this.f$2, this.f$3, (Composer) obj, updateChangedFlags);
                    return Unit.INSTANCE;
                }
            };
        }
    }
}
