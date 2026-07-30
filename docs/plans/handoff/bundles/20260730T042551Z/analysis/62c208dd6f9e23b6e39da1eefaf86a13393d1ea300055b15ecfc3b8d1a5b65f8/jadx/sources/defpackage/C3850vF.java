package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.Utility;
import com.facebook.share.model.ShareContent;
import com.facebook.share.model.ShareLinkContent;
import com.facebook.share.model.SharePhotoContent;
import com.facebook.share.model.ShareVideoContent;
import com.google.android.gms.ads.RequestConfiguration;
import com.joeykrim.rootcheck.R;
import defpackage.InterfaceC0634Yo;
import defpackage.InterfaceC3161jb;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.CancellationException;

/* renamed from: vF, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public class C3850vF implements InterfaceC0399Nv, InterfaceC0609Xl, SE, InterfaceC0598Xa {

    /* renamed from: do, reason: not valid java name */
    public static final C0174Dp f16040do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static C0820cd f16041do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static String[] f16045do;

    /* renamed from: if, reason: not valid java name */
    public static final C0174Dp f16048if;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final byte[] f16043do = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* renamed from: for, reason: not valid java name */
    public static final C0174Dp f16046for = new C0174Dp("CONDITION_FALSE", 7);

    /* renamed from: new, reason: not valid java name */
    public static final C0174Dp f16051new = new C0174Dp("NO_OWNER", 7);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f16044do = {R.attr.animationDuration, R.attr.currentPageIndicatorColor, R.attr.dotDiameter, R.attr.dotGap, R.attr.pageIndicatorColor};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final int[] f16050if = {R.attr.layout_parallaxFactor};

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public static final int[] f16047for = {R.attr.keylines, R.attr.statusBarBackground};

    /* renamed from: new, reason: not valid java name and collision with other field name */
    public static final int[] f16052new = {android.R.attr.layout_gravity, R.attr.layout_anchor, R.attr.layout_anchorGravity, R.attr.layout_behavior, R.attr.layout_dodgeInsetEdges, R.attr.layout_insetEdge, R.attr.layout_keyline};

    /* renamed from: try, reason: not valid java name */
    public static final int[] f16053try = {android.R.attr.orientation};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3850vF f16042do = new C3850vF();

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ C3850vF f16049if = new C3850vF();

    static {
        int i = 7;
        f16040do = new C0174Dp("UNDEFINED", i);
        f16048if = new C0174Dp("REUSABLE_CLAIMED", i);
    }

    /* renamed from: break, reason: not valid java name */
    public static PublicKey m8443break() {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhCt9A6KhEtQWG0tsC7r/xKBwdJjhRQ+gMQuj+SVbIJnCfPLdGLvNLzBVyyd508s/bjFjw8Jpia0lg7k07kWRuI4SfJzSyW/PzLeru785cOdNkQPQ1D38xtWar6PC50jgR+Ad/BWu+RmULd9HUzegSr2GaFITlzyn3TjXm0SomQSPIwnRFEAh2yprXzbx3mPRERa+AFF1JvliPpvKdytX+HcNSn3O67QyBKNJkImsxgOTx2UWXaHbtdSWr6goFf4lnoP7ExTJADIkRf/B4Gy9WdRHe72uvDyjUsf+T6NAzCoAM3LTJtMgb2bOfFif1A4dsTUQtH6zWNKzxJYonqKEZQIDAQAB", 0)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            throw new IOException("Invalid key specification: " + e2);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static final Bundle m8444case(UUID uuid, ShareContent shareContent, boolean z) {
        C0173Do.m401try(uuid, "callId");
        C0173Do.m401try(shareContent, "shareContent");
        if (shareContent instanceof ShareLinkContent) {
            return m8449else((ShareLinkContent) shareContent, z);
        }
        if (!(shareContent instanceof SharePhotoContent)) {
            boolean z2 = shareContent instanceof ShareVideoContent;
            return null;
        }
        SharePhotoContent sharePhotoContent = (SharePhotoContent) shareContent;
        Collection m1612import = O4.m1612import(sharePhotoContent, uuid);
        if (m1612import == null) {
            m1612import = C0471Rf.f3217do;
        }
        Bundle m8449else = m8449else(sharePhotoContent, z);
        m8449else.putStringArrayList("com.facebook.platform.extra.PHOTOS", new ArrayList<>(m1612import));
        return m8449else;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* renamed from: catch, reason: not valid java name */
    public static final Class m8445catch(InterfaceC3823up interfaceC3823up) {
        C0173Do.m401try(interfaceC3823up, "<this>");
        Class<?> mo1830do = ((Q7) interfaceC3823up).mo1830do();
        if (!mo1830do.isPrimitive()) {
            return mo1830do;
        }
        String name = mo1830do.getName();
        switch (name.hashCode()) {
            case -1325958191:
                if (!name.equals("double")) {
                }
                break;
            case 104431:
                if (!name.equals("int")) {
                }
                break;
            case 3039496:
                if (!name.equals("byte")) {
                }
                break;
            case 3052374:
                if (!name.equals("char")) {
                }
                break;
            case 3327612:
                if (!name.equals("long")) {
                }
                break;
            case 3625364:
                if (!name.equals("void")) {
                }
                break;
            case 64711720:
                if (!name.equals("boolean")) {
                }
                break;
            case 97526364:
                if (!name.equals("float")) {
                }
                break;
            case 109413500:
                if (!name.equals("short")) {
                }
                break;
        }
        return mo1830do;
    }

    /* renamed from: class, reason: not valid java name */
    public static String m8446class(String str, String str2) {
        return String.format("%s/project/%s/performance/app/android:%s", "https://console.firebase.google.com", str, str2);
    }

    /* renamed from: const, reason: not valid java name */
    public static final WB m8447const(Object obj) {
        if (obj == O4.f2533do) {
            throw new IllegalStateException("Does not contain segment".toString());
        }
        C0173Do.m396for(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (WB) obj;
    }

    /* renamed from: default, reason: not valid java name */
    public static void m8448default(Bundle bundle, Object obj) {
        if (obj instanceof Double) {
            bundle.putDouble("value", ((Double) obj).doubleValue());
        } else if (obj instanceof Long) {
            bundle.putLong("value", ((Long) obj).longValue());
        } else {
            bundle.putString("value", obj.toString());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Bundle m8449else(ShareContent shareContent, boolean z) {
        Bundle bundle = new Bundle();
        Utility utility = Utility.INSTANCE;
        Utility.putUri(bundle, "com.facebook.platform.extra.LINK", shareContent.f9438do);
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.PLACE", shareContent.f9435break);
        Utility.putNonEmptyString(bundle, "com.facebook.platform.extra.REF", shareContent.f9437class);
        bundle.putBoolean("com.facebook.platform.extra.DATA_FAILURES_FATAL", z);
        List<String> list = shareContent.f9440do;
        if (!(list == null || list.isEmpty())) {
            bundle.putStringArrayList("com.facebook.platform.extra.FRIENDS", new ArrayList<>(list));
        }
        return bundle;
    }

    /* renamed from: final, reason: not valid java name */
    public static final boolean m8450final(Object obj) {
        return obj == O4.f2533do;
    }

    /* renamed from: for, reason: not valid java name */
    public static final void m8451for(Throwable th, Throwable th2) {
        C0173Do.m401try(th, "<this>");
        C0173Do.m401try(th2, "exception");
        if (th != th2) {
            Qw.f3084do.mo1801do(th, th2);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static float m8452goto(float f, float f2, float f3, float f4) {
        double d = 0.0f - f;
        double d2 = 0.0f - f2;
        float hypot = (float) Math.hypot(d, d2);
        double d3 = f3 - f;
        float hypot2 = (float) Math.hypot(d3, d2);
        double d4 = f4 - f2;
        float hypot3 = (float) Math.hypot(d3, d4);
        float hypot4 = (float) Math.hypot(d, d4);
        return (hypot <= hypot2 || hypot <= hypot3 || hypot <= hypot4) ? (hypot2 <= hypot3 || hypot2 <= hypot4) ? hypot3 > hypot4 ? hypot3 : hypot4 : hypot2 : hypot;
    }

    /* renamed from: if, reason: not valid java name */
    public static final ArrayList m8453if(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            RN rn = (RN) it.next();
            Bundle bundle = new Bundle();
            bundle.putInt("event_type", rn.mo1957do());
            bundle.putLong("event_timestamp", rn.mo1958if());
            arrayList2.add(bundle);
        }
        return arrayList2;
    }

    /* renamed from: import, reason: not valid java name */
    public static C3654rx m8454import(String str, C4010xz c4010xz) {
        ExecutorC3399nd executorC3399nd = C0185Ee.f870do;
        RF rf = new RF(null);
        executorC3399nd.getClass();
        C0532Ua m8132do = C3691sb.m8132do(InterfaceC3161jb.Cdo.m7138do(executorC3399nd, rf));
        C0173Do.m401try(str, FacebookRequestErrorClassification.KEY_NAME);
        C3478ox c3478ox = C3478ox.f14870do;
        C0173Do.m401try(c3478ox, "produceMigrations");
        return new C3654rx(str, c4010xz, c3478ox, m8132do);
    }

    /* renamed from: native, reason: not valid java name */
    public static final void m8455native(InterfaceC0576Wa interfaceC0576Wa) {
        C0173Do.m401try(interfaceC0576Wa, "frame");
    }

    /* renamed from: new, reason: not valid java name */
    public static final void m8456new(View view) {
        C0173Do.m401try(view, "<this>");
        C0746bL c0746bL = new C0746bL(view, null);
        C3199kC c3199kC = new C3199kC();
        c3199kC.f13881do = C3645ro.m8023while(c3199kC, c3199kC, c0746bL);
        while (c3199kC.hasNext()) {
            View view2 = (View) c3199kC.next();
            C0721ax c0721ax = (C0721ax) view2.getTag(R.id.pooling_container_listener_holder_tag);
            if (c0721ax == null) {
                c0721ax = new C0721ax();
                view2.setTag(R.id.pooling_container_listener_holder_tag, c0721ax);
            }
            ArrayList<Zw> arrayList = c0721ax.f8300do;
            for (int m1633while = O4.m1633while(arrayList); -1 < m1633while; m1633while--) {
                arrayList.get(m1633while).m3082do();
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static final Object m8457public(Object obj) {
        return obj instanceof U8 ? C3645ro.m8004import(((U8) obj).f3839do) : obj;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: return, reason: not valid java name */
    public static final void m8458return(InterfaceC0576Wa interfaceC0576Wa, Object obj, InterfaceC2650dk interfaceC2650dk) {
        if (!(interfaceC0576Wa instanceof C4107ze)) {
            interfaceC0576Wa.mo1746while(obj);
            return;
        }
        C4107ze c4107ze = (C4107ze) interfaceC0576Wa;
        Throwable m3108do = C0675aA.m3108do(obj);
        boolean z = false;
        Object v8 = m3108do == null ? interfaceC2650dk != null ? new V8(obj, interfaceC2650dk) : obj : new U8(false, m3108do);
        AbstractC3338mb abstractC3338mb = c4107ze.f16934do;
        InterfaceC0576Wa<T> interfaceC0576Wa2 = c4107ze.f16932do;
        c4107ze.mo2221if();
        if (abstractC3338mb.r()) {
            c4107ze.f16933do = v8;
            c4107ze.f252for = 1;
            c4107ze.f16934do.mo1340if(c4107ze.mo2221if(), c4107ze);
            return;
        }
        AbstractC3873vg m6717do = C2801gH.m6717do();
        if (m6717do.f16106do >= 4294967296L) {
            c4107ze.f16933do = v8;
            c4107ze.f252for = 1;
            A2<AbstractC0119Be<?>> a2 = m6717do.f16107do;
            if (a2 == null) {
                a2 = new A2<>();
                m6717do.f16107do = a2;
            }
            a2.addLast(c4107ze);
            return;
        }
        m6717do.t(true);
        try {
            InterfaceC0634Yo interfaceC0634Yo = (InterfaceC0634Yo) c4107ze.mo2221if().mo814new(InterfaceC0634Yo.Cif.f4763do);
            if (interfaceC0634Yo != null && !interfaceC0634Yo.mo2955for()) {
                CancellationException mo2956goto = interfaceC0634Yo.mo2956goto();
                c4107ze.mo194do(v8, mo2956goto);
                c4107ze.mo1746while(C3645ro.m8004import(mo2956goto));
                z = true;
            }
            if (!z) {
                Object obj2 = c4107ze.f16935if;
                InterfaceC3161jb mo2221if = interfaceC0576Wa2.mo2221if();
                Object m6541for = C2683eH.m6541for(mo2221if, obj2);
                C2744fJ<?> m7273if = m6541for != C2683eH.f12658do ? C3220kb.m7273if(interfaceC0576Wa2, mo2221if, m6541for) : null;
                try {
                    interfaceC0576Wa2.mo1746while(obj);
                    C3206kJ c3206kJ = C3206kJ.f13965do;
                    if (m7273if == null || m7273if.y()) {
                        C2683eH.m6540do(mo2221if, m6541for);
                    }
                } catch (Throwable th) {
                    if (m7273if == null || m7273if.y()) {
                        C2683eH.m6540do(mo2221if, m6541for);
                    }
                    throw th;
                }
            }
            while (m6717do.v()) {
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static final String m8459static(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        exc.printStackTrace(printWriter);
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        C0173Do.m399new(stringWriter2, "sw.toString()");
        return stringWriter2;
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m8460super() {
        String str = Build.MANUFACTURER;
        String str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (!(str != null ? str.toLowerCase(Locale.ENGLISH) : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).equals("lge")) {
            if (str != null) {
                str2 = str.toLowerCase(Locale.ENGLISH);
            }
            if (!str2.equals("samsung")) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: switch, reason: not valid java name */
    public static final C3881vo m8461switch(int i, int i2) {
        if (i2 > Integer.MIN_VALUE) {
            return new C3881vo(i, i2 - 1);
        }
        C3881vo c3881vo = C3881vo.f16122do;
        return C3881vo.f16122do;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m8462this(Bundle bundle, String str) {
        if (!bundle.containsKey(str)) {
            throw new IllegalArgumentException("Bundle must contain ".concat(str));
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static float m8463throw(float f, float f2, float f3) {
        return (f3 * f2) + ((1.0f - f3) * f);
    }

    /* renamed from: throws, reason: not valid java name */
    public static Object m8464throws(Bundle bundle, String str, Class cls, Object obj) {
        Object obj2 = bundle.get(str);
        if (obj2 == null) {
            return obj;
        }
        if (cls.isAssignableFrom(obj2.getClass())) {
            return obj2;
        }
        throw new IllegalStateException(String.format("Invalid conditional user property field type. '%s' expected [%s] but was [%s]", str, cls.getCanonicalName(), obj2.getClass().getCanonicalName()));
    }

    /* renamed from: try, reason: not valid java name */
    public static void m8465try(int i, String str) {
        if (i >= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m8466while(String str) {
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0040  */
    @Override // defpackage.SE
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.StackTraceElement[] mo2123do(java.lang.StackTraceElement[] r15) {
        /*
            r14 = this;
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            int r1 = r15.length
            java.lang.StackTraceElement[] r1 = new java.lang.StackTraceElement[r1]
            r2 = 0
            r3 = 1
            r4 = 0
            r5 = 0
            r6 = 1
        Ld:
            int r7 = r15.length
            if (r4 >= r7) goto L66
            r7 = r15[r4]
            java.lang.Object r8 = r0.get(r7)
            java.lang.Integer r8 = (java.lang.Integer) r8
            if (r8 == 0) goto L54
            int r9 = r8.intValue()
            int r10 = r4 - r9
            int r11 = r4 + r10
            int r12 = r15.length
            if (r11 <= r12) goto L26
            goto L37
        L26:
            r11 = 0
        L27:
            if (r11 >= r10) goto L3c
            int r12 = r9 + r11
            r12 = r15[r12]
            int r13 = r4 + r11
            r13 = r15[r13]
            boolean r12 = r12.equals(r13)
            if (r12 != 0) goto L39
        L37:
            r9 = 0
            goto L3d
        L39:
            int r11 = r11 + 1
            goto L27
        L3c:
            r9 = 1
        L3d:
            if (r9 != 0) goto L40
            goto L54
        L40:
            int r8 = r8.intValue()
            int r8 = r4 - r8
            r9 = 10
            if (r6 >= r9) goto L50
            java.lang.System.arraycopy(r15, r4, r1, r5, r8)
            int r5 = r5 + r8
            int r6 = r6 + 1
        L50:
            int r8 = r8 + (-1)
            int r8 = r8 + r4
            goto L5c
        L54:
            r6 = r15[r4]
            r1[r5] = r6
            int r5 = r5 + 1
            r8 = r4
            r6 = 1
        L5c:
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r0.put(r7, r4)
            int r4 = r8 + 1
            goto Ld
        L66:
            java.lang.StackTraceElement[] r0 = new java.lang.StackTraceElement[r5]
            java.lang.System.arraycopy(r1, r2, r0, r2, r5)
            int r1 = r15.length
            if (r5 >= r1) goto L6f
            return r0
        L6f:
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3850vF.mo2123do(java.lang.StackTraceElement[]):java.lang.StackTraceElement[]");
    }

    @Override // defpackage.InterfaceC0399Nv
    public void onComplete(FG fg) {
        if (fg.mo604throw()) {
            String m91for = O4.f2532do.m91for();
            if (m91for.isEmpty() || m91for.equalsIgnoreCase("not_set")) {
                return;
            }
            String m1610if = O4.m1610if();
            MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
            if (mobileAnalyticsManager != null) {
                try {
                    DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                    EventConstraintDecorator m5101for = defaultEventClient.m5101for("SessionStartABTest");
                    m5101for.mo5062else("ABTestName", m1610if);
                    defaultEventClient.m5099case(m5101for.f8929do);
                    C4012y0.f16658do.f8800do.m5100else();
                } catch (Exception unused) {
                }
            }
            String m1610if2 = O4.m1610if();
            try {
                Bundle bundle = new Bundle();
                bundle.putString("ab_test_name", m1610if2);
                C0583Wh.f4395do.m6073do("ab_test_started", bundle);
            } catch (Exception unused2) {
            }
            try {
                C0583Wh.f4395do.m6074if("DemoExperiment1", m1610if2);
            } catch (Exception unused3) {
            }
        }
    }

    @Override // defpackage.InterfaceC0598Xa
    public Object then(FG fg) {
        if (fg.mo604throw()) {
            return (Bundle) fg.mo592class();
        }
        if (Log.isLoggable("Rpc", 3)) {
            "Error making request: ".concat(String.valueOf(fg.mo591catch()));
        }
        throw new IOException("SERVICE_NOT_AVAILABLE", fg.mo591catch());
    }
}
