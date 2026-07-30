package com.amazonaws.regions;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class Region {

    /* renamed from: do, reason: not valid java name */
    public final String f8961do;

    /* renamed from: if, reason: not valid java name */
    public final String f8964if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8962do = new HashMap();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final HashMap f8965if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    public final HashMap f8963for = new HashMap();

    public Region(String str, String str2) {
        this.f8961do = str;
        if (str2 == null || str2.isEmpty()) {
            this.f8964if = "amazonaws.com";
        } else {
            this.f8964if = str2;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Region m5118for() {
        ArrayList arrayList;
        ArrayList arrayList2 = RegionUtils.f8966do;
        synchronized (RegionUtils.class) {
            if (RegionUtils.f8966do == null) {
                RegionUtils.m5127do();
            }
            arrayList = RegionUtils.f8966do;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Region region = (Region) it.next();
            if (region.f8961do.equals("us-east-1")) {
                return region;
            }
        }
        return null;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m5119do() {
        return this.f8964if;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Region)) {
            return false;
        }
        return this.f8961do.equals(((Region) obj).f8961do);
    }

    public final int hashCode() {
        return this.f8961do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final String m5120if() {
        return this.f8961do;
    }

    /* renamed from: new, reason: not valid java name */
    public final String m5121new(String str) {
        return (String) this.f8962do.get(str);
    }

    public final String toString() {
        return this.f8961do;
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m5122try(String str) {
        return this.f8962do.containsKey(str);
    }
}
