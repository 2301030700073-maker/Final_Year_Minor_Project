package b.b.c;

import android.content.Context;
import android.content.IntentFilter;
import android.os.PowerManager;
import androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager;

/* loaded from: classes.dex */
public class C extends AppCompatDelegateImpl$AutoNightModeManager {

    /* renamed from: c, reason: collision with root package name */
    public final PowerManager f248c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ J f249d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(J j, Context context) {
        super(j);
        this.f249d = j;
        this.f248c = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public IntentFilter b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
        return intentFilter;
    }

    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public int c() {
        return this.f248c.isPowerSaveMode() ? 2 : 1;
    }

    @Override // androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager
    public void d() {
        this.f249d.q();
    }
}
