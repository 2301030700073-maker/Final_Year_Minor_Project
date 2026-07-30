package com.amazonaws.retry;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.retry.RetryPolicy;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Random;

/* loaded from: classes.dex */
public class PredefinedRetryPolicies {

    /* renamed from: do, reason: not valid java name */
    public static final SDKDefaultRetryCondition f8970do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final RetryPolicy.BackoffStrategy f8971do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final RetryPolicy f8972do;

    public static class SDKDefaultBackoffStrategy implements RetryPolicy.BackoffStrategy {

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Random f8974do = new Random();

        /* renamed from: do, reason: not valid java name */
        public final int f8973do = 100;

        /* renamed from: if, reason: not valid java name */
        public final int f8975if = 20000;

        @Override // com.amazonaws.retry.RetryPolicy.BackoffStrategy
        /* renamed from: do, reason: not valid java name */
        public final long mo5130do(int i) {
            if (i <= 0) {
                return 0L;
            }
            return this.f8974do.nextInt(Math.min(this.f8975if, (1 << i) * this.f8973do));
        }
    }

    public static class SDKDefaultRetryCondition implements RetryPolicy.RetryCondition {
        /* renamed from: do, reason: not valid java name */
        public final boolean m5131do(AmazonClientException amazonClientException) {
            if ((amazonClientException.getCause() instanceof IOException) && !(amazonClientException.getCause() instanceof InterruptedIOException)) {
                return true;
            }
            if (amazonClientException instanceof AmazonServiceException) {
                AmazonServiceException amazonServiceException = (AmazonServiceException) amazonClientException;
                int i = amazonServiceException.f8659for;
                if (i != 500 && i != 503) {
                    String str = amazonServiceException.f8656catch;
                    if (!("Throttling".equals(str) || "ThrottlingException".equals(str) || "ProvisionedThroughputExceededException".equals(str)) && !RetryUtils.m5136do(amazonServiceException)) {
                    }
                }
                return true;
            }
            return false;
        }
    }

    static {
        SDKDefaultRetryCondition sDKDefaultRetryCondition = new SDKDefaultRetryCondition();
        f8970do = sDKDefaultRetryCondition;
        SDKDefaultBackoffStrategy sDKDefaultBackoffStrategy = new SDKDefaultBackoffStrategy();
        f8971do = sDKDefaultBackoffStrategy;
        f8972do = new RetryPolicy(sDKDefaultRetryCondition, sDKDefaultBackoffStrategy, 3);
        new RetryPolicy(sDKDefaultRetryCondition, sDKDefaultBackoffStrategy, 10);
    }
}
