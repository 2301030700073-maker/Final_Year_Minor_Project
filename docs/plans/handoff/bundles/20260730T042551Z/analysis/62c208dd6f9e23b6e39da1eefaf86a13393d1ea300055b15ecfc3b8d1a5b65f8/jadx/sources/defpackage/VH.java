package defpackage;

import android.content.SharedPreferences;
import android.text.TextUtils;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class VH {

    /* renamed from: do, reason: not valid java name */
    public static WeakReference<VH> f4075do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public OD f4076do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final SharedPreferences f4077do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f4078do;

    public VH(SharedPreferences sharedPreferences, ScheduledExecutorService scheduledExecutorService) {
        this.f4078do = scheduledExecutorService;
        this.f4077do = sharedPreferences;
    }

    /* renamed from: do, reason: not valid java name */
    public final synchronized QH m2552do() {
        QH qh;
        String m1647if = this.f4076do.m1647if();
        Pattern pattern = QH.f2898do;
        if (!TextUtils.isEmpty(m1647if)) {
            String[] split = m1647if.split("!", -1);
            qh = split.length == 2 ? new QH(split[0], split[1]) : null;
        }
        return qh;
    }

    /* renamed from: for, reason: not valid java name */
    public final synchronized void m2553for(QH qh) {
        this.f4076do.m1646for(qh.f2900for);
    }

    /* renamed from: if, reason: not valid java name */
    public final synchronized void m2554if() {
        this.f4076do = OD.m1645do(this.f4077do, this.f4078do);
    }
}
