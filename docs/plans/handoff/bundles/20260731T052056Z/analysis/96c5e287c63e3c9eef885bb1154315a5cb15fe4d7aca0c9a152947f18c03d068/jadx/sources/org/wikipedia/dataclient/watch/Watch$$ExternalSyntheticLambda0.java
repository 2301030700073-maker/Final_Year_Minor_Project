package org.wikipedia.dataclient.watch;

import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.HashSetSerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.wikipedia.dataclient.mwapi.MwServiceError$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class Watch$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ Watch$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 26:
                StringSerializer stringSerializer = StringSerializer.INSTANCE;
                break;
        }
        return new HashSetSerializer(MwServiceError$$serializer.INSTANCE, 1);
    }
}
