package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zznm;
import com.google.android.gms.internal.measurement.zzpn;
import com.google.android.gms.measurement.internal.zzno;
import com.google.android.gms.measurement.internal.zzo;
import com.google.android.gms.measurement.internal.zzon;
import defpackage.AbstractC3414ns;
import defpackage.C0191Ek;
import defpackage.C3628rT;
import j$.util.Comparator$CC;
import j$.util.Objects;
import j$.util.function.Function$CC;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.PriorityQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;

/* renamed from: yT, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C4041yT extends AbstractC3863vS {

    /* renamed from: do, reason: not valid java name */
    public int f16766do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f16767do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AT f16768do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HT f16769do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public KT f16770do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PT f16771do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RV f16772do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public TT f16773do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C2776ft f16774do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public PriorityQueue<zzno> f16775do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final CopyOnWriteArraySet f16776do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicLong f16777do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicReference<String> f16778do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3628rT f16779do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public InterfaceC3864vT f16780do;

    /* renamed from: for, reason: not valid java name */
    public boolean f16781for;

    /* renamed from: if, reason: not valid java name */
    public final Object f16782if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f16783if;

    /* renamed from: new, reason: not valid java name */
    public boolean f16784new;

    /* renamed from: try, reason: not valid java name */
    public boolean f16785try;

    public C4041yT(TS ts) {
        super(ts);
        this.f16776do = new CopyOnWriteArraySet();
        this.f16782if = new Object();
        this.f16781for = false;
        this.f16766do = 1;
        this.f16785try = true;
        this.f16774do = new C2776ft(this);
        this.f16778do = new AtomicReference<>();
        this.f16779do = C3628rT.f15276do;
        this.f16767do = -1L;
        this.f16777do = new AtomicLong(0L);
        this.f16772do = new RV(ts);
    }

    /* renamed from: interface, reason: not valid java name */
    public static void m8730interface(C4041yT c4041yT, C3628rT c3628rT, long j, boolean z, boolean z2) {
        boolean z3;
        c4041yT.mo1960catch();
        c4041yT.m8474import();
        C3628rT m8718default = c4041yT.m7574this().m8718default();
        if (j <= c4041yT.f16767do) {
            if (C3628rT.m7956this(m8718default.f15277do, c3628rT.f15277do)) {
                c4041yT.mo2249case().f13718else.m7368for("Dropped out-of-date consent setting, proposed settings", c3628rT);
                return;
            }
        }
        C4040yS m7574this = c4041yT.m7574this();
        m7574this.mo1960catch();
        int i = c3628rT.f15277do;
        if (m7574this.m8729while(i)) {
            SharedPreferences.Editor edit = m7574this.m8724static().edit();
            edit.putString("consent_settings", c3628rT.m7962super());
            edit.putInt("consent_source", i);
            edit.apply();
            z3 = true;
        } else {
            z3 = false;
        }
        if (!z3) {
            C3156jS mo2249case = c4041yT.mo2249case();
            mo2249case.f13718else.m7368for("Lower precedence consent source ignored, proposed source", Integer.valueOf(c3628rT.f15277do));
            return;
        }
        c4041yT.mo2249case().f13723this.m7368for("Setting storage consent(FE)", c3628rT);
        c4041yT.f16767do = j;
        if (c4041yT.m8800throw().m7258abstract()) {
            C3217kU m8800throw = c4041yT.m8800throw();
            m8800throw.mo1960catch();
            m8800throw.m8474import();
            if ((!zznm.zza() || !m8800throw.m7572else().m3012throws(null, C3684sQ.j0)) && z) {
                m8800throw.m8797const().m4839switch();
            }
            m8800throw.m7267static(new NR(m8800throw, 2));
        } else {
            c4041yT.m8800throw().m7260default(z);
        }
        if (z2) {
            c4041yT.m8800throw().m7269switch(new AtomicReference<>());
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m8731protected(C4041yT c4041yT, C3628rT c3628rT, C3628rT c3628rT2) {
        boolean z;
        if (zznm.zza() && c4041yT.m7572else().m3012throws(null, C3684sQ.j0)) {
            return;
        }
        C3628rT.Cdo cdo = C3628rT.Cdo.ANALYTICS_STORAGE;
        C3628rT.Cdo cdo2 = C3628rT.Cdo.AD_STORAGE;
        C3628rT.Cdo[] cdoArr = {cdo, cdo2};
        c3628rT.getClass();
        int i = 0;
        while (true) {
            if (i >= 2) {
                z = false;
                break;
            }
            C3628rT.Cdo cdo3 = cdoArr[i];
            if (!c3628rT2.m7957break(cdo3) && c3628rT.m7957break(cdo3)) {
                z = true;
                break;
            }
            i++;
        }
        boolean m7959const = c3628rT.m7959const(c3628rT2, cdo, cdo2);
        if (z || m7959const) {
            c4041yT.m8796class().m4909switch();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(25:43|(1:129)(1:49)|50|(1:52)(5:90|91|(2:93|(1:95)(2:96|(1:98)(7:99|(3:101|(1:103)(1:105)|104)|106|(3:108|(1:114)(1:112)|113)|115|(3:118|(1:124)(1:122)|123)|125)))|127|(0)(0))|53|(1:55)|56|(2:57|58)|(15:60|61|(1:86)(1:65)|66|67|(8:69|(1:82)(1:72)|73|(1:75)|76|(1:78)|79|80)|84|(0)|82|73|(0)|76|(0)|79|80)|88|61|(1:63)|86|66|67|(0)|84|(0)|82|73|(0)|76|(0)|79|80) */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01fc A[Catch: NumberFormatException -> 0x0201, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x0201, blocks: (B:67:0x01f0, B:69:0x01fc), top: B:66:0x01f0 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0204 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C4041yT.a():void");
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m8732abstract(String str, String str2, String str3, boolean z) {
        m8740private(str, str2, str3, z, mo2257new().currentTimeMillis());
    }

    @TargetApi(30)
    public final void b() {
        zzno poll;
        mo1960catch();
        this.f16784new = false;
        if (m8747transient().isEmpty() || this.f16781for || (poll = m8747transient().poll()) == null) {
            return;
        }
        C3395nV m7571break = m7571break();
        if (m7571break.f14535do == null) {
            m7571break.f14535do = AbstractC3414ns.m7617do(m7571break.mo2255for());
        }
        AbstractC3414ns.Cdo cdo = m7571break.f14535do;
        if (cdo == null) {
            return;
        }
        this.f16781for = true;
        C3274lS c3274lS = mo2249case().f13723this;
        String str = poll.f10317break;
        c3274lS.m7368for("Registering trigger URI", str);
        InterfaceFutureC3942wq<C3206kJ> m7623try = cdo.m7623try(Uri.parse(str));
        if (m7623try == null) {
            this.f16781for = false;
            m8747transient().add(poll);
            return;
        }
        if (!m7572else().m3012throws(null, C3684sQ.Z)) {
            SparseArray<Long> m8726switch = m7574this().m8726switch();
            m8726switch.put(poll.f10319for, Long.valueOf(poll.f10318do));
            m7574this().m8725super(m8726switch);
        }
        m7623try.addListener(new C0191Ek.Cdo(m7623try, new IT(this, poll)), new BT(this));
    }

    public final void c() {
        mo1960catch();
        String m187do = m7574this().f16756if.m187do();
        if (m187do != null) {
            if ("unset".equals(m187do)) {
                m8739package("app", "_npa", null, mo2257new().currentTimeMillis());
            } else {
                m8739package("app", "_npa", Long.valueOf(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(m187do) ? 1L : 0L), mo2257new().currentTimeMillis());
            }
        }
        int i = 2;
        if (((TS) ((C3393nT) this).f14527do).m2248break() && this.f16785try) {
            mo2249case().f13720goto.m7369if("Recording app launch after enabling measurement for the first time (FE)");
            m8737implements();
            m8801while().f1957do.m1971do();
            mo2253do().m1964public(new XS(this, i));
            return;
        }
        mo2249case().f13720goto.m7369if("Updating Scion state (FE)");
        C3217kU m8800throw = m8800throw();
        m8800throw.mo1960catch();
        m8800throw.m8474import();
        m8800throw.m7267static(new QO(m8800throw, m8800throw.m7263interface(true), i));
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m8733continue(MP mp, boolean z) {
        PO po = new PO(this, mp, 4);
        if (!z) {
            mo2253do().m1964public(po);
        } else {
            mo1960catch();
            po.run();
        }
    }

    public final void d(Bundle bundle, long j) {
        Preconditions.checkNotNull(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            mo2249case().f13722new.m7369if("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        Preconditions.checkNotNull(bundle2);
        C3850vF.m8464throws(bundle2, "app_id", String.class, null);
        C3850vF.m8464throws(bundle2, "origin", String.class, null);
        C3850vF.m8464throws(bundle2, FacebookRequestErrorClassification.KEY_NAME, String.class, null);
        C3850vF.m8464throws(bundle2, "value", Object.class, null);
        C3850vF.m8464throws(bundle2, "trigger_event_name", String.class, null);
        C3850vF.m8464throws(bundle2, "trigger_timeout", Long.class, 0L);
        C3850vF.m8464throws(bundle2, "timed_out_event_name", String.class, null);
        C3850vF.m8464throws(bundle2, "timed_out_event_params", Bundle.class, null);
        C3850vF.m8464throws(bundle2, "triggered_event_name", String.class, null);
        C3850vF.m8464throws(bundle2, "triggered_event_params", Bundle.class, null);
        C3850vF.m8464throws(bundle2, "time_to_live", Long.class, 0L);
        C3850vF.m8464throws(bundle2, "expired_event_name", String.class, null);
        C3850vF.m8464throws(bundle2, "expired_event_params", Bundle.class, null);
        Preconditions.checkNotEmpty(bundle2.getString(FacebookRequestErrorClassification.KEY_NAME));
        Preconditions.checkNotEmpty(bundle2.getString("origin"));
        Preconditions.checkNotNull(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString(FacebookRequestErrorClassification.KEY_NAME);
        Object obj = bundle2.get("value");
        if (m7571break().q(string) != 0) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13717do.m7368for("Invalid conditional user property name", m7573goto().m6451else(string));
            return;
        }
        if (m7571break().m7593super(obj, string) != 0) {
            C3156jS mo2249case2 = mo2249case();
            mo2249case2.f13717do.m7367do(m7573goto().m6451else(string), "Invalid conditional user property value", obj);
            return;
        }
        Object x = m7571break().x(obj, string);
        if (x == null) {
            C3156jS mo2249case3 = mo2249case();
            mo2249case3.f13717do.m7367do(m7573goto().m6451else(string), "Unable to normalize conditional user property value", obj);
            return;
        }
        C3850vF.m8448default(bundle2, x);
        long j2 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j2 > 15552000000L || j2 < 1)) {
            C3156jS mo2249case4 = mo2249case();
            mo2249case4.f13717do.m7367do(m7573goto().m6451else(string), "Invalid conditional user property timeout", Long.valueOf(j2));
            return;
        }
        long j3 = bundle2.getLong("time_to_live");
        if (j3 <= 15552000000L && j3 >= 1) {
            mo2253do().m1964public(new ZS(2, this, bundle2));
            return;
        }
        C3156jS mo2249case5 = mo2249case();
        mo2249case5.f13717do.m7367do(m7573goto().m6451else(string), "Invalid conditional user property time to live", Long.valueOf(j3));
    }

    /* renamed from: default, reason: not valid java name */
    public final void m8734default(String str, String str2, Bundle bundle) {
        long currentTimeMillis = mo2257new().currentTimeMillis();
        Preconditions.checkNotEmpty(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString(FacebookRequestErrorClassification.KEY_NAME, str);
        bundle2.putLong("creation_timestamp", currentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        mo2253do().m1964public(new RunnableC2695eT(1, this, bundle2));
    }

    public final void e(String str) {
        this.f16778do.set(str);
    }

    /* renamed from: extends, reason: not valid java name */
    public final void m8735extends(String str, String str2, Bundle bundle, long j) {
        mo1960catch();
        m8746throws(str, str2, j, bundle, true, this.f16780do == null || C3395nV.E(str2), true, null);
    }

    public final void f(String str, String str2, Bundle bundle) {
        mo1960catch();
        m8735extends(str, str2, bundle, mo2257new().currentTimeMillis());
    }

    /* renamed from: finally, reason: not valid java name */
    public final void m8736finally(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3;
        String str4 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (!Objects.equals(str2, "screen_view")) {
            boolean z3 = !z2 || this.f16780do == null || C3395nV.E(str2);
            Bundle bundle3 = new Bundle(bundle2);
            for (String str5 : bundle3.keySet()) {
                Object obj = bundle3.get(str5);
                if (obj instanceof Bundle) {
                    bundle3.putBundle(str5, new Bundle((Bundle) obj));
                } else if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    for (int i = 0; i < parcelableArr.length; i++) {
                        if (parcelableArr[i] instanceof Bundle) {
                            parcelableArr[i] = new Bundle((Bundle) parcelableArr[i]);
                        }
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                    }
                }
            }
            mo2253do().m1964public(new NT(this, str4, str2, j, bundle3, z2, z3, z));
            return;
        }
        C2638dU m8799super = m8799super();
        synchronized (m8799super.f12499if) {
            if (!m8799super.f12497for) {
                m8799super.mo2249case().f13713case.m7369if("Cannot log screen view event when the app is in the background.");
                return;
            }
            String string = bundle2.getString("screen_name");
            if (string != null && (string.length() <= 0 || string.length() > m8799super.m7572else().m2999final(null, false))) {
                m8799super.mo2249case().f13713case.m7368for("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                return;
            }
            String string2 = bundle2.getString("screen_class");
            if (string2 != null && (string2.length() <= 0 || string2.length() > m8799super.m7572else().m2999final(null, false))) {
                m8799super.mo2249case().f13713case.m7368for("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                return;
            }
            if (string2 == null) {
                Activity activity = m8799super.f12493do;
                str3 = activity != null ? m8799super.m6458return(activity.getClass()) : "Activity";
            } else {
                str3 = string2;
            }
            C2696eU c2696eU = m8799super.f12494do;
            if (m8799super.f12500if && c2696eU != null) {
                m8799super.f12500if = false;
                boolean equals = Objects.equals(c2696eU.f12684if, str3);
                boolean equals2 = Objects.equals(c2696eU.f12681do, string);
                if (equals && equals2) {
                    m8799super.mo2249case().f13713case.m7369if("Ignoring call to log screen view event with duplicate parameters.");
                    return;
                }
            }
            m8799super.mo2249case().f13723this.m7367do(string == null ? "null" : string, "Logging screen view with name, class", str3 == null ? "null" : str3);
            C2696eU c2696eU2 = m8799super.f12494do == null ? m8799super.f12498if : m8799super.f12494do;
            C2696eU c2696eU3 = new C2696eU(string, str3, m8799super.m7571break().L(), true, j);
            m8799super.f12494do = c2696eU3;
            m8799super.f12498if = c2696eU2;
            m8799super.f12501new = c2696eU3;
            m8799super.mo2253do().m1964public(new RunnableC2814gU(m8799super, bundle2, c2696eU3, c2696eU2, m8799super.mo2257new().elapsedRealtime()));
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m8737implements() {
        mo1960catch();
        m8474import();
        Object obj = ((C3393nT) this).f14527do;
        if (((TS) obj).m2250catch()) {
            Boolean m3008static = m7572else().m3008static("google_analytics_deferred_deep_link_enabled");
            int i = 0;
            int i2 = 1;
            if (m3008static != null && m3008static.booleanValue()) {
                mo2249case().f13720goto.m7369if("Deferred Deep Link feature enabled.");
                mo2253do().m1964public(new XS(this, i2));
            }
            C3217kU m8800throw = m8800throw();
            m8800throw.mo1960catch();
            m8800throw.m8474import();
            zzo m7263interface = m8800throw.m7263interface(true);
            m8800throw.m8797const().m4838static(3, new byte[0]);
            m8800throw.m7267static(new RunnableC3688sU(m8800throw, m7263interface, i));
            this.f16785try = false;
            C4040yS m7574this = m7574this();
            m7574this.mo1960catch();
            String string = m7574this.m8724static().getString("previous_os_version", null);
            ((TS) ((C3393nT) m7574this).f14527do).m2254final().m7886class();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = m7574this.m8724static().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            ((TS) obj).m2254final().m7886class();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            f("auto", "_ou", bundle);
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m8738instanceof() {
        if (!(mo2255for().getApplicationContext() instanceof Application) || this.f16773do == null) {
            return;
        }
        ((Application) mo2255for().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f16773do);
    }

    /* renamed from: package, reason: not valid java name */
    public final void m8739package(String str, String str2, Object obj, long j) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        mo1960catch();
        m8474import();
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    Long valueOf = Long.valueOf("false".equals(str3.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    m7574this().f16756if.m188if(valueOf.longValue() == 1 ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false");
                    obj = valueOf;
                    str2 = "_npa";
                    mo2249case().f13723this.m7367do("non_personalized_ads(_npa)", "Setting user property(FE)", obj);
                }
            }
            if (obj == null) {
                m7574this().f16756if.m188if("unset");
                str2 = "_npa";
            }
            mo2249case().f13723this.m7367do("non_personalized_ads(_npa)", "Setting user property(FE)", obj);
        }
        String str4 = str2;
        Object obj2 = obj;
        Object obj3 = ((C3393nT) this).f14527do;
        if (!((TS) obj3).m2248break()) {
            mo2249case().f13723this.m7369if("User property not set since app measurement is disabled");
            return;
        }
        if (((TS) obj3).m2250catch()) {
            zzon zzonVar = new zzon(str4, str, j, obj2);
            C3217kU m8800throw = m8800throw();
            m8800throw.mo1960catch();
            m8800throw.m8474import();
            C0753bS m8797const = m8800throw.m8797const();
            m8797const.getClass();
            Parcel obtain = Parcel.obtain();
            boolean z = false;
            zzonVar.writeToParcel(obtain, 0);
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            if (marshall.length > 131072) {
                m8797const.mo2249case().f13721if.m7369if("User property too long for local database. Sending directly to service");
            } else {
                z = m8797const.m4838static(1, marshall);
            }
            m8800throw.m7267static(new RunnableC3335mU(m8800throw, m8800throw.m7263interface(true), z, zzonVar));
        }
    }

    /* renamed from: private, reason: not valid java name */
    public final void m8740private(String str, String str2, Object obj, boolean z, long j) {
        int i;
        int length;
        String str3 = str == null ? "app" : str;
        if (z) {
            i = m7571break().q(str2);
        } else {
            C3395nV m7571break = m7571break();
            if (m7571break.y("user property", str2)) {
                if (!m7571break.l("user property", C3645ro.f15326if, null, str2)) {
                    i = 15;
                } else if (m7571break.d(24, "user property", str2)) {
                    i = 0;
                }
            }
            i = 6;
        }
        C2776ft c2776ft = this.f16774do;
        Object obj2 = ((C3393nT) this).f14527do;
        if (i != 0) {
            m7571break();
            String m7576extends = C3395nV.m7576extends(str2, 24, true);
            length = str2 != null ? str2.length() : 0;
            ((TS) obj2).m2256import();
            C3395nV.b(c2776ft, null, i, "_ev", m7576extends, length);
            return;
        }
        if (obj == null) {
            mo2253do().m1964public(new MT(this, str3, str2, null, j));
            return;
        }
        int m7593super = m7571break().m7593super(obj, str2);
        if (m7593super == 0) {
            Object x = m7571break().x(obj, str2);
            if (x != null) {
                mo2253do().m1964public(new MT(this, str3, str2, x, j));
                return;
            }
            return;
        }
        m7571break();
        String m7576extends2 = C3395nV.m7576extends(str2, 24, true);
        length = ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0;
        ((TS) obj2).m2256import();
        C3395nV.b(c2776ft, null, m7593super, "_ev", m7576extends2, length);
    }

    @Override // defpackage.AbstractC3863vS
    /* renamed from: public */
    public final boolean mo1327public() {
        return false;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m8741return(long j, boolean z) {
        mo1960catch();
        m8474import();
        mo2249case().f13720goto.m7369if("Resetting analytics data (FE)");
        LU m8801while = m8801while();
        m8801while.mo1960catch();
        PU pu = m8801while.f1956do;
        pu.f2793do.m450do();
        LU lu = pu.f2792do;
        if (lu.m7572else().m3012throws(null, C3684sQ.n0)) {
            pu.f2791do = lu.mo2257new().elapsedRealtime();
        } else {
            pu.f2791do = 0L;
        }
        pu.f2794if = pu.f2791do;
        m8796class().m4909switch();
        boolean m2248break = ((TS) ((C3393nT) this).f14527do).m2248break();
        C4040yS m7574this = m7574this();
        m7574this.f16750do.m8803if(j);
        if (!TextUtils.isEmpty(m7574this.m7574this().f16751for.m187do())) {
            m7574this.f16751for.m188if(null);
        }
        m7574this.f16753for.m8803if(0L);
        m7574this.f16764new.m8803if(0L);
        if (!m7574this.m7572else().m3004package()) {
            m7574this.m8722public(!m2248break);
        }
        m7574this.f16762new.m188if(null);
        m7574this.f16742case.m8803if(0L);
        m7574this.f16755if.m74if(null);
        if (z) {
            C3217kU m8800throw = m8800throw();
            m8800throw.mo1960catch();
            m8800throw.m8474import();
            zzo m7263interface = m8800throw.m7263interface(false);
            m8800throw.m8797const().m4839switch();
            m8800throw.m7267static(new RunnableC0754bT(3, m8800throw, m7263interface));
        }
        m8801while().f1957do.m1971do();
        this.f16785try = !m2248break;
    }

    /* renamed from: static, reason: not valid java name */
    public final void m8742static(Bundle bundle, int i, long j) {
        String str;
        m8474import();
        C3628rT c3628rT = C3628rT.f15276do;
        C3628rT.Cdo[] cdoArr = EnumC3687sT.STORAGE.f15500do;
        int length = cdoArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                str = null;
                break;
            }
            C3628rT.Cdo cdo = cdoArr[i2];
            if (bundle.containsKey(cdo.f15284break) && (str = bundle.getString(cdo.f15284break)) != null) {
                if ((str.equals("granted") ? Boolean.TRUE : str.equals("denied") ? Boolean.FALSE : null) == null) {
                    break;
                }
            }
            i2++;
        }
        if (str != null) {
            mo2249case().f13713case.m7368for("Ignoring invalid consent setting", str);
            mo2249case().f13713case.m7369if("Valid consent values are 'granted', 'denied'");
        }
        boolean m1966static = mo2253do().m1966static();
        C3628rT m7952for = C3628rT.m7952for(i, bundle);
        if (m7952for.m7961import()) {
            m8748volatile(m7952for, j, m1966static);
        }
        MP m1426if = MP.m1426if(i, bundle);
        if (m1426if.m1429try()) {
            m8733continue(m1426if, m1966static);
        }
        Boolean m1424do = MP.m1424do(bundle);
        if (m1424do != null) {
            String str2 = i == -30 ? "tcf" : "app";
            if (m7572else().m3012throws(null, C3684sQ.e0) && m1966static) {
                m8739package(str2, "allow_personalized_ads", m1424do.toString(), j);
            } else {
                m8740private(str2, "allow_personalized_ads", m1424do.toString(), false, j);
            }
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m8743strictfp(C3628rT c3628rT) {
        mo1960catch();
        boolean z = (c3628rT.m7965while() && c3628rT.m7963throw()) || m8800throw().m7265private();
        TS ts = (TS) ((C3393nT) this).f14527do;
        QS qs = ts.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        if (z != ts.f3706for) {
            TS ts2 = (TS) ((C3393nT) this).f14527do;
            QS qs2 = ts2.f3683do;
            TS.m2247this(qs2);
            qs2.mo1960catch();
            ts2.f3706for = z;
            C4040yS m7574this = m7574this();
            m7574this.mo1960catch();
            Boolean valueOf = m7574this.m8724static().contains("measurement_enabled_from_api") ? Boolean.valueOf(m7574this.m8724static().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || valueOf == null || valueOf.booleanValue()) {
                m8744switch(Boolean.valueOf(z), false);
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public final void m8744switch(Boolean bool, boolean z) {
        mo1960catch();
        m8474import();
        mo2249case().f13720goto.m7368for("Setting app measurement enabled (FE)", bool);
        m7574this().m8727throw(bool);
        if (z) {
            C4040yS m7574this = m7574this();
            m7574this.mo1960catch();
            SharedPreferences.Editor edit = m7574this.m8724static().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        TS ts = (TS) ((C3393nT) this).f14527do;
        QS qs = ts.f3683do;
        TS.m2247this(qs);
        qs.mo1960catch();
        if (ts.f3706for || !(bool == null || bool.booleanValue())) {
            c();
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final void m8745synchronized() {
        if (zzpn.zza() && m7572else().m3012throws(null, C3684sQ.U)) {
            if (mo2253do().m1966static()) {
                mo2249case().f13717do.m7369if("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (C0820cd.m4913else()) {
                mo2249case().f13717do.m7369if("Cannot get trigger URIs from main thread");
                return;
            }
            m8474import();
            mo2249case().f13723this.m7369if("Getting trigger URIs (FE)");
            AtomicReference atomicReference = new AtomicReference();
            mo2253do().m1967super(atomicReference, OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS, "get trigger URIs", new RunnableC0754bT(1, this, atomicReference));
            List list = (List) atomicReference.get();
            if (list == null) {
                mo2249case().f13717do.m7369if("Timed out waiting for get trigger URIs");
            } else {
                mo2253do().m1964public(new RunnableC3807uV(3, this, list));
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0118  */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r2v53, types: [int] */
    /* JADX WARN: Type inference failed for: r31v2, types: [int] */
    /* renamed from: throws, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8746throws(java.lang.String r26, java.lang.String r27, long r28, android.os.Bundle r30, boolean r31, boolean r32, boolean r33, java.lang.String r34) {
        /*
            Method dump skipped, instructions count: 1211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C4041yT.m8746throws(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    @TargetApi(30)
    /* renamed from: transient, reason: not valid java name */
    public final PriorityQueue<zzno> m8747transient() {
        if (this.f16775do == null) {
            this.f16775do = new PriorityQueue<>(Comparator$CC.comparing(new Function() { // from class: xT
                @Override // java.util.function.Function
                public final /* synthetic */ Function andThen(Function function) {
                    return Function$CC.$default$andThen(this, function);
                }

                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(((zzno) obj).f10318do);
                }

                @Override // java.util.function.Function
                public final /* synthetic */ Function compose(Function function) {
                    return Function$CC.$default$compose(this, function);
                }
            }, new Comparator() { // from class: zT
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
                }
            }));
        }
        return this.f16775do;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m8748volatile(C3628rT c3628rT, long j, boolean z) {
        C3628rT c3628rT2;
        boolean z2;
        boolean z3;
        boolean z4;
        C3628rT c3628rT3 = c3628rT;
        m8474import();
        int i = c3628rT3.f15277do;
        if (i != -10) {
            EnumC3746tT enumC3746tT = c3628rT3.f15278do.get(C3628rT.Cdo.AD_STORAGE);
            if (enumC3746tT == null) {
                enumC3746tT = EnumC3746tT.UNINITIALIZED;
            }
            EnumC3746tT enumC3746tT2 = EnumC3746tT.UNINITIALIZED;
            if (enumC3746tT == enumC3746tT2) {
                EnumC3746tT enumC3746tT3 = c3628rT3.f15278do.get(C3628rT.Cdo.ANALYTICS_STORAGE);
                if (enumC3746tT3 == null) {
                    enumC3746tT3 = enumC3746tT2;
                }
                if (enumC3746tT3 == enumC3746tT2) {
                    mo2249case().f13713case.m7369if("Ignoring empty consent settings");
                    return;
                }
            }
        }
        synchronized (this.f16782if) {
            try {
                c3628rT2 = this.f16779do;
                z2 = false;
                if (C3628rT.m7956this(i, c3628rT2.f15277do)) {
                    z3 = c3628rT.m7959const(this.f16779do, (C3628rT.Cdo[]) c3628rT3.f15278do.keySet().toArray(new C3628rT.Cdo[0]));
                    if (c3628rT.m7965while() && !this.f16779do.m7965while()) {
                        z2 = true;
                    }
                    c3628rT3 = c3628rT.m7958class(this.f16779do);
                    this.f16779do = c3628rT3;
                    z4 = z2;
                    z2 = true;
                } else {
                    z3 = false;
                    z4 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z2) {
            mo2249case().f13718else.m7368for("Ignoring lower-priority consent settings, proposed settings", c3628rT3);
            return;
        }
        long andIncrement = this.f16777do.getAndIncrement();
        if (z3) {
            e(null);
            ST st = new ST(this, c3628rT3, j, andIncrement, z4, c3628rT2);
            if (!z) {
                mo2253do().m1965return(st);
                return;
            } else {
                mo1960catch();
                st.run();
                return;
            }
        }
        XT xt = new XT(this, c3628rT3, andIncrement, z4, c3628rT2);
        if (z) {
            mo1960catch();
            xt.run();
        } else if (i == 30 || i == -10) {
            mo2253do().m1965return(xt);
        } else {
            mo2253do().m1964public(xt);
        }
    }
}
