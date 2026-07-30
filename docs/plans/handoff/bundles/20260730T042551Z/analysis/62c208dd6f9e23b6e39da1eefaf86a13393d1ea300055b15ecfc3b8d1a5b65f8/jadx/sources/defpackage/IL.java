package defpackage;

import android.content.Context;
import android.os.PowerManager;
import android.os.WorkSource;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.Strings;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.stats.zzb;
import com.google.android.gms.internal.stats.zzh;
import com.google.android.gms.internal.stats.zzi;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes3.dex */
public final class IL {

    /* renamed from: do, reason: not valid java name */
    public int f1498do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f1499do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final PowerManager.WakeLock f1500do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Clock f1501do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public zzb f1502do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f1503do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1504do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f1505do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f1506do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ScheduledExecutorService f1507do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public ScheduledFuture f1508do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f1509do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1510do;

    /* renamed from: if, reason: not valid java name */
    public static final long f1495if = TimeUnit.DAYS.toMillis(366);

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static volatile ScheduledExecutorService f1497if = null;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final Object f1496if = new Object();

    @KeepForSdk
    public IL(Context context) {
        String packageName = context.getPackageName();
        this.f1503do = new Object();
        this.f1498do = 0;
        this.f1506do = new HashSet();
        this.f1510do = true;
        this.f1501do = DefaultClock.getInstance();
        this.f1505do = new HashMap();
        this.f1509do = new AtomicInteger(0);
        Preconditions.checkNotNull(context, "WakeLock: context must not be null");
        Preconditions.checkNotEmpty("wake:com.google.firebase.iid.WakeLockHolder", "WakeLock: wakeLockName must not be empty");
        context.getApplicationContext();
        this.f1502do = null;
        if ("com.google.android.gms".equals(context.getPackageName())) {
            this.f1504do = "wake:com.google.firebase.iid.WakeLockHolder";
        } else {
            this.f1504do = "wake:com.google.firebase.iid.WakeLockHolder".length() != 0 ? "*gcore*:".concat("wake:com.google.firebase.iid.WakeLockHolder") : new String("*gcore*:");
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            StringBuilder sb = new StringBuilder(29);
            sb.append((CharSequence) "expected a non-null reference", 0, 29);
            throw new zzi(sb.toString());
        }
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "wake:com.google.firebase.iid.WakeLockHolder");
        this.f1500do = newWakeLock;
        if (WorkSourceUtil.hasWorkSourcePermission(context)) {
            WorkSource fromPackage = WorkSourceUtil.fromPackage(context, Strings.isEmptyOrWhitespace(packageName) ? context.getPackageName() : packageName);
            if (fromPackage != null) {
                try {
                    newWakeLock.setWorkSource(fromPackage);
                } catch (ArrayIndexOutOfBoundsException | IllegalArgumentException e) {
                    e.toString();
                }
            }
        }
        ScheduledExecutorService scheduledExecutorService = f1497if;
        if (scheduledExecutorService == null) {
            synchronized (f1496if) {
                scheduledExecutorService = f1497if;
                if (scheduledExecutorService == null) {
                    zzh.zza();
                    scheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
                    f1497if = scheduledExecutorService;
                }
            }
        }
        this.f1507do = scheduledExecutorService;
    }

    @KeepForSdk
    /* renamed from: do, reason: not valid java name */
    public final void m925do(long j) {
        this.f1509do.incrementAndGet();
        long max = Math.max(Math.min(Long.MAX_VALUE, f1495if), 1L);
        if (j > 0) {
            max = Math.min(j, max);
        }
        synchronized (this.f1503do) {
            try {
                if (!m927if()) {
                    this.f1502do = zzb.zza(false, null);
                    this.f1500do.acquire();
                    this.f1501do.elapsedRealtime();
                }
                this.f1498do++;
                if (this.f1510do) {
                    TextUtils.isEmpty(null);
                }
                C0811cR c0811cR = (C0811cR) this.f1505do.get(null);
                if (c0811cR == null) {
                    c0811cR = new C0811cR(0);
                    this.f1505do.put(null, c0811cR);
                }
                c0811cR.f8535do++;
                long elapsedRealtime = this.f1501do.elapsedRealtime();
                long j2 = Long.MAX_VALUE - elapsedRealtime > max ? elapsedRealtime + max : Long.MAX_VALUE;
                if (j2 > this.f1499do) {
                    this.f1499do = j2;
                    ScheduledFuture scheduledFuture = this.f1508do;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.f1508do = this.f1507do.schedule(new TP(this, 1), max, TimeUnit.MILLISECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    /* renamed from: for, reason: not valid java name */
    public final void m926for() {
        if (this.f1509do.decrementAndGet() < 0) {
            String.valueOf(this.f1504do).concat(" release without a matched acquire!");
        }
        synchronized (this.f1503do) {
            try {
                if (this.f1510do) {
                    TextUtils.isEmpty(null);
                }
                if (this.f1505do.containsKey(null)) {
                    C0811cR c0811cR = (C0811cR) this.f1505do.get(null);
                    if (c0811cR != null) {
                        int i = c0811cR.f8535do - 1;
                        c0811cR.f8535do = i;
                        if (i == 0) {
                            this.f1505do.remove(null);
                        }
                    }
                } else {
                    String.valueOf(this.f1504do).concat(" counter does not exist");
                }
                m929try();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @KeepForSdk
    /* renamed from: if, reason: not valid java name */
    public final boolean m927if() {
        boolean z;
        synchronized (this.f1503do) {
            z = this.f1498do > 0;
        }
        return z;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m928new() {
        HashSet hashSet = this.f1506do;
        if (hashSet.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        hashSet.clear();
        if (arrayList.size() <= 0) {
            return;
        }
        throw null;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m929try() {
        synchronized (this.f1503do) {
            if (m927if()) {
                if (this.f1510do) {
                    int i = this.f1498do - 1;
                    this.f1498do = i;
                    if (i > 0) {
                        return;
                    }
                } else {
                    this.f1498do = 0;
                }
                m928new();
                Iterator it = this.f1505do.values().iterator();
                while (it.hasNext()) {
                    ((C0811cR) it.next()).f8535do = 0;
                }
                this.f1505do.clear();
                ScheduledFuture scheduledFuture = this.f1508do;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                    this.f1508do = null;
                    this.f1499do = 0L;
                }
                try {
                    if (this.f1500do.isHeld()) {
                        try {
                            this.f1500do.release();
                            if (this.f1502do != null) {
                                this.f1502do = null;
                            }
                        } catch (RuntimeException e) {
                            if (!e.getClass().equals(RuntimeException.class)) {
                                throw e;
                            }
                            String.valueOf(this.f1504do).concat(" failed to release!");
                            if (this.f1502do != null) {
                                this.f1502do = null;
                            }
                        }
                    } else {
                        String.valueOf(this.f1504do).concat(" should be held!");
                    }
                } catch (Throwable th) {
                    if (this.f1502do != null) {
                        this.f1502do = null;
                    }
                    throw th;
                }
            }
        }
    }
}
