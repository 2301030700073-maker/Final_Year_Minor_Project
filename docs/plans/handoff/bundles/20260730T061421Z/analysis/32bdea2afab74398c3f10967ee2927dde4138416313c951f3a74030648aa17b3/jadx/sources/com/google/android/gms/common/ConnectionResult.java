package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import c.b.a.c.b.a;
import c.b.a.c.d.j.q;
import c.b.a.c.d.n;
import com.google.android.gms.internal.zzbkv;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class ConnectionResult extends zzbkv {

    /* renamed from: a, reason: collision with root package name */
    public final int f3360a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3361b;

    /* renamed from: c, reason: collision with root package name */
    public final PendingIntent f3362c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3363d;
    public static final ConnectionResult e = new ConnectionResult(0);
    public static final Parcelable.Creator CREATOR = new n();

    public ConnectionResult(int i) {
        this.f3360a = 1;
        this.f3361b = i;
        this.f3362c = null;
        this.f3363d = null;
    }

    public static String i(int i) {
        if (i == 99) {
            return "UNFINISHED";
        }
        if (i == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    default:
                        StringBuilder sb = new StringBuilder(31);
                        sb.append("UNKNOWN_ERROR_CODE(");
                        sb.append(i);
                        sb.append(")");
                        return sb.toString();
                }
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.f3361b == connectionResult.f3361b && a.p0(this.f3362c, connectionResult.f3362c) && a.p0(this.f3363d, connectionResult.f3363d);
    }

    public final boolean h() {
        return this.f3361b == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f3361b), this.f3362c, this.f3363d});
    }

    public final String toString() {
        q Q = a.Q(this);
        Q.a("statusCode", i(this.f3361b));
        Q.a("resolution", this.f3362c);
        Q.a("message", this.f3363d);
        return Q.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int q0 = a.q0(parcel);
        a.s0(parcel, 1, this.f3360a);
        a.s0(parcel, 2, this.f3361b);
        a.b0(parcel, 3, this.f3362c, i, false);
        a.c0(parcel, 4, this.f3363d, false);
        a.H0(parcel, q0);
    }

    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.f3360a = i;
        this.f3361b = i2;
        this.f3362c = pendingIntent;
        this.f3363d = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this.f3360a = 1;
        this.f3361b = i;
        this.f3362c = pendingIntent;
        this.f3363d = null;
    }
}
