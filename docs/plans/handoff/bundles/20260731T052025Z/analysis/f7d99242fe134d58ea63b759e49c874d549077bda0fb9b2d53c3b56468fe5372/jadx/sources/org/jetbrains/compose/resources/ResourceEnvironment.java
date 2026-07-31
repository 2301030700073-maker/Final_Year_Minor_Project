package org.jetbrains.compose.resources;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ResourceEnvironment {
    public final DensityQualifier density;
    public final LanguageQualifier language;
    public final RegionQualifier region;
    public final ThemeQualifier theme;

    public ResourceEnvironment(LanguageQualifier languageQualifier, RegionQualifier regionQualifier, ThemeQualifier themeQualifier, DensityQualifier densityQualifier) {
        this.language = languageQualifier;
        this.region = regionQualifier;
        this.theme = themeQualifier;
        this.density = densityQualifier;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ResourceEnvironment.class != obj.getClass()) {
            return false;
        }
        ResourceEnvironment resourceEnvironment = (ResourceEnvironment) obj;
        return this.language.equals(resourceEnvironment.language) && this.region.equals(resourceEnvironment.region) && this.theme == resourceEnvironment.theme && this.density == resourceEnvironment.density;
    }

    public final int hashCode() {
        return this.density.hashCode() + ((this.theme.hashCode() + Modifier.CC.m(this.language.language.hashCode() * 31, this.region.region, 31)) * 31);
    }
}
