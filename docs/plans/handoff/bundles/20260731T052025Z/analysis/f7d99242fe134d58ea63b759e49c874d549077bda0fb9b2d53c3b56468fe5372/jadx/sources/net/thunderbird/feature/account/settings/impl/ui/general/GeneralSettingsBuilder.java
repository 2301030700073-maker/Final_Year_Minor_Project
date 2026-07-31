package net.thunderbird.feature.account.settings.impl.ui.general;

import kotlinx.collections.immutable.ImmutableList;
import net.thunderbird.core.common.resources.StringsResourceManager;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.feature.account.avatar.DefaultAvatarIconCatalog;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettingsBuilder {
    public final ImmutableList accountColors;
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final DefaultAvatarIconCatalog iconCatalog;
    public final StringsResourceManager resources;
    public final GeneralSettingsValidator validator;

    public GeneralSettingsBuilder(StringsResourceManager stringsResourceManager, ImmutableList immutableList, DefaultAvatarMonogramCreator defaultAvatarMonogramCreator, GeneralSettingsValidator generalSettingsValidator, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, DefaultAvatarIconCatalog defaultAvatarIconCatalog) {
        this.resources = stringsResourceManager;
        this.accountColors = immutableList;
        this.validator = generalSettingsValidator;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.iconCatalog = defaultAvatarIconCatalog;
    }
}
