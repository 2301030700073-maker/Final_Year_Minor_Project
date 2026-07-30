package com.amazonaws;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ResponseMetadata {

    /* renamed from: do, reason: not valid java name */
    public final Map<String, String> f8697do;

    public ResponseMetadata(HashMap hashMap) {
        this.f8697do = hashMap;
    }

    public final String toString() {
        Map<String, String> map = this.f8697do;
        return map == null ? "{}" : map.toString();
    }
}
