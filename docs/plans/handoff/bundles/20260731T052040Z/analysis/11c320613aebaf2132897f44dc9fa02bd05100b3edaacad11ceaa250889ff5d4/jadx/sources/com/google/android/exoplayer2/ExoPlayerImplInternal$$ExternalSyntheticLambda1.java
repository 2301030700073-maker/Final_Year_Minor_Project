package com.google.android.exoplayer2;

import com.google.common.base.Supplier;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExoPlayerImplInternal$$ExternalSyntheticLambda1 implements Supplier {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ ExoPlayerImplInternal$$ExternalSyntheticLambda1(Object obj, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        Boolean lambda$release$0;
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                lambda$release$0 = ((ExoPlayerImplInternal) obj).lambda$release$0();
                return lambda$release$0;
            default:
                return Boolean.valueOf(((AtomicBoolean) obj).get());
        }
    }
}
