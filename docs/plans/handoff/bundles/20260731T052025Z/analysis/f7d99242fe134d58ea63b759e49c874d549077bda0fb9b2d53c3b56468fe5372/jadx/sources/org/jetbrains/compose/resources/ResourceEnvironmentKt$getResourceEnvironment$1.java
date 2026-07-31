package org.jetbrains.compose.resources;

import android.content.res.Configuration;
import android.content.res.Resources;
import androidx.compose.ui.unit.IntRectKt;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ResourceEnvironmentKt$getResourceEnvironment$1 extends FunctionReferenceImpl implements Function0 {
    public static final ResourceEnvironmentKt$getResourceEnvironment$1 INSTANCE = new ResourceEnvironmentKt$getResourceEnvironment$1(0, IntRectKt.class, "getSystemEnvironment", "getSystemEnvironment()Lorg/jetbrains/compose/resources/ResourceEnvironment;", 1);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Locale locale = Locale.getDefault();
        Configuration configuration = Resources.getSystem().getConfiguration();
        boolean z = (configuration.uiMode & 48) == 32;
        int i = configuration.densityDpi;
        String language = locale.getLanguage();
        language.getClass();
        LanguageQualifier languageQualifier = new LanguageQualifier(language);
        String country = locale.getCountry();
        country.getClass();
        RegionQualifier regionQualifier = new RegionQualifier(country);
        ThemeQualifier.Companion.getClass();
        ThemeQualifier themeQualifier = z ? ThemeQualifier.DARK : ThemeQualifier.LIGHT;
        DensityQualifier.Companion.getClass();
        return new ResourceEnvironment(languageQualifier, regionQualifier, themeQualifier, i <= 120 ? DensityQualifier.LDPI : i <= 160 ? DensityQualifier.MDPI : i <= 240 ? DensityQualifier.HDPI : i <= 320 ? DensityQualifier.XHDPI : i <= 480 ? DensityQualifier.XXHDPI : DensityQualifier.XXXHDPI);
    }
}
