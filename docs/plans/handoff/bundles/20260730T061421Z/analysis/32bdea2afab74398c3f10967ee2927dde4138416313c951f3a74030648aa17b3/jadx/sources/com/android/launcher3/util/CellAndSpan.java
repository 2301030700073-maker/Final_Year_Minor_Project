package com.android.launcher3.util;

import c.a.c.a.a;

/* loaded from: classes.dex */
public class CellAndSpan {
    public int cellX;
    public int cellY;
    public int spanX;
    public int spanY;

    public CellAndSpan() {
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
    }

    public String toString() {
        StringBuilder f = a.f("(");
        f.append(this.cellX);
        f.append(", ");
        f.append(this.cellY);
        f.append(": ");
        f.append(this.spanX);
        f.append(", ");
        f.append(this.spanY);
        f.append(")");
        return f.toString();
    }

    public CellAndSpan(int i, int i2, int i3, int i4) {
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.cellX = i;
        this.cellY = i2;
        this.spanX = i3;
        this.spanY = i4;
    }
}
