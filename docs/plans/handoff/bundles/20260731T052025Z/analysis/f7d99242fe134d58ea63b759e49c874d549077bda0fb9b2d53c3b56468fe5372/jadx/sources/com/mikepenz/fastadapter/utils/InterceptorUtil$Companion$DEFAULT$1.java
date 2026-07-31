package com.mikepenz.fastadapter.utils;

import com.mikepenz.fastadapter.items.AbstractItem;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InterceptorUtil$Companion$DEFAULT$1 extends Lambda implements Function1 {
    public static final InterceptorUtil$Companion$DEFAULT$1 INSTANCE = new InterceptorUtil$Companion$DEFAULT$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AbstractItem abstractItem = (AbstractItem) obj;
        abstractItem.getClass();
        return abstractItem;
    }
}
