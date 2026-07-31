package com.nozbe.watermelondb.utils;

/* loaded from: classes5.dex */
public class MigrationSet {
    public int from;
    public String sql;
    public int to;

    public MigrationSet(int i, int i2, String str) {
        this.from = i;
        this.to = i2;
        this.sql = str;
    }
}
