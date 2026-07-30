package com.amazonaws.metrics;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.metrics.MetricCollector;
import com.amazonaws.regions.Regions;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSServiceMetrics;
import j$.util.DesugarCollections;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashSet;
import java.util.Properties;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public enum AwsSdkMetrics {
    ;


    /* renamed from: do, reason: not valid java name */
    public static final boolean f8786do;

    /* renamed from: if, reason: not valid java name */
    public static boolean f8788if;

    static {
        String property = System.getProperty("com.amazonaws.sdk.enableDefaultMetrics");
        boolean z = property != null;
        f8786do = z;
        if (z) {
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            for (String str : property.split(",")) {
                String trim = str.trim();
                if (!z2 && "excludeMachineMetrics".equals(trim)) {
                    z2 = true;
                } else if (!z3 && "includePerHostMetrics".equals(trim)) {
                    z3 = true;
                } else if (z4 || !"useSingleMetricNamespace".equals(trim)) {
                    String[] split = trim.split("=");
                    if (split.length == 2) {
                        String trim2 = split[0].trim();
                        String trim3 = split[1].trim();
                        try {
                            if ("credentialFile".equals(trim2)) {
                                final File file = new File(trim3);
                                new AWSCredentials(file) { // from class: com.amazonaws.auth.PropertiesCredentials

                                    /* renamed from: do, reason: not valid java name */
                                    public final String f8731do;

                                    /* renamed from: if, reason: not valid java name */
                                    public final String f8732if;

                                    {
                                        if (!file.exists()) {
                                            throw new FileNotFoundException("File doesn't exist:  " + file.getAbsolutePath());
                                        }
                                        FileInputStream fileInputStream = new FileInputStream(file);
                                        try {
                                            Properties properties = new Properties();
                                            properties.load(fileInputStream);
                                            if (properties.getProperty("accessKey") == null || properties.getProperty("secretKey") == null) {
                                                throw new IllegalArgumentException("The specified file (" + file.getAbsolutePath() + ") doesn't contain the expected properties 'accessKey' and 'secretKey'.");
                                            }
                                            this.f8731do = properties.getProperty("accessKey");
                                            this.f8732if = properties.getProperty("secretKey");
                                        } finally {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException unused) {
                                            }
                                        }
                                    }

                                    @Override // com.amazonaws.auth.AWSCredentials
                                    /* renamed from: do */
                                    public final String mo4995do() {
                                        return this.f8732if;
                                    }

                                    @Override // com.amazonaws.auth.AWSCredentials
                                    /* renamed from: if */
                                    public final String mo4996if() {
                                        return this.f8731do;
                                    }
                                };
                                synchronized (AwsSdkMetrics.class) {
                                }
                            } else if ("cloudwatchRegion".equals(trim2)) {
                                Regions.m5129do(trim3);
                            } else if ("metricQueueSize".equals(trim2)) {
                                if (new Integer(trim3).intValue() < 1) {
                                    throw new IllegalArgumentException("metricQueueSize must be at least 1");
                                }
                            } else if ("getQueuePollTimeoutMilli".equals(trim2)) {
                                if (new Long(trim3).intValue() < 1000) {
                                    throw new IllegalArgumentException("getQueuePollTimeoutMilli must be at least 1000");
                                }
                            } else if (!"metricNameSpace".equals(trim2) && !"jvmMetricName".equals(trim2) && !"hostMetricName".equals(trim2)) {
                                LogFactory.getLog(AwsSdkMetrics.class).debug("Ignoring unrecognized parameter: " + trim);
                            }
                        } catch (Exception e) {
                            LogFactory.getLog(AwsSdkMetrics.class).debug("Ignoring failure", e);
                        }
                    } else {
                        continue;
                    }
                } else {
                    z4 = true;
                }
            }
        }
        new Object() { // from class: com.amazonaws.metrics.AwsSdkMetrics.MetricRegistry
            {
                HashSet hashSet = new HashSet();
                hashSet.add(AWSRequestMetrics.Field.ClientExecuteTime);
                hashSet.add(AWSRequestMetrics.Field.Exception);
                hashSet.add(AWSRequestMetrics.Field.HttpClientRetryCount);
                hashSet.add(AWSRequestMetrics.Field.HttpRequestTime);
                hashSet.add(AWSRequestMetrics.Field.RequestCount);
                hashSet.add(AWSRequestMetrics.Field.RetryCount);
                hashSet.add(AWSRequestMetrics.Field.HttpClientSendRequestTime);
                hashSet.add(AWSRequestMetrics.Field.HttpClientReceiveResponseTime);
                hashSet.add(AWSRequestMetrics.Field.HttpClientPoolAvailableCount);
                hashSet.add(AWSRequestMetrics.Field.HttpClientPoolLeasedCount);
                hashSet.add(AWSRequestMetrics.Field.HttpClientPoolPendingCount);
                hashSet.add(AWSServiceMetrics.f9066do);
                DesugarCollections.unmodifiableSet(new HashSet(hashSet));
            }
        };
    }

    /* renamed from: do, reason: not valid java name */
    public static <T extends RequestMetricCollector> T m5057do() {
        if (f8786do) {
            synchronized (AwsSdkMetrics.class) {
                if (f8788if) {
                    throw new IllegalStateException("Reentrancy is not allowed");
                }
                f8788if = true;
                try {
                    try {
                        ((MetricCollector.Factory) Class.forName("com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory").newInstance()).m5058do();
                    } catch (Exception e) {
                        LogFactory.getLog(AwsSdkMetrics.class).warn("Failed to enable the default metrics", e);
                    }
                } finally {
                    f8788if = false;
                }
            }
        }
        return (T) RequestMetricCollector.f8789do;
    }
}
