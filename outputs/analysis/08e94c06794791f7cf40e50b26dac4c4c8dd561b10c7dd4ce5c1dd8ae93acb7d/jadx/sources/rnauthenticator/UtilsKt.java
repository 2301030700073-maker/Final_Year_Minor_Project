package rnauthenticator;

import com.facebook.internal.ServerProtocol;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonPrimitive;

/* compiled from: Utils.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toWritableMap", "Lcom/facebook/react/bridge/WritableMap;", "Lkotlinx/serialization/json/JsonElement;", "propertyguru_react-native-authenticator_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class UtilsKt {
    public static final WritableMap toWritableMap(JsonElement jsonElement) {
        Intrinsics.checkNotNullParameter(jsonElement, "<this>");
        WritableMap createMap = Arguments.createMap();
        for (Map.Entry<String, JsonElement> entry : JsonElementKt.getJsonObject(jsonElement).entrySet()) {
            String key = entry.getKey();
            JsonElement value = entry.getValue();
            if (value instanceof JsonPrimitive) {
                if (JsonElementKt.getJsonPrimitive(value).getIsString()) {
                    createMap.putString(key, JsonElementKt.getJsonPrimitive(value).getContent());
                } else if (Intrinsics.areEqual(JsonElementKt.getJsonPrimitive(value).getContent(), ServerProtocol.DIALOG_RETURN_SCOPES_TRUE) || Intrinsics.areEqual(JsonElementKt.getJsonPrimitive(value).getContent(), "false")) {
                    createMap.putBoolean(key, JsonElementKt.getBoolean(JsonElementKt.getJsonPrimitive(value)));
                } else if (StringsKt.contains$default((CharSequence) JsonElementKt.getJsonPrimitive(value).getContent(), (CharSequence) ".", false, 2, (Object) null)) {
                    createMap.putDouble(key, JsonElementKt.getDouble(JsonElementKt.getJsonPrimitive(value)));
                } else {
                    createMap.putInt(key, JsonElementKt.getInt(JsonElementKt.getJsonPrimitive(value)));
                }
            } else {
                createMap.putString(key, JsonElementKt.getJsonPrimitive(value).getContent());
            }
        }
        Intrinsics.checkNotNull(createMap);
        return createMap;
    }
}
