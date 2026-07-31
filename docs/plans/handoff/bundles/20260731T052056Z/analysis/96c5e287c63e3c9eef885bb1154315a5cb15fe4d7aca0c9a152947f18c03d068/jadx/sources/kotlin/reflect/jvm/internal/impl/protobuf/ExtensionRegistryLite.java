package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ExtensionRegistryLite {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Map extensionsByNumber;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ObjectIntPair {
        public final int number;
        public final Object object;

        public ObjectIntPair(int i, Object obj) {
            this.object = obj;
            this.number = i;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ObjectIntPair)) {
                return false;
            }
            ObjectIntPair objectIntPair = (ObjectIntPair) obj;
            return this.object == objectIntPair.object && this.number == objectIntPair.number;
        }

        public final int hashCode() {
            return (System.identityHashCode(this.object) * 65535) + this.number;
        }
    }

    static {
        new ExtensionRegistryLite(0);
    }

    public ExtensionRegistryLite() {
        this.extensionsByNumber = new HashMap();
    }

    public final void add(GeneratedMessageLite.GeneratedExtension generatedExtension) {
        this.extensionsByNumber.put(new ObjectIntPair(generatedExtension.descriptor.number, generatedExtension.containingTypeDefaultInstance), generatedExtension);
    }

    public ExtensionRegistryLite(int i) {
        this.extensionsByNumber = Collections.EMPTY_MAP;
    }
}
