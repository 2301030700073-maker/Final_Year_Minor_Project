package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;

/* renamed from: oi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3463oi {

    /* renamed from: case, reason: not valid java name */
    public final String f14824case;

    /* renamed from: do, reason: not valid java name */
    public final String f14825do;

    /* renamed from: else, reason: not valid java name */
    public final String f14826else;

    /* renamed from: for, reason: not valid java name */
    public final String f14827for;

    /* renamed from: if, reason: not valid java name */
    public final String f14828if;

    /* renamed from: new, reason: not valid java name */
    public final String f14829new;

    /* renamed from: try, reason: not valid java name */
    public final String f14830try;

    public C3463oi(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), "ApplicationId must be set.");
        this.f14828if = str;
        this.f14825do = str2;
        this.f14827for = str3;
        this.f14829new = str4;
        this.f14830try = str5;
        this.f14824case = str6;
        this.f14826else = str7;
    }

    /* renamed from: do, reason: not valid java name */
    public static C3463oi m7716do(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString("google_app_id");
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new C3463oi(string, stringResourceValueReader.getString("google_api_key"), stringResourceValueReader.getString("firebase_database_url"), stringResourceValueReader.getString("ga_trackingId"), stringResourceValueReader.getString("gcm_defaultSenderId"), stringResourceValueReader.getString("google_storage_bucket"), stringResourceValueReader.getString("project_id"));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3463oi)) {
            return false;
        }
        C3463oi c3463oi = (C3463oi) obj;
        return Objects.equal(this.f14828if, c3463oi.f14828if) && Objects.equal(this.f14825do, c3463oi.f14825do) && Objects.equal(this.f14827for, c3463oi.f14827for) && Objects.equal(this.f14829new, c3463oi.f14829new) && Objects.equal(this.f14830try, c3463oi.f14830try) && Objects.equal(this.f14824case, c3463oi.f14824case) && Objects.equal(this.f14826else, c3463oi.f14826else);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f14828if, this.f14825do, this.f14827for, this.f14829new, this.f14830try, this.f14824case, this.f14826else);
    }

    public final String toString() {
        return Objects.toStringHelper(this).add("applicationId", this.f14828if).add("apiKey", this.f14825do).add("databaseUrl", this.f14827for).add("gcmSenderId", this.f14830try).add("storageBucket", this.f14824case).add("projectId", this.f14826else).toString();
    }
}
