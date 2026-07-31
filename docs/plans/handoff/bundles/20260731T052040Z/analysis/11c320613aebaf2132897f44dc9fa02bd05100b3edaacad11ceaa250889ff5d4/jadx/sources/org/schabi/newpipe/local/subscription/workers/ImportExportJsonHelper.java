package org.schabi.newpipe.local.subscription.workers;

import androidx.core.app.NotificationCompatBuilder;
import androidx.room.Room;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.JsonImpl;
import kotlinx.serialization.json.internal.ByteArrayPool;
import kotlinx.serialization.json.internal.ByteArrayPool8k;
import kotlinx.serialization.json.internal.CharArrayPool;
import kotlinx.serialization.json.internal.CharsetReader;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.ConnectionPool;
import org.schabi.newpipe.extractor.subscription.SubscriptionExtractor$InvalidSourceException;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda10;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImportExportJsonHelper {
    public static final JsonImpl json = Room.Json$default(new FeedFragment$$ExternalSyntheticLambda10(11));

    public static final List readFrom(InputStream inputStream) {
        try {
            JsonImpl jsonImpl = json;
            jsonImpl.getClass();
            KSerializer serializer = SubscriptionData.Companion.serializer();
            serializer.getClass();
            ConnectionPool connectionPool = new ConnectionPool(inputStream);
            CharsetReader charsetReader = (CharsetReader) connectionPool.delegate;
            try {
                Object decodeByReader = WriteModeKt.decodeByReader(jsonImpl, serializer, connectionPool);
                charsetReader.getClass();
                ByteArrayPool8k byteArrayPool8k = ByteArrayPool8k.INSTANCE;
                byte[] array = charsetReader.byteBuffer.array();
                array.getClass();
                byteArrayPool8k.getClass();
                byteArrayPool8k.releaseImpl(array);
                return ((SubscriptionData) decodeByReader).subscriptions;
            } catch (Throwable th) {
                charsetReader.getClass();
                ByteArrayPool8k byteArrayPool8k2 = ByteArrayPool8k.INSTANCE;
                byte[] array2 = charsetReader.byteBuffer.array();
                array2.getClass();
                byteArrayPool8k2.getClass();
                byteArrayPool8k2.releaseImpl(array2);
                throw th;
            }
        } catch (Throwable th2) {
            throw new SubscriptionExtractor$InvalidSourceException("Couldn't parse json", th2);
        }
    }

    public static final void writeTo(List list, OutputStream outputStream) {
        list.getClass();
        SubscriptionData subscriptionData = new SubscriptionData(list);
        JsonImpl jsonImpl = json;
        jsonImpl.getClass();
        KSerializer serializer = SubscriptionData.Companion.serializer();
        serializer.getClass();
        NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(outputStream);
        byte[] bArr = (byte[]) notificationCompatBuilder.mBuilderCompat;
        try {
            WriteModeKt.encodeByWriter(jsonImpl, notificationCompatBuilder, serializer, subscriptionData);
        } finally {
            notificationCompatBuilder.flush();
            CharArrayPool charArrayPool = CharArrayPool.INSTANCE;
            char[] cArr = (char[]) notificationCompatBuilder.mExtras;
            charArrayPool.getClass();
            cArr.getClass();
            charArrayPool.releaseImpl(cArr);
            ByteArrayPool byteArrayPool = ByteArrayPool.INSTANCE;
            byteArrayPool.getClass();
            bArr.getClass();
            byteArrayPool.releaseImpl(bArr);
        }
    }
}
