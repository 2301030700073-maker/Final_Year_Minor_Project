package org.wikipedia.settings;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class SiteInfo {
    public static final Companion Companion = new Companion();
    public final String lang;
    public final ReadingListsConfig readingListsConfig;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class AutoCreateTempUser {
        public static final Companion Companion = new Companion();
        public final boolean enabled;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SiteInfo$AutoCreateTempUser$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ AutoCreateTempUser(int i, boolean z) {
            if ((i & 1) == 0) {
                this.enabled = true;
            } else {
                this.enabled = z;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return SiteInfo$$serializer.INSTANCE;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    @Serializable
    public final class ReadingListsConfig {
        public static final Companion Companion = new Companion();
        public final int deletedRetentionDays;
        public final int maxEntriesPerList;
        public final int maxListsPerUser;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Companion {
            public final KSerializer serializer() {
                return SiteInfo$ReadingListsConfig$$serializer.INSTANCE;
            }
        }

        public /* synthetic */ ReadingListsConfig(int i, int i2, int i3, int i4) {
            if ((i & 1) == 0) {
                this.maxListsPerUser = 0;
            } else {
                this.maxListsPerUser = i2;
            }
            if ((i & 2) == 0) {
                this.maxEntriesPerList = 0;
            } else {
                this.maxEntriesPerList = i3;
            }
            if ((i & 4) == 0) {
                this.deletedRetentionDays = 0;
            } else {
                this.deletedRetentionDays = i4;
            }
        }
    }

    public /* synthetic */ SiteInfo(int i, String str, ReadingListsConfig readingListsConfig) {
        if ((i & 1) == 0) {
            this.lang = null;
        } else {
            this.lang = str;
        }
        if ((i & 2) == 0) {
            this.readingListsConfig = null;
        } else {
            this.readingListsConfig = readingListsConfig;
        }
    }
}
