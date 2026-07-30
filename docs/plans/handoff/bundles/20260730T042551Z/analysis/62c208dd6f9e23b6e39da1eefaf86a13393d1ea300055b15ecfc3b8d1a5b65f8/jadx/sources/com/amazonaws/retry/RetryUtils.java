package com.amazonaws.retry;

import com.amazonaws.AmazonServiceException;

/* loaded from: classes.dex */
public class RetryUtils {
    /* renamed from: do, reason: not valid java name */
    public static boolean m5136do(AmazonServiceException amazonServiceException) {
        String str = amazonServiceException.f8656catch;
        return "RequestTimeTooSkewed".equals(str) || "RequestExpired".equals(str) || "InvalidSignatureException".equals(str) || "SignatureDoesNotMatch".equals(str);
    }
}
