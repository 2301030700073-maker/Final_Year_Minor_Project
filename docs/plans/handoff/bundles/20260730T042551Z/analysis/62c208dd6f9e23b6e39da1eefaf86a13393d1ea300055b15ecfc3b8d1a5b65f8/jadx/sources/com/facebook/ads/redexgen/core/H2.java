package com.facebook.ads.redexgen.core;

import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: assets/audience_network.dex */
public final class H2 {
    public static byte[] A00;
    public static String[] A01 = {"qx9J4yAnPXaVyRX1wkhfMyD35E0bVkcp", "bG7a76MJuQYCTQVI4bECP0jat3LYDm8S", "3sji", "WOIjjsVKw0oGTZJ8bV1Eiv07MXmRBJ4e", "zigTdk", "jLtidcNh89Szai5k4uiuh5UaOWCNfF4m", "9OqLRA6IbqecmBl4IJChXH2akamtN0Bd", "1PwXl0SmV68MCkNjB88Y7o3DlBd3CbFY"};
    public static final String A02;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 99);
            String[] strArr = A01;
            if (strArr[4].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "3GrjuQcpYdFWBcs25Ezt7MBLI0wjxHRp";
            strArr2[7] = "nD922LhxjrSAIQnDmHWR8rAyvz5NrvSF";
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{-71, -41, -39, -34, -37, -106, -29, -33, -23, -23, -106, -36, -27, -24, -106, -36, -33, -30, -37, -106, -21, -24, -30, -80, -106, 18, 48, 50, 55, 52, -17, 60, 56, 66, 66, -17, 53, 62, 65, -17, 56, 60, 48, 54, 52, -17, 68, 65, 59, 9, -17, -47, -43, -32, -24, 21, 21, 18, 21, -61, 18, 19, 8, 17, 12, 17, 10, -61, 6, 4, 6, 11, 8, 7, -61, 9, 12, 15, 8, -61, 9, 18, 21, -61, 24, 21, 15, -35, -61, -36, -40, -41, 11, -6, -1, -5, 4, -7, -5, -28, -5, 10, 13, 5, 8, 1, -17, -21, -46, -12, -15, -27, -25, -11, -11, -21, -16, -23, -94, -24, -21, -18, -25, -94, -9, -12, -18, -68, -94, -16, 18, 15, 3, 5, 19, 19, 9, 14, 7, -64, 9, 13, 1, 7, 5, -64, 21, 18, 12, -38, -64, 34, 68, 65, 53, 55, 69, 69, 59, 64, 57, -14, 72, 59, 54, 55, 65, -14, 71, 68, 62, 12, -14, 15, 30, 23, -19, -8, -9, -12, -18};
    }

    static {
        A04();
        A02 = H2.class.getSimpleName();
    }

    public static WebResourceResponse A00(C2322k1 c2322k1, C10297t c10297t, WebResourceRequest webResourceRequest, H0 h0, boolean z) {
        String uri = webResourceRequest.getUrl().toString();
        if (h0.A05) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            String guessContentTypeFromName = URLConnection.guessContentTypeFromName(uri);
            if (h0.A01.contains(uri)) {
                StringBuilder sb = new StringBuilder();
                String url = A03(FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS, 21, 31);
                sb.append(url).append(uri).toString();
                File cachedFile = c10297t.A0O(uri);
                if (cachedFile != null) {
                    if (z) {
                        String url2 = h0.A00;
                        if (uri.equals(url2)) {
                            return A02(hashMap, guessContentTypeFromName, new C1244Gu(c2322k1.A02(), new FileInputStream(cachedFile), new C2033fF(c2322k1, uri)));
                        }
                    }
                    return A01(hashMap, guessContentTypeFromName, cachedFile);
                }
                StringBuilder sb2 = new StringBuilder();
                String url3 = A03(0, 25, 19);
                sb2.append(url3).append(uri).toString();
            }
            if (h0.A02.contains(uri)) {
                StringBuilder sb3 = new StringBuilder();
                String url4 = A03(129, 22, 61);
                sb3.append(url4).append(uri).toString();
                File A0P = c10297t.A0P(uri);
                if (A0P != null) {
                    return A01(hashMap, guessContentTypeFromName, A0P);
                }
                StringBuilder sb4 = new StringBuilder();
                String url5 = A03(25, 26, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
                sb4.append(url5).append(uri).toString();
            }
            if (h0.A03.contains(uri)) {
                StringBuilder sb5 = new StringBuilder();
                String url6 = A03(151, 22, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION);
                sb5.append(url6).append(uri).toString();
                return IS.A00(c2322k1, webResourceRequest, webResourceRequest.getUrl(), guessContentTypeFromName, hashMap);
            }
        } catch (IOException e) {
            StringBuilder sb6 = new StringBuilder();
            String url7 = A03(54, 35, 64);
            String mimeType = sb6.append(url7).append(uri).toString();
            String url8 = A03(89, 17, 51);
            Log.e(url8, mimeType, e);
        }
        return null;
    }

    public static WebResourceResponse A01(HashMap<String, String> responseHeaders, String str, File file) throws FileNotFoundException {
        return A02(responseHeaders, str, new FileInputStream(file));
    }

    public static WebResourceResponse A02(HashMap<String, String> responseHeaders, String str, InputStream inputStream) {
        return new WebResourceResponse(str, null, 200, A03(FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE, 2, 61), responseHeaders, inputStream);
    }

    public static void A05(AnonymousClass85 anonymousClass85, String str, String str2) {
        C10368b c10368b = new C10368b(A03(51, 3, 42));
        c10368b.A05(1);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A03(176, 2, 34), str);
            jSONObject.put(A03(178, 3, 31), str2);
            c10368b.A07(jSONObject);
        } catch (JSONException unused) {
        }
        anonymousClass85.A08().AAv(A03(173, 3, 72), AbstractC10358a.A12, c10368b);
    }
}
