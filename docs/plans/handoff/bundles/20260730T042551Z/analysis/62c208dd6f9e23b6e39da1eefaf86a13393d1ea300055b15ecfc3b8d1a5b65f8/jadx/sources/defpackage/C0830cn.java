package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.LiveData;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.MobileAnalyticsManager;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.DefaultEventClient;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.internal.event.EventConstraintDecorator;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.monetization.GooglePlayMonetizationEventBuilder;
import com.amazonaws.mobileconnectors.amazonmobileanalytics.monetization.MonetizationEventBuilder;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.play_billing.zzco;
import com.google.firebase.perf.metrics.Trace;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;
import defpackage.C2957iz;
import defpackage.C3717t0;
import defpackage.C3722t5;
import j$.lang.Iterable$EL;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.function.Consumer;

/* renamed from: cn, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0830cn {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f8636do = {"BveJ4AkFeR0jWIRBQVkf2A==:r96eup/jNk63bCkX4eWDVDE+9OQwfyLa1BvJj9SNjl4=:D8WXh5AN3WKpadqcHHzPhaaR+kOOM9ZBOeTq/cjnxTxBBi6eSSKieH0k9YhqopjI", "Gryf0u5jDS6aEAHw2BeuEQ==:g15z6wTRazEbGAlAFGP2Lrn4viSji0NSggelyPpwkDM=:+RpZnytm4Ph5UUVTok5phu0XHLSsJakwQyNA/z1fH0LCAwzCXHk4aVYiHgZKAGTW", "KDXqv6Kw3aOD4LtjZTLg5w==:3EgcKae3MCc8ilCI4AzHiYIZ26c9xmtON8GPgDYAHF4=:r/DA4lr6IXYjN4nShTCHIA==", "tYWJq5a4aP+9BL9vtXq8/g==:YvJgvwtE6Wae8igfMVtYI9h3DUkzGFrtvhrvOF1XnDo=:JmkrtA/K7cEAgBfcvyL9jzQVXjii9GkVqGtA6EmnQz0=", "FUF8cPP9z58PRGCNmn/I0g==:5oQ1Al+qkLqamXv9HnqjFsAY/5XgR+N2SP8/kpzyyfY=:o/u84WZionCOAHxSD0p+pCaBS3OSo/9MjWhr5vzP/9E=", "ZIdYtD/Zt9makGMjg9WmRA==:W3D/6h0FNoU+T+BTsvpXzM4AvJqwzw2WUCr4CXSR+HI=:1eEwK4QQQwfn5mdgVl6BRz/MgFwQDxAuxRvuFp8VVpo=", "Ik8eItm2MH8m0A+YT4tGsQ==:uHpjMjk5pC4b4fCPTyDVVxDgTOS46Kh/1AGx0UEFdJE=:DYjsDd6WBk6x17gZ36Eq6QgZ/8hT1FHKNw4yRFSbJIc=", "BbDlajS/w7VqbDaebTsHxQ==:yfkWHJ77l+jnML9izOA/MBAvpdh7XtbY6jt3YzmUbBU=:YYhJpHWSizcb09nCNEXZ7w4HdFkyWDAio+qCy2WKBR4=", "iD9z+OtLGuZgw2vN5y4Xxg==:k4JhVghE+ubaE8yoi7ye9Eeb8Bz+X7JmhSLEsAnyFNU=:WK8IiJrBX66/tMzRgELWbDEGv0b4f4gKHUbJuWlaVK4=", "5t6UaJWUH/GEPHKHyxJPfg==:HKG/EL4lc1qfgHOB5sp5IOPUn7VyVb8zlMWWgZVIg1A=:crAZZzZ35HqEank1ZQseGYHG5mrDrRb+K3BR+axWbcU="};

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static final String[] f8639if = {"dmkL86/yAMgcCGyKKx26wg==:wWrUmascuVS5fm5TCNHBRakUqx+OzHfjZVDP5jJNUsg=:g5pIJ3j9cYD1L35Vm7QDwdGwCF2SoAIT/CVLjwkDqL4=", "uUii01DisXYxKcWFTmw0uw==:11uuJHca+WPSdIuAK3rwecphmblRKB5FSDC5KUnAvio=:rNPX3EjQkE8wOi9kyYxLPGPPUFgOAMGMtKqUvmvEzAY=", "btL2IYuy+WvJa95VnSow8A==:XFMUyU3WvMNNhEaR5mgWfZwhfv7FKM2W6Lk8gp9esCA=:5rHUnO+FashcXRT48xLvE3jvu4BM6Z9yPB5bPPgBVps=", "E5sH6P23ZJBRfj6LExye+g==:uYklKExcoOhnbe8+y+/cFKR+iIWfCJBtxFztKPISKzM=:LKd9+sp0F7XH1C7yIPANQIck2SY1PGQUAlvcZs1GF/c=", "PJOguorCqd5QxBntmaCwmw==:ONjzwuD0cQ6Gkax4RHbXoVEBYobNBEAjItINLKxek1k=:fpbfRzvBNYGYpFxo/NqHK3oBkMriIGA0ffphjHlerog=", "igEZiLiH+ezbE4RTakWAKw==:3C5c10BRS0Aiu5RI0UGdWJGxy09cv0Lmgo40JSRzCUY=:ox7zc2n5vBZaFYRAdeNwMxxvnPs9w3wKecu0rodEpDU=", "RkE79hPV7nU4UhPf0+svKg==:8JOBmII731NxZ1VQPO/9iz7ZxikKnv9JSktVlZkJVF8=:eJkWeNberQRqHap1VVzXKQLg5LCuBh+R6KTnavLkhBI=", "8/k8jaIPruSGOWFjD+zf6g==:sMQAuaIxyi3bgJt8v4wDlf6juO5+BIIYk4Y1UMcu/nc=:17FQxpCVK70puUewVXFAp17JGPseZINzoSDZMNFA21k=", "ZmCu5uYZ/ah3SxAk4+rzUw==:ADVlOrPXiuiPykKHYCGCHUcrI0xVVViHBcSBwme9SBE=:gnF4KHCcC+VkwCNnmHUWw1TAZQQvsrhFroCQkWPBoDM=", "PQQ7dscJ/WrzP34pOjT9vQ==:RiJ9zWEV1aai2OsoiBXKscDT0KMcNljHn7cKux6qHmc=:cK6pGlbRSJB/HzUdT3gC3WYmxJpJwTg+Lpjo9uFczZw=", "3pCs9I0deRGt8SMZKun/QA==:QpX9j/sinXulZwV7R+Up/0LocFqntNmF1F2Wcw5d0mA=:s5Tj+gUJYL7UqkRi7mm2Kcr1OCjbrOsfdLZTIq4LGAg=", "tMKAtepd5B3xPxnYLbXfDQ==:WgZynwEjgtOTnxrcubYmX3BcSXrNfSofetX0tdVbqXc=:5aPRgIWJocJr5I4ZWsy7dl489JnQduvtOBIEwUxHy5c="};

    /* renamed from: do, reason: not valid java name */
    public static boolean f8635do = false;

    /* renamed from: if, reason: not valid java name */
    public static boolean f8638if = false;

    /* renamed from: for, reason: not valid java name */
    public static boolean f8637for = false;

    /* renamed from: new, reason: not valid java name */
    public static boolean f8640new = false;

    /* renamed from: cn$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ String f8641break;

        /* renamed from: catch, reason: not valid java name */
        public final /* synthetic */ String f8642catch;

        /* renamed from: class, reason: not valid java name */
        public final /* synthetic */ String f8643class;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f8644do;

        public Cdo(Activity activity, String str, String str2, String str3) {
            this.f8644do = activity;
            this.f8641break = str;
            this.f8642catch = str2;
            this.f8643class = str3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str = this.f8641break;
            String str2 = this.f8642catch;
            String str3 = this.f8643class;
            MobileAnalyticsManager mobileAnalyticsManager = C4012y0.f16658do;
            if (mobileAnalyticsManager == null) {
                return;
            }
            try {
                DefaultEventClient defaultEventClient = mobileAnalyticsManager.f8800do;
                GooglePlayMonetizationEventBuilder googlePlayMonetizationEventBuilder = new GooglePlayMonetizationEventBuilder(defaultEventClient);
                ((MonetizationEventBuilder) googlePlayMonetizationEventBuilder).f8957do = str;
                googlePlayMonetizationEventBuilder.f8958for = str2;
                googlePlayMonetizationEventBuilder.f8960new = str3;
                ((MonetizationEventBuilder) googlePlayMonetizationEventBuilder).f8956do = Double.valueOf(1.0d);
                defaultEventClient.m5099case(googlePlayMonetizationEventBuilder.m5117do());
                Activity activity = this.f8644do;
                if (activity != null) {
                    C4012y0.m8695try(activity);
                }
                C4012y0.f16658do.f8800do.m5100else();
                if (C3772tx.m8330do() == null) {
                    return;
                }
                C3772tx.m8330do().putBoolean("aa_pm", true);
                C3772tx.m8330do().apply();
                C4012y0.m8691do();
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: cn$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: break, reason: not valid java name */
        public final /* synthetic */ String f8645break;

        /* renamed from: catch, reason: not valid java name */
        public final /* synthetic */ String f8646catch;

        /* renamed from: class, reason: not valid java name */
        public final /* synthetic */ String f8647class;

        public Cif(Activity activity, String str, String str2, String str3) {
            this.f8645break = str;
            this.f8646catch = str2;
            this.f8647class = str3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            String str = this.f8645break;
            String str2 = this.f8646catch;
            String str3 = this.f8647class;
            if (C4012y0.f16658do != null && !O4.m1610if().isEmpty()) {
                try {
                    DefaultEventClient defaultEventClient = C4012y0.f16658do.f8800do;
                    EventConstraintDecorator m5101for = defaultEventClient.m5101for("PurchaseABTest:" + str);
                    m5101for.mo5062else("ABTestName", O4.m1610if());
                    defaultEventClient.m5099case(m5101for.f8929do);
                    C4012y0.f16658do.f8800do.m5100else();
                } catch (Exception unused) {
                }
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putDouble("value", Double.valueOf(str3).doubleValue());
                bundle.putString("currency", "USD");
                bundle.putString("transaction_id", str2);
                C0583Wh.f4395do.m6073do("purchase", bundle);
            } catch (Exception unused2) {
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m4936break(String str, String str2, boolean z) {
        boolean z2;
        try {
            String[] strArr = f8636do;
            if (str.equals(VJ.m2557break(strArr[4]))) {
                m4949try(str, str2, m4937case(7));
                z2 = true;
            } else {
                z2 = false;
            }
            if (str.equals(VJ.m2557break(strArr[9]))) {
                m4949try(str, str2, m4937case(10));
                z2 = true;
            }
            String[] strArr2 = f8639if;
            if (str.equals(VJ.m2559catch(strArr2[0]))) {
                m4949try(str, str2, m4937case(11));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr2[1]))) {
                m4949try(str, str2, m4937case(12));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr2[2]))) {
                m4949try(str, str2, m4937case(13));
                z2 = true;
            }
            if (z2) {
                f8637for = true;
                int i = z ? 1 : 2;
                try {
                    if (C0420Ou.f2680do != null) {
                        new Thread(new RunnableC2829gn(i, str)).start();
                    }
                } catch (Exception e) {
                    C0766bi.m4854do().m4855for(e);
                }
            }
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String m4937case(int i) {
        return i == 3 ? "0.99" : i == 8 ? "1.49" : i == 4 ? "0.99" : (i == 5 || i == 6) ? "3.99" : i == 7 ? "2.49" : i == 10 ? "2.99" : (i == 11 || i == 12) ? "2.49" : i == 13 ? "2.99" : (i == 15 || i == 16) ? "3.99" : i == 17 ? "4.49" : (i == 18 || i == 19 || i == 20) ? "1.49" : (i == 21 || i == 22 || i == 23) ? "0.99" : "-1";
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m4938catch(int i) {
        String[] strArr = f8636do;
        if (i == 3) {
            return VJ.m2557break(strArr[2]);
        }
        if (i == 8) {
            return VJ.m2557break(strArr[3]);
        }
        if (i == 7) {
            return VJ.m2557break(strArr[4]);
        }
        if (i == 5) {
            return VJ.m2557break(strArr[5]);
        }
        if (i == 4) {
            return VJ.m2557break(strArr[7]);
        }
        if (i == 6) {
            return VJ.m2557break(strArr[8]);
        }
        if (i == 10) {
            return VJ.m2557break(strArr[9]);
        }
        String[] strArr2 = f8639if;
        return i == 11 ? VJ.m2559catch(strArr2[0]) : i == 12 ? VJ.m2559catch(strArr2[1]) : i == 13 ? VJ.m2559catch(strArr2[2]) : i == 15 ? VJ.m2559catch(strArr2[3]) : i == 16 ? VJ.m2559catch(strArr2[4]) : i == 17 ? VJ.m2559catch(strArr2[5]) : i == 18 ? VJ.m2559catch(strArr2[6]) : i == 19 ? VJ.m2559catch(strArr2[7]) : i == 20 ? VJ.m2559catch(strArr2[8]) : i == 21 ? VJ.m2559catch(strArr2[9]) : i == 22 ? VJ.m2559catch(strArr2[10]) : i == 23 ? VJ.m2559catch(strArr2[11]) : "-1";
    }

    /* renamed from: class, reason: not valid java name */
    public static void m4939class(String str, String str2, String str3, String str4, String str5) {
        C3717t0.Cif cif;
        if (C0420Ou.f2680do.getApplicationContext() != null) {
            C2957iz.Cdo cdo = new C2957iz.Cdo();
            String[] strArr = new String[7];
            Trace trace = VJ.f4080do;
            String str6 = null;
            try {
                cif = C3717t0.m8191for("|+qQ57GyG17s+hAQbtGyfMw==:xpgbNjRQ60pD266AgEDvyxHozrFhfde/rpDW28jZJnQ=");
            } catch (Exception unused) {
                cif = null;
            }
            try {
                str6 = C3717t0.m8190do(new C3717t0.Cdo("8YT1uPXwcuh4AdxdFMhSjw==:UaZQe42T4HljCZnqLgb+BSCidYJIEug9bDrV6YuKhEg=:i9d7DGdMd4mF9z3HvPbfeC1ZygOOZ1vEMTkaQEOmwoYSIdN5kkcedqyE7hl7PUY6"), cif);
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            if (str6 == null) {
                str6 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            strArr[0] = str6;
            strArr[1] = C3772tx.m8337if(C0420Ou.f2680do.getApplicationContext());
            strArr[2] = str;
            strArr[3] = str3;
            strArr[4] = str2;
            strArr[5] = str4;
            strArr[6] = str5;
            cdo.execute(strArr);
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static void m4940const(Activity activity, String str) {
        BillingDataSource billingDataSource = MainActivity.f12235do;
        if (billingDataSource != null) {
            Object obj = ((LiveData) billingDataSource.f12304if.get(str)).f7075if;
            if (obj == LiveData.f7066new) {
                obj = null;
            }
            C3967xE c3967xE = (C3967xE) obj;
            if (c3967xE != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(c3967xE);
                C3428o5 c3428o5 = billingDataSource.f12302do;
                boolean z = !arrayList.isEmpty();
                if (!z) {
                    throw new IllegalArgumentException("Details of the products must be provided.");
                }
                if (!z) {
                    Iterable$EL.forEach(null, new Consumer() { // from class: iR
                        @Override // java.util.function.Consumer
                        /* renamed from: accept */
                        public final void m(Object obj2) {
                            if (((C3722t5.Cdo) obj2) == null) {
                                throw new IllegalArgumentException("ProductDetailsParams cannot be null.");
                            }
                        }

                        @Override // java.util.function.Consumer
                        public final /* synthetic */ Consumer andThen(Consumer consumer) {
                            return Consumer$CC.$default$andThen(this, consumer);
                        }
                    });
                } else {
                    if (arrayList.contains(null)) {
                        throw new IllegalArgumentException("SKU cannot be null.");
                    }
                    if (arrayList.size() > 1) {
                        C3967xE c3967xE2 = (C3967xE) arrayList.get(0);
                        String m8624do = c3967xE2.m8624do();
                        int size = arrayList.size();
                        for (int i = 0; i < size; i++) {
                            C3967xE c3967xE3 = (C3967xE) arrayList.get(i);
                            if (!m8624do.equals("play_pass_subs") && !c3967xE3.m8624do().equals("play_pass_subs") && !m8624do.equals(c3967xE3.m8624do())) {
                                throw new IllegalArgumentException("SKUs should have the same type.");
                            }
                        }
                        String optString = c3967xE2.f16533do.optString("packageName");
                        int size2 = arrayList.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            C3967xE c3967xE4 = (C3967xE) arrayList.get(i2);
                            if (!m8624do.equals("play_pass_subs") && !c3967xE4.m8624do().equals("play_pass_subs") && !optString.equals(c3967xE4.f16533do.optString("packageName"))) {
                                throw new IllegalArgumentException("All SKUs must have the same package name.");
                            }
                        }
                    }
                }
                C3722t5 c3722t5 = new C3722t5();
                c3722t5.f15617do = z && !((C3967xE) arrayList.get(0)).f16533do.optString("packageName").isEmpty();
                c3722t5.f15614do = null;
                c3722t5.f15618if = null;
                boolean z2 = (TextUtils.isEmpty(null) && TextUtils.isEmpty(null)) ? false : true;
                boolean isEmpty = true ^ TextUtils.isEmpty(null);
                if (z2 && isEmpty) {
                    throw new IllegalArgumentException("Please provide Old SKU purchase information(token/id) or original external transaction id, not both.");
                }
                C3722t5.Cif cif = new C3722t5.Cif();
                cif.f15621do = null;
                cif.f15620do = 0;
                cif.f15622if = null;
                c3722t5.f15616do = cif;
                c3722t5.f15615do = new ArrayList(arrayList);
                c3722t5.f15619if = false;
                c3722t5.f15613do = zzco.zzl();
                if (c3428o5.mo6734case(activity, c3722t5).f9106do == 0) {
                    billingDataSource.f12298do.m1686this(Boolean.TRUE);
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m4941do(String str) {
        String[] strArr = f8636do;
        if (!str.equalsIgnoreCase(VJ.m2557break(strArr[7])) && !str.equalsIgnoreCase(VJ.m2557break(strArr[8])) && !str.equalsIgnoreCase(VJ.m2557break(strArr[5]))) {
            String[] strArr2 = f8639if;
            if (!str.equalsIgnoreCase(VJ.m2559catch(strArr2[3])) && !str.equalsIgnoreCase(VJ.m2559catch(strArr2[4])) && !str.equalsIgnoreCase(VJ.m2559catch(strArr2[5]))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m4942else(String str, String str2, boolean z) {
        boolean z2;
        try {
            String[] strArr = f8636do;
            int i = 1;
            if (str.equals(VJ.m2557break(strArr[5]))) {
                m4949try(str, str2, m4937case(5));
                z2 = true;
            } else {
                z2 = false;
            }
            if (str.equals(VJ.m2557break(strArr[7]))) {
                m4949try(str, str2, m4937case(4));
                z2 = true;
            }
            if (str.equals(VJ.m2557break(strArr[8]))) {
                m4949try(str, str2, m4937case(6));
                z2 = true;
            }
            String[] strArr2 = f8639if;
            if (str.equals(VJ.m2559catch(strArr2[3]))) {
                m4949try(str, str2, m4937case(15));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr2[4]))) {
                m4949try(str, str2, m4937case(16));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr2[5]))) {
                m4949try(str, str2, m4937case(17));
                z2 = true;
            }
            if (z2) {
                f8640new = true;
                int i2 = z ? 1 : 2;
                try {
                    if (C0420Ou.f2680do != null) {
                        new Thread(new RunnableC2653dn(i2, str)).start();
                    }
                } catch (Exception e) {
                    C0766bi.m4854do().m4855for(e);
                }
            }
            if (!f8640new && f8637for && f8638if && f8635do) {
                f8640new = true;
                if (!z) {
                    i = 2;
                }
                try {
                    if (C0420Ou.f2680do != null) {
                        new Thread(new RunnableC2653dn(i, "AOEB")).start();
                    }
                } catch (Exception e2) {
                    C0766bi.m4854do().m4855for(e2);
                }
            }
        } catch (Exception e3) {
            C0766bi.m4854do().m4855for(e3);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static void m4943final(String str, String str2) {
        try {
            if (C0583Wh.f4395do == null) {
                return;
            }
            try {
                Bundle bundle = new Bundle();
                bundle.putString("operation", str);
                bundle.putString("result", str2);
                C0583Wh.f4395do.m6073do("billing_event", bundle);
            } catch (Throwable unused) {
            }
        } catch (IllegalStateException e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static boolean m4944for(String str) {
        if (!str.equalsIgnoreCase(VJ.m2557break(f8636do[3]))) {
            String[] strArr = f8639if;
            if (!str.equalsIgnoreCase(VJ.m2559catch(strArr[6])) && !str.equalsIgnoreCase(VJ.m2559catch(strArr[7])) && !str.equalsIgnoreCase(VJ.m2559catch(strArr[8]))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m4945goto(String str, String str2, boolean z) {
        boolean z2;
        try {
            if (str.equals(VJ.m2557break(f8636do[2]))) {
                m4949try(str, str2, m4937case(3));
                z2 = true;
            } else {
                z2 = false;
            }
            String[] strArr = f8639if;
            if (str.equals(VJ.m2559catch(strArr[9]))) {
                m4949try(str, str2, m4937case(21));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr[10]))) {
                m4949try(str, str2, m4937case(22));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr[11]))) {
                m4949try(str, str2, m4937case(23));
                z2 = true;
            }
            if (z2) {
                f8635do = true;
                int i = z ? 1 : 2;
                try {
                    if (C0420Ou.f2680do != null) {
                        new Thread(new RunnableC2711en(i, str)).start();
                    }
                } catch (Exception e) {
                    C0766bi.m4854do().m4855for(e);
                }
            }
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static boolean m4946if(String str) {
        if (!str.equalsIgnoreCase(VJ.m2557break(f8636do[2]))) {
            String[] strArr = f8639if;
            if (!str.equalsIgnoreCase(VJ.m2559catch(strArr[9])) && !str.equalsIgnoreCase(VJ.m2559catch(strArr[10])) && !str.equalsIgnoreCase(VJ.m2559catch(strArr[11]))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m4947new(String str) {
        String[] strArr = f8636do;
        if (str.equalsIgnoreCase(VJ.m2557break(strArr[9])) || str.equalsIgnoreCase(VJ.m2557break(strArr[4]))) {
            return true;
        }
        String[] strArr2 = f8639if;
        return str.equalsIgnoreCase(VJ.m2559catch(strArr2[0])) || str.equalsIgnoreCase(VJ.m2559catch(strArr2[1])) || str.equalsIgnoreCase(VJ.m2559catch(strArr2[2]));
    }

    /* renamed from: this, reason: not valid java name */
    public static void m4948this(String str, String str2, boolean z) {
        boolean z2;
        try {
            if (str.equals(VJ.m2557break(f8636do[3]))) {
                m4949try(str, str2, m4937case(8));
                z2 = true;
            } else {
                z2 = false;
            }
            String[] strArr = f8639if;
            if (str.equals(VJ.m2559catch(strArr[6]))) {
                m4949try(str, str2, m4937case(18));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr[7]))) {
                m4949try(str, str2, m4937case(19));
                z2 = true;
            }
            if (str.equals(VJ.m2559catch(strArr[8]))) {
                m4949try(str, str2, m4937case(20));
                z2 = true;
            }
            if (z2) {
                f8638if = true;
                int i = z ? 1 : 2;
                try {
                    if (C0420Ou.f2680do != null) {
                        new Thread(new RunnableC2770fn(i, str)).start();
                    }
                } catch (Exception e) {
                    C0766bi.m4854do().m4855for(e);
                }
            }
        } catch (Exception e2) {
            C0766bi.m4854do().m4855for(e2);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m4949try(String str, String str2, String str3) {
        boolean z;
        C3717t0.Cif cif;
        AppCompatActivity appCompatActivity = C0420Ou.f2680do;
        if (appCompatActivity != null) {
            try {
                new Cdo(appCompatActivity, str, str3, str2).run();
            } catch (IllegalStateException e) {
                try {
                    C0766bi.m4854do().m4855for(e);
                } catch (Throwable unused) {
                }
            }
        }
        boolean z2 = false;
        if (str2 != null) {
            String str4 = null;
            try {
                cif = C3717t0.m8191for(" tut/YzDSRPb50kPx3d/JrQ==:UaIu0ZBZpL5xFeyNadBET0h878OiMWvGlbBKC25Ypvc=");
            } catch (Exception unused2) {
                cif = null;
            }
            try {
                str4 = C3717t0.m8190do(new C3717t0.Cdo("vAxEcnMHIp2vqOFZmao/Kg==:ZP3IzaZpFpf8Cqtnu86SrrXmJa8vMg0S/82OtXYxfzo=:o4zONuO+n490LSPCu2ASSg=="), cif);
            } catch (Exception unused3) {
            }
            if (str4 == null) {
                str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (str2.contains(str4)) {
                z = true;
                if (z || appCompatActivity == null) {
                }
                if (AG.m64if(appCompatActivity.getApplicationContext()) != 4919 && !AG.m63for()) {
                    if (!((appCompatActivity.getApplicationContext().getApplicationInfo().flags & 2) != 0) && !AG.m62do(appCompatActivity)) {
                        z2 = true;
                    }
                }
                if (z2) {
                    try {
                        new Cif(appCompatActivity, str, str2, str3).run();
                        return;
                    } catch (IllegalStateException e2) {
                        try {
                            C0766bi.m4854do().m4855for(e2);
                            return;
                        } catch (Throwable unused4) {
                            return;
                        }
                    }
                }
                return;
            }
        }
        z = false;
        if (z) {
        }
    }
}
