package defpackage;

import com.facebook.FacebookRequestError;

/* renamed from: nh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3403nh extends C3344mh {

    /* renamed from: do, reason: not valid java name */
    public final C0346Ll f14549do;

    public C3403nh(C0346Ll c0346Ll, String str) {
        super(str);
        this.f14549do = c0346Ll;
    }

    @Override // defpackage.C3344mh, java.lang.Throwable
    public final String toString() {
        C0346Ll c0346Ll = this.f14549do;
        FacebookRequestError facebookRequestError = c0346Ll == null ? null : c0346Ll.f1995do;
        StringBuilder sb = new StringBuilder("{FacebookGraphResponseException: ");
        String message = getMessage();
        if (message != null) {
            sb.append(message);
            sb.append(" ");
        }
        if (facebookRequestError != null) {
            sb.append("httpResponseCode: ");
            sb.append(facebookRequestError.f9263for);
            sb.append(", facebookErrorCode: ");
            sb.append(facebookRequestError.f9264new);
            sb.append(", facebookErrorType: ");
            sb.append(facebookRequestError.f9257break);
            sb.append(", message: ");
            sb.append(facebookRequestError.m5261do());
            sb.append("}");
        }
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "errorStringBuilder.toString()");
        return sb2;
    }
}
