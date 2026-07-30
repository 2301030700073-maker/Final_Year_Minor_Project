package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.g.s;
import c.b.a.c.d.g.w;
import c.b.a.c.d.j.q;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class Status extends zzbkv implements s, ReflectedParcelable {

    /* renamed from: a, reason: collision with root package name */
    public final int f3373a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3374b;

    /* renamed from: c, reason: collision with root package name */
    public final String f3375c;

    /* renamed from: d, reason: collision with root package name */
    public final PendingIntent f3376d;
    public static final Status e = new Status(0);
    public static final Status f = new Status(15);
    public static final Status g = new Status(16);
    public static final Parcelable.Creator CREATOR = new w();

    public Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.f3373a = i;
        this.f3374b = i2;
        this.f3375c = str;
        this.f3376d = pendingIntent;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f3373a == status.f3373a && this.f3374b == status.f3374b && a.p0(this.f3375c, status.f3375c) && a.p0(this.f3376d, status.f3376d);
    }

    @Override // c.b.a.c.d.g.s
    public final Status g() {
        return this;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3373a), Integer.valueOf(this.f3374b), this.f3375c, this.f3376d});
    }

    public final String toString() {
        q Q = a.Q(this);
        String str = this.f3375c;
        if (str == null) {
            int i = this.f3374b;
            switch (i) {
                case -1:
                    str = "SUCCESS_CACHE";
                    break;
                case 0:
                    str = "SUCCESS";
                    break;
                case 1:
                case 9:
                case 11:
                case 12:
                default:
                    StringBuilder sb = new StringBuilder(32);
                    sb.append("unknown status code: ");
                    sb.append(i);
                    str = sb.toString();
                    break;
                case 2:
                    str = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case 3:
                    str = "SERVICE_DISABLED";
                    break;
                case 4:
                    str = "SIGN_IN_REQUIRED";
                    break;
                case 5:
                    str = "INVALID_ACCOUNT";
                    break;
                case 6:
                    str = "RESOLUTION_REQUIRED";
                    break;
                case 7:
                    str = "NETWORK_ERROR";
                    break;
                case 8:
                    str = "INTERNAL_ERROR";
                    break;
                case 10:
                    str = "DEVELOPER_ERROR";
                    break;
                case 13:
                    str = "ERROR";
                    break;
                case 14:
                    str = "INTERRUPTED";
                    break;
                case 15:
                    str = "TIMEOUT";
                    break;
                case 16:
                    str = "CANCELED";
                    break;
                case 17:
                    str = "API_NOT_CONNECTED";
                    break;
                case 18:
                    str = "DEAD_CLIENT";
                    break;
            }
        }
        Q.a("statusCode", str);
        Q.a("resolution", this.f3376d);
        return Q.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3374b);
        a.c0(parcel, 2, this.f3375c, false);
        a.b0(parcel, 3, this.f3376d, i, false);
        a.s0(parcel, 1000, this.f3373a);
        a.H0(parcel, q0);
    }

    public Status(int i) {
        this(1, i, null, null);
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }
}
