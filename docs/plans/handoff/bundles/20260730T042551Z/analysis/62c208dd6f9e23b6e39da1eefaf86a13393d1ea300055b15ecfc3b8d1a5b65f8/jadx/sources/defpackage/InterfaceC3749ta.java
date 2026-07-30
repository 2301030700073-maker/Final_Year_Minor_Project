package defpackage;

import android.app.Activity;
import androidx.annotation.RecentlyNonNull;

/* renamed from: ta, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public interface InterfaceC3749ta {

    /* renamed from: ta$do, reason: invalid class name */
    public interface Cdo {
        void onConsentInfoUpdateFailure(@RecentlyNonNull C3817uj c3817uj);
    }

    /* renamed from: ta$for, reason: invalid class name */
    public enum Cfor {
        UNKNOWN,
        NOT_REQUIRED,
        REQUIRED
    }

    /* renamed from: ta$if, reason: invalid class name */
    public interface Cif {
        void onConsentInfoUpdateSuccess();
    }

    boolean canRequestAds();

    int getConsentStatus();

    boolean isConsentFormAvailable();

    void requestConsentInfoUpdate(@RecentlyNonNull Activity activity, @RecentlyNonNull C3808ua c3808ua, @RecentlyNonNull Cif cif, @RecentlyNonNull Cdo cdo);
}
