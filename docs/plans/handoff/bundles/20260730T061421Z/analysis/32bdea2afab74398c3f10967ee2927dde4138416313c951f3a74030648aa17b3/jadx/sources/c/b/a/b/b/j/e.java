package c.b.a.b.b.j;

import com.android.launcher3.util.SecureSettingsObserver;
import com.android.quickstep.SysUINavigationMode;

/* loaded from: classes.dex */
public class e implements SecureSettingsObserver.OnChangeListener, SysUINavigationMode.NavigationModeChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final int f2585a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f2586b;

    /* renamed from: c, reason: collision with root package name */
    public int f2587c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f f2588d;

    public e(f fVar, int i) {
        this.f2588d = fVar;
        this.f2585a = i;
    }

    @Override // com.android.quickstep.SysUINavigationMode.NavigationModeChangeListener
    public void onNavigationModeChanged(SysUINavigationMode.Mode mode) {
        this.f2587c = mode.resValue;
        this.f2588d.a(this.f2585a);
    }

    @Override // com.android.launcher3.util.SecureSettingsObserver.OnChangeListener
    public void onSettingsChanged(boolean z) {
        this.f2586b = z;
        this.f2588d.a(this.f2585a);
    }
}
