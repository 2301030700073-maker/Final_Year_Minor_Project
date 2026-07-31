package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SourceFile$1 implements ReceiverValue, SourceElement {
    public final /* synthetic */ int $r8$classId;
    public static final SourceFile$1 NO_SOURCE_FILE = new SourceFile$1(0);
    public static final SourceFile$1 INSTANCE = new SourceFile$1(1);

    public /* synthetic */ SourceFile$1(int i) {
        this.$r8$classId = i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue
    public KotlinType getType() {
        switch (this.$r8$classId) {
            case 2:
                throw new IllegalStateException("This method should not be called");
            case 3:
                throw new IllegalStateException("This method should not be called");
            default:
                throw new IllegalStateException("This method should not be called");
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 6:
                return "NO_SOURCE";
            default:
                return super.toString();
        }
    }
}
