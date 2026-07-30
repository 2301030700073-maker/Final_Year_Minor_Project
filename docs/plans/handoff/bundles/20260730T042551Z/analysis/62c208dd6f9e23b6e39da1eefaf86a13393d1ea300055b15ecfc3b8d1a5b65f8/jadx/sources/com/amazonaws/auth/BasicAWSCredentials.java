package com.amazonaws.auth;

/* loaded from: classes.dex */
public class BasicAWSCredentials implements AWSCredentials {

    /* renamed from: do, reason: not valid java name */
    public final String f8711do;

    /* renamed from: if, reason: not valid java name */
    public final String f8712if;

    public BasicAWSCredentials(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Access key cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Secret key cannot be null.");
        }
        this.f8711do = str;
        this.f8712if = str2;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: do */
    public final String mo4995do() {
        return this.f8712if;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: if */
    public final String mo4996if() {
        return this.f8711do;
    }
}
