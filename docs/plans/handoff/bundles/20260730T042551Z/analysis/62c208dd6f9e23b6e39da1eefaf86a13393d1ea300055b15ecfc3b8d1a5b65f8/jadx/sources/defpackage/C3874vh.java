package defpackage;

import com.facebook.FacebookRequestError;

/* renamed from: vh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3874vh extends C3344mh {

    /* renamed from: do, reason: not valid java name */
    public final FacebookRequestError f16109do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3874vh(FacebookRequestError facebookRequestError, String str) {
        super(str);
        C0173Do.m401try(facebookRequestError, "requestError");
        this.f16109do = facebookRequestError;
    }

    @Override // defpackage.C3344mh, java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder("{FacebookServiceException: httpResponseCode: ");
        FacebookRequestError facebookRequestError = this.f16109do;
        sb.append(facebookRequestError.f9263for);
        sb.append(", facebookErrorCode: ");
        sb.append(facebookRequestError.f9264new);
        sb.append(", facebookErrorType: ");
        sb.append(facebookRequestError.f9257break);
        sb.append(", message: ");
        sb.append(facebookRequestError.m5261do());
        sb.append("}");
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "StringBuilder()\n        .append(\"{FacebookServiceException: \")\n        .append(\"httpResponseCode: \")\n        .append(requestError.requestStatusCode)\n        .append(\", facebookErrorCode: \")\n        .append(requestError.errorCode)\n        .append(\", facebookErrorType: \")\n        .append(requestError.errorType)\n        .append(\", message: \")\n        .append(requestError.errorMessage)\n        .append(\"}\")\n        .toString()");
        return sb2;
    }
}
