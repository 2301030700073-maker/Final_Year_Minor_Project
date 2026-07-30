package com.amazonaws.retry;

/* loaded from: classes.dex */
public final class RetryPolicy {

    /* renamed from: do, reason: not valid java name */
    public final int f8976do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final BackoffStrategy f8977do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final RetryCondition f8978do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f8979do;

    public interface BackoffStrategy {
        /* renamed from: do */
        long mo5130do(int i);
    }

    public interface RetryCondition {
    }

    public RetryPolicy(RetryCondition retryCondition, BackoffStrategy backoffStrategy, int i) {
        retryCondition = retryCondition == null ? PredefinedRetryPolicies.f8970do : retryCondition;
        backoffStrategy = backoffStrategy == null ? PredefinedRetryPolicies.f8971do : backoffStrategy;
        if (i < 0) {
            throw new IllegalArgumentException("Please provide a non-negative value for maxErrorRetry.");
        }
        this.f8978do = retryCondition;
        this.f8977do = backoffStrategy;
        this.f8976do = i;
        this.f8979do = true;
    }

    /* renamed from: do, reason: not valid java name */
    public final BackoffStrategy m5132do() {
        return this.f8977do;
    }

    /* renamed from: for, reason: not valid java name */
    public final RetryCondition m5133for() {
        return this.f8978do;
    }

    /* renamed from: if, reason: not valid java name */
    public final int m5134if() {
        return this.f8976do;
    }

    /* renamed from: new, reason: not valid java name */
    public final boolean m5135new() {
        return this.f8979do;
    }
}
