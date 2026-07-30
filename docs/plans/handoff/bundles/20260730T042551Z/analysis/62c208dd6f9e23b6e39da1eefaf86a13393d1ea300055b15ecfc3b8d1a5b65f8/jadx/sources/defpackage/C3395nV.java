package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzdo;
import com.google.android.gms.internal.measurement.zzpu;
import com.google.android.gms.measurement.internal.zzae;
import com.google.android.gms.measurement.internal.zzbe;
import com.google.android.gms.measurement.internal.zzbf;
import com.google.android.gms.measurement.internal.zzon;
import defpackage.AbstractC3414ns;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;

/* renamed from: nV, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3395nV extends AbstractC3570qT {

    /* renamed from: do, reason: not valid java name */
    public static final String[] f14528do = {"firebase_", "google_", "ga_"};

    /* renamed from: if, reason: not valid java name */
    public static final String[] f14529if = {"_err"};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int f14530do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Boolean f14531do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Integer f14532do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public SecureRandom f14533do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicLong f14534do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public AbstractC3414ns.Cdo f14535do;

    public C3395nV(TS ts) {
        super(ts);
        this.f14532do = null;
        this.f14534do = new AtomicLong(0L);
    }

    public static boolean B(String str, String str2) {
        return str.equals("*") || Arrays.asList(str.split(",")).contains(str2);
    }

    public static boolean C(String str) {
        return B(C3684sQ.M.m2158do(null), str);
    }

    public static boolean E(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean F(String str) {
        Preconditions.checkNotEmpty(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static int J(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        if ("_id".equals(str)) {
            return 256;
        }
        return "_lgclid".equals(str) ? 100 : 36;
    }

    public static MessageDigest N() {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static void a(C2696eU c2696eU, Bundle bundle, boolean z) {
        if (bundle == null || c2696eU == null || (bundle.containsKey("_sc") && !z)) {
            if (bundle != null && c2696eU == null && z) {
                bundle.remove("_sn");
                bundle.remove("_sc");
                bundle.remove("_si");
                return;
            }
            return;
        }
        String str = c2696eU.f12681do;
        if (str != null) {
            bundle.putString("_sn", str);
        } else {
            bundle.remove("_sn");
        }
        String str2 = c2696eU.f12684if;
        if (str2 != null) {
            bundle.putString("_sc", str2);
        } else {
            bundle.remove("_sc");
        }
        bundle.putLong("_si", c2696eU.f12680do);
    }

    public static void b(InterfaceC3336mV interfaceC3336mV, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        t(i, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        interfaceC3336mV.mo403do(str, "_err", bundle);
    }

    public static boolean e(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* renamed from: extends, reason: not valid java name */
    public static String m7576extends(String str, int i, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return Cpublic.m7816case(str.substring(0, str.offsetByCodePoints(0, i)), "...");
        }
        return null;
    }

    public static boolean f(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m7577finally(Bundle bundle, int i, String str, Object obj) {
        if (t(i, bundle)) {
            bundle.putString("_ev", m7576extends(str, 40, true));
            if (obj != null) {
                Preconditions.checkNotNull(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    public static boolean g(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* renamed from: import, reason: not valid java name */
    public static long m7578import(zzbe zzbeVar) {
        long j = 0;
        if (zzbeVar == null) {
            return 0L;
        }
        Bundle bundle = zzbeVar.f10312do;
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            if (bundle.get(it.next()) instanceof Parcelable[]) {
                j += ((Parcelable[]) r3).length;
            }
        }
        return j;
    }

    public static boolean j(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            Preconditions.checkNotNull(str);
            return !str.equals(str2);
        }
        if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (isEmpty || !isEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public static boolean k(String str, String[] strArr) {
        Preconditions.checkNotNull(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static byte[] m(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static long m7579native(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        int i = 0;
        Preconditions.checkState(bArr.length > 0);
        long j = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j += (bArr[length] & 255) << i;
            i += 8;
        }
        return j;
    }

    public static boolean o(Context context) {
        ServiceInfo serviceInfo;
        ServiceInfo serviceInfo2;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null && (serviceInfo2 = packageManager.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) != null) {
                    if (serviceInfo2.enabled) {
                        return true;
                    }
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return false;
        }
        try {
            PackageManager packageManager2 = context.getPackageManager();
            if (packageManager2 != null && (serviceInfo = packageManager2.getServiceInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementService"), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        return false;
    }

    public static ArrayList<Bundle> s(List<zzae> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzae zzaeVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzaeVar.f10300break);
            bundle.putString("origin", zzaeVar.f10301catch);
            bundle.putLong("creation_timestamp", zzaeVar.f10303do);
            bundle.putString(FacebookRequestErrorClassification.KEY_NAME, zzaeVar.f10305do.f10352break);
            C3850vF.m8448default(bundle, Preconditions.checkNotNull(zzaeVar.f10305do.f()));
            bundle.putBoolean("active", zzaeVar.f10306do);
            String str = zzaeVar.f10302class;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzbf zzbfVar = zzaeVar.f10304do;
            if (zzbfVar != null) {
                bundle.putString("timed_out_event_name", zzbfVar.f10313break);
                zzbe zzbeVar = zzbfVar.f10316do;
                if (zzbeVar != null) {
                    bundle.putBundle("timed_out_event_params", zzbeVar.j());
                }
            }
            bundle.putLong("trigger_timeout", zzaeVar.f10309if);
            zzbf zzbfVar2 = zzaeVar.f10310if;
            if (zzbfVar2 != null) {
                bundle.putString("triggered_event_name", zzbfVar2.f10313break);
                zzbe zzbeVar2 = zzbfVar2.f10316do;
                if (zzbeVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzbeVar2.j());
                }
            }
            bundle.putLong("triggered_timestamp", zzaeVar.f10305do.f10355do);
            bundle.putLong("time_to_live", zzaeVar.f10307for);
            zzbf zzbfVar3 = zzaeVar.f10308for;
            if (zzbfVar3 != null) {
                bundle.putString("expired_event_name", zzbfVar3.f10313break);
                zzbe zzbeVar3 = zzbfVar3.f10316do;
                if (zzbeVar3 != null) {
                    bundle.putBundle("expired_event_params", zzbeVar3.j());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: static, reason: not valid java name */
    public static Bundle m7580static(List<zzon> list) {
        Bundle bundle = new Bundle();
        if (list == null) {
            return bundle;
        }
        for (zzon zzonVar : list) {
            String str = zzonVar.f10353catch;
            String str2 = zzonVar.f10352break;
            if (str != null) {
                bundle.putString(str2, str);
            } else {
                Long l = zzonVar.f10357do;
                if (l != null) {
                    bundle.putLong(str2, l.longValue());
                } else {
                    Double d = zzonVar.f10356do;
                    if (d != null) {
                        bundle.putDouble(str2, d.doubleValue());
                    }
                }
            }
        }
        return bundle;
    }

    public static boolean t(int i, Bundle bundle) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    public static int w() {
        if (Build.VERSION.SDK_INT < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
            return 0;
        }
        return SdkExtensions.getExtensionVersion(1000000);
    }

    public final boolean A(String str) {
        mo1960catch();
        if (Wrappers.packageManager(mo2255for()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        mo2249case().f13720goto.m7368for("Permission not granted", str);
        return false;
    }

    public final int D() {
        if (this.f14532do == null) {
            this.f14532do = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(mo2255for()) / 1000);
        }
        return this.f14532do.intValue();
    }

    public final boolean G(String str) {
        List<ResolveInfo> queryIntentActivities;
        return (TextUtils.isEmpty(str) || (queryIntentActivities = mo2255for().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), 0)) == null || queryIntentActivities.isEmpty()) ? false : true;
    }

    public final int H(String str) {
        if (!v("event param", str)) {
            return 3;
        }
        if (l("event param", null, null, str)) {
            return !d(40, "event param", str) ? 3 : 0;
        }
        return 14;
    }

    public final int I(String str) {
        if (!y("event param", str)) {
            return 3;
        }
        if (l("event param", null, null, str)) {
            return !d(40, "event param", str) ? 3 : 0;
        }
        return 14;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00cb A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long K() {
        /*
            r11 = this;
            r11.mo1960catch()
            java.lang.Object r0 = r11.f14527do
            TS r0 = (defpackage.TS) r0
            cS r0 = r0.m2258super()
            java.lang.String r0 = r0.m4907return()
            SR<java.lang.String> r1 = defpackage.C3684sQ.q
            r2 = 0
            java.lang.Object r1 = r1.m2158do(r2)
            java.lang.String r1 = (java.lang.String) r1
            boolean r0 = B(r1, r0)
            r3 = 0
            if (r0 != 0) goto L21
            return r3
        L21:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 30
            if (r0 >= r1) goto L2a
            r0 = 4
            goto L4a
        L2a:
            int r0 = android.os.ext.SdkExtensions.getExtensionVersion(r1)
            r1 = 4
            if (r0 >= r1) goto L34
            r0 = 8
            goto L4a
        L34:
            int r0 = w()
            SR<java.lang.Integer> r1 = defpackage.C3684sQ.k
            java.lang.Object r1 = r1.m2158do(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            if (r0 >= r1) goto L49
            r0 = 16
            goto L4a
        L49:
            r0 = r3
        L4a:
            java.lang.String r5 = "android.permission.ACCESS_ADSERVICES_ATTRIBUTION"
            boolean r5 = r11.A(r5)
            if (r5 != 0) goto L55
            r5 = 2
            long r0 = r0 | r5
        L55:
            int r5 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r5 != 0) goto Lc7
            java.lang.Boolean r5 = r11.f14531do
            if (r5 != 0) goto Lbc
            ns$do r5 = r11.f14535do
            if (r5 != 0) goto L6b
            android.content.Context r5 = r11.mo2255for()
            ns$do r5 = defpackage.AbstractC3414ns.m7617do(r5)
            r11.f14535do = r5
        L6b:
            ns$do r5 = r11.f14535do
            r6 = 0
            if (r5 != 0) goto L71
            goto Lc2
        L71:
            wq r5 = r5.m7622new()
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.util.concurrent.TimeoutException -> L98 java.lang.InterruptedException -> L9a java.util.concurrent.ExecutionException -> L9c java.util.concurrent.CancellationException -> L9e
            r8 = 10000(0x2710, double:4.9407E-320)
            java.lang.Object r5 = r5.get(r8, r7)     // Catch: java.util.concurrent.TimeoutException -> L98 java.lang.InterruptedException -> L9a java.util.concurrent.ExecutionException -> L9c java.util.concurrent.CancellationException -> L9e
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch: java.util.concurrent.TimeoutException -> L98 java.lang.InterruptedException -> L9a java.util.concurrent.ExecutionException -> L9c java.util.concurrent.CancellationException -> L9e
            if (r5 == 0) goto L89
            int r2 = r5.intValue()     // Catch: java.util.concurrent.TimeoutException -> L90 java.lang.InterruptedException -> L92 java.util.concurrent.ExecutionException -> L94 java.util.concurrent.CancellationException -> L96
            r7 = 1
            if (r2 != r7) goto L89
            r6 = 1
        L89:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r6)     // Catch: java.util.concurrent.TimeoutException -> L90 java.lang.InterruptedException -> L92 java.util.concurrent.ExecutionException -> L94 java.util.concurrent.CancellationException -> L96
            r11.f14531do = r2     // Catch: java.util.concurrent.TimeoutException -> L90 java.lang.InterruptedException -> L92 java.util.concurrent.ExecutionException -> L94 java.util.concurrent.CancellationException -> L96
            goto Lb1
        L90:
            r2 = move-exception
            goto La2
        L92:
            r2 = move-exception
            goto La2
        L94:
            r2 = move-exception
            goto La2
        L96:
            r2 = move-exception
            goto La2
        L98:
            r5 = move-exception
            goto L9f
        L9a:
            r5 = move-exception
            goto L9f
        L9c:
            r5 = move-exception
            goto L9f
        L9e:
            r5 = move-exception
        L9f:
            r10 = r5
            r5 = r2
            r2 = r10
        La2:
            jS r6 = r11.mo2249case()
            java.lang.String r7 = "Measurement manager api exception"
            lS r6 = r6.f13722new
            r6.m7368for(r7, r2)
            java.lang.Boolean r2 = java.lang.Boolean.FALSE
            r11.f14531do = r2
        Lb1:
            jS r2 = r11.mo2249case()
            java.lang.String r6 = "Measurement manager api status result"
            lS r2 = r2.f13723this
            r2.m7368for(r6, r5)
        Lbc:
            java.lang.Boolean r2 = r11.f14531do
            boolean r6 = r2.booleanValue()
        Lc2:
            if (r6 != 0) goto Lc7
            r5 = 64
            long r0 = r0 | r5
        Lc7:
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 != 0) goto Lcd
            r0 = 1
        Lcd:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3395nV.K():long");
    }

    public final long L() {
        long andIncrement;
        long j;
        if (this.f14534do.get() != 0) {
            synchronized (this.f14534do) {
                this.f14534do.compareAndSet(-1L, 1L);
                andIncrement = this.f14534do.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.f14534do) {
            long nextLong = new Random(System.nanoTime() ^ mo2257new().currentTimeMillis()).nextLong();
            int i = this.f14530do + 1;
            this.f14530do = i;
            j = nextLong + i;
        }
        return j;
    }

    public final String M() {
        byte[] bArr = new byte[16];
        O().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final SecureRandom O() {
        mo1960catch();
        if (this.f14533do == null) {
            this.f14533do = new SecureRandom();
        }
        return this.f14533do;
    }

    public final boolean P() {
        mo1960catch();
        return K() == 1;
    }

    /* renamed from: abstract, reason: not valid java name */
    public final void m7581abstract(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            mo2249case().f13713case.m7367do(m7573goto().m6449case(str), "Not putting event parameter. Invalid value type. name, type", simpleName);
        }
    }

    public final void c(Parcelable[] parcelableArr, int i) {
        Preconditions.checkNotNull(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            Iterator it = new TreeSet(bundle.keySet()).iterator();
            int i2 = 0;
            while (it.hasNext()) {
                String str = (String) it.next();
                if (F(str) && !k(str, C0315Kc.f1841new) && (i2 = i2 + 1) > i) {
                    mo2249case().f13719for.m7367do(m7573goto().m6449case(str), Creturn.m7981if("Param can't contain more than ", i, " item-scoped custom parameters"), m7573goto().m6450do(bundle));
                    t(28, bundle);
                    bundle.remove(str);
                }
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public final void m7582continue(zzdo zzdoVar, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = ((TS) ((C3393nT) this).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning int value to wrapper", e);
        }
    }

    public final boolean d(int i, String str, String str2) {
        if (str2 == null) {
            mo2249case().f13719for.m7368for("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        }
        C3156jS mo2249case = mo2249case();
        mo2249case.f13719for.m7370new("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public final Object m7583default(int i, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return m7576extends(String.valueOf(obj), i, z);
        }
        if (!z2 || (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[]))) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle m7590public = m7590public((Bundle) parcelable);
                if (!m7590public.isEmpty()) {
                    arrayList.add(m7590public);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    @Override // defpackage.AbstractC3570qT
    /* renamed from: final */
    public final boolean mo1961final() {
        return true;
    }

    public final boolean h(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(str);
        Object obj = ((C3393nT) this).f14527do;
        if (!isEmpty) {
            Preconditions.checkNotNull(str);
            if (str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                return true;
            }
            if (TextUtils.isEmpty(((TS) obj).f3697do)) {
                C3156jS mo2249case = mo2249case();
                mo2249case.f13719for.m7368for("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", C3156jS.m7106while(str));
            }
            return false;
        }
        if (TextUtils.isEmpty(str2)) {
            if (TextUtils.isEmpty(((TS) obj).f3697do)) {
                mo2249case().f13719for.m7369if("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
            return false;
        }
        Preconditions.checkNotNull(str2);
        if (str2.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
            return true;
        }
        C3156jS mo2249case2 = mo2249case();
        mo2249case2.f13719for.m7368for("Invalid admob_app_id. Analytics disabled.", C3156jS.m7106while(str2));
        return false;
    }

    public final boolean i(String str, String str2, int i, Object obj) {
        if (obj != null && !(obj instanceof Long) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Byte) && !(obj instanceof Short) && !(obj instanceof Boolean) && !(obj instanceof Double)) {
            if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
                return false;
            }
            String valueOf = String.valueOf(obj);
            if (valueOf.codePointCount(0, valueOf.length()) > i) {
                C3156jS mo2249case = mo2249case();
                mo2249case.f13713case.m7370new("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
                return false;
            }
        }
        return true;
    }

    /* renamed from: implements, reason: not valid java name */
    public final void m7584implements(String str, zzdo zzdoVar) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = ((TS) ((C3393nT) this).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning string value to wrapper", e);
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final void m7585instanceof(String str, String str2, Bundle bundle, List list, boolean z) {
        int I;
        String str3;
        int m7600while;
        if (bundle == null) {
            return;
        }
        int i = m7572else().m7571break().n(231100000) ? 35 : 0;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str4 = (String) it.next();
            if (list == null || !list.contains(str4)) {
                I = !z ? I(str4) : 0;
                if (I == 0) {
                    I = H(str4);
                }
            } else {
                I = 0;
            }
            if (I != 0) {
                m7577finally(bundle, I, str4, I == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (g(bundle.get(str4))) {
                    mo2249case().f13713case.m7370new("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str, str2, str4);
                    m7600while = 22;
                    str3 = str4;
                } else {
                    str3 = str4;
                    m7600while = m7600while(str, str4, bundle.get(str4), bundle, list, z, false);
                }
                if (m7600while != 0 && !"_ev".equals(str3)) {
                    m7577finally(bundle, m7600while, str3, bundle.get(str3));
                    bundle.remove(str3);
                } else if (F(str3) && !k(str3, C0315Kc.f1841new)) {
                    i2++;
                    if (!n(231100000)) {
                        mo2249case().f13719for.m7367do(m7573goto().m6452for(str), "Item array not supported on client's version of Google Play Services (Android Only)", m7573goto().m6450do(bundle));
                        t(23, bundle);
                        bundle.remove(str3);
                    } else if (i2 > i) {
                        C3156jS mo2249case = mo2249case();
                        mo2249case.f13719for.m7367do(m7573goto().m6452for(str), Creturn.m7981if("Item can't contain more than ", i, " item-scoped custom params"), m7573goto().m6450do(bundle));
                        t(28, bundle);
                        bundle.remove(str3);
                    }
                }
            }
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public final void m7586interface(zzdo zzdoVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = ((TS) ((C3393nT) this).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning bundle list to wrapper", e);
        }
    }

    public final boolean l(String str, String[] strArr, String[] strArr2, String str2) {
        boolean z;
        if (str2 == null) {
            mo2249case().f13719for.m7368for("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.checkNotNull(str2);
        String[] strArr3 = f14528do;
        int i = 0;
        while (true) {
            if (i >= 3) {
                z = false;
                break;
            }
            if (str2.startsWith(strArr3[i])) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            mo2249case().f13719for.m7367do(str, "Name starts with reserved prefix. Type, name", str2);
            return false;
        }
        if (strArr == null || !k(str2, strArr) || (strArr2 != null && k(str2, strArr2))) {
            return true;
        }
        mo2249case().f13719for.m7367do(str, "Name is reserved. Type, name", str2);
        return false;
    }

    public final boolean n(int i) {
        Boolean bool = ((TS) ((C3393nT) this).f14527do).m2261while().f13998do;
        if (D() < i / 1000) {
            return (bool == null || bool.booleanValue()) ? false : true;
        }
        return true;
    }

    public final void p() {
        mo1960catch();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                mo2249case().f13722new.m7369if("Utils falling back to Random for random id");
            }
        }
        this.f14534do.set(nextLong);
    }

    /* renamed from: package, reason: not valid java name */
    public final void m7587package(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            C3156jS mo2249case = mo2249case();
            mo2249case.f13722new.m7368for("Params already contained engagement", Long.valueOf(j2));
        }
        bundle.putLong("_et", j + j2);
    }

    /* renamed from: private, reason: not valid java name */
    public final void m7588private(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                m7571break().m7581abstract(bundle, str, bundle2.get(str));
            }
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public final void m7589protected(zzdo zzdoVar, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = ((TS) ((C3393nT) this).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning boolean value to wrapper", e);
        }
    }

    /* renamed from: public, reason: not valid java name */
    public final Bundle m7590public(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object r = r(bundle.get(str), str);
                if (r == null) {
                    C3156jS mo2249case = mo2249case();
                    mo2249case.f13713case.m7368for("Param value can't be null", m7573goto().m6449case(str));
                } else {
                    m7581abstract(bundle2, str, r);
                }
            }
        }
        return bundle2;
    }

    public final int q(String str) {
        if (!v("user property", str)) {
            return 6;
        }
        if (l("user property", C3645ro.f15326if, null, str)) {
            return !d(24, "user property", str) ? 6 : 0;
        }
        return 15;
    }

    public final Object r(Object obj, String str) {
        if ("_ev".equals(str)) {
            return m7583default(m7572else().m3002import(null, false), obj, true, true);
        }
        return m7583default(E(str) ? m7572else().m3002import(null, false) : m7572else().m2999final(null, false), obj, false, true);
    }

    /* renamed from: return, reason: not valid java name */
    public final Bundle m7591return(String str, Bundle bundle, List list, boolean z) {
        int I;
        C3395nV c3395nV = this;
        boolean k = k(str, O4.f2562new);
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        int i = m7572else().m7571break().n(201500000) ? 100 : 25;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (list == null || !list.contains(str2)) {
                I = !z ? c3395nV.I(str2) : 0;
                if (I == 0) {
                    I = c3395nV.H(str2);
                }
            } else {
                I = 0;
            }
            if (I != 0) {
                m7577finally(bundle2, I, str2, I == 3 ? str2 : null);
                bundle2.remove(str2);
            } else {
                int m7600while = m7600while(str, str2, bundle.get(str2), bundle2, list, z, k);
                if (m7600while == 17) {
                    m7577finally(bundle2, m7600while, str2, Boolean.FALSE);
                } else if (m7600while != 0 && !"_ev".equals(str2)) {
                    m7577finally(bundle2, m7600while, m7600while == 21 ? str : str2, bundle.get(str2));
                    bundle2.remove(str2);
                }
                if (F(str2)) {
                    int i3 = i2 + 1;
                    if (i3 > i) {
                        mo2249case().f13719for.m7367do(m7573goto().m6452for(str), Creturn.m7981if("Event can't contain more than ", i, " params"), m7573goto().m6450do(bundle));
                        t(5, bundle2);
                        bundle2.remove(str2);
                    }
                    c3395nV = this;
                    i2 = i3;
                }
            }
            c3395nV = this;
        }
        return bundle2;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m7592strictfp(zzdo zzdoVar, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = ((TS) ((C3393nT) this).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning long value to wrapper", e);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public final int m7593super(Object obj, String str) {
        return "_ldl".equals(str) ? i("user property referrer", str, J(str), obj) : i("user property", str, J(str), obj) ? 0 : 7;
    }

    /* renamed from: switch, reason: not valid java name */
    public final Bundle m7594switch(boolean z, Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str = uri.getQueryParameter("utm_campaign");
                str2 = uri.getQueryParameter("utm_source");
                str3 = uri.getQueryParameter("utm_medium");
                str4 = uri.getQueryParameter("gclid");
                str5 = z ? uri.getQueryParameter("gbraid") : null;
                str6 = uri.getQueryParameter("utm_id");
                str7 = uri.getQueryParameter("dclid");
                str8 = uri.getQueryParameter("srsltid");
                str9 = uri.getQueryParameter("sfmc_id");
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                str5 = null;
                str6 = null;
                str7 = null;
                str8 = null;
                str9 = null;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4) && ((!z || TextUtils.isEmpty(str5)) && TextUtils.isEmpty(str6) && TextUtils.isEmpty(str7) && TextUtils.isEmpty(str8) && TextUtils.isEmpty(str9))) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(str)) {
                str10 = "sfmc_id";
            } else {
                str10 = "sfmc_id";
                bundle.putString("campaign", str);
            }
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("source", str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("medium", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString("gclid", str4);
            }
            if (z && !TextUtils.isEmpty(str5)) {
                bundle.putString("gbraid", str5);
            }
            String queryParameter = uri.getQueryParameter("gad_source");
            if (z && !TextUtils.isEmpty(queryParameter)) {
                bundle.putString("gad_source", queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("term", queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("content", queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("aclid", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("cp1", queryParameter5);
            }
            String queryParameter6 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("anid", queryParameter6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("campaign_id", str6);
            }
            if (!TextUtils.isEmpty(str7)) {
                bundle.putString("dclid", str7);
            }
            String queryParameter7 = uri.getQueryParameter("utm_source_platform");
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString("source_platform", queryParameter7);
            }
            String queryParameter8 = uri.getQueryParameter("utm_creative_format");
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString("creative_format", queryParameter8);
            }
            String queryParameter9 = uri.getQueryParameter("utm_marketing_tactic");
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString("marketing_tactic", queryParameter9);
            }
            if (!TextUtils.isEmpty(str8)) {
                bundle.putString("srsltid", str8);
            }
            if (!TextUtils.isEmpty(str9)) {
                bundle.putString(str10, str9);
            }
            return bundle;
        } catch (UnsupportedOperationException e) {
            mo2249case().f13722new.m7368for("Install referrer url isn't a hierarchical URI", e);
            return null;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public final void m7595synchronized(C3392nS c3392nS, int i) {
        Bundle bundle = c3392nS.f14524do;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i2 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (F(str) && (i2 = i2 + 1) > i) {
                mo2249case().f13719for.m7367do(m7573goto().m6452for(c3392nS.f14525do), Creturn.m7981if("Event can't contain more than ", i, " params"), m7573goto().m6450do(bundle));
                t(5, bundle);
                bundle.remove(str);
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public final int m7596throw(String str) {
        if (!v("event", str)) {
            return 2;
        }
        if (l("event", O4.f2538do, O4.f2555if, str)) {
            return !d(40, "event", str) ? 2 : 0;
        }
        return 13;
    }

    /* renamed from: throws, reason: not valid java name */
    public final zzbf m7597throws(String str, Bundle bundle, String str2, long j, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (m7596throw(str) != 0) {
            mo2249case().f13717do.m7368for("Invalid conditional property event name", m7573goto().m6451else(str));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle m7591return = m7591return(str, bundle2, CollectionUtils.listOf("_o"), true);
        if (z) {
            m7591return = m7590public(m7591return);
        }
        Preconditions.checkNotNull(m7591return);
        return new zzbf(str, new zzbe(m7591return), str2, j);
    }

    /* renamed from: transient, reason: not valid java name */
    public final void m7598transient(zzdo zzdoVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = ((TS) ((C3393nT) this).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning byte array to wrapper", e);
        }
    }

    public final boolean u(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            mo2249case().f13717do.m7368for("Package name not found", e);
            return true;
        } catch (CertificateException e2) {
            mo2249case().f13717do.m7368for("Error obtaining certificate", e2);
            return true;
        }
    }

    public final boolean v(String str, String str2) {
        if (str2 == null) {
            mo2249case().f13719for.m7368for("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            mo2249case().f13719for.m7368for("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt) && codePointAt != 95) {
            mo2249case().f13719for.m7367do(str, "Name must start with a letter or _ (underscore). Type, name", str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                mo2249case().f13719for.m7367do(str, "Name must consist of letters, digits or _ (underscores). Type, name", str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    /* renamed from: volatile, reason: not valid java name */
    public final void m7599volatile(zzdo zzdoVar, Bundle bundle) {
        try {
            zzdoVar.zza(bundle);
        } catch (RemoteException e) {
            C3156jS c3156jS = ((TS) ((C3393nT) this).f14527do).f3695do;
            TS.m2247this(c3156jS);
            c3156jS.f13722new.m7368for("Error returning bundle value to wrapper", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00d1  */
    /* renamed from: while, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7600while(java.lang.String r15, java.lang.String r16, java.lang.Object r17, android.os.Bundle r18, java.util.List r19, boolean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3395nV.m7600while(java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    public final Object x(Object obj, String str) {
        return "_ldl".equals(str) ? m7583default(J(str), obj, true, false) : m7583default(J(str), obj, false, false);
    }

    public final boolean y(String str, String str2) {
        if (str2 == null) {
            mo2249case().f13719for.m7368for("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            mo2249case().f13719for.m7368for("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            mo2249case().f13719for.m7367do(str, "Name must start with a letter. Type, name", str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                mo2249case().f13719for.m7367do(str, "Name must consist of letters, digits or _ (underscores). Type, name", str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public final boolean z(String str, String str2) {
        if (zzpu.zza() && m7572else().m3012throws(null, C3684sQ.K) && !TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return m7572else().m3001if("debug.firebase.analytics.app", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals(str);
    }
}
