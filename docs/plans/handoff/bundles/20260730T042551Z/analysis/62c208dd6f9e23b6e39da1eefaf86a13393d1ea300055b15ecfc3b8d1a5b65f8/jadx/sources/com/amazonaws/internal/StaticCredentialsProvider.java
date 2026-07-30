package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.AnonymousAWSCredentials;

/* loaded from: classes.dex */
public class StaticCredentialsProvider implements AWSCredentialsProvider {

    /* renamed from: do, reason: not valid java name */
    public final AWSCredentials f8774do;

    public StaticCredentialsProvider(AnonymousAWSCredentials anonymousAWSCredentials) {
        this.f8774do = anonymousAWSCredentials;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    /* renamed from: do */
    public final AWSCredentials mo4997do() {
        return this.f8774do;
    }
}
