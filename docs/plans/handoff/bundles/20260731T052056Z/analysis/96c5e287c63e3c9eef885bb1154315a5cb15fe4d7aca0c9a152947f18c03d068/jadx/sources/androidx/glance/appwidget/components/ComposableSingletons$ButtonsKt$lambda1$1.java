package androidx.glance.appwidget.components;

import androidx.compose.runtime.GapComposer;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* renamed from: androidx.glance.appwidget.components.ComposableSingletons$ButtonsKt$lambda-1$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class ComposableSingletons$ButtonsKt$lambda1$1 extends Lambda implements Function2 {
    public static final ComposableSingletons$ButtonsKt$lambda1$1 INSTANCE = new ComposableSingletons$ButtonsKt$lambda1$1(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        GapComposer gapComposer = (GapComposer) obj;
        if ((((Number) obj2).intValue() & 3) == 2 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        }
        return Unit.INSTANCE;
    }
}
