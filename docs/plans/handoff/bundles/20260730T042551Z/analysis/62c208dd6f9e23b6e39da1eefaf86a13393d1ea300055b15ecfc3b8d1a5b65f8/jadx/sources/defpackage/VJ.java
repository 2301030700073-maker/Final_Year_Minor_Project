package defpackage;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.graphics.BlurMaskFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.cardview.widget.CardView;
import androidx.fragment.app.FragmentActivity;
import androidx.viewpager.widget.ViewPager;
import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.api.Api;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.Snackbar;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.session.gauges.GaugeManager;
import com.joeykrim.rootcheck.MainActivity;
import com.joeykrim.rootcheck.R;
import com.joeykrim.rootcheck.Settings;
import com.joeykrim.rootcheck.Views.ProgressWheelv2;
import com.joeykrim.rootcheck.gpiab.BillingDataSource;
import defpackage.C0420Ou;
import defpackage.C3717t0;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.LinkedList;
import java.util.Random;

/* loaded from: classes3.dex */
public final class VJ {

    /* renamed from: do, reason: not valid java name */
    public static Snackbar f4079do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Trace f4080do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final LinkedList f4081do = new LinkedList();

    /* renamed from: VJ$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo(Activity activity) {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C3210kN.m7248do("VR-learnMoreInRB");
            C0420Ou.Cfor cfor = C0420Ou.f2679do;
            if (cfor != null && C0420Ou.f2682do != null) {
                try {
                    int m1702switch = cfor.m1702switch("ROOT BASICS");
                    if (m1702switch != -1) {
                        C0420Ou.f2682do.m4694private(m1702switch, true);
                    }
                } catch (Exception unused) {
                }
            }
            if (view == null) {
                C0766bi.m4854do().m4855for(new IllegalStateException("Verify Root promo click listener invoked with null view"));
            } else {
                view.setVisibility(8);
            }
        }
    }

    /* renamed from: VJ$if, reason: invalid class name */
    public class Cif extends Snackbar.Cdo {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Activity f4082do;

        public Cif(Activity activity) {
            this.f4082do = activity;
        }

        @Override // com.google.android.material.snackbar.BaseTransientBottomBar.Cnew
        /* renamed from: do, reason: not valid java name */
        public final void mo2595do(Object obj) {
            LinkedList linkedList = VJ.f4081do;
            if (linkedList.size() > 0) {
                VJ.m2574instanceof(this.f4082do, (String) linkedList.poll());
            }
        }
    }

