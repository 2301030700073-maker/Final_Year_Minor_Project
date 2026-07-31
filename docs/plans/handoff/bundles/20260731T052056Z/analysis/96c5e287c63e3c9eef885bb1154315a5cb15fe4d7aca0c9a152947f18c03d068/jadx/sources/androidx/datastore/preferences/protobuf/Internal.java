package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.GeneratedMessageLite;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Internal {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final Charset UTF_8 = Charset.forName("UTF-8");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public interface ProtobufList extends List, RandomAccess {
        ProtobufList mutableCopyWithCapacity(int i);
    }

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        ByteBuffer.wrap(bArr);
        if (0 + 0 <= Integer.MAX_VALUE) {
            return;
        }
        try {
            throw InvalidProtocolBufferException.truncatedMessage();
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static void checkNotNull(String str, Object obj) {
        if (obj != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3(str);
    }

    public static int hashLong(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static GeneratedMessageLite mergeMessage(Object obj, Object obj2) {
        GeneratedMessageLite generatedMessageLite = (GeneratedMessageLite) ((AbstractMessageLite) obj);
        GeneratedMessageLite.Builder builder = (GeneratedMessageLite.Builder) generatedMessageLite.dynamicMethod(GeneratedMessageLite.MethodToInvoke.NEW_BUILDER);
        builder.copyOnWrite();
        GeneratedMessageLite.Builder.mergeFromInstance(builder.instance, generatedMessageLite);
        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) obj2;
        if (!builder.defaultInstance.getClass().isInstance(abstractMessageLite)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("mergeFrom(MessageLite) can only merge messages of the same type.");
            return null;
        }
        builder.copyOnWrite();
        GeneratedMessageLite.Builder.mergeFromInstance(builder.instance, (GeneratedMessageLite) abstractMessageLite);
        return builder.buildPartial();
    }
}
