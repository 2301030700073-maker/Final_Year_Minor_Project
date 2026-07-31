package net.newpipe.app.theme;

import androidx.compose.material3.ColorScheme;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Service {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ Service[] $VALUES;
    public static final Service YOUTUBE;
    private final ColorScheme darkScheme;
    private final boolean isSchemeColorDensityLight = false;
    private final ColorScheme lightScheme;
    private final int serviceId;
    private final String serviceName;

    static {
        Service service = new Service("YOUTUBE", 0, 0, "YouTube", ServiceThemeKt.youTubeLightScheme, ServiceThemeKt.youTubeDarkScheme);
        YOUTUBE = service;
        Service[] serviceArr = {service, new Service("SOUNDCLOUD", 1, 1, "SoundCloud", ServiceThemeKt.soundCloudLightScheme, ServiceThemeKt.soundCloudDarkScheme), new Service("MEDIA_CCC", 2, 2, "media.ccc.de", ServiceThemeKt.mediaCCCLightScheme, ServiceThemeKt.mediaCCCDarkScheme), new Service("PEERTUBE", 3, 3, "PeerTube", ServiceThemeKt.peerTubeLightScheme, ServiceThemeKt.peerTubeDarkScheme), new Service("BANDCAMP", 4, 4, "Bandcamp", ServiceThemeKt.bandCampLightScheme, ServiceThemeKt.bandCampDarkScheme)};
        $VALUES = serviceArr;
        $ENTRIES = new EnumEntriesList(serviceArr);
    }

    public Service(String str, int i, int i2, String str2, ColorScheme colorScheme, ColorScheme colorScheme2) {
        this.serviceId = i2;
        this.serviceName = str2;
        this.lightScheme = colorScheme;
        this.darkScheme = colorScheme2;
    }

    public static Service valueOf(String str) {
        return (Service) Enum.valueOf(Service.class, str);
    }

    public static Service[] values() {
        return (Service[]) $VALUES.clone();
    }

    public final ColorScheme getDarkScheme() {
        return this.darkScheme;
    }

    public final ColorScheme getLightScheme() {
        return this.lightScheme;
    }

    public final String getServiceName() {
        return this.serviceName;
    }

    public final boolean isSchemeColorDensityLight() {
        return this.isSchemeColorDensityLight;
    }
}
