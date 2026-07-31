package org.wikipedia.analytics.eventplatform;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Serializable
/* loaded from: classes.dex */
public final class RecommendedReadingListEvent$ActionData {
    public static final Companion Companion = new Companion();
    public final Integer countSaved;
    public final Integer countSelected;
    public final String currentSetting;
    public final String optionsShown;
    public final String selected;
    public final String source;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public final KSerializer serializer() {
            return RecommendedReadingListEvent$ActionData$$serializer.INSTANCE;
        }
    }

    public /* synthetic */ RecommendedReadingListEvent$ActionData(int i, String str, Integer num, Integer num2, String str2, String str3, String str4) {
        if ((i & 1) == 0) {
            this.optionsShown = null;
        } else {
            this.optionsShown = str;
        }
        if ((i & 2) == 0) {
            this.countSelected = null;
        } else {
            this.countSelected = num;
        }
        if ((i & 4) == 0) {
            this.countSaved = null;
        } else {
            this.countSaved = num2;
        }
        if ((i & 8) == 0) {
            this.currentSetting = null;
        } else {
            this.currentSetting = str2;
        }
        if ((i & 16) == 0) {
            this.selected = null;
        } else {
            this.selected = str3;
        }
        if ((i & 32) == 0) {
            this.source = null;
        } else {
            this.source = str4;
        }
    }

    public RecommendedReadingListEvent$ActionData(String str, Integer num, Integer num2, String str2, String str3, String str4) {
        this.optionsShown = str;
        this.countSelected = num;
        this.countSaved = num2;
        this.currentSetting = str2;
        this.selected = str3;
        this.source = str4;
    }
}
