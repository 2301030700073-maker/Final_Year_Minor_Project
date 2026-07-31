package org.mozilla.javascript;

import j$.util.function.Consumer$CC;
import java.util.function.Consumer;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativeError$$ExternalSyntheticLambda1 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Scriptable f$0;

    public /* synthetic */ NativeError$$ExternalSyntheticLambda1(Scriptable scriptable, int i) {
        this.$r8$classId = i;
        this.f$0 = scriptable;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.$r8$classId;
        Scriptable scriptable = this.f$0;
        switch (i) {
            case 0:
                ((NativeError) scriptable).setStackDelegated(obj);
                break;
            default:
                ScriptRuntime.lambda$evalSpecial$0(scriptable, (CompilerEnvirons) obj);
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
