package org.wikipedia.settings.homefeed;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract /* synthetic */ class HomeFeedSettingsNavHostKt$WhenMappings {
    public static final /* synthetic */ int[] $EnumSwitchMapping$0;

    static {
        int[] iArr = new int[HomeFeedSettingsStartDestination.values().length];
        try {
            iArr[HomeFeedSettingsStartDestination.ROOT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[HomeFeedSettingsStartDestination.COMMUNITY_MODULES.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[HomeFeedSettingsStartDestination.FOR_YOU_MODULES.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[HomeFeedSettingsStartDestination.DEFAULT_FEED_VIEW.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        $EnumSwitchMapping$0 = iArr;
    }
}
