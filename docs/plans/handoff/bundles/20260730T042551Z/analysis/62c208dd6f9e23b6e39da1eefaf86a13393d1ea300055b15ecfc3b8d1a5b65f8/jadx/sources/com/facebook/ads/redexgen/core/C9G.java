package com.facebook.ads.redexgen.core;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.9G, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class C9G {
    public static String A00;
    public static byte[] A01;
    public static String[] A02 = {"qZcb6NmBns1n3v1", "rTLETUx3xNnjwSb02Sx6jVZM5Fuzg7Of", "ujF8Yx1ooHYTWOANWsLoHgp9GHsWq5OG", "emoc9RIZRY17k1iV3jHEmbNdIKvpuqWe", "9dj0hHqqeHaqkXambHAPXjsskYxWzSoy", "H6Wp9lsP8ocDK9Bk7hE2Cfl7XjXVKK5i", "baRwZ59Bd0PN8tFBdjuxnLHZSOlJTNRT", "2xLvEFwTfIQTf34sGOrn6donSx3FaGAc"};
    public static final AtomicBoolean A03;
    public static final AtomicReference<String> A04;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 118);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A01 = new byte[]{-56, 3, -18, -22, -23, -10, -41, -23, 29, 12, 17, 13, 22, 11, 13, -10, 13, 28, 31, 23, 26, 19, -18, 23, 26, -23, 22, 12, 26, 23, 17, 12, -29, -18, -22, -5, -10, -41, 6, -18, -7, -11, -12, 9, -30, -18, -7, -11, -11, 9, -30, -71, -60, -64, -54, -63, -83, -53, -42, -46, -29, -26, -65, -63, -67, -68, -67, -86, -55, -59, -39, -42, -78, 64, 57, 79, 62, 69, 60, 60, 54, 79, 76, 79, 80, 88, 79, -9, 57, 69, 67, 4, 60, 55, 57, 59, 56, 69, 69, 65, 4, 55, 58, 73, 4, 63, 68, 74, 59, 72, 68, 55, 66, 4, 75, 55, 52, 50, 59, 50, 63, 54, 48, 25, 37, 37, 33, -33, 18, 24, 22, 31, 37, 31, 29, 15, 28, 9, 11, 17, 15, 24, 30, -20, -22, -36, -23, -42, -40, -34, -36, -27, -21, -42, -29, -40, -22, -21, -42, -23, -36, -35, -23, -36, -22, -33, 59, 41, 38, 35, 58, 45, 41, 59};
    }

    static {
        A08();
        A00 = A00(80, 7, FacebookMediationAdapter.ERROR_NULL_CONTEXT);
        A03 = new AtomicBoolean();
        A04 = new AtomicReference<>();
    }

    public static String A01(AnonymousClass85 anonymousClass85) {
        return WebSettings.getDefaultUserAgent(anonymousClass85);
    }

    public static String A02(final AnonymousClass85 anonymousClass85) {
        FutureTask futureTask = new FutureTask(new Callable<String>() { // from class: com.facebook.ads.redexgen.X.9F
            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.concurrent.Callable
            /* renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final String call() {
                AtomicReference atomicReference;
                AtomicReference atomicReference2;
                atomicReference = C9G.A04;
                String browserUserAgent = (String) atomicReference.get();
                if (browserUserAgent != null) {
                    return browserUserAgent;
                }
                WebView webView = new WebView(AnonymousClass85.this.getApplicationContext());
                webView.setWebViewClient(new WebViewClient() { // from class: com.facebook.ads.redexgen.X.9E
                    @Override // android.webkit.WebViewClient
                    public final boolean onRenderProcessGone(WebView webView2, RenderProcessGoneDetail renderProcessGoneDetail) {
                        F1.A02(AbstractC10358a.A2j);
                        return true;
                    }
                });
                String userAgentString = webView.getSettings().getUserAgentString();
                webView.destroy();
                if (userAgentString != null) {
                    atomicReference2 = C9G.A04;
                    atomicReference2.set(userAgentString);
                }
                return userAgentString;
            }
        });
        for (int i = 0; i < 3; i++) {
            ExecutorC1143Cx.A00(futureTask);
            try {
                return (String) futureTask.get();
            } catch (Throwable th) {
                A09(anonymousClass85, th);
                SystemClock.sleep(500L);
            }
        }
        return null;
    }

    public static String A03(AnonymousClass85 anonymousClass85, C10468l c10468l) {
        String A07 = c10468l.A07();
        if (TextUtils.isEmpty(A07) && !A03.getAndSet(true)) {
            C8Z A08 = anonymousClass85.A08();
            int i = AbstractC10358a.A1Z;
            String bundle = A00(73, 7, 122);
            C10368b c10368b = new C10368b(bundle);
            String bundle2 = A00(116, 7, 87);
            A08.AAu(bundle2, i, c10368b);
        }
        return A07;
    }

    public static String A04(AnonymousClass85 anonymousClass85, boolean z) {
        if (anonymousClass85 == null) {
            return A00;
        }
        if (z) {
            return System.getProperty(A00(123, 10, 59));
        }
        String str = A04.get();
        if (str != null) {
            return str;
        }
        long spUserAgentRefresh = AbstractC10719l.A01(anonymousClass85);
        String A002 = A00(143, 23, 1);
        String A003 = A00(133, 10, 52);
        String A004 = A00(88, 28, 96);
        if (spUserAgentRefresh > 0) {
            SharedPreferences sharedPreferences = anonymousClass85.getSharedPreferences(ProcessUtils.getProcessSpecificName(A004, anonymousClass85), 0);
            String string = sharedPreferences.getString(A003, null);
            long j = sharedPreferences.getLong(A002, 0L);
            if (!TextUtils.isEmpty(string) && System.currentTimeMillis() - j < spUserAgentRefresh) {
                A04.set(string);
                String[] strArr = A02;
                String str2 = strArr[6];
                String browserUserAgent = strArr[3];
                if (str2.charAt(17) != browserUserAgent.charAt(17)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A02;
                strArr2[6] = "raDju45r7vWAWvtCMjs7ezmbeHuUzRMZ";
                strArr2[3] = "IEXEfOXuBGyf1jRfSjx88B0PyUJh9Pa6";
                return string;
            }
        }
        String str3 = null;
        try {
            str3 = A01(anonymousClass85);
            A04.set(str3);
        } catch (Throwable t) {
            A09(anonymousClass85, t);
        }
        if (str3 == null) {
            str3 = A02(anonymousClass85);
        }
        if (str3 == null) {
            return A00;
        }
        if (spUserAgentRefresh > 0) {
            SharedPreferences sharedPreferences2 = anonymousClass85.getSharedPreferences(ProcessUtils.getProcessSpecificName(A004, anonymousClass85), 0);
            sharedPreferences2.edit().putString(A003, A04.get()).apply();
            sharedPreferences2.edit().putLong(A002, System.currentTimeMillis()).apply();
        }
        return str3;
    }

    public static String A05(C10468l c10468l, AnonymousClass85 anonymousClass85) {
        if (AbstractC10719l.A04(anonymousClass85)) {
            return A00(63, 5, 5) + A03(anonymousClass85, c10468l) + A00(39, 6, 61) + c10468l.A06() + A00(45, 6, 61) + c10468l.A04() + A00(38, 1, 85);
        }
        return A00(0, 0, 76);
    }

    public static String A06(C10468l c10468l, AnonymousClass85 anonymousClass85, boolean z) {
        return A04(anonymousClass85, z) + A00(0, 38, 50) + anonymousClass85.A05().A9I() + A00(57, 6, 26) + C10468l.A04 + A00(38, 1, 85) + A05(c10468l, anonymousClass85) + A00(68, 5, 13) + anonymousClass85.A05().A9J() + A00(51, 6, 8) + Locale.getDefault().toString() + A00(87, 1, 36);
    }

    public static void A09(AnonymousClass85 anonymousClass85, Throwable th) {
        anonymousClass85.A08().AAu(A00(166, 8, 78), AbstractC10358a.A2i, new C10368b(th));
    }
}
