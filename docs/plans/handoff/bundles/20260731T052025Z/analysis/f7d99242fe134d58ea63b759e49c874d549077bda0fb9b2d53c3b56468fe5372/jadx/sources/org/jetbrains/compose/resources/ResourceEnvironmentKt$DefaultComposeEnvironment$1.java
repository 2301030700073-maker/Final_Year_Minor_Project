package org.jetbrains.compose.resources;

import androidx.compose.foundation.ImageKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceEnvironmentKt$DefaultComposeEnvironment$1 {
    public static ResourceEnvironment rememberEnvironment(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(1808039825);
        Locale locale = PlatformLocaleKt.platformLocaleDelegate.getCurrent().get();
        boolean isSystemInDarkTheme = ImageKt.isSystemInDarkTheme(gapComposer);
        Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
        boolean changed = gapComposer.changed(locale) | gapComposer.changed(isSystemInDarkTheme) | gapComposer.changed(density);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            LanguageQualifier languageQualifier = new LanguageQualifier(locale.platformLocale.getLanguage());
            RegionQualifier regionQualifier = new RegionQualifier(locale.platformLocale.getCountry());
            ThemeQualifier.Companion.getClass();
            ThemeQualifier themeQualifier = isSystemInDarkTheme ? ThemeQualifier.DARK : ThemeQualifier.LIGHT;
            float density2 = density.getDensity();
            DensityQualifier.Companion.getClass();
            double d = density2;
            rememberedValue = new ResourceEnvironment(languageQualifier, regionQualifier, themeQualifier, d <= 0.75d ? DensityQualifier.LDPI : d <= 1.0d ? DensityQualifier.MDPI : d <= 1.5d ? DensityQualifier.HDPI : d <= 2.0d ? DensityQualifier.XHDPI : d <= 3.0d ? DensityQualifier.XXHDPI : DensityQualifier.XXXHDPI);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        ResourceEnvironment resourceEnvironment = (ResourceEnvironment) rememberedValue;
        gapComposer.end(false);
        return resourceEnvironment;
    }
}
