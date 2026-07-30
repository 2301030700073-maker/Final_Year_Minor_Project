package kotlinx.serialization.internal;

import kotlin.UInt;
import kotlin.UIntArray;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;

/* compiled from: PrimitiveArraysSerializers.kt */
/* loaded from: classes2.dex */
public final class UIntArraySerializer extends PrimitiveArraySerializer implements KSerializer {
    public static final UIntArraySerializer INSTANCE = new UIntArraySerializer();

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ int collectionSize(Object obj) {
        return m2869collectionSizeajY9A(((UIntArray) obj).m2698unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ Object empty() {
        return UIntArray.m2684boximpl(m2870emptyhP7Qyg());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public /* bridge */ /* synthetic */ Object toBuilder(Object obj) {
        return m2871toBuilderajY9A(((UIntArray) obj).m2698unboximpl());
    }

    @Override // kotlinx.serialization.internal.PrimitiveArraySerializer
    public /* bridge */ /* synthetic */ void writeContent(CompositeEncoder compositeEncoder, Object obj, int i) {
        m2872writeContentCPlH8fI(compositeEncoder, ((UIntArray) obj).m2698unboximpl(), i);
    }

    private UIntArraySerializer() {
        super(BuiltinSerializersKt.serializer(UInt.Companion));
    }

    /* renamed from: collectionSize--ajY-9A, reason: not valid java name */
    protected int m2869collectionSizeajY9A(int[] collectionSize) {
        Intrinsics.checkNotNullParameter(collectionSize, "$this$collectionSize");
        return UIntArray.m2691getSizeimpl(collectionSize);
    }

    /* renamed from: toBuilder--ajY-9A, reason: not valid java name */
    protected UIntArrayBuilder m2871toBuilderajY9A(int[] toBuilder) {
        Intrinsics.checkNotNullParameter(toBuilder, "$this$toBuilder");
        return new UIntArrayBuilder(toBuilder, null);
    }

    /* renamed from: empty--hP7Qyg, reason: not valid java name */
    protected int[] m2870emptyhP7Qyg() {
        return UIntArray.m2685constructorimpl(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.CollectionLikeSerializer, kotlinx.serialization.internal.AbstractCollectionSerializer
    public void readElement(CompositeDecoder decoder, int i, UIntArrayBuilder builder, boolean z) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        Intrinsics.checkNotNullParameter(builder, "builder");
        builder.m2867appendWZ4Q5Ns$kotlinx_serialization_core(UInt.m2679constructorimpl(decoder.decodeInlineElement(getDescriptor(), i).decodeInt()));
    }

    /* renamed from: writeContent-CPlH8fI, reason: not valid java name */
    protected void m2872writeContentCPlH8fI(CompositeEncoder encoder, int[] content, int i) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(content, "content");
        for (int i2 = 0; i2 < i; i2++) {
            encoder.encodeInlineElement(getDescriptor(), i2).encodeInt(UIntArray.m2690getpVg5ArA(content, i2));
        }
    }
}
