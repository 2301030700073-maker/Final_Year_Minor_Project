package com.google.android.gms.ads;

import java.util.Locale;

/* loaded from: classes.dex */
public class VersionInfo {

    /* renamed from: do, reason: not valid java name */
    public final int f9528do;

    /* renamed from: for, reason: not valid java name */
    public final int f9529for;

    /* renamed from: if, reason: not valid java name */
    public final int f9530if;

    public VersionInfo(int i, int i2, int i3) {
        this.f9528do = i;
        this.f9530if = i2;
        this.f9529for = i3;
    }

    public int getMajorVersion() {
        return this.f9528do;
    }

    public int getMicroVersion() {
        return this.f9529for;
    }

    public int getMinorVersion() {
        return this.f9530if;
    }

    public String toString() {
        return String.format(Locale.US, "%d.%d.%d", Integer.valueOf(this.f9528do), Integer.valueOf(this.f9530if), Integer.valueOf(this.f9529for));
    }
}
