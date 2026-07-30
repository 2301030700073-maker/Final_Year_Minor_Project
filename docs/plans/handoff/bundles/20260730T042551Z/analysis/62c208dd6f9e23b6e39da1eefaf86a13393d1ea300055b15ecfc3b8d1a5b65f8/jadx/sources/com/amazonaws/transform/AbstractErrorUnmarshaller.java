package com.amazonaws.transform;

import com.amazonaws.AmazonServiceException;

/* loaded from: classes.dex */
public abstract class AbstractErrorUnmarshaller<T> implements Unmarshaller<AmazonServiceException, T> {

    /* renamed from: do, reason: not valid java name */
    public final Class<? extends AmazonServiceException> f9027do;

    public AbstractErrorUnmarshaller() {
        this(AmazonServiceException.class);
    }

    public AbstractErrorUnmarshaller(Class<? extends AmazonServiceException> cls) {
        this.f9027do = cls;
    }
}
