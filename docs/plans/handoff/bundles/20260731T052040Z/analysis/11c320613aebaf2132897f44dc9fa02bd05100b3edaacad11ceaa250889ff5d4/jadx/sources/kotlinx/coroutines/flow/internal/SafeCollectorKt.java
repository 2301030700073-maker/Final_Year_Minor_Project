package kotlinx.coroutines.flow.internal;

import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SafeCollectorKt {
    public static final Function3 emitFun;

    static {
        SafeCollectorKt$emitFun$1 safeCollectorKt$emitFun$1 = SafeCollectorKt$emitFun$1.INSTANCE;
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(3, safeCollectorKt$emitFun$1);
        emitFun = safeCollectorKt$emitFun$1;
    }
}
