package c.b.a.b.b.k;

import c.b.a.b.a.a.a.a.c.InterfaceC0383w;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.logging.UserEventDispatcher;

/* loaded from: classes.dex */
public class k implements InterfaceC0383w {

    /* renamed from: a, reason: collision with root package name */
    public final UserEventDispatcher f2615a;

    /* renamed from: b, reason: collision with root package name */
    public final StatsLogManager f2616b;

    public k(UserEventDispatcher userEventDispatcher, StatsLogManager statsLogManager) {
        this.f2615a = userEventDispatcher;
        this.f2616b = statsLogManager;
    }

    @Override // c.b.a.b.a.a.a.a.c.InterfaceC0383w
    public void a() {
        this.f2615a.logActionOnControl(0, 28);
        this.f2616b.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_SELECT_MODE_ITEM);
    }
}
