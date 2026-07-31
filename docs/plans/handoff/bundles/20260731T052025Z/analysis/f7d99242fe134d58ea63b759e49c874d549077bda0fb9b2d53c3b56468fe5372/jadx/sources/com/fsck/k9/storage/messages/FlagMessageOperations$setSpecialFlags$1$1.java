package com.fsck.k9.storage.messages;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagMessageOperations$setSpecialFlags$1$1 extends FunctionReferenceImpl implements Function1 {
    public static final FlagMessageOperations$setSpecialFlags$1$1 INSTANCE = new FlagMessageOperations$setSpecialFlags$1$1(1, Long.TYPE, "toString", "toString()Ljava/lang/String;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return String.valueOf(((Number) obj).longValue());
    }
}
