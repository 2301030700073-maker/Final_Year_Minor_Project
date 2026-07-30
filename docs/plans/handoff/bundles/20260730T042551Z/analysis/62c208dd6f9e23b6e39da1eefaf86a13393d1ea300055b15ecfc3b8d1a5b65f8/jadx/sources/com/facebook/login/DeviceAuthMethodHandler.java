package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentActivity;
import com.facebook.login.LoginClient;
import defpackage.C0173Do;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* loaded from: classes.dex */
public class DeviceAuthMethodHandler extends LoginMethodHandler {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static ScheduledThreadPoolExecutor f9334do;

    /* renamed from: break, reason: not valid java name */
    public final String f9335break;

    /* renamed from: do, reason: not valid java name */
    public static final Cif f9333do = new Cif();
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Cdo();

    /* renamed from: com.facebook.login.DeviceAuthMethodHandler$do, reason: invalid class name */
    public static final class Cdo implements Parcelable.Creator<DeviceAuthMethodHandler> {
        @Override // android.os.Parcelable.Creator
        public final DeviceAuthMethodHandler createFromParcel(Parcel parcel) {
            C0173Do.m401try(parcel, "source");
            return new DeviceAuthMethodHandler(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final DeviceAuthMethodHandler[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }
    }

    /* renamed from: com.facebook.login.DeviceAuthMethodHandler$if, reason: invalid class name */
    public static final class Cif {
    }

    public DeviceAuthMethodHandler(LoginClient loginClient) {
        super(loginClient);
        this.f9335break = "device_auth";
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: throw */
    public final int mo5486throw(LoginClient.Request request) {
        FragmentActivity m5512try = m5520new().m5512try();
        if (m5512try == null || m5512try.isFinishing()) {
            return 1;
        }
        DeviceAuthDialog deviceAuthDialog = new DeviceAuthDialog();
        deviceAuthDialog.show(m5512try.m4113class(), "login_with_facebook");
        deviceAuthDialog.m5495final(request);
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler
    /* renamed from: try */
    public final String mo5487try() {
        return this.f9335break;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceAuthMethodHandler(Parcel parcel) {
        super(parcel);
        C0173Do.m401try(parcel, "parcel");
        this.f9335break = "device_auth";
    }
}
