package com.nozbe.watermelondb.utils;

/* loaded from: classes5.dex */
public class Schema {
    public String sql;
    public int version;

    public Schema(int i, String str) {
        this.version = i;
        this.sql = str;
    }
}
