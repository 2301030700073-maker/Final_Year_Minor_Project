package com.amazonaws.auth;

/* loaded from: classes.dex */
public class BasicSessionCredentials implements AWSSessionCredentials {

    /* renamed from: do, reason: not valid java name */
    public final String f8713do;

    /* renamed from: for, reason: not valid java name */
    public final String f8714for;

    /* renamed from: if, reason: not valid java name */
    public final String f8715if;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.f8713do = str;
        this.f8715if = str2;
        this.f8714for = str3;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: do */
    public final String mo4995do() {
        return this.f8715if;
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    /* renamed from: for */
    public final String mo4999for() {
        return this.f8714for;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: if */
    public final String mo4996if() {
        return this.f8713do;
    }
}
