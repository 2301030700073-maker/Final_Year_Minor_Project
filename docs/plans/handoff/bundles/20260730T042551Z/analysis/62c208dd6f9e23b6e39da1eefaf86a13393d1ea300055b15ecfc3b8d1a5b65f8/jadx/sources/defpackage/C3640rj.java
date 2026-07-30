package defpackage;

import android.app.Notification;

/* renamed from: rj, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3640rj {

    /* renamed from: do, reason: not valid java name */
    public final int f15307do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Notification f15308do;

    /* renamed from: if, reason: not valid java name */
    public final int f15309if;

    public C3640rj(int i, int i2, Notification notification) {
        this.f15307do = i;
        this.f15308do = notification;
        this.f15309if = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3640rj.class != obj.getClass()) {
            return false;
        }
        C3640rj c3640rj = (C3640rj) obj;
        if (this.f15307do == c3640rj.f15307do && this.f15309if == c3640rj.f15309if) {
            return this.f15308do.equals(c3640rj.f15308do);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15308do.hashCode() + (((this.f15307do * 31) + this.f15309if) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f15307do + ", mForegroundServiceType=" + this.f15309if + ", mNotification=" + this.f15308do + '}';
    }
}
