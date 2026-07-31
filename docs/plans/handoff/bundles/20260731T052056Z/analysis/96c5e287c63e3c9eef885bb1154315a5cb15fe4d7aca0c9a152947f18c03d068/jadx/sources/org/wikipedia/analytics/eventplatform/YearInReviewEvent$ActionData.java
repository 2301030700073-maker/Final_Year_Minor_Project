package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class YearInReviewEvent$ActionData {
    public static final Companion Companion = new Companion();
    public final String campaignId;
    public final Integer feedbackSelect;
    public final String feedbackText;
    public final String groupAssigned;
    public final String slide;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return YearInReviewEvent$ActionData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ YearInReviewEvent$ActionData(int i, Integer num, String str, String str2, String str3, String str4) {
        if ((i & 1) == 0) {
            this.slide = null;
        } else {
            this.slide = str;
        }
        if ((i & 2) == 0) {
            this.campaignId = null;
        } else {
            this.campaignId = str2;
        }
        if ((i & 4) == 0) {
            this.groupAssigned = null;
        } else {
            this.groupAssigned = str3;
        }
        if ((i & 8) == 0) {
            this.feedbackSelect = null;
        } else {
            this.feedbackSelect = num;
        }
        if ((i & 16) == 0) {
            this.feedbackText = null;
        } else {
            this.feedbackText = str4;
        }
    }

    public YearInReviewEvent$ActionData(String str, String str2, Integer num, String str3) {
        this.slide = str;
        this.campaignId = str2;
        this.groupAssigned = null;
        this.feedbackSelect = num;
        this.feedbackText = str3;
    }
}
