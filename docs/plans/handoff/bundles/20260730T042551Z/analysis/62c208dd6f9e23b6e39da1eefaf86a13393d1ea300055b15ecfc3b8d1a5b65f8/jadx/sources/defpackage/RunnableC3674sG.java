package defpackage;

import android.app.Notification;
import androidx.work.impl.foreground.SystemForegroundService;

/* renamed from: sG, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC3674sG implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Notification f15424do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ SystemForegroundService f15425do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f15426for;

    public RunnableC3674sG(SystemForegroundService systemForegroundService, int i, Notification notification) {
        this.f15425do = systemForegroundService;
        this.f15426for = i;
        this.f15424do = notification;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15425do.f8209do.notify(this.f15426for, this.f15424do);
    }
}
