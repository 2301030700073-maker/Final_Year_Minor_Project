package b.b.c;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;

/* loaded from: classes.dex */
public class Q {

    /* renamed from: d, reason: collision with root package name */
    public static Q f277d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f278a;

    /* renamed from: b, reason: collision with root package name */
    public final LocationManager f279b;

    /* renamed from: c, reason: collision with root package name */
    public final P f280c = new P();

    public Q(Context context, LocationManager locationManager) {
        this.f278a = context;
        this.f279b = locationManager;
    }

    public static void setInstance(Q q) {
        f277d = q;
    }

    public final Location a(String str) {
        try {
            if (this.f279b.isProviderEnabled(str)) {
                return this.f279b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e) {
            Log.d("TwilightManager", "Failed to get last known location", e);
            return null;
        }
    }
}
