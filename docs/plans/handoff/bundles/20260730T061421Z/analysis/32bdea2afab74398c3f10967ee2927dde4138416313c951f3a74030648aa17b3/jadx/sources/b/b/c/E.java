package b.b.c;

import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.os.Process;
import android.util.Log;
import androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager;
import com.android.quickstep.util.ImageActionUtils;
import java.util.Calendar;

/* loaded from: classes.dex */
public class E extends AppCompatDelegateImpl$AutoNightModeManager {

    /* renamed from: c, reason: collision with root package name */
    public final Q f251c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ J f252d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(J j, Q q) {
        super(j);
        this.f252d = j;
        this.f251c = q;
    }

    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public IntentFilter b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.TIME_TICK");
        return intentFilter;
    }

    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public int c() {
        boolean z;
        long j;
        Q q = this.f251c;
        P p = q.f280c;
        if (p.f276b > System.currentTimeMillis()) {
            z = p.f275a;
        } else {
            Context context = q.f278a;
            Location a2 = b.e.b.d.e(context, "android.permission.ACCESS_COARSE_LOCATION", Process.myPid(), Process.myUid(), context.getPackageName()) == 0 ? q.a("network") : null;
            Context context2 = q.f278a;
            Location a3 = b.e.b.d.e(context2, "android.permission.ACCESS_FINE_LOCATION", Process.myPid(), Process.myUid(), context2.getPackageName()) == 0 ? q.a("gps") : null;
            if (a3 == null || a2 == null ? a3 != null : a3.getTime() > a2.getTime()) {
                a2 = a3;
            }
            if (a2 != null) {
                P p2 = q.f280c;
                long currentTimeMillis = System.currentTimeMillis();
                if (O.f271d == null) {
                    O.f271d = new O();
                }
                O o = O.f271d;
                o.a(currentTimeMillis - ImageActionUtils.FILE_LIFE, a2.getLatitude(), a2.getLongitude());
                o.a(currentTimeMillis, a2.getLatitude(), a2.getLongitude());
                boolean z2 = o.f274c == 1;
                long j2 = o.f273b;
                long j3 = o.f272a;
                o.a(currentTimeMillis + ImageActionUtils.FILE_LIFE, a2.getLatitude(), a2.getLongitude());
                long j4 = o.f273b;
                if (j2 == -1 || j3 == -1) {
                    j = currentTimeMillis + 43200000;
                } else {
                    j = (currentTimeMillis > j3 ? j4 + 0 : currentTimeMillis > j2 ? j3 + 0 : j2 + 0) + 60000;
                }
                p2.f275a = z2;
                p2.f276b = j;
                z = p.f275a;
            } else {
                Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                int i = Calendar.getInstance().get(11);
                z = i < 6 || i >= 22;
            }
        }
        return z ? 2 : 1;
    }

    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public void d() {
        this.f252d.q();
    }
}
