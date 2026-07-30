package com.amazonaws.auth;

import com.facebook.appevents.AppEventsConstants;

/* loaded from: classes.dex */
public enum SignatureVersion {
    V1(AppEventsConstants.EVENT_PARAM_VALUE_YES),
    V2("2");


    /* renamed from: break, reason: not valid java name */
    public final String f8736break;

    SignatureVersion(String str) {
        this.f8736break = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f8736break;
    }
}
