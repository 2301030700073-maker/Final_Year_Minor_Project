package c.b.a.b.b.l;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.os.Process;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;

/* loaded from: classes.dex */
public class G extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NexusLauncherActivity f2626a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ H f2627b;

    public G(H h, NexusLauncherActivity nexusLauncherActivity) {
        this.f2627b = h;
        this.f2626a = nexusLauncherActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (getResultCode() != 0) {
            this.f2626a.f3288a.f2534b.b();
            return;
        }
        Context context2 = this.f2627b.getContext();
        try {
            context2.startActivity(new Intent("com.google.android.googlequicksearchbox.TEXT_ASSIST").addFlags(268468224).setPackage("com.google.android.googlequicksearchbox"));
        } catch (ActivityNotFoundException unused) {
            ((LauncherApps) context2.getSystemService(LauncherApps.class)).startAppDetailsActivity(new ComponentName("com.google.android.googlequicksearchbox", ".SearchActivity"), Process.myUserHandle(), null, null);
        }
    }
}
