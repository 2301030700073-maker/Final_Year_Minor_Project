package defpackage;

import defpackage.C4123zu;
import java.util.regex.Pattern;
import org.apache.http.Header;
import org.apache.http.HttpMessage;
import org.apache.http.HttpResponse;

/* renamed from: Bu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0135Bu {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f293do = Pattern.compile("(^|.*\\s)datatransport/\\S+ android/($|\\s.*)");

    /* renamed from: do, reason: not valid java name */
    public static Long m236do(HttpMessage httpMessage) {
        try {
            Header firstHeader = httpMessage.getFirstHeader("content-length");
            if (firstHeader != null) {
                return Long.valueOf(Long.parseLong(firstHeader.getValue()));
            }
            return null;
        } catch (NumberFormatException unused) {
            Q0.m1818new().m1820do();
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m237for(C0113Au c0113Au) {
        if (!((C4123zu) c0113Au.f165do.f12107if).t()) {
            C4123zu.Cdo cdo = c0113Au.f165do;
            cdo.m6307super();
            C4123zu.m8837volatile((C4123zu) cdo.f12107if);
        }
        c0113Au.m114if();
    }

    /* renamed from: if, reason: not valid java name */
    public static String m238if(HttpResponse httpResponse) {
        String value;
        Header firstHeader = httpResponse.getFirstHeader("content-type");
        if (firstHeader == null || (value = firstHeader.getValue()) == null) {
            return null;
        }
        return value;
    }
}
