package defpackage;

import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* renamed from: Ll, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0346Ll {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ int f1994do = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final FacebookRequestError f1995do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HttpURLConnection f1996do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final JSONObject f1997do;

    /* renamed from: if, reason: not valid java name */
    public final JSONObject f1998if;

    /* renamed from: Ll$do, reason: invalid class name */
    public static final class Cdo {
        /* renamed from: do, reason: not valid java name */
        public static ArrayList m1343do(List list, HttpURLConnection httpURLConnection, C3344mh c3344mh) {
            C0173Do.m401try(list, "requests");
            List list2 = list;
            ArrayList arrayList = new ArrayList(B8.c(list2));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(new C0346Ll((GraphRequest) it.next(), httpURLConnection, new FacebookRequestError(c3344mh)));
            }
            return arrayList;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0087  */
        /* renamed from: for, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static java.util.ArrayList m1344for(java.io.InputStream r13, java.net.HttpURLConnection r14, defpackage.C0324Kl r15) {
            /*
                Method dump skipped, instructions count: 252
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0346Ll.Cdo.m1344for(java.io.InputStream, java.net.HttpURLConnection, Kl):java.util.ArrayList");
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x00dd A[Catch: JSONException -> 0x0118, TryCatch #0 {JSONException -> 0x0118, blocks: (B:5:0x0017, B:7:0x001d, B:9:0x0028, B:11:0x002c, B:14:0x0038, B:31:0x00dd, B:62:0x007c, B:63:0x0072, B:64:0x0068, B:65:0x0060, B:66:0x0059, B:67:0x004f, B:68:0x0045, B:69:0x0083, B:72:0x0090, B:74:0x0099, B:78:0x00af, B:85:0x00f5, B:87:0x0106, B:88:0x010c), top: B:4:0x0017 }] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x01a2  */
        /* renamed from: if, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static defpackage.C0346Ll m1345if(com.facebook.GraphRequest r22, java.net.HttpURLConnection r23, java.lang.Object r24, java.lang.Object r25) {
            /*
                Method dump skipped, instructions count: 514
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.C0346Ll.Cdo.m1345if(com.facebook.GraphRequest, java.net.HttpURLConnection, java.lang.Object, java.lang.Object):Ll");
        }
    }

    public C0346Ll(GraphRequest graphRequest, HttpURLConnection httpURLConnection, JSONObject jSONObject, JSONArray jSONArray, FacebookRequestError facebookRequestError) {
        C0173Do.m401try(graphRequest, "request");
        this.f1996do = httpURLConnection;
        this.f1997do = jSONObject;
        this.f1995do = facebookRequestError;
        this.f1998if = jSONObject;
    }

    public final String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            HttpURLConnection httpURLConnection = this.f1996do;
            objArr[0] = Integer.valueOf(httpURLConnection == null ? 200 : httpURLConnection.getResponseCode());
            str = String.format(locale, "%d", Arrays.copyOf(objArr, 1));
            C0173Do.m399new(str, "java.lang.String.format(locale, format, *args)");
        } catch (IOException unused) {
            str = "unknown";
        }
        StringBuilder m2493break = V1.m2493break("{Response:  responseCode: ", str, ", graphObject: ");
        m2493break.append(this.f1997do);
        m2493break.append(", error: ");
        m2493break.append(this.f1995do);
        m2493break.append("}");
        String sb = m2493break.toString();
        C0173Do.m399new(sb, "StringBuilder()\n        .append(\"{Response: \")\n        .append(\" responseCode: \")\n        .append(responseCode)\n        .append(\", graphObject: \")\n        .append(graphObject)\n        .append(\", error: \")\n        .append(error)\n        .append(\"}\")\n        .toString()");
        return sb;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0346Ll(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, jSONObject, null, null);
        C0173Do.m401try(graphRequest, "request");
        C0173Do.m401try(str, "rawResponse");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0346Ll(GraphRequest graphRequest, HttpURLConnection httpURLConnection, FacebookRequestError facebookRequestError) {
        this(graphRequest, httpURLConnection, null, null, facebookRequestError);
        C0173Do.m401try(graphRequest, "request");
    }
}
