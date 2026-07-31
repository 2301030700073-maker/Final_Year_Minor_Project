package app.k9mail.autodiscovery.service;

import app.k9mail.autodiscovery.autoconfig.AutoconfigUrlConfig;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RealAutoDiscoveryRegistry {
    public static final AutoconfigUrlConfig defaultAutoconfigUrlConfig = new AutoconfigUrlConfig();
    public final ArrayList autoDiscoveries;

    public RealAutoDiscoveryRegistry(ArrayList arrayList) {
        this.autoDiscoveries = arrayList;
    }
}
