package org.mozilla.javascript;

import java.io.Serializable;
import java.util.function.Supplier;
import org.mozilla.javascript.NativeError;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeError$$ExternalSyntheticLambda2 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Serializable f$0;

    public /* synthetic */ NativeError$$ExternalSyntheticLambda2(int i, Serializable serializable) {
        this.$r8$classId = i;
        this.f$0 = serializable;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        int i = this.$r8$classId;
        Serializable serializable = this.f$0;
        switch (i) {
            case 0:
                return ((NativeError.ProtoProps) serializable).getStackTraceLimit();
            case 1:
                return ((NativeError.ProtoProps) serializable).getPrepareStackTrace();
            default:
                return ((NativeError) serializable).getStackDelegated();
        }
    }
}
