package com.eygraber.uri.parts;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.eygraber.uri.NotCachedHolder;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractPart {
    public final SynchronizedLazyImpl internalDecoded$delegate;
    public final SynchronizedLazyImpl internalEncoded$delegate;
    public final boolean wasDecodedCached;
    public final boolean wasEncodedCached;

    public AbstractPart(String str, String str2) {
        String str3 = NotCachedHolder.NotCached;
        this.wasEncodedCached = !Intrinsics.areEqual(str, str3);
        this.wasDecodedCached = !Intrinsics.areEqual(str2, str3);
        this.internalDecoded$delegate = new SynchronizedLazyImpl(new AbstractPart$$ExternalSyntheticLambda0(this, str2, str));
        this.internalEncoded$delegate = new SynchronizedLazyImpl(new AbstractPart$$ExternalSyntheticLambda0(str, this, str2));
        if (Intrinsics.areEqual(str, str3) && Intrinsics.areEqual(str2, str3)) {
            UriKt$$ExternalSyntheticBUOutline0.m("Neither encoded nor decoded");
            throw null;
        }
    }

    public abstract String encode(String str);

    public final String getDecoded() {
        return (String) this.internalDecoded$delegate.getValue();
    }

    public final String getEncoded() {
        return (String) this.internalEncoded$delegate.getValue();
    }
}
