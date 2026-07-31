package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class ActivityTabEvent$ActionData {
    public static final Companion Companion = new Companion();
    public final String all;
    public final String donations;
    public final Integer editCount;
    public final String editingInsight;
    public final Integer feedbackSelect;
    public final String feedbackText;
    public final String games;
    public final String group;
    public final String impact;
    public final String readingInsight;
    public final String state;
    public final String timeSpent;
    public final String timeline;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return ActivityTabEvent$ActionData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ ActivityTabEvent$ActionData(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, Integer num, Integer num2, String str11) {
        if ((i & 1) == 0) {
            this.group = null;
        } else {
            this.group = str;
        }
        if ((i & 2) == 0) {
            this.state = null;
        } else {
            this.state = str2;
        }
        if ((i & 4) == 0) {
            this.impact = null;
        } else {
            this.impact = str3;
        }
        if ((i & 8) == 0) {
            this.games = null;
        } else {
            this.games = str4;
        }
        if ((i & 16) == 0) {
            this.donations = null;
        } else {
            this.donations = str5;
        }
        if ((i & 32) == 0) {
            this.timeline = null;
        } else {
            this.timeline = str6;
        }
        if ((i & 64) == 0) {
            this.all = null;
        } else {
            this.all = str7;
        }
        if ((i & 128) == 0) {
            this.timeSpent = null;
        } else {
            this.timeSpent = str8;
        }
        if ((i & 256) == 0) {
            this.readingInsight = null;
        } else {
            this.readingInsight = str9;
        }
        if ((i & 512) == 0) {
            this.editingInsight = null;
        } else {
            this.editingInsight = str10;
        }
        if ((i & 1024) == 0) {
            this.editCount = null;
        } else {
            this.editCount = num;
        }
        if ((i & 2048) == 0) {
            this.feedbackSelect = null;
        } else {
            this.feedbackSelect = num2;
        }
        if ((i & 4096) == 0) {
            this.feedbackText = null;
        } else {
            this.feedbackText = str11;
        }
    }

    public ActivityTabEvent$ActionData(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, Integer num) {
        this.group = null;
        this.state = str;
        this.impact = str2;
        this.games = str3;
        this.donations = str4;
        this.timeline = str5;
        this.all = str6;
        this.timeSpent = str7;
        this.readingInsight = str8;
        this.editingInsight = str9;
        this.editCount = num;
        this.feedbackSelect = null;
        this.feedbackText = null;
    }
}
