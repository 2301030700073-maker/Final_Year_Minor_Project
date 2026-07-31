package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class DonorExperienceEvent$DonationRemindersActionData {
    public static final Companion Companion = new Companion();
    public final Integer articleFrequency;
    public final String campaignId;
    public final Boolean defaultMilestone;
    public final Float donateAmount;
    public final String groupAssigned;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return DonorExperienceEvent$DonationRemindersActionData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ DonorExperienceEvent$DonationRemindersActionData(int i, Boolean bool, String str, Integer num, Float f, String str2) {
        if ((i & 1) == 0) {
            this.defaultMilestone = null;
        } else {
            this.defaultMilestone = bool;
        }
        if ((i & 2) == 0) {
            this.campaignId = null;
        } else {
            this.campaignId = str;
        }
        if ((i & 4) == 0) {
            this.articleFrequency = null;
        } else {
            this.articleFrequency = num;
        }
        if ((i & 8) == 0) {
            this.donateAmount = null;
        } else {
            this.donateAmount = f;
        }
        if ((i & 16) == 0) {
            this.groupAssigned = null;
        } else {
            this.groupAssigned = str2;
        }
    }

    public DonorExperienceEvent$DonationRemindersActionData(Boolean bool, String str, Integer num, Float f, String str2) {
        this.defaultMilestone = bool;
        this.campaignId = str;
        this.articleFrequency = num;
        this.donateAmount = f;
        this.groupAssigned = str2;
    }
}
