package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.google.firebase.perf.util.Timer;
import defpackage.AI;
import defpackage.AbstractC3425o2;
import defpackage.C2743fI;
import defpackage.C3366n2;
import defpackage.C4122zt;
import defpackage.Creturn;
import defpackage.Gw;
import defpackage.InterfaceC3788uC;
import defpackage.L9;
import defpackage.Q0;
import defpackage.QJ;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public class Trace extends AbstractC3425o2 implements Parcelable, InterfaceC3788uC {

    @Keep
    public static final Parcelable.Creator<Trace> CREATOR;

    /* renamed from: do, reason: not valid java name */
    public static final Q0 f11955do = Q0.m1818new();

    /* renamed from: break, reason: not valid java name */
    public final String f11956break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AI f11957do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final QJ f11958do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Trace f11959do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final GaugeManager f11960do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Timer f11961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f11962do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final WeakReference<InterfaceC3788uC> f11963do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f11964do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<PerfSession> f11965do;

    /* renamed from: if, reason: not valid java name */
    public Timer f11966if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f11967if;

    /* renamed from: com.google.firebase.perf.metrics.Trace$do, reason: invalid class name */
    public class Cdo implements Parcelable.Creator<Trace> {
        @Override // android.os.Parcelable.Creator
        public final Trace createFromParcel(Parcel parcel) {
            return new Trace(parcel, false);
        }

        @Override // android.os.Parcelable.Creator
        public final Trace[] newArray(int i) {
            return new Trace[i];
        }
    }

    static {
        new ConcurrentHashMap();
        CREATOR = new Cdo();
    }

    public Trace(String str, AI ai, QJ qj, C3366n2 c3366n2) {
        this(str, ai, qj, c3366n2, GaugeManager.getInstance());
    }

    @Override // android.os.Parcelable
    @Keep
    public int describeContents() {
        return 0;
    }

    @Override // defpackage.InterfaceC3788uC
    /* renamed from: do */
    public final void mo111do(PerfSession perfSession) {
        if (perfSession == null) {
            f11955do.m1819case();
            return;
        }
        if (!(this.f11961do != null) || m6114for()) {
            return;
        }
        this.f11965do.add(perfSession);
    }

    public final void finalize() {
        try {
            if ((this.f11961do != null) && !m6114for()) {
                f11955do.m1821else("Trace '%s' is started but not stopped when it is destructed!", this.f11956break);
                incrementTsnsCount(1);
            }
        } finally {
            super.finalize();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m6114for() {
        return this.f11966if != null;
    }

    @Keep
    public String getAttribute(String str) {
        return (String) this.f11967if.get(str);
    }

    @Keep
    public Map<String, String> getAttributes() {
        return new HashMap(this.f11967if);
    }

    @Keep
    public long getLongMetric(String str) {
        Counter counter = str != null ? (Counter) this.f11962do.get(str.trim()) : null;
        if (counter == null) {
            return 0L;
        }
        return counter.f11954do.get();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m6115if(String str, String str2) {
        if (m6114for()) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Trace '%s' has been stopped", this.f11956break));
        }
        ConcurrentHashMap concurrentHashMap = this.f11967if;
        if (!concurrentHashMap.containsKey(str) && concurrentHashMap.size() >= 5) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Exceeds max limit of number of attributes - %d", 5));
        }
        Gw.m773if(str, str2);
    }

    @Keep
    public void incrementMetric(String str, long j) {
        String m772for = Gw.m772for(str);
        Q0 q0 = f11955do;
        if (m772for != null) {
            q0.m1822for("Cannot increment metric '%s'. Metric name is invalid.(%s)", str, m772for);
            return;
        }
        boolean z = this.f11961do != null;
        String str2 = this.f11956break;
        if (!z) {
            q0.m1821else("Cannot increment metric '%s' for trace '%s' because it's not started", str, str2);
            return;
        }
        if (m6114for()) {
            q0.m1821else("Cannot increment metric '%s' for trace '%s' because it's been stopped", str, str2);
            return;
        }
        String trim = str.trim();
        ConcurrentHashMap concurrentHashMap = this.f11962do;
        Counter counter = (Counter) concurrentHashMap.get(trim);
        if (counter == null) {
            counter = new Counter(trim);
            concurrentHashMap.put(trim, counter);
        }
        AtomicLong atomicLong = counter.f11954do;
        atomicLong.addAndGet(j);
        q0.m1823if("Incrementing metric '%s' to %d on trace '%s'", str, Long.valueOf(atomicLong.get()), str2);
    }

    @Keep
    public void putAttribute(String str, String str2) {
        Q0 q0 = f11955do;
        boolean z = false;
        try {
            str = str.trim();
            str2 = str2.trim();
            m6115if(str, str2);
            q0.m1823if("Setting attribute '%s' to '%s' on trace '%s'", str, str2, this.f11956break);
            z = true;
        } catch (Exception e) {
            q0.m1822for("Can not set attribute '%s' with value '%s' (%s)", str, str2, e.getMessage());
        }
        if (z) {
            this.f11967if.put(str, str2);
        }
    }

    @Keep
    public void putMetric(String str, long j) {
        String m772for = Gw.m772for(str);
        Q0 q0 = f11955do;
        if (m772for != null) {
            q0.m1822for("Cannot set value for metric '%s'. Metric name is invalid.(%s)", str, m772for);
            return;
        }
        boolean z = this.f11961do != null;
        String str2 = this.f11956break;
        if (!z) {
            q0.m1821else("Cannot set value for metric '%s' for trace '%s' because it's not started", str, str2);
            return;
        }
        if (m6114for()) {
            q0.m1821else("Cannot set value for metric '%s' for trace '%s' because it's been stopped", str, str2);
            return;
        }
        String trim = str.trim();
        ConcurrentHashMap concurrentHashMap = this.f11962do;
        Counter counter = (Counter) concurrentHashMap.get(trim);
        if (counter == null) {
            counter = new Counter(trim);
            concurrentHashMap.put(trim, counter);
        }
        counter.f11954do.set(j);
        q0.m1823if("Setting metric '%s' to '%s' on trace '%s'", str, Long.valueOf(j), str2);
    }

    @Keep
    public void removeAttribute(String str) {
        if (!m6114for()) {
            this.f11967if.remove(str);
            return;
        }
        Q0 q0 = f11955do;
        if (q0.f2857do) {
            q0.f2856do.getClass();
        }
    }

    @Keep
    public void start() {
        String str;
        boolean m1299return = L9.m1286try().m1299return();
        Q0 q0 = f11955do;
        if (!m1299return) {
            q0.m1820do();
            return;
        }
        String str2 = this.f11956break;
        if (str2 == null) {
            str = "Trace name must not be null";
        } else if (str2.length() > 100) {
            str = String.format(Locale.US, "Trace name must not exceed %d characters", 100);
        } else {
            if (str2.startsWith("_")) {
                int[] m8821const = C4122zt.m8821const(6);
                int length = m8821const.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (Creturn.m7977do(m8821const[i]).equals(str2)) {
                            break;
                        } else {
                            i++;
                        }
                    } else if (!str2.startsWith("_st_")) {
                        str = "Trace name must not start with '_'";
                    }
                }
            }
            str = null;
        }
        if (str != null) {
            q0.m1822for("Cannot start trace '%s'. Trace name is invalid.(%s)", str2, str);
            return;
        }
        if (this.f11961do != null) {
            q0.m1822for("Trace '%s' has already started, should not start again!", str2);
            return;
        }
        this.f11958do.getClass();
        this.f11961do = new Timer();
        registerForAppState();
        PerfSession perfSession = SessionManager.getInstance().perfSession();
        SessionManager.getInstance().registerForSessionUpdates(this.f11963do);
        mo111do(perfSession);
        if (perfSession.f11970do) {
            this.f11960do.collectGaugeMetricOnce(perfSession.f11969do);
        }
    }

    @Keep
    public void stop() {
        boolean z = this.f11961do != null;
        String str = this.f11956break;
        Q0 q0 = f11955do;
        if (!z) {
            q0.m1822for("Trace '%s' has not been started so unable to stop!", str);
            return;
        }
        if (m6114for()) {
            q0.m1822for("Trace '%s' has already stopped, should not stop again!", str);
            return;
        }
        SessionManager.getInstance().unregisterForSessionUpdates(this.f11963do);
        unregisterForAppState();
        this.f11958do.getClass();
        Timer timer = new Timer();
        this.f11966if = timer;
        if (this.f11959do == null) {
            ArrayList arrayList = this.f11964do;
            if (!arrayList.isEmpty()) {
                Trace trace = (Trace) arrayList.get(arrayList.size() - 1);
                if (trace.f11966if == null) {
                    trace.f11966if = timer;
                }
            }
            if (str.isEmpty()) {
                if (q0.f2857do) {
                    q0.f2856do.getClass();
                }
            } else {
                this.f11957do.m66for(new C2743fI(this).m6652do(), getAppState());
                if (SessionManager.getInstance().perfSession().f11970do) {
                    this.f11960do.collectGaugeMetricOnce(SessionManager.getInstance().perfSession().f11969do);
                }
            }
        }
    }

    @Override // android.os.Parcelable
    @Keep
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f11959do, 0);
        parcel.writeString(this.f11956break);
        parcel.writeList(this.f11964do);
        parcel.writeMap(this.f11962do);
        parcel.writeParcelable(this.f11961do, 0);
        parcel.writeParcelable(this.f11966if, 0);
        synchronized (this.f11965do) {
            parcel.writeList(this.f11965do);
        }
    }

    public Trace(String str, AI ai, QJ qj, C3366n2 c3366n2, GaugeManager gaugeManager) {
        super(c3366n2);
        this.f11963do = new WeakReference<>(this);
        this.f11959do = null;
        this.f11956break = str.trim();
        this.f11964do = new ArrayList();
        this.f11962do = new ConcurrentHashMap();
        this.f11967if = new ConcurrentHashMap();
        this.f11958do = qj;
        this.f11957do = ai;
        this.f11965do = DesugarCollections.synchronizedList(new ArrayList());
        this.f11960do = gaugeManager;
    }

    public Trace(Parcel parcel, boolean z) {
        super(z ? null : C3366n2.m7530do());
        this.f11963do = new WeakReference<>(this);
        this.f11959do = (Trace) parcel.readParcelable(Trace.class.getClassLoader());
        this.f11956break = parcel.readString();
        ArrayList arrayList = new ArrayList();
        this.f11964do = arrayList;
        parcel.readList(arrayList, Trace.class.getClassLoader());
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f11962do = concurrentHashMap;
        this.f11967if = new ConcurrentHashMap();
        parcel.readMap(concurrentHashMap, Counter.class.getClassLoader());
        this.f11961do = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        this.f11966if = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
        List synchronizedList = DesugarCollections.synchronizedList(new ArrayList());
        this.f11965do = synchronizedList;
        parcel.readList(synchronizedList, PerfSession.class.getClassLoader());
        if (z) {
            this.f11957do = null;
            this.f11958do = null;
            this.f11960do = null;
        } else {
            this.f11957do = AI.f54do;
            this.f11958do = new QJ(17);
            this.f11960do = GaugeManager.getInstance();
        }
    }
}
