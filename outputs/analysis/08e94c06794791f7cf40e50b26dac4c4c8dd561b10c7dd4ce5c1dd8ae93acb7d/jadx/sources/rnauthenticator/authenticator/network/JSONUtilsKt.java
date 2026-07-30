package rnauthenticator.authenticator.network;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;

/* compiled from: JSONUtils.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006\u001a'\u0010\u0007\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u00012\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00010\t2\u0006\u0010\u0004\u001a\u0002H\u0001¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"jsonParse", "T", "deserializer", "Lkotlinx/serialization/DeserializationStrategy;", "value", "", "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;", "jsonSerialize", "serializer", "Lkotlinx/serialization/SerializationStrategy;", "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class JSONUtilsKt {
    public static final <T> T jsonParse(DeserializationStrategy<T> deserializer, String value) {
        Intrinsics.checkNotNullParameter(deserializer, "deserializer");
        Intrinsics.checkNotNullParameter(value, "value");
        return (T) JsonKt.Json$default(null, new Function1() { // from class: rnauthenticator.authenticator.network.JSONUtilsKt$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit jsonParse$lambda$0;
                jsonParse$lambda$0 = JSONUtilsKt.jsonParse$lambda$0((JsonBuilder) obj);
                return jsonParse$lambda$0;
            }
        }, 1, null).decodeFromString(deserializer, value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit jsonParse$lambda$0(JsonBuilder Json) {
        Intrinsics.checkNotNullParameter(Json, "$this$Json");
        Json.setIgnoreUnknownKeys(true);
        return Unit.INSTANCE;
    }

    public static final <T> String jsonSerialize(SerializationStrategy<? super T> serializer, T t) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        return Json.INSTANCE.encodeToString(serializer, t);
    }
}
