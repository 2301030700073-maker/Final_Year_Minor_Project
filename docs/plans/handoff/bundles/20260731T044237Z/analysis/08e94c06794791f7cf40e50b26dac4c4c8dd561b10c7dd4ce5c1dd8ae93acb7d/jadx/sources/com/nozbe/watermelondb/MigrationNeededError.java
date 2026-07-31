package com.nozbe.watermelondb;

/* loaded from: classes5.dex */
public class MigrationNeededError extends RuntimeException {
    public int databaseVersion;

    public MigrationNeededError(int i) {
        this.databaseVersion = i;
    }
}
