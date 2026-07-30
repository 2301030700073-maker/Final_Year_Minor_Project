package com.amazonaws.internal.config;

import com.google.android.gms.common.Scopes;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class InternalConfig {

    /* renamed from: do, reason: not valid java name */
    public final SignerConfig f8778do = new SignerConfig("AWS4SignerType");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList f8779do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f8780do;

    /* renamed from: for, reason: not valid java name */
    public final HashMap f8781for;

    /* renamed from: if, reason: not valid java name */
    public final HashMap f8782if;

    /* renamed from: new, reason: not valid java name */
    public final HashMap f8783new;

    public static class Factory {

        /* renamed from: do, reason: not valid java name */
        public static final InternalConfig f8784do;

        static {
            try {
                f8784do = new InternalConfig();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new IllegalStateException("Fatal: Failed to load the internal config for AWS Android SDK", e2);
            }
        }
    }

    static {
        LogFactory.getLog(InternalConfig.class);
    }

    public InternalConfig() {
        HashMap hashMap = new HashMap();
        hashMap.put("eu-central-1", new SignerConfig("AWS4SignerType"));
        hashMap.put("cn-north-1", new SignerConfig("AWS4SignerType"));
        this.f8782if = hashMap;
        HashMap hashMap2 = new HashMap();
        hashMap2.put("ec2", new SignerConfig("QueryStringSignerType"));
        hashMap2.put(Scopes.EMAIL, new SignerConfig("AWS3SignerType"));
        hashMap2.put("s3", new SignerConfig("S3SignerType"));
        hashMap2.put("sdb", new SignerConfig("QueryStringSignerType"));
        this.f8781for = hashMap2;
        HashMap hashMap3 = new HashMap();
        hashMap3.put("s3/eu-central-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap3.put("s3/cn-north-1", new SignerConfig("AWSS3V4SignerType"));
        this.f8780do = hashMap3;
        HashMap hashMap4 = new HashMap();
        hashMap4.put("AmazonCloudWatchClient", new HttpClientConfig("monitoring"));
        hashMap4.put("AmazonSimpleDBClient", new HttpClientConfig("sdb"));
        hashMap4.put("AmazonSimpleEmailServiceClient", new HttpClientConfig(Scopes.EMAIL));
        hashMap4.put("AWSSecurityTokenServiceClient", new HttpClientConfig("sts"));
        hashMap4.put("AmazonCognitoIdentityClient", new HttpClientConfig("cognito-identity"));
        hashMap4.put("AmazonCognitoIdentityProviderClient", new HttpClientConfig("cognito-idp"));
        hashMap4.put("AmazonCognitoSyncClient", new HttpClientConfig("cognito-sync"));
        hashMap4.put("AmazonKinesisFirehoseClient", new HttpClientConfig("firehose"));
        hashMap4.put("AWSIotClient", new HttpClientConfig("execute-api"));
        this.f8783new = hashMap4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-external-1\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com", "us-gov-west-1"));
        this.f8779do = arrayList;
    }
}
