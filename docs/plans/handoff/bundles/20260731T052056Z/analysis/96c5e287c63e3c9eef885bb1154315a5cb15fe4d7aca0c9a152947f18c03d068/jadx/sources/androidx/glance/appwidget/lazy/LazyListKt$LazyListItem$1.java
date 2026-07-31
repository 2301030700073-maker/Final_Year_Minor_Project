package androidx.glance.appwidget.lazy;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class LazyListKt$LazyListItem$1 extends FunctionReferenceImpl implements Function0 {
    public static final LazyListKt$LazyListItem$1 INSTANCE = new LazyListKt$LazyListItem$1(0, EmittableLazyListItem.class, "<init>", "<init>()V", 0);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return new EmittableLazyListItem();
    }
}
