package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* renamed from: Wo, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0590Wo extends Ow {

    /* renamed from: do, reason: not valid java name */
    public final Method f4401do;

    /* renamed from: if, reason: not valid java name */
    public final Method f4402if;

    public C0590Wo(Method method, Method method2) {
        this.f4401do = method;
        this.f4402if = method2;
    }

    @Override // defpackage.Ow
    /* renamed from: case */
    public final void mo902case(SSLSocket sSLSocket, String str, List<EnumC3538py> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            ArrayList m1704if = Ow.m1704if(list);
            this.f4401do.invoke(sSLParameters, m1704if.toArray(new String[m1704if.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw SJ.m2134do("unable to set ssl parameters", e);
        }
    }

    @Override // defpackage.Ow
    /* renamed from: this */
    public final String mo903this(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f4402if.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!str.equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException e) {
            throw SJ.m2134do("failed to get ALPN selected protocol", e);
        } catch (InvocationTargetException e2) {
            if (e2.getCause() instanceof UnsupportedOperationException) {
                return null;
            }
            throw SJ.m2134do("failed to get ALPN selected protocol", e2);
        }
    }
}