    public static int a(Activity activity) {
        if (activity == null) {
            return -1;
        }
        return C3772tx.m8345static() ? activity.getResources().getColor(R.color.colorPrimaryInverse) : activity.getResources().getColor(R.color.colorPrimary);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static String m2556abstract(String str) {
        C3717t0.Cif cif;
        C3717t0.Cdo cdo = null;
        try {
            cif = C3717t0.m8191for("YbWy0oxWstPoaVcDKtQ9gA==:4Xw8rnFhOF32iIDTuDHCNMfn5a6RsDr00v8WqdJ6Upo=");
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
            cif = null;
        }
        if (cif != null) {
            try {
                cdo = C3717t0.m8192if(str, cif, "*j2QO92UdBtciln%".getBytes());
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            } catch (GeneralSecurityException e3) {
                e3.printStackTrace();
            }
        }
        return cdo.toString();
    }

    public static int b(Activity activity) {
        if (activity == null) {
            return -1;
        }
        return C3772tx.m8345static() ? activity.getResources().getColor(R.color.windowBackgroundDark) : activity.getResources().getColor(R.color.windowBackground);
    }

    /* renamed from: break, reason: not valid java name */
    public static String m2557break(String str) {
        C3717t0.Cif cif;
        String str2 = null;
        try {
            cif = C3717t0.m8191for("|JHb9fu3GfZ2jYY7RXpcDJA==:uWJ9X0ENnCLKmiKssXnw3RRL5FJJDAhln81L+ZGlAY0=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str2 = C3717t0.m8190do(new C3717t0.Cdo(str), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str2 != null ? str2 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public static void c(Activity activity) {
        try {
            C3443oK m7703new = C3443oK.m7703new(activity);
            ProgressWheelv2 progressWheelv2 = m7703new != null ? m7703new.f14737do : null;
            if (progressWheelv2 != null) {
                if (!progressWheelv2.f12276new) {
                    progressWheelv2.f12271if = SystemClock.uptimeMillis();
                    progressWheelv2.f12276new = true;
                    progressWheelv2.invalidate();
                } else {
                    progressWheelv2.f12276new = false;
                    progressWheelv2.f12266for = 0.0f;
                    progressWheelv2.f12274new = 0.0f;
                    progressWheelv2.invalidate();
                }
            }
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String m2558case(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA-256").digest(str.getBytes("UTF-8"));
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    stringBuffer.append('0');
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m2559catch(String str) {
        C3717t0.Cif cif;
        String str2 = null;
        try {
            cif = C3717t0.m8191for("|Y6gmZ1exrOt0bsb7p75Ajg==:Fc6SkqX9Ny0vZSL8jXeBPfoiP9atbJWYXmSUWrLMn7I=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str2 = C3717t0.m8190do(new C3717t0.Cdo(str), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str2 != null ? str2 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: class, reason: not valid java name */
    public static String m2560class() {
        C3717t0.Cif cif;
        String str = null;
        try {
            cif = C3717t0.m8191for("|Iyq7eURSbZhJFobBj4ylSA==:jqYFG9ZMLN/6inpplLPfbrOl92+11zgvJmEz4mcK9y4=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str = C3717t0.m8190do(new C3717t0.Cdo("3btPozviQP1DlJul8Bz6lQ==:vrASUD/CrjdLQ/ssPSwCK4rPJNhzv8VU0R8q0YXqSDM=:S9qUd7vkQ5VA3h+dWLRtFUdA8aB4K8AZJs0a3j2Ust9vdqbABHwxx2dld7Bbn0Tj"), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str != null ? str : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: const, reason: not valid java name */
    public static String m2561const(String str, String str2) {
        C3717t0.Cif cif;
        String str3 = null;
        try {
            cif = C3717t0.m8191for(str);
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str3 = C3717t0.m8190do(new C3717t0.Cdo(str2), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str3 != null ? str3 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: continue, reason: not valid java name */
    public static String m2562continue(String str) {
        C3717t0.Cif cif;
        C3717t0.Cdo cdo = null;
        try {
            cif = C3717t0.m8191for("tq011yxjjjuXgQOg4F30XA==:A86d/3dVF+1ConBoJiznnc8TwW1EEvVRuQ50c7q+M3U=");
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
            cif = null;
        }
        if (cif != null) {
            try {
                cdo = C3717t0.m8192if(str, cif, "*%j9gyoo8n7f9jtg".getBytes());
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            } catch (GeneralSecurityException e3) {
                e3.printStackTrace();
            }
        }
        return cdo.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x013c, code lost:
    
        if (m2586switch(r0) != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x003b, code lost:
    
        if (m2586switch(r0) != false) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0141, code lost:
    
        r0 = "https://play.google.com/store/apps/details?id=com.joeykrim.rootcheckp&referrer=utm_source%3Drootcheckb%26utm_content%3Drb-iap-bundlev1%26utm_medium%3Drb-iap-bundlev1";
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x013e, code lost:
    
        r0 = "http://www.amazon.com/gp/mas/dl/android?p=com.joeykrim.rootcheckp&referrer=utm_source%3Drootcheckb%26utm_content%3Drb-iap-bundlev1";
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (m2586switch(r0) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x00f4, code lost:
    
        r0 = "https://play.google.com/store/apps/details?id=com.joeykrim.rootcheckp&referrer=utm_source%3Drootcheckb%26utm_content%3Dvr-iap-bundlev1%26utm_medium%3Dvr-iap-bundlev1";
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00ee, code lost:
    
        if (m2586switch(r0) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x00f0, code lost:
    
        r0 = "http://www.amazon.com/gp/mas/dl/android?p=com.joeykrim.rootcheckp&referrer=utm_source%3Drootcheckb%26utm_content%3Dvr-iap-bundlev1";
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.Intent d(android.app.Activity r0, int r1, java.lang.String r2) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.VJ.d(android.app.Activity, int, java.lang.String):android.content.Intent");
    }

    /* renamed from: default, reason: not valid java name */
    public static void m2563default(Activity activity) {
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("twitter://user?screen_name=joeykrim")));
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            if (activity != null) {
                m2574instanceof(activity, activity.getString(R.string.notFoundTwitter));
            }
            m2590throws(activity, "https://twitter.com/joeykrim");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static String m2564do(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = O4.f2536do;
        int i = ((length + 2) / 3) * 4;
        int i2 = (i / Api.BaseClientBuilder.API_PRIORITY_OTHER) + i;
        byte[] bArr2 = new byte[i2];
        int i3 = length - 2;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i3) {
            int i7 = ((bytes[i4 + 0] << 24) >>> 8) | ((bytes[(i4 + 1) + 0] << 24) >>> 16) | ((bytes[(i4 + 2) + 0] << 24) >>> 24);
            bArr2[i5] = bArr[i7 >>> 18];
            int i8 = i5 + 1;
            bArr2[i8] = bArr[(i7 >>> 12) & 63];
            bArr2[i5 + 2] = bArr[(i7 >>> 6) & 63];
            bArr2[i5 + 3] = bArr[i7 & 63];
            i6 += 4;
            if (i6 == Integer.MAX_VALUE) {
                bArr2[i5 + 4] = 10;
                i5 = i8;
                i6 = 0;
            }
            i4 += 3;
            i5 += 4;
        }
        if (i4 < length) {
            int i9 = i4 + 0;
            int i10 = length - i4;
            int i11 = (i10 > 2 ? (bytes[i9 + 2] << 24) >>> 24 : 0) | (i10 > 0 ? (bytes[i9] << 24) >>> 8 : 0) | (i10 > 1 ? (bytes[i9 + 1] << 24) >>> 16 : 0);
            if (i10 == 1) {
                bArr2[i5] = bArr[i11 >>> 18];
                bArr2[i5 + 1] = bArr[(i11 >>> 12) & 63];
                bArr2[i5 + 2] = 61;
                bArr2[i5 + 3] = 61;
            } else if (i10 == 2) {
                bArr2[i5] = bArr[i11 >>> 18];
                bArr2[i5 + 1] = bArr[(i11 >>> 12) & 63];
                bArr2[i5 + 2] = bArr[(i11 >>> 6) & 63];
                bArr2[i5 + 3] = 61;
            } else if (i10 == 3) {
                bArr2[i5] = bArr[i11 >>> 18];
                bArr2[i5 + 1] = bArr[(i11 >>> 12) & 63];
                bArr2[i5 + 2] = bArr[(i11 >>> 6) & 63];
                bArr2[i5 + 3] = bArr[i11 & 63];
            }
            if (i6 + 4 == Integer.MAX_VALUE) {
                bArr2[i5 + 4] = 10;
            }
        }
        return new String(bArr2, 0, i2);
    }

    public static boolean e() {
        return (C3772tx.m8343public() != null ? C3772tx.m8343public().getLong("whats_new_last_version", 0L) : 0L) < MainActivity.f12234do;
    }

    /* renamed from: else, reason: not valid java name */
    public static long m2565else(long j) {
        long j2 = 0;
        if (j == 0) {
            return -1L;
        }
        try {
            Calendar m2576native = m2576native(new Date(j));
            Calendar m2576native2 = m2576native(new Date());
            while (m2576native.before(m2576native2)) {
                m2576native.add(5, 1);
                j2++;
            }
            return j2;
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m2566extends(Activity activity, int i, String str, int i2) {
        if (activity == null) {
            return;
        }
        try {
            C3210kN.m7245catch(i2);
            C3210kN.m7248do(str);
            C3210kN.m7251goto(activity, str);
        } catch (Exception unused) {
        }
        if (!BillingDataSource.f12296do) {
            try {
                activity.startActivity(d(activity, i, str));
                return;
            } catch (Exception unused2) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
                return;
            }
        }
        try {
            C0830cn.m4940const(activity, C0830cn.m4938catch(i2));
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            try {
                activity.startActivity(d(activity, i, str));
            } catch (Exception unused3) {
                Toast.makeText(C0420Ou.f2680do, "Could not load link - Android can't find a web browser", 1).show();
            }
        }
    }

    public static void f(FragmentActivity fragmentActivity) {
        Resources resources;
        int i;
        if (fragmentActivity == null) {
            return;
        }
        C3443oK m7703new = C3443oK.m7703new(fragmentActivity);
        TextView textView = m7703new != null ? m7703new.f14734do : null;
        ImageView imageView = m7703new != null ? m7703new.f14733do : null;
        MainActivity.f12236else = true;
        MainActivity.f12242try = 0;
        MainActivity.f12231break = false;
        String str = Build.PRODUCT;
        C3210kN.m7248do("VR-VRCard");
        C3875vi.m8479do().getClass();
        Trace trace = new Trace("verify_root_trace", AI.f54do, new QJ(17), C3366n2.m7530do(), GaugeManager.getInstance());
        f4080do = trace;
        trace.start();
        if (textView != null) {
            if (C3772tx.m8345static()) {
                resources = fragmentActivity.getResources();
                i = R.color.textColorPrimary;
            } else {
                resources = fragmentActivity.getResources();
                i = R.color.textColorPrimaryInverse;
            }
            textView.setTextColor(resources.getColor(i));
        }
        if (imageView != null) {
            imageView.setImageDrawable(fragmentActivity.getResources().getDrawable(R.drawable.root_status_gray));
        }
        AsyncTaskC3619rK asyncTaskC3619rK = new AsyncTaskC3619rK(fragmentActivity);
        C0420Ou.f2685do = asyncTaskC3619rK;
        asyncTaskC3619rK.execute(new Void[0]);
    }

    /* renamed from: final, reason: not valid java name */
    public static void m2567final(Activity activity, String str) {
        ViewPager viewPager;
        AppCompatActivity appCompatActivity;
        if (activity != null) {
            try {
                Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag(str);
                if (findFragmentByTag != null) {
                    ((DialogFragment) findFragmentByTag).dismissAllowingStateLoss();
                    if (!Settings.f12246do || (appCompatActivity = C0420Ou.f2680do) == null) {
                        AppCompatActivity appCompatActivity2 = C0420Ou.f2680do;
                        if (appCompatActivity2 != null && (viewPager = C0420Ou.f2682do) != null) {
                            C3210kN.m7249else(appCompatActivity2, viewPager.f8038new);
                        }
                    } else {
                        C3210kN.m7251goto(appCompatActivity, "SETTINGS");
                    }
                }
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static String m2568finally(String str) {
        C3717t0.Cif cif;
        if (!str.isEmpty()) {
            String str2 = null;
            try {
                cif = C3717t0.m8191for("|vmlvlwP1yl4iOMe4AKPGSg==:XKjfnwABT+BwPBePG6OWhkw1N3OzFGbDSfQZmpFQGzU=");
            } catch (Exception unused) {
                cif = null;
            }
            try {
                str2 = C3717t0.m8190do(new C3717t0.Cdo(str), cif);
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
            }
            if (str2 != null) {
                return str2;
            }
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: for, reason: not valid java name */
    public static String m2569for(String str) {
        if (str == null) {
            return str;
        }
        try {
            if (str.length() == 0) {
                return str;
            }
            int length = str.length();
            StringBuffer stringBuffer = new StringBuffer(length);
            boolean z = true;
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (Character.isWhitespace(charAt)) {
                    stringBuffer.append(charAt);
                    z = true;
                } else if (z) {
                    stringBuffer.append(Character.toTitleCase(charAt));
                    z = false;
                } else {
                    stringBuffer.append(charAt);
                }
            }
            return stringBuffer.toString();
        } catch (Exception unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m2570goto(String str) {
        C3717t0.Cif cif;
        String str2 = null;
        try {
            cif = C3717t0.m8191for("|yVrX8yGDLocY8hre74n3/g==:hRKUyI7RATXHhhSaid6MUHs+MUSz3X4KMWAYED8dcIg=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str2 = C3717t0.m8190do(new C3717t0.Cdo(str), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str2 != null ? str2 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m2571if(Context context, TextView textView) {
        if (textView != null) {
            textView.setLayerType(1, null);
            textView.getPaint().setMaskFilter(new BlurMaskFilter(m2592try(8.0f, context), BlurMaskFilter.Blur.NORMAL));
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public static void m2572implements(FragmentActivity fragmentActivity, int i) {
        if (fragmentActivity == null) {
            return;
        }
        try {
            DialogFragmentC2735fA dialogFragmentC2735fA = new DialogFragmentC2735fA();
            dialogFragmentC2735fA.setCancelable(true);
            Bundle bundle = new Bundle();
            try {
                bundle.putInt("ComboAdUnitID", i);
            } catch (Exception unused) {
            }
            dialogFragmentC2735fA.setArguments(bundle);
            if (!fragmentActivity.isFinishing()) {
                dialogFragmentC2735fA.show(fragmentActivity.getFragmentManager(), "RewardedAdUpgradeDialog");
            }
            C3210kN.m7251goto(fragmentActivity, "RewardedAdUpgradeDialog");
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public static String m2573import() {
        try {
            String str = Build.MANUFACTURER;
            if (str == null) {
                return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            }
            if (str.length() <= 1 || !str.substring(0, 1).equals(str.substring(0, 1).toLowerCase())) {
                return str;
            }
            return str.substring(0, 1).toUpperCase() + str.substring(1);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static void m2574instanceof(Activity activity, String str) {
        ArrayList arrayList;
        if (activity == null) {
            return;
        }
        try {
            LinkedList linkedList = f4081do;
            linkedList.offer(str);
            Snackbar snackbar = f4079do;
            if (snackbar == null || !snackbar.m5921for()) {
                Snackbar m5928this = Snackbar.m5928this(activity.findViewById(R.id.mainCoordinatorLayout), (CharSequence) linkedList.poll());
                f4079do = m5928this;
                TextView textView = (TextView) ((BaseTransientBottomBar) m5928this).f11464do.findViewById(R.id.snackbar_text);
                if (textView != null) {
                    textView.setSingleLine(false);
                }
                f4079do.m5929break();
            }
            if (!f4079do.m5921for() || linkedList.size() <= 0) {
                return;
            }
            Snackbar snackbar2 = f4079do;
            Cif cif = new Cif(activity);
            Snackbar.Cdo cdo = snackbar2.f11494do;
            if (cdo != null && (arrayList = ((BaseTransientBottomBar) snackbar2).f11467do) != null) {
                arrayList.remove(cdo);
            }
            if (((BaseTransientBottomBar) snackbar2).f11467do == null) {
                ((BaseTransientBottomBar) snackbar2).f11467do = new ArrayList();
            }
            ((BaseTransientBottomBar) snackbar2).f11467do.add(cif);
            snackbar2.f11494do = cif;
        } catch (Exception unused) {
        }
    }

    @TargetApi(21)
    /* renamed from: interface, reason: not valid java name */
    public static void m2575interface(Activity activity) {
        try {
            if (m2583static() >= 21) {
                Window window = activity.getWindow();
                window.addFlags(Integer.MIN_VALUE);
                if (C3772tx.m8345static()) {
                    window.setStatusBarColor(C0466Ra.getColor(activity.getApplicationContext(), R.color.colorPrimaryDarkInverse));
                } else {
                    window.setStatusBarColor(C0466Ra.getColor(activity.getApplicationContext(), R.color.colorPrimaryDark));
                }
            }
        } catch (Exception unused) {
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static Calendar m2576native(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return calendar;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m2577new(Activity activity) {
        C3443oK m7703new = C3443oK.m7703new(activity);
        ProgressWheelv2 progressWheelv2 = m7703new != null ? m7703new.f14737do : null;
        if (activity == null || progressWheelv2 == null) {
            return;
        }
        progressWheelv2.f12267for = (int) m2592try(88.0f, activity.getApplicationContext());
        if (!progressWheelv2.f12276new) {
            progressWheelv2.invalidate();
        }
        progressWheelv2.f12275new = (int) m2592try(3.0f, activity.getApplicationContext());
        if (!progressWheelv2.f12276new) {
            progressWheelv2.invalidate();
        }
        progressWheelv2.f12258case = -13854764;
        progressWheelv2.m6387if();
        if (!progressWheelv2.f12276new) {
            progressWheelv2.invalidate();
        }
        progressWheelv2.onSizeChanged(progressWheelv2.getWidth(), progressWheelv2.getHeight(), 0, 0);
    }

    /* renamed from: package, reason: not valid java name */
    public static String m2578package(String str) {
        C3717t0.Cif cif;
        if (str == null || str.isEmpty()) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String str2 = null;
        try {
            cif = C3717t0.m8191for("tq011yxjjjuXgQOg4F30XA==:A86d/3dVF+1ConBoJiznnc8TwW1EEvVRuQ50c7q+M3U=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str2 = C3717t0.m8190do(new C3717t0.Cdo(str), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str2 != null ? str2 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: private, reason: not valid java name */
    public static String m2579private(String str) {
        C3717t0.Cif cif;
        C3717t0.Cdo cdo = null;
        try {
            cif = C3717t0.m8191for("|4nP4GEAYTM9sVxewvPfDpg==:s9rME3x2Z2bQ+DiRPZIX7RN+QH7bSnbTAPW9Pes07CQ=");
        } catch (GeneralSecurityException e) {
            e.printStackTrace();
            cif = null;
        }
        if (cif != null) {
            try {
                cdo = C3717t0.m8192if(str, cif, "38sk6NP]#wnc0skD".getBytes());
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            } catch (GeneralSecurityException e3) {
                e3.printStackTrace();
            }
        }
        return cdo.toString();
    }

    /* renamed from: protected, reason: not valid java name */
    public static void m2580protected(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            packageInfo = null;
        }
        if (packageInfo != null) {
            MainActivity.f12230break = packageInfo.versionName;
            MainActivity.f12234do = packageInfo.versionCode;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static String m2581public() {
        String str;
        String str2 = Build.MANUFACTURER;
        if (str2 == null || (str = Build.MODEL) == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (str.toLowerCase().contains(str2.toLowerCase())) {
            return str;
        }
        if (!str2.equals(str2.toLowerCase())) {
            return Creturn.m7982new(str2, " ", str);
        }
        return m2569for(str2) + " " + str;
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m2582return(Context context) {
        return C3772tx.m8324case(context) != 0 && context.getSharedPreferences("PrefFile", 0).getBoolean("whyRootedResultsAvailableFLDOS", false);
    }

    /* renamed from: static, reason: not valid java name */
    public static int m2583static() {
        try {
            String str = Build.VERSION.RELEASE;
            if (str == null || !str.startsWith("1.5")) {
                return Build.VERSION.SDK_INT;
            }
            return 3;
        } catch (NoSuchMethodError e) {
            C0766bi.m4854do().m4855for(e);
            return 3;
        } catch (VerifyError e2) {
            C0766bi.m4854do().m4855for(e2);
            return 3;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static Bundle m2584strictfp(String str) {
        try {
            Bundle bundle = new Bundle();
            bundle.putString("rateDialogTrigger", str);
            return bundle;
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static void m2585super(Activity activity) {
        String str;
        String str2;
        String str3;
        if (MainActivity.f12238goto && MainActivity.f12241this) {
            if (!((C3772tx.m8343public() == null || C3772tx.m8343public().getString("survey_why_rooted_reason_displayed", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).isEmpty() || ((str3 = Build.MODEL) == null ? !"Displayed".equalsIgnoreCase(C3772tx.m8343public().getString("survey_why_rooted_reason_displayed", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) : !str3.equalsIgnoreCase(C3772tx.m8343public().getString("survey_why_rooted_reason_displayed", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)))) ? false : true)) {
                ArrayList<Integer> arrayList = DialogFragmentC2741fG.f12868do;
                if (1 == new Random().nextInt(10) + 1) {
                    int i = C3443oK.f14726for;
                    if (activity instanceof FragmentActivity) {
                        FragmentActivity fragmentActivity = (FragmentActivity) activity;
                        if (fragmentActivity != null) {
                            try {
                                DialogFragmentC2741fG dialogFragmentC2741fG = new DialogFragmentC2741fG();
                                if (!fragmentActivity.isFinishing()) {
                                    dialogFragmentC2741fG.show(fragmentActivity.getFragmentManager(), "SWRDialog");
                                }
                                C3210kN.m7251goto(fragmentActivity, "SWRDialog");
                            } catch (Exception e) {
                                C0766bi.m4854do().m4855for(e);
                            }
                        }
                        String str4 = Build.MODEL;
                        str = str4 != null ? str4 : "Displayed";
                        if (C3772tx.m8330do() == null) {
                            return;
                        }
                        C3772tx.m8330do().putString("survey_why_rooted_reason_displayed", str).apply();
                        return;
                    }
                    return;
                }
            }
            if ((C3772tx.m8343public() == null || C3772tx.m8343public().getString("survey_root_install_method_displayed", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).isEmpty() || ((str2 = Build.MODEL) == null ? !"Displayed".equalsIgnoreCase(C3772tx.m8343public().getString("survey_root_install_method_displayed", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) : !str2.equalsIgnoreCase(C3772tx.m8343public().getString("survey_root_install_method_displayed", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)))) ? false : true) {
                return;
            }
            ArrayList<Integer> arrayList2 = DialogFragmentC2682eG.f12634do;
            if (4 == new Random().nextInt(10) + 1) {
                int i2 = C3443oK.f14726for;
                if (activity instanceof FragmentActivity) {
                    FragmentActivity fragmentActivity2 = (FragmentActivity) activity;
                    if (fragmentActivity2 != null) {
                        try {
                            DialogFragmentC2682eG dialogFragmentC2682eG = new DialogFragmentC2682eG();
                            if (!fragmentActivity2.isFinishing()) {
                                dialogFragmentC2682eG.show(fragmentActivity2.getFragmentManager(), "SRIMDialog");
                            }
                            C3210kN.m7251goto(fragmentActivity2, "SRIMDialog");
                        } catch (Exception e2) {
                            C0766bi.m4854do().m4855for(e2);
                        }
                    }
                    String str5 = Build.MODEL;
                    str = str5 != null ? str5 : "Displayed";
                    if (C3772tx.m8330do() == null) {
                        return;
                    }
                    C3772tx.m8330do().putString("survey_root_install_method_displayed", str).apply();
                }
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m2586switch(Activity activity) {
        boolean z;
        if (activity == null) {
            return false;
        }
        try {
            activity.getPackageManager().getInstallerPackageName("com.android.vending");
            z = true;
        } catch (Exception unused) {
            z = false;
        }
        if (z) {
            return false;
        }
        try {
            activity.getPackageManager().getInstallerPackageName("com.amazon.venezia");
            return true;
        } catch (Exception unused2) {
            return false;
        }
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static void m2587synchronized(Activity activity) {
        if (activity == null) {
            return;
        }
        try {
            if (e() && C3772tx.m8330do() != null) {
                C3772tx.m8330do().putLong("whats_new_last_version", MainActivity.f12234do);
                C3772tx.m8330do().apply();
            }
            DialogFragmentC2630dM dialogFragmentC2630dM = new DialogFragmentC2630dM();
            if (!activity.isFinishing()) {
                dialogFragmentC2630dM.show(activity.getFragmentManager(), "WhatsNewDialog");
            }
            C3210kN.m7251goto(activity, "WhatsNewDialog");
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static String m2588this(String str) {
        C3717t0.Cif cif;
        String str2 = null;
        try {
            cif = C3717t0.m8191for("|eEroFAFvuBu64fpGdhcz3Q==:mMm4p28LXalKnuwtL/GXzuK7x30M5XkCozItfwkCEm0=");
        } catch (Exception unused) {
            cif = null;
        }
        try {
            str2 = C3717t0.m8190do(new C3717t0.Cdo(str), cif);
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
        return str2 != null ? str2 : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m2589throw(Activity activity) {
        C3443oK m7703new = C3443oK.m7703new(activity);
        CardView cardView = m7703new != null ? m7703new.f14744if : null;
        CardView cardView2 = m7703new != null ? m7703new.f14735do : null;
        TextView textView = m7703new != null ? m7703new.f14745new : null;
        if (C3772tx.m8353while() == 1 && !MainActivity.f12241this && cardView != null && C0420Ou.f2679do != null && C0420Ou.f2682do != null) {
            cardView.setOnClickListener(new Cdo(activity));
            cardView.setVisibility(0);
        } else if (cardView != null) {
            cardView.setOnClickListener(null);
            cardView.setVisibility(8);
        }
        if (cardView2 != null && textView != null) {
            if (MainActivity.f12231break && MainActivity.f12232case < 3) {
                cardView2.setClickable(true);
                textView.setVisibility(0);
            } else if (!MainActivity.f12231break) {
                cardView2.setClickable(false);
                textView.setVisibility(8);
            }
        }
        if (MainActivity.f12238goto) {
            Context applicationContext = activity.getApplicationContext();
            C3443oK m7703new2 = C3443oK.m7703new(activity);
            if (m7703new2 != null) {
                m7703new2.m7705case(applicationContext);
            }
        }
        m2585super(activity);
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m2590throws(Activity activity, String str) {
        try {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            if (activity != null) {
                m2574instanceof(activity, activity.getString(R.string.notFoundBrowser));
            }
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static void m2591transient(Activity activity, Bundle bundle) {
        if (activity == null) {
            return;
        }
        try {
            Ny ny = new Ny();
            if (bundle != null) {
                ny.setArguments(bundle);
            }
            if (!activity.isFinishing()) {
                ny.show(activity.getFragmentManager(), "RateDialog");
            }
            C3210kN.m7251goto(activity, "RateDialog");
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static float m2592try(float f, Context context) {
        return (context.getResources().getDisplayMetrics().densityDpi / 160.0f) * f;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static float m2593volatile(float f, int i, int i2) {
        try {
            return new BigDecimal(Float.toString(f)).setScale(i, i2).floatValue();
        } catch (ArithmeticException | ArrayIndexOutOfBoundsException | NullPointerException | NumberFormatException unused) {
            return 0.0f;
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m2594while() {
        return C3772tx.m8339native() >= 6 && C3772tx.m8338import() >= 6 && C3772tx.m8333final() == 0;
    }
}
