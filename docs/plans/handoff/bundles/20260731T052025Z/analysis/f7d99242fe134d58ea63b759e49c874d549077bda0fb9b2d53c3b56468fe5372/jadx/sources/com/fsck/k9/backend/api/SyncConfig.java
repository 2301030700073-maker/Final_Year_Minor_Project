package com.fsck.k9.backend.api;

import java.util.Date;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SyncConfig {
    public final Date earliestPollDate;
    public final ExpungePolicy expungePolicy;
    public final int maximumAutoDownloadMessageSize;
    public final Set syncFlags;
    public final boolean syncRemoteDeletions;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ExpungePolicy {
        public static final /* synthetic */ ExpungePolicy[] $VALUES;
        public static final ExpungePolicy IMMEDIATELY;
        public static final ExpungePolicy MANUALLY;
        public static final ExpungePolicy ON_POLL;

        static {
            ExpungePolicy expungePolicy = new ExpungePolicy("IMMEDIATELY", 0);
            IMMEDIATELY = expungePolicy;
            ExpungePolicy expungePolicy2 = new ExpungePolicy("MANUALLY", 1);
            MANUALLY = expungePolicy2;
            ExpungePolicy expungePolicy3 = new ExpungePolicy("ON_POLL", 2);
            ON_POLL = expungePolicy3;
            $VALUES = new ExpungePolicy[]{expungePolicy, expungePolicy2, expungePolicy3};
        }

        public static ExpungePolicy valueOf(String str) {
            return (ExpungePolicy) Enum.valueOf(ExpungePolicy.class, str);
        }

        public static ExpungePolicy[] values() {
            return (ExpungePolicy[]) $VALUES.clone();
        }
    }

    public SyncConfig(ExpungePolicy expungePolicy, Date date, boolean z, int i, Set set) {
        set.getClass();
        this.expungePolicy = expungePolicy;
        this.earliestPollDate = date;
        this.syncRemoteDeletions = z;
        this.maximumAutoDownloadMessageSize = i;
        this.syncFlags = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SyncConfig)) {
            return false;
        }
        SyncConfig syncConfig = (SyncConfig) obj;
        return this.expungePolicy == syncConfig.expungePolicy && Intrinsics.areEqual(this.earliestPollDate, syncConfig.earliestPollDate) && this.syncRemoteDeletions == syncConfig.syncRemoteDeletions && this.maximumAutoDownloadMessageSize == syncConfig.maximumAutoDownloadMessageSize && Intrinsics.areEqual(this.syncFlags, syncConfig.syncFlags);
    }

    public final int hashCode() {
        int hashCode = this.expungePolicy.hashCode() * 31;
        Date date = this.earliestPollDate;
        return this.syncFlags.hashCode() + ((((((((hashCode + (date == null ? 0 : date.hashCode())) * 31) + (this.syncRemoteDeletions ? 1231 : 1237)) * 31) + this.maximumAutoDownloadMessageSize) * 31) + 25) * 31);
    }

    public final String toString() {
        return "SyncConfig(expungePolicy=" + this.expungePolicy + ", earliestPollDate=" + this.earliestPollDate + ", syncRemoteDeletions=" + this.syncRemoteDeletions + ", maximumAutoDownloadMessageSize=" + this.maximumAutoDownloadMessageSize + ", defaultVisibleLimit=25, syncFlags=" + this.syncFlags + ")";
    }
}
