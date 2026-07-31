package kotlinx.serialization.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ArrayClassDesc extends ListLikeDescriptor {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ArrayClassDesc(SerialDescriptor serialDescriptor, int i) {
        super(serialDescriptor);
        this.$r8$classId = i;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String getSerialName() {
        switch (this.$r8$classId) {
            case 0:
                return "kotlin.Array";
            default:
                return "kotlin.collections.ArrayList";
        }
    }
}
