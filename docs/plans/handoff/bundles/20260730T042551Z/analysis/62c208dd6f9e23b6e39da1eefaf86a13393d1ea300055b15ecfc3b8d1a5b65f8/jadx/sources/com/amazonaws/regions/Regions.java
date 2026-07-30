package com.amazonaws.regions;

import defpackage.Cif;

/* loaded from: classes.dex */
public enum Regions {
    /* JADX INFO: Fake field, exist only in values array */
    GovCloud("us-gov-west-1"),
    /* JADX INFO: Fake field, exist only in values array */
    US_EAST_1("us-east-1"),
    /* JADX INFO: Fake field, exist only in values array */
    US_WEST_1("us-west-1"),
    /* JADX INFO: Fake field, exist only in values array */
    US_WEST_2("us-west-2"),
    /* JADX INFO: Fake field, exist only in values array */
    EU_WEST_1("eu-west-1"),
    /* JADX INFO: Fake field, exist only in values array */
    EU_CENTRAL_1("eu-central-1"),
    /* JADX INFO: Fake field, exist only in values array */
    AP_SOUTHEAST_1("ap-southeast-1"),
    /* JADX INFO: Fake field, exist only in values array */
    AP_SOUTHEAST_2("ap-southeast-2"),
    /* JADX INFO: Fake field, exist only in values array */
    AP_NORTHEAST_1("ap-northeast-1"),
    /* JADX INFO: Fake field, exist only in values array */
    AP_NORTHEAST_2("ap-northeast-2"),
    /* JADX INFO: Fake field, exist only in values array */
    SA_EAST_1("sa-east-1"),
    /* JADX INFO: Fake field, exist only in values array */
    CN_NORTH_1("cn-north-1");


    /* renamed from: break, reason: not valid java name */
    public final String f8969break;

    Regions(String str) {
        this.f8969break = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5129do(String str) {
        for (Regions regions : values()) {
            if (str.equals(regions.f8969break)) {
                return;
            }
        }
        throw new IllegalArgumentException(Cif.m6908case("Cannot create enum from ", str, " value!"));
    }
}
