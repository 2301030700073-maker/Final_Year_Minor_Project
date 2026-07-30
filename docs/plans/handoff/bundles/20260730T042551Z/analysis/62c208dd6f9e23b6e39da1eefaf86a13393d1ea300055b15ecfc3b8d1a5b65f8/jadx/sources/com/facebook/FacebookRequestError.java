package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.qualityvalidation.Excuse;
import com.facebook.internal.qualityvalidation.ExcusesForDesignViolations;
import defpackage.C0173Do;
import defpackage.C3344mh;
import defpackage.C3756th;
import defpackage.C3874vh;
import java.util.Arrays;

@ExcusesForDesignViolations({@Excuse(reason = "Legacy migration", type = "KOTLIN_JVM_FIELD")})
/* loaded from: classes.dex */
public final class FacebookRequestError implements Parcelable {

    /* renamed from: break, reason: not valid java name */
    public final String f9257break;

    /* renamed from: catch, reason: not valid java name */
    public final String f9258catch;

    /* renamed from: class, reason: not valid java name */
    public final String f9259class;

    /* renamed from: const, reason: not valid java name */
    public final String f9260const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f9261do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3344mh f9262do;

    /* renamed from: for, reason: not valid java name */
    public final int f9263for;

    /* renamed from: new, reason: not valid java name */
    public final int f9264new;

    /* renamed from: try, reason: not valid java name */
    public final int f9265try;

    /* renamed from: do, reason: not valid java name */
    public static final Cfor f9256do = new Cfor();
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new Cif();

    /* renamed from: com.facebook.FacebookRequestError$do, reason: invalid class name */
    public enum Cdo {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static Cdo[] valuesCustom() {
            return (Cdo[]) Arrays.copyOf(values(), 3);
        }
    }

    /* renamed from: com.facebook.FacebookRequestError$for, reason: invalid class name */
    public static final class Cfor {
        /* renamed from: do, reason: not valid java name */
        public final synchronized FacebookRequestErrorClassification m5262do() {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings appSettingsWithoutQuery = FetchedAppSettingsManager.getAppSettingsWithoutQuery(C3756th.m8303if());
            if (appSettingsWithoutQuery == null) {
                return FacebookRequestErrorClassification.Companion.getDefaultErrorClassification();
            }
            return appSettingsWithoutQuery.getErrorClassification();
        }
    }

    /* renamed from: com.facebook.FacebookRequestError$if, reason: invalid class name */
    public static final class Cif implements Parcelable.Creator<FacebookRequestError> {
        @Override // android.os.Parcelable.Creator
        public final FacebookRequestError createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "parcel");
            return new FacebookRequestError(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), null, null, false);
        }

        @Override // android.os.Parcelable.Creator
        public final FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }
    }

    public /* synthetic */ FacebookRequestError() {
        throw null;
    }

    public FacebookRequestError(int i, int i2, int i3, String str, String str2, String str3, String str4, Object obj, C3344mh c3344mh, boolean z) {
        boolean z2;
        this.f9263for = i;
        this.f9264new = i2;
        this.f9265try = i3;
        this.f9257break = str;
        this.f9258catch = str3;
        this.f9259class = str4;
        this.f9261do = obj;
        this.f9260const = str2;
        if (c3344mh != null) {
            this.f9262do = c3344mh;
            z2 = true;
        } else {
            this.f9262do = new C3874vh(this, m5261do());
            z2 = false;
        }
        Cfor cfor = f9256do;
        cfor.m5262do().getRecoveryMessage(z2 ? Cdo.OTHER : cfor.m5262do().classify(i2, i3, z));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m5261do() {
        String str = this.f9260const;
        if (str != null) {
            return str;
        }
        C3344mh c3344mh = this.f9262do;
        if (c3344mh == null) {
            return null;
        }
        return c3344mh.getLocalizedMessage();
    }

    public final String toString() {
        String str = "{HttpStatus: " + this.f9263for + ", errorCode: " + this.f9264new + ", subErrorCode: " + this.f9265try + ", errorType: " + this.f9257break + ", errorMessage: " + m5261do() + "}";
        C0173Do.m399new(str, "StringBuilder(\"{HttpStatus: \")\n        .append(requestStatusCode)\n        .append(\", errorCode: \")\n        .append(errorCode)\n        .append(\", subErrorCode: \")\n        .append(subErrorCode)\n        .append(\", errorType: \")\n        .append(errorType)\n        .append(\", errorMessage: \")\n        .append(errorMessage)\n        .append(\"}\")\n        .toString()");
        return str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        C0173Do.m401try(parcel, "out");
        parcel.writeInt(this.f9263for);
        parcel.writeInt(this.f9264new);
        parcel.writeInt(this.f9265try);
        parcel.writeString(this.f9257break);
        parcel.writeString(m5261do());
        parcel.writeString(this.f9258catch);
        parcel.writeString(this.f9259class);
    }

    public FacebookRequestError(Exception exc) {
        this(-1, -1, -1, null, null, null, null, null, exc instanceof C3344mh ? (C3344mh) exc : new C3344mh(exc), false);
    }

    public FacebookRequestError(int i, String str, String str2) {
        this(-1, i, -1, str, str2, null, null, null, null, false);
    }
}
