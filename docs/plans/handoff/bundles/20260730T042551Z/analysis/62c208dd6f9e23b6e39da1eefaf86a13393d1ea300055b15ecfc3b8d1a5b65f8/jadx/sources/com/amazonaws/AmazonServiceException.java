package com.amazonaws;

import defpackage.Creturn;

/* loaded from: classes.dex */
public class AmazonServiceException extends AmazonClientException {

    /* renamed from: break, reason: not valid java name */
    public String f8655break;

    /* renamed from: catch, reason: not valid java name */
    public String f8656catch;

    /* renamed from: class, reason: not valid java name */
    public final String f8657class;

    /* renamed from: const, reason: not valid java name */
    public String f8658const;

    /* renamed from: for, reason: not valid java name */
    public int f8659for;

    public AmazonServiceException(String str) {
        super(null);
        this.f8657class = str;
    }

    /* renamed from: case, reason: not valid java name */
    public final void m4951case(int i) {
        this.f8659for = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final String m4952do() {
        return this.f8656catch;
    }

    /* renamed from: for, reason: not valid java name */
    public final int m4953for() {
        return this.f8659for;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f8657class);
        sb.append(" (Service: ");
        sb.append(this.f8658const);
        sb.append("; Status Code: ");
        sb.append(this.f8659for);
        sb.append("; Error Code: ");
        sb.append(this.f8656catch);
        sb.append("; Request ID: ");
        return Creturn.m7984try(sb, this.f8655break, ")");
    }

    /* renamed from: if, reason: not valid java name */
    public final String m4954if() {
        return this.f8655break;
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4955new(String str) {
        this.f8656catch = str;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4956try(String str) {
        this.f8658const = str;
    }
}
