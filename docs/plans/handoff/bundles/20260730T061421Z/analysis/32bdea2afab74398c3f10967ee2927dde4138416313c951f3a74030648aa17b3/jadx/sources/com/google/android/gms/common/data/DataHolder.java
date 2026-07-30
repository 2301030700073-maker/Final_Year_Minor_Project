package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import c.b.a.c.b.a;
import c.b.a.c.d.h.b;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.zzbkv;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;

@KeepName
/* loaded from: classes.dex */
public final class DataHolder extends zzbkv implements Closeable {
    public static final Parcelable.Creator CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f3392a;

    /* renamed from: b, reason: collision with root package name */
    public final String[] f3393b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f3394c;

    /* renamed from: d, reason: collision with root package name */
    public final CursorWindow[] f3395d;
    public final int e;
    public final Bundle f;
    public int[] g;
    public boolean h = false;
    public boolean i = true;

    static {
        a.R(new String[0]);
        new ArrayList();
        new HashMap();
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.f3392a = i;
        this.f3393b = strArr;
        this.f3395d = cursorWindowArr;
        this.e = i2;
        this.f = bundle;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (!this.h) {
                this.h = true;
                for (int i = 0; i < this.f3395d.length; i++) {
                    this.f3395d[i].close();
                }
            }
        }
    }

    public final void finalize() {
        boolean z;
        try {
            if (this.f3395d.length > 0) {
                synchronized (this) {
                    z = this.h;
                }
                if (!z) {
                    close();
                    String obj = toString();
                    StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 178);
                    sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                    sb.append(obj);
                    sb.append(")");
                    Log.e("DataBuffer", sb.toString());
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.h0(parcel, 1, this.f3393b, false);
        a.g0(parcel, 2, this.f3395d, i);
        a.s0(parcel, 3, this.e);
        a.Z(parcel, 4, this.f, false);
        a.s0(parcel, 1000, this.f3392a);
        a.H0(parcel, q0);
        if ((i & 1) != 0) {
            close();
        }
    }
}
