package org.mozilla.javascript;

import org.mozilla.javascript.NativePromise;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class NativePromise$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ NativePromise.Reaction f$0;
    public final /* synthetic */ Context f$1;
    public final /* synthetic */ Scriptable f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ NativePromise$$ExternalSyntheticLambda0(NativePromise.Reaction reaction, Context context, Scriptable scriptable, Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = reaction;
        this.f$1 = context;
        this.f$2 = scriptable;
        this.f$3 = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.f$3;
        Scriptable scriptable = this.f$2;
        Context context = this.f$1;
        NativePromise.Reaction reaction = this.f$0;
        switch (i) {
            case 0:
                reaction.invoke(context, scriptable, obj);
                break;
            default:
                reaction.invoke(context, scriptable, obj);
                break;
        }
    }
}
