package defpackage;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
public final class CS {

    /* renamed from: do, reason: not valid java name */
    public final long f377do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f378do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ C4040yS f379do;

    /* renamed from: for, reason: not valid java name */
    public final String f380for;

    /* renamed from: if, reason: not valid java name */
    public final String f381if;

    public CS(C4040yS c4040yS, long j) {
        this.f379do = c4040yS;
        Preconditions.checkNotEmpty("health_monitor");
        Preconditions.checkArgument(j > 0);
        this.f378do = "health_monitor:start";
        this.f381if = "health_monitor:count";
        this.f380for = "health_monitor:value";
        this.f377do = j;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m271do() {
        C4040yS c4040yS = this.f379do;
        c4040yS.mo1960catch();
        long currentTimeMillis = c4040yS.mo2257new().currentTimeMillis();
        SharedPreferences.Editor edit = c4040yS.m8724static().edit();
        edit.remove(this.f381if);
        edit.remove(this.f380for);
        edit.putLong(this.f378do, currentTimeMillis);
        edit.apply();
    }
}
