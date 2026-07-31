package com.google.android.exoplayer2.source.dash.manifest;

import java.util.Arrays;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
@Deprecated
/* loaded from: classes.dex */
public final class BaseUrl {
    public static final int DEFAULT_DVB_PRIORITY = 1;
    public static final int DEFAULT_WEIGHT = 1;
    public static final int PRIORITY_UNSET = Integer.MIN_VALUE;
    public final int priority;
    public final String serviceLocation;
    public final String url;
    public final int weight;

    public BaseUrl(String str, String str2, int i, int i2) {
        this.url = str;
        this.serviceLocation = str2;
        this.priority = i;
        this.weight = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BaseUrl)) {
            return false;
        }
        BaseUrl baseUrl = (BaseUrl) obj;
        return this.priority == baseUrl.priority && this.weight == baseUrl.weight && UStringsKt.equal(this.url, baseUrl.url) && UStringsKt.equal(this.serviceLocation, baseUrl.serviceLocation);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.url, this.serviceLocation, Integer.valueOf(this.priority), Integer.valueOf(this.weight)});
    }

    public BaseUrl(String str) {
        this(str, str, Integer.MIN_VALUE, 1);
    }
}
