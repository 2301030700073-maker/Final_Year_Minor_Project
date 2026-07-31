package kotlinx.serialization.json.internal;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.SealedClassSerializer$$ExternalSyntheticLambda0;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.TuplesKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import okhttp3.ConnectionPool;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class JsonTreeDecoder extends AbstractJsonTreeDecoder {
    public boolean forceNull;
    public final SerialDescriptor polyDescriptor;
    public int position;
    public final JsonObject value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeDecoder(Json json, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor) {
        super(json, str);
        json.getClass();
        this.value = jsonObject;
        this.polyDescriptor = serialDescriptor;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.encoding.Decoder
    public final CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        SerialDescriptor serialDescriptor2 = this.polyDescriptor;
        if (serialDescriptor != serialDescriptor2) {
            return super.beginStructure(serialDescriptor);
        }
        JsonElement currentObject = currentObject();
        String serialName = serialDescriptor2.getSerialName();
        boolean z = currentObject instanceof JsonObject;
        Json json = this.json;
        if (z) {
            return new JsonTreeDecoder(json, (JsonObject) currentObject, this.polymorphicDiscriminator, serialDescriptor2);
        }
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName, renderTagStack(), null, json.configuration.canOverride ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null));
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonElement currentElement(String str) {
        str.getClass();
        return (JsonElement) MapsKt__MapsKt.getValue(getValue(), str);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(SerialDescriptor serialDescriptor) {
        serialDescriptor.getClass();
        while (this.position < serialDescriptor.getElementsCount()) {
            int i = this.position;
            this.position = i + 1;
            String tag = getTag(serialDescriptor, i);
            int i2 = this.position - 1;
            this.forceNull = false;
            if (!getValue().containsKey(tag)) {
                boolean z = (this.json.configuration.explicitNull || serialDescriptor.isElementOptional(i2) || !serialDescriptor.getElementDescriptor(i2).isNullable()) ? false : true;
                this.forceNull = z;
                if (z) {
                }
            }
            this.configuration.getClass();
            return i2;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.encoding.Decoder
    public final boolean decodeNotNullMark() {
        return !this.forceNull && super.decodeNotNullMark();
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public String elementName(SerialDescriptor serialDescriptor, int i) {
        serialDescriptor.getClass();
        Json json = this.json;
        WriteModeKt.namingStrategy(serialDescriptor, json);
        String elementName = serialDescriptor.getElementName(i);
        if (this.configuration.isDynamic && !getValue().content.keySet().contains(elementName)) {
            ConnectionPool connectionPool = json._schemaCache;
            SealedClassSerializer$$ExternalSyntheticLambda0 sealedClassSerializer$$ExternalSyntheticLambda0 = new SealedClassSerializer$$ExternalSyntheticLambda0(4, serialDescriptor, json);
            connectionPool.getClass();
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) connectionPool.delegate;
            Map map = (Map) concurrentHashMap.get(serialDescriptor);
            Object obj = null;
            JsonPath$Tombstone jsonPath$Tombstone = WriteModeKt.JsonDeserializationNamesKey;
            Object obj2 = map != null ? map.get(jsonPath$Tombstone) : null;
            if (obj2 == null) {
                obj2 = null;
            }
            if (obj2 == null) {
                obj2 = sealedClassSerializer$$ExternalSyntheticLambda0.invoke();
                Object obj3 = concurrentHashMap.get(serialDescriptor);
                if (obj3 == null) {
                    obj3 = new ConcurrentHashMap(2);
                    concurrentHashMap.put(serialDescriptor, obj3);
                }
                ((Map) obj3).put(jsonPath$Tombstone, obj2);
            }
            Map map2 = (Map) obj2;
            Iterator it = getValue().content.keySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                Integer num = (Integer) map2.get((String) next);
                if (num != null && num.intValue() == i) {
                    obj = next;
                    break;
                }
            }
            String str = (String) obj;
            if (str != null) {
                return str;
            }
        }
        return elementName;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        Set plus;
        serialDescriptor.getClass();
        Json json = this.json;
        if (WriteModeKt.ignoreUnknownKeys(serialDescriptor, json) || (serialDescriptor.getKind() instanceof PolymorphicKind$OPEN)) {
            return;
        }
        WriteModeKt.namingStrategy(serialDescriptor, json);
        if (this.configuration.isDynamic) {
            Set cachedSerialNames = TuplesKt.cachedSerialNames(serialDescriptor);
            ConnectionPool connectionPool = json._schemaCache;
            connectionPool.getClass();
            Map map = (Map) ((ConcurrentHashMap) connectionPool.delegate).get(serialDescriptor);
            Object obj = map != null ? map.get(WriteModeKt.JsonDeserializationNamesKey) : null;
            if (obj == null) {
                obj = null;
            }
            Map map2 = (Map) obj;
            Set keySet = map2 != null ? map2.keySet() : null;
            if (keySet == null) {
                keySet = EmptySet.INSTANCE;
            }
            plus = Validate.plus(cachedSerialNames, (Iterable) keySet);
        } else {
            plus = TuplesKt.cachedSerialNames(serialDescriptor);
        }
        for (String str : getValue().content.keySet()) {
            if (!plus.contains(str) && !Intrinsics.areEqual(str, this.polymorphicDiscriminator)) {
                throw new JsonDecodingException(WriteModeKt.formatDecodingException(-1, CameraDevices$CC.m('\'', "Encountered an unknown key '", str), renderTagStack(), "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.", json.configuration.canOverride ? WriteModeKt.minify(-1, getValue().toString()).toString() : null));
            }
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonObject getValue() {
        return this.value;
    }

    public /* synthetic */ JsonTreeDecoder(Json json, JsonObject jsonObject, String str, int i) {
        this(json, jsonObject, (i & 4) != 0 ? null : str, (SerialDescriptor) null);
    }
}
