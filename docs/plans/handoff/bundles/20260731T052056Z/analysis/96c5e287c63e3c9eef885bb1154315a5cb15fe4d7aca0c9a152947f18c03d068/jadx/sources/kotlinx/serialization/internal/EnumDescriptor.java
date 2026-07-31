package kotlinx.serialization.internal;

import androidx.room.Room;
import kotlin.SynchronizedLazyImpl;
import kotlin.UIntArray;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexingIterable;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EnumDescriptor extends PluginGeneratedSerialDescriptor {
    public final SynchronizedLazyImpl elementDescriptors$delegate;
    public final SerialKind$ENUM kind;

    public EnumDescriptor(int i, String str) {
        super(str, null, i);
        this.kind = SerialKind$ENUM.INSTANCE;
        this.elementDescriptors$delegate = new SynchronizedLazyImpl(new Http2Connection$$ExternalSyntheticLambda2(i, str, this));
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SerialDescriptor)) {
            return false;
        }
        SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
        return serialDescriptor.getKind() == SerialKind$ENUM.INSTANCE && this.serialName.equals(serialDescriptor.getSerialName()) && Intrinsics.areEqual(TuplesKt.cachedSerialNames(this), TuplesKt.cachedSerialNames(serialDescriptor));
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor getElementDescriptor(int i) {
        return ((SerialDescriptor[]) this.elementDescriptors$delegate.getValue())[i];
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor, kotlinx.serialization.descriptors.SerialDescriptor
    public final Room getKind() {
        return this.kind;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public final int hashCode() {
        int hashCode = this.serialName.hashCode();
        UIntArray.Iterator iterator = new UIntArray.Iterator(this);
        int i = 1;
        while (iterator.hasNext()) {
            int i2 = i * 31;
            String str = (String) iterator.next();
            i = i2 + (str != null ? str.hashCode() : 0);
        }
        return (hashCode * 31) + i;
    }

    @Override // kotlinx.serialization.internal.PluginGeneratedSerialDescriptor
    public final String toString() {
        return CollectionsKt.joinToString$default(new IndexingIterable(5, this), ", ", this.serialName.concat("("), ")", null, 56);
    }
}
