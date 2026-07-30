package b.b.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager;

/* loaded from: classes.dex */
public class D extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatDelegateImpl$AutoNightModeManager f250a;

    public D(AppCompatDelegateImpl$AutoNightModeManager appCompatDelegateImpl$AutoNightModeManager) {
        this.f250a = appCompatDelegateImpl$AutoNightModeManager;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f250a.d();
    }
}
