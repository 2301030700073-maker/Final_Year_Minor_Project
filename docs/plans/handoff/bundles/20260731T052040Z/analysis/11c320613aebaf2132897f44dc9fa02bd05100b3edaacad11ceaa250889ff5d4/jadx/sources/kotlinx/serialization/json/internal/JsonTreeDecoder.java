package kotlinx.serialization.json.internal;

import androidx.compose.ui.node.Owner;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.descriptors.PolymorphicKind$OPEN;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind$ENUM;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.koin.core.registry.PropertyRegistry;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        String str = "Expected " + Reflection.getOrCreateKotlinClass(JsonObject.class).getSimpleName() + ", but had " + Reflection.getOrCreateKotlinClass(currentObject.getClass()).getSimpleName() + " as the serialized body of " + serialName;
        String renderTagStack = renderTagStack();
        String obj = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, currentObject.toString()).toString() : null;
        throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, str, renderTagStack, null, obj), str, renderTagStack, obj, null);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonElement currentElement(String str) {
        str.getClass();
        return (JsonElement) MapsKt__MapsKt.getValue(str, getValue());
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
            if (getValue().containsKey(tag) || setForceNull(serialDescriptor, i2)) {
                if (this.configuration.coerceInputValues) {
                    boolean isElementOptional = serialDescriptor.isElementOptional(i2);
                    SerialDescriptor elementDescriptor = serialDescriptor.getElementDescriptor(i2);
                    if (!isElementOptional || elementDescriptor.isNullable() || !(((JsonElement) getValue().get(tag)) instanceof JsonNull)) {
                        if (Intrinsics.areEqual(elementDescriptor.getKind(), SerialKind$ENUM.INSTANCE) && (!elementDescriptor.isNullable() || !(((JsonElement) getValue().get(tag)) instanceof JsonNull))) {
                            JsonElement jsonElement = (JsonElement) getValue().get(tag);
                            String str = null;
                            JsonPrimitive jsonPrimitive = jsonElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElement : null;
                            if (jsonPrimitive != null) {
                                InlineClassDescriptor inlineClassDescriptor = JsonElementKt.jsonUnquotedLiteralDescriptor;
                                if (!(jsonPrimitive instanceof JsonNull)) {
                                    str = jsonPrimitive.getContent();
                                }
                            }
                            if (str != null) {
                                Json json = this.json;
                                int jsonNameIndex = WriteModeKt.getJsonNameIndex(elementDescriptor, json, str);
                                boolean z = !json.configuration.explicitNulls && elementDescriptor.isNullable();
                                if (jsonNameIndex == -3 && ((isElementOptional || z) && !setForceNull(serialDescriptor, i2))) {
                                }
                            }
                        }
                    }
                }
                return i2;
            }
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
        if (this.configuration.useAlternativeNames && !getValue().content.keySet().contains(elementName)) {
            PropertyRegistry propertyRegistry = json._schemaCache;
            ComponentRegistry$Builder$$ExternalSyntheticLambda0 componentRegistry$Builder$$ExternalSyntheticLambda0 = new ComponentRegistry$Builder$$ExternalSyntheticLambda0(serialDescriptor, json, 17);
            propertyRegistry.getClass();
            ConcurrentHashMap concurrentHashMap = propertyRegistry._values;
            Map map = (Map) concurrentHashMap.get(serialDescriptor);
            Object obj = null;
            JsonPath$Tombstone jsonPath$Tombstone = WriteModeKt.JsonDeserializationNamesKey;
            Object obj2 = map != null ? map.get(jsonPath$Tombstone) : null;
            if (obj2 == null) {
                obj2 = null;
            }
            if (obj2 == null) {
                obj2 = componentRegistry$Builder$$ExternalSyntheticLambda0.invoke();
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
        Set set;
        serialDescriptor.getClass();
        Json json = this.json;
        if (WriteModeKt.ignoreUnknownKeys(serialDescriptor, json) || (serialDescriptor.getKind() instanceof PolymorphicKind$OPEN)) {
            return;
        }
        WriteModeKt.namingStrategy(serialDescriptor, json);
        if (this.configuration.useAlternativeNames) {
            Set cachedSerialNames = Platform_commonKt.cachedSerialNames(serialDescriptor);
            PropertyRegistry propertyRegistry = json._schemaCache;
            propertyRegistry.getClass();
            Map map = (Map) propertyRegistry._values.get(serialDescriptor);
            Object obj = map != null ? map.get(WriteModeKt.JsonDeserializationNamesKey) : null;
            if (obj == null) {
                obj = null;
            }
            Map map2 = (Map) obj;
            Set keySet = map2 != null ? map2.keySet() : null;
            if (keySet == null) {
                keySet = EmptySet.INSTANCE;
            }
            Set set2 = keySet;
            cachedSerialNames.getClass();
            Integer valueOf = set2 instanceof Collection ? Integer.valueOf(set2.size()) : null;
            LinkedHashSet linkedHashSet = new LinkedHashSet(MapsKt__MapsKt.mapCapacity(valueOf != null ? cachedSerialNames.size() + valueOf.intValue() : cachedSerialNames.size() * 2));
            linkedHashSet.addAll(cachedSerialNames);
            CollectionsKt__MutableCollectionsKt.addAll(set2, linkedHashSet);
            set = linkedHashSet;
        } else {
            set = Platform_commonKt.cachedSerialNames(serialDescriptor);
        }
        for (String str : getValue().content.keySet()) {
            if (!set.contains(str) && !Intrinsics.areEqual(str, this.polymorphicDiscriminator)) {
                String m = Owner.CC.m('\'', "Encountered an unknown key '", str);
                String renderTagStack = renderTagStack();
                String obj2 = json.configuration.exceptionsWithDebugInfo ? WriteModeKt.minify(-1, getValue().toString()).toString() : null;
                throw new JsonDecodingException(-1, WriteModeKt.formatDecodingException(-1, m, renderTagStack, "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.", obj2), m, renderTagStack, obj2, "Use 'ignoreUnknownKeys = true' in 'Json {}' builder or '@JsonIgnoreUnknownKeys' annotation to ignore unknown keys.");
            }
        }
    }

    public final boolean setForceNull(SerialDescriptor serialDescriptor, int i) {
        boolean z = (this.json.configuration.explicitNulls || serialDescriptor.isElementOptional(i) || !serialDescriptor.getElementDescriptor(i).isNullable()) ? false : true;
        this.forceNull = z;
        return z;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonObject getValue() {
        return this.value;
    }

    public /* synthetic */ JsonTreeDecoder(Json json, JsonObject jsonObject, String str, int i) {
        this(json, jsonObject, (i & 4) != 0 ? null : str, (SerialDescriptor) null);
    }
}
