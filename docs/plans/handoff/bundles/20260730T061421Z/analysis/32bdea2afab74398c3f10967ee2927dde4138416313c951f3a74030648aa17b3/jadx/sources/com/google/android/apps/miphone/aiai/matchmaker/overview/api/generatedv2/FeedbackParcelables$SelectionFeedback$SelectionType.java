package com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2;

import android.os.Bundle;

/* loaded from: classes.dex */
public enum FeedbackParcelables$SelectionFeedback$SelectionType {
    SELECTION_TYPE_UNKNOWN(0),
    TEXT(1),
    IMAGE(2);

    public final int value;

    FeedbackParcelables$SelectionFeedback$SelectionType(int i) {
        this.value = i;
    }

    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putInt("value", this.value);
        return bundle;
    }
}
