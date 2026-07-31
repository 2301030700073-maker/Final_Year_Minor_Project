package org.wikipedia.donate.donationreminder;

import androidx.compose.animation.core.Animation;
import androidx.recyclerview.widget.RecyclerView;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DonationReminderConfig {
    public static final Companion Companion = new Companion();
    public final int articleFrequency;
    public final int articleVisit;
    public final float donateAmount;
    public final int goalReachedCount;
    public final boolean isReminderReady;
    public final long promptLastSeen;
    public final long setupTimestamp;
    public final int timesReminderShown;
    public final boolean userEnabled;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DonationReminderConfig$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DonationReminderConfig(int i, boolean z, long j, long j2, int i2, int i3, float f, boolean z2, int i4, int i5) {
        if ((i & 1) == 0) {
            this.userEnabled = false;
        } else {
            this.userEnabled = z;
        }
        if ((i & 2) == 0) {
            this.promptLastSeen = 0L;
        } else {
            this.promptLastSeen = j;
        }
        if ((i & 4) == 0) {
            this.setupTimestamp = 0L;
        } else {
            this.setupTimestamp = j2;
        }
        if ((i & 8) == 0) {
            this.articleVisit = 0;
        } else {
            this.articleVisit = i2;
        }
        if ((i & 16) == 0) {
            this.articleFrequency = 0;
        } else {
            this.articleFrequency = i3;
        }
        if ((i & 32) == 0) {
            this.donateAmount = RecyclerView.DECELERATION_RATE;
        } else {
            this.donateAmount = f;
        }
        if ((i & 64) == 0) {
            this.isReminderReady = false;
        } else {
            this.isReminderReady = z2;
        }
        if ((i & 128) == 0) {
            this.timesReminderShown = 0;
        } else {
            this.timesReminderShown = i4;
        }
        if ((i & 256) == 0) {
            this.goalReachedCount = 0;
        } else {
            this.goalReachedCount = i5;
        }
    }

    public static DonationReminderConfig copy$default(DonationReminderConfig donationReminderConfig, boolean z, long j, long j2, int i, int i2, float f, boolean z2, int i3, int i4, int i5) {
        if ((i5 & 1) != 0) {
            z = donationReminderConfig.userEnabled;
        }
        boolean z3 = z;
        if ((i5 & 2) != 0) {
            j = donationReminderConfig.promptLastSeen;
        }
        return new DonationReminderConfig(z3, j, (i5 & 4) != 0 ? donationReminderConfig.setupTimestamp : j2, (i5 & 8) != 0 ? donationReminderConfig.articleVisit : i, (i5 & 16) != 0 ? donationReminderConfig.articleFrequency : i2, (i5 & 32) != 0 ? donationReminderConfig.donateAmount : f, (i5 & 64) != 0 ? donationReminderConfig.isReminderReady : z2, (i5 & 128) != 0 ? donationReminderConfig.timesReminderShown : i3, (i5 & 256) != 0 ? donationReminderConfig.goalReachedCount : i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DonationReminderConfig)) {
            return false;
        }
        DonationReminderConfig donationReminderConfig = (DonationReminderConfig) obj;
        return this.userEnabled == donationReminderConfig.userEnabled && this.promptLastSeen == donationReminderConfig.promptLastSeen && this.setupTimestamp == donationReminderConfig.setupTimestamp && this.articleVisit == donationReminderConfig.articleVisit && this.articleFrequency == donationReminderConfig.articleFrequency && Float.compare(this.donateAmount, donationReminderConfig.donateAmount) == 0 && this.isReminderReady == donationReminderConfig.isReminderReady && this.timesReminderShown == donationReminderConfig.timesReminderShown && this.goalReachedCount == donationReminderConfig.goalReachedCount;
    }

    public final int hashCode() {
        int i = this.userEnabled ? 1231 : 1237;
        long j = this.promptLastSeen;
        int i2 = ((i * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.setupTimestamp;
        return ((((Animation.CC.m((((((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.articleVisit) * 31) + this.articleFrequency) * 31, this.donateAmount, 31) + (this.isReminderReady ? 1231 : 1237)) * 31) + this.timesReminderShown) * 31) + this.goalReachedCount;
    }

    public final String toString() {
        return "DonationReminderConfig(userEnabled=" + this.userEnabled + ", promptLastSeen=" + this.promptLastSeen + ", setupTimestamp=" + this.setupTimestamp + ", articleVisit=" + this.articleVisit + ", articleFrequency=" + this.articleFrequency + ", donateAmount=" + this.donateAmount + ", isReminderReady=" + this.isReminderReady + ", timesReminderShown=" + this.timesReminderShown + ", goalReachedCount=" + this.goalReachedCount + ")";
    }

    public DonationReminderConfig(boolean z, long j, long j2, int i, int i2, float f, boolean z2, int i3, int i4) {
        this.userEnabled = z;
        this.promptLastSeen = j;
        this.setupTimestamp = j2;
        this.articleVisit = i;
        this.articleFrequency = i2;
        this.donateAmount = f;
        this.isReminderReady = z2;
        this.timesReminderShown = i3;
        this.goalReachedCount = i4;
    }

    public /* synthetic */ DonationReminderConfig() {
        this(false, 0L, 0L, 0, 0, RecyclerView.DECELERATION_RATE, false, 0, 0);
    }
}
