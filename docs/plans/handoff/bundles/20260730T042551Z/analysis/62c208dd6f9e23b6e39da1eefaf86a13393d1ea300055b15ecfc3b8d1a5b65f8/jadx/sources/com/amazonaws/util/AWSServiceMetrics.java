package com.amazonaws.util;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Deprecated
/* loaded from: classes.dex */
public final class AWSServiceMetrics {

    /* renamed from: do, reason: not valid java name */
    public static final AWSServiceMetrics f9066do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final /* synthetic */ AWSServiceMetrics[] f9067do;

    static {
        AWSServiceMetrics aWSServiceMetrics = new AWSServiceMetrics();
        f9066do = aWSServiceMetrics;
        f9067do = new AWSServiceMetrics[]{aWSServiceMetrics};
    }

    public static AWSServiceMetrics valueOf(String str) {
        return (AWSServiceMetrics) Enum.valueOf(AWSServiceMetrics.class, str);
    }

    public static AWSServiceMetrics[] values() {
        return (AWSServiceMetrics[]) f9067do.clone();
    }
}
