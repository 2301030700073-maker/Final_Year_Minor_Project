package com.amazonaws.auth;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class SignerFactory {

    /* renamed from: do, reason: not valid java name */
    public static final ConcurrentHashMap f8737do;

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        f8737do = concurrentHashMap;
        concurrentHashMap.put("QueryStringSignerType", QueryStringSigner.class);
        concurrentHashMap.put("AWS3SignerType", AWS3Signer.class);
        concurrentHashMap.put("AWS4SignerType", AWS4Signer.class);
        concurrentHashMap.put("NoOpSignerType", NoOpSigner.class);
    }

    /* renamed from: do, reason: not valid java name */
    public static Signer m5022do(String str, String str2) {
        Class cls = (Class) f8737do.get(str);
        if (cls == null) {
            throw new IllegalArgumentException();
        }
        try {
            Signer signer = (Signer) cls.newInstance();
            if (signer instanceof ServiceAwareSigner) {
                ((ServiceAwareSigner) signer).mo4989do(str2);
            }
            return signer;
        } catch (IllegalAccessException e) {
            throw new IllegalStateException("Cannot create an instance of ".concat(cls.getName()), e);
        } catch (InstantiationException e2) {
            throw new IllegalStateException("Cannot create an instance of ".concat(cls.getName()), e2);
        }
    }
}
