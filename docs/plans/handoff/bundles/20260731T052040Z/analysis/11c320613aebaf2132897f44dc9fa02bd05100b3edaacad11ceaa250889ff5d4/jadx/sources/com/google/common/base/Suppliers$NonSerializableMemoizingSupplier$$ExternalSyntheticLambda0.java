package com.google.common.base;

import com.google.android.exoplayer2.analytics.DefaultPlaybackSessionManager;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0 implements Supplier {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        String generateDefaultSessionId;
        switch (this.$r8$classId) {
            case 0:
                throw new IllegalStateException();
            default:
                generateDefaultSessionId = DefaultPlaybackSessionManager.generateDefaultSessionId();
                return generateDefaultSessionId;
        }
    }
}
