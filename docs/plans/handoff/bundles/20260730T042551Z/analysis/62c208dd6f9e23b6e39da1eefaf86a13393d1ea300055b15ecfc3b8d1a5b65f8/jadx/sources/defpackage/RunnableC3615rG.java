package defpackage;

import android.app.Notification;
import android.os.Build;
import androidx.work.impl.foreground.SystemForegroundService;

/* renamed from: rG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC3615rG implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Notification f15251do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ SystemForegroundService f15252do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15253for;

    /* renamed from: new, reason: not valid java name */
    public final /* synthetic */ int f15254new;

    public RunnableC3615rG(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
        this.f15252do = systemForegroundService;
        this.f15253for = i;
        this.f15251do = notification;
        this.f15254new = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = Build.VERSION.SDK_INT;
        Notification notification = this.f15251do;
        int i2 = this.f15253for;
        SystemForegroundService systemForegroundService = this.f15252do;
        if (i >= 29) {
            systemForegroundService.startForeground(i2, notification, this.f15254new);
        } else {
            systemForegroundService.startForeground(i2, notification);
        }
    }
}
