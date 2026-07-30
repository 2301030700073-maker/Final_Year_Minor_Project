package com.google.android.gms.ads;

import com.google.android.gms.ads.internal.util.client.zzo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class RequestConfiguration {
    public static final String MAX_AD_CONTENT_RATING_UNSPECIFIED = "";
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE = 0;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE = 1;
    public static final int TAG_FOR_CHILD_DIRECTED_TREATMENT_UNSPECIFIED = -1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE = 0;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE = 1;
    public static final int TAG_FOR_UNDER_AGE_OF_CONSENT_UNSPECIFIED = -1;

    /* renamed from: do, reason: not valid java name */
    public final int f9513do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PublisherPrivacyPersonalizationState f9514do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f9515do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List f9516do;

    /* renamed from: if, reason: not valid java name */
    public final int f9517if;
    public static final String MAX_AD_CONTENT_RATING_MA = "MA";
    public static final String MAX_AD_CONTENT_RATING_T = "T";
    public static final String MAX_AD_CONTENT_RATING_PG = "PG";
    public static final String MAX_AD_CONTENT_RATING_G = "G";
    public static final List zza = Arrays.asList(MAX_AD_CONTENT_RATING_MA, MAX_AD_CONTENT_RATING_T, MAX_AD_CONTENT_RATING_PG, MAX_AD_CONTENT_RATING_G);

    public static class Builder {

        /* renamed from: do, reason: not valid java name */
        public int f9518do = -1;

        /* renamed from: if, reason: not valid java name */
        public int f9522if = -1;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f9520do = null;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final ArrayList f9521do = new ArrayList();

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public PublisherPrivacyPersonalizationState f9519do = PublisherPrivacyPersonalizationState.DEFAULT;

        public RequestConfiguration build() {
            return new RequestConfiguration(this.f9518do, this.f9522if, this.f9520do, this.f9521do, this.f9519do);
        }

        public Builder setMaxAdContentRating(String str) {
            if (str == null || RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED.equals(str)) {
                this.f9520do = null;
            } else if (RequestConfiguration.MAX_AD_CONTENT_RATING_G.equals(str) || RequestConfiguration.MAX_AD_CONTENT_RATING_PG.equals(str) || RequestConfiguration.MAX_AD_CONTENT_RATING_T.equals(str) || RequestConfiguration.MAX_AD_CONTENT_RATING_MA.equals(str)) {
                this.f9520do = str;
            } else {
                zzo.zzj("Invalid value passed to setMaxAdContentRating: ".concat(str));
            }
            return this;
        }

        public Builder setPublisherPrivacyPersonalizationState(PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
            this.f9519do = publisherPrivacyPersonalizationState;
            return this;
        }

        public Builder setTagForChildDirectedTreatment(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.f9518do = i;
            } else {
                zzo.zzj("Invalid value passed to setTagForChildDirectedTreatment: " + i);
            }
            return this;
        }

        public Builder setTagForUnderAgeOfConsent(int i) {
            if (i == -1 || i == 0 || i == 1) {
                this.f9522if = i;
            } else {
                zzo.zzj("Invalid value passed to setTagForUnderAgeOfConsent: " + i);
            }
            return this;
        }

        public Builder setTestDeviceIds(List<String> list) {
            ArrayList arrayList = this.f9521do;
            arrayList.clear();
            if (list != null) {
                arrayList.addAll(list);
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MaxAdContentRating {
    }

    public enum PublisherPrivacyPersonalizationState {
        DEFAULT(0),
        ENABLED(1),
        DISABLED(2);


        /* renamed from: for, reason: not valid java name */
        public final int f9524for;

        PublisherPrivacyPersonalizationState(int i) {
            this.f9524for = i;
        }

        public int getValue() {
            return this.f9524for;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForChildDirectedTreatment {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TagForUnderAgeOfConsent {
    }

    public /* synthetic */ RequestConfiguration(int i, int i2, String str, ArrayList arrayList, PublisherPrivacyPersonalizationState publisherPrivacyPersonalizationState) {
        this.f9513do = i;
        this.f9517if = i2;
        this.f9515do = str;
        this.f9516do = arrayList;
        this.f9514do = publisherPrivacyPersonalizationState;
    }

    public String getMaxAdContentRating() {
        String str = this.f9515do;
        return str == null ? MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
    }

    public PublisherPrivacyPersonalizationState getPublisherPrivacyPersonalizationState() {
        return this.f9514do;
    }

    public int getTagForChildDirectedTreatment() {
        return this.f9513do;
    }

    public int getTagForUnderAgeOfConsent() {
        return this.f9517if;
    }

    public List<String> getTestDeviceIds() {
        return new ArrayList(this.f9516do);
    }

    public Builder toBuilder() {
        Builder builder = new Builder();
        builder.setTagForChildDirectedTreatment(this.f9513do);
        builder.setTagForUnderAgeOfConsent(this.f9517if);
        builder.setMaxAdContentRating(this.f9515do);
        builder.setTestDeviceIds(this.f9516do);
        return builder;
    }
}
