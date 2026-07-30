package com.amazonaws;

/* loaded from: classes.dex */
public class AmazonWebServiceResponse<T> {

    /* renamed from: do, reason: not valid java name */
    public ResponseMetadata f8668do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public T f8669do;

    /* renamed from: do, reason: not valid java name */
    public final String m4965do() {
        ResponseMetadata responseMetadata = this.f8668do;
        if (responseMetadata == null) {
            return null;
        }
        return responseMetadata.f8697do.get("AWS_REQUEST_ID");
    }

    /* renamed from: for, reason: not valid java name */
    public final void m4966for(ResponseMetadata responseMetadata) {
        this.f8668do = responseMetadata;
    }

    /* renamed from: if, reason: not valid java name */
    public final T m4967if() {
        return this.f8669do;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4968new(T t) {
        this.f8669do = t;
    }
}
