package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.nio.charset.Charset;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ManifestSchemaFactory {
    public static final AnonymousClass1 EMPTY_FACTORY = new AnonymousClass1(0);
    public final Object messageInfoFactory;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.datastore.preferences.protobuf.ManifestSchemaFactory$1, reason: invalid class name */
    public final class AnonymousClass1 implements MessageInfoFactory {
        public static final AnonymousClass1 instance = new AnonymousClass1(1);
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final boolean isSupported(Class cls) {
            switch (this.$r8$classId) {
                case 0:
                    return false;
                default:
                    return GeneratedMessageLite.class.isAssignableFrom(cls);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final RawMessageInfo messageInfoFor(Class cls) {
            switch (this.$r8$classId) {
                case 0:
                    throw new IllegalStateException("This should never be called.");
                default:
                    if (!GeneratedMessageLite.class.isAssignableFrom(cls)) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Unsupported message type: ".concat(cls.getName()));
                        return null;
                    }
                    try {
                        return (RawMessageInfo) GeneratedMessageLite.getDefaultInstance(cls.asSubclass(GeneratedMessageLite.class)).dynamicMethod(GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO);
                    } catch (Exception e) {
                        ContextsKt$$ExternalSyntheticBUOutline0.m("Unable to get message info for ".concat(cls.getName()), (Throwable) e);
                        return null;
                    }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CompositeMessageInfoFactory implements MessageInfoFactory {
        public MessageInfoFactory[] factories;

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final boolean isSupported(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.MessageInfoFactory
        public final RawMessageInfo messageInfoFor(Class cls) {
            for (MessageInfoFactory messageInfoFactory : this.factories) {
                if (messageInfoFactory.isSupported(cls)) {
                    return messageInfoFactory.messageInfoFor(cls);
                }
            }
            Gson$$ExternalSyntheticBUOutline0.m("No factory is available for message type: ".concat(cls.getName()));
            return null;
        }
    }

    public ManifestSchemaFactory() {
        MessageInfoFactory messageInfoFactory;
        try {
            messageInfoFactory = (MessageInfoFactory) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            messageInfoFactory = EMPTY_FACTORY;
        }
        MessageInfoFactory[] messageInfoFactoryArr = {AnonymousClass1.instance, messageInfoFactory};
        CompositeMessageInfoFactory compositeMessageInfoFactory = new CompositeMessageInfoFactory();
        compositeMessageInfoFactory.factories = messageInfoFactoryArr;
        Charset charset = Internal.UTF_8;
        this.messageInfoFactory = compositeMessageInfoFactory;
    }

    public void writeBool(int i, boolean z) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeBool(i, z);
    }

    public void writeBytes(int i, ByteString$LiteralByteString byteString$LiteralByteString) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeBytes(i, byteString$LiteralByteString);
    }

    public void writeDouble(double d, int i) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeFixed64(Double.doubleToRawLongBits(d), i);
    }

    public void writeEnum(int i, int i2) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeInt32(i, i2);
    }

    public void writeFixed32(int i, int i2) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeFixed32(i, i2);
    }

    public void writeFixed64(long j, int i) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeFixed64(j, i);
    }

    public void writeFloat(int i, float f) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeFixed32(i, Float.floatToRawIntBits(f));
    }

    public void writeGroup(int i, Object obj, Schema schema) {
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory;
        codedOutputStream$OutputStreamEncoder.writeTag(i, 3);
        schema.writeTo((AbstractMessageLite) obj, codedOutputStream$OutputStreamEncoder.wrapper);
        codedOutputStream$OutputStreamEncoder.writeTag(i, 4);
    }

    public void writeInt32(int i, int i2) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeInt32(i, i2);
    }

    public void writeInt64(long j, int i) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeUInt64(j, i);
    }

    public void writeMessage(int i, Object obj, Schema schema) {
        CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder = (CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory;
        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) obj;
        codedOutputStream$OutputStreamEncoder.writeTag(i, 2);
        codedOutputStream$OutputStreamEncoder.writeUInt32NoTag(abstractMessageLite.getSerializedSize(schema));
        schema.writeTo(abstractMessageLite, codedOutputStream$OutputStreamEncoder.wrapper);
    }

    public void writeSFixed32(int i, int i2) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeFixed32(i, i2);
    }

    public void writeSFixed64(long j, int i) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeFixed64(j, i);
    }

    public void writeSInt32(int i, int i2) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeUInt32(i, (i2 >> 31) ^ (i2 << 1));
    }

    public void writeSInt64(long j, int i) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeUInt64((j >> 63) ^ (j << 1), i);
    }

    public void writeUInt32(int i, int i2) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeUInt32(i, i2);
    }

    public void writeUInt64(long j, int i) {
        ((CodedOutputStream$OutputStreamEncoder) this.messageInfoFactory).writeUInt64(j, i);
    }

    public ManifestSchemaFactory(CodedOutputStream$OutputStreamEncoder codedOutputStream$OutputStreamEncoder) {
        Charset charset = Internal.UTF_8;
        this.messageInfoFactory = codedOutputStream$OutputStreamEncoder;
        codedOutputStream$OutputStreamEncoder.wrapper = this;
    }
}
