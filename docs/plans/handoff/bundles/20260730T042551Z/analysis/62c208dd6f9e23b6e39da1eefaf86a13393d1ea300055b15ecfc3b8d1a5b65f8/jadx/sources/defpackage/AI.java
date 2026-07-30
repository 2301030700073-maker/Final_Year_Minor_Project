package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;
import defpackage.C3366n2;
import defpackage.C3484p2;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.DecimalFormat;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class AI implements C3366n2.Cif {

    /* renamed from: break, reason: not valid java name */
    public String f56break;

    /* renamed from: catch, reason: not valid java name */
    public String f57catch;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public L9 f58do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Oy f59do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0452Qi f60do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0706ai f61do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Context f62do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentHashMap f63do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC3227ki f67do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3366n2 f68do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3484p2.Cdo f69do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC3655ry<InterfaceC3853vI> f70do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3875vi f71do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Q0 f55do = Q0.m1818new();

    /* renamed from: do, reason: not valid java name */
    public static final AI f54do = new AI();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ConcurrentLinkedQueue<Dw> f64do = new ConcurrentLinkedQueue<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicBoolean f66do = new AtomicBoolean(false);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f72do = false;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ThreadPoolExecutor f65do = new ThreadPoolExecutor(0, 1, 10, TimeUnit.SECONDS, new LinkedBlockingQueue());

    @SuppressLint({"ThreadPoolCreation"})
    public AI() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        this.f63do = concurrentHashMap;
        concurrentHashMap.put("KEY_AVAILABLE_TRACES_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING", 50);
        concurrentHashMap.put("KEY_AVAILABLE_GAUGES_FOR_CACHING", 50);
    }

    /* renamed from: do, reason: not valid java name */
    public static String m65do(Fw fw) {
        if (fw.mo517else()) {
            return String.format(Locale.ENGLISH, "trace metric: %s (duration: %sms)", fw.mo518for().h(), new DecimalFormat("#.####").format(r11.g() / 1000.0d));
        }
        if (fw.mo520if()) {
            C4123zu mo516break = fw.mo516break();
            return String.format(Locale.ENGLISH, "network request trace: %s (responseCode: %s, responseTime: %sms)", mo516break.q(), mo516break.t() ? String.valueOf(mo516break.j()) : "UNKNOWN", new DecimalFormat("#.####").format((mo516break.x() ? mo516break.o() : 0L) / 1000.0d));
        }
        if (!fw.mo522new()) {
            return "log";
        }
        C0410Ok mo519goto = fw.mo519goto();
        return String.format(Locale.ENGLISH, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)", Boolean.valueOf(mo519goto.a()), Integer.valueOf(mo519goto.m1681implements()), Integer.valueOf(mo519goto.m1683transient()));
    }

    /* renamed from: for, reason: not valid java name */
    public final void m66for(C2684eI c2684eI, EnumC3601r2 enumC3601r2) {
        this.f65do.execute(new RunnableC0443Pv(this, c2684eI, enumC3601r2, 2));
    }

    /* renamed from: if, reason: not valid java name */
    public final void m67if(Ew ew) {
        if (ew.mo517else()) {
            this.f68do.m7535if("_fstec");
        } else if (ew.mo520if()) {
            this.f68do.m7535if("_fsntc");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0307, code lost:
    
        if (defpackage.Oy.m1715do(r14.mo518for().i()) == false) goto L139;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x008b  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m68new(defpackage.Ew.Cdo r14, defpackage.EnumC3601r2 r15) {
        /*
            Method dump skipped, instructions count: 1197
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AI.m68new(Ew$do, r2):void");
    }

    @Override // defpackage.C3366n2.Cif
    public final void onUpdateAppState(EnumC3601r2 enumC3601r2) {
        this.f72do = enumC3601r2 == EnumC3601r2.FOREGROUND;
        if (this.f66do.get()) {
            this.f65do.execute(new Y1(this, 8));
        }
    }
}
