package net.thunderbird.feature.search.legacy;

import kotlin.Lazy;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import net.thunderbird.feature.search.legacy.api.SearchCondition;
import net.thunderbird.feature.search.legacy.api.SearchCondition$$serializer;
import okhttp3.CacheControl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchConditionTreeNode$$serializer implements GeneratedSerializer {
    public static final SearchConditionTreeNode$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        SearchConditionTreeNode$$serializer searchConditionTreeNode$$serializer = new SearchConditionTreeNode$$serializer();
        INSTANCE = searchConditionTreeNode$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.thunderbird.feature.search.legacy.SearchConditionTreeNode", searchConditionTreeNode$$serializer, 4);
        pluginGeneratedSerialDescriptor.addElement("operator", false);
        pluginGeneratedSerialDescriptor.addElement("condition", true);
        pluginGeneratedSerialDescriptor.addElement("left", true);
        pluginGeneratedSerialDescriptor.addElement("right", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        SearchConditionTreeNode$$serializer searchConditionTreeNode$$serializer = INSTANCE;
        return new KSerializer[]{SearchConditionTreeNode.$childSerializers[0].getValue(), CacheControl.Companion.getNullable(SearchCondition$$serializer.INSTANCE), CacheControl.Companion.getNullable(searchConditionTreeNode$$serializer), CacheControl.Companion.getNullable(searchConditionTreeNode$$serializer)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = SearchConditionTreeNode.$childSerializers;
        int i = 0;
        SearchConditionTreeNode.Operator operator = null;
        SearchCondition searchCondition = null;
        SearchConditionTreeNode searchConditionTreeNode = null;
        SearchConditionTreeNode searchConditionTreeNode2 = null;
        boolean z = true;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z = false;
            } else if (decodeElementIndex == 0) {
                operator = (SearchConditionTreeNode.Operator) beginStructure.decodeSerializableElement(serialDescriptor, 0, (KSerializer) lazyArr[0].getValue(), operator);
                i |= 1;
            } else if (decodeElementIndex != 1) {
                SearchConditionTreeNode$$serializer searchConditionTreeNode$$serializer = INSTANCE;
                if (decodeElementIndex == 2) {
                    searchConditionTreeNode = (SearchConditionTreeNode) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, searchConditionTreeNode$$serializer, searchConditionTreeNode);
                    i |= 4;
                } else {
                    if (decodeElementIndex != 3) {
                        throw new UnknownFieldException(decodeElementIndex);
                    }
                    searchConditionTreeNode2 = (SearchConditionTreeNode) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, searchConditionTreeNode$$serializer, searchConditionTreeNode2);
                    i |= 8;
                }
            } else {
                searchCondition = (SearchCondition) beginStructure.decodeNullableSerializableElement(serialDescriptor, 1, SearchCondition$$serializer.INSTANCE, searchCondition);
                i |= 2;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new SearchConditionTreeNode(i, operator, searchCondition, searchConditionTreeNode, searchConditionTreeNode2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        SearchConditionTreeNode searchConditionTreeNode = (SearchConditionTreeNode) obj;
        searchConditionTreeNode.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(serialDescriptor);
        KSerializer kSerializer = (KSerializer) SearchConditionTreeNode.$childSerializers[0].getValue();
        SearchConditionTreeNode.Operator operator = searchConditionTreeNode.operator;
        SearchConditionTreeNode searchConditionTreeNode2 = searchConditionTreeNode.right;
        SearchConditionTreeNode searchConditionTreeNode3 = searchConditionTreeNode.left;
        SearchCondition searchCondition = searchConditionTreeNode.condition;
        beginStructure.encodeSerializableElement(serialDescriptor, 0, kSerializer, operator);
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || searchCondition != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 1, SearchCondition$$serializer.INSTANCE, searchCondition);
        }
        boolean shouldEncodeElementDefault = beginStructure.shouldEncodeElementDefault(serialDescriptor);
        SearchConditionTreeNode$$serializer searchConditionTreeNode$$serializer = INSTANCE;
        if (shouldEncodeElementDefault || searchConditionTreeNode3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 2, searchConditionTreeNode$$serializer, searchConditionTreeNode3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || searchConditionTreeNode2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, searchConditionTreeNode$$serializer, searchConditionTreeNode2);
        }
        beginStructure.endStructure(serialDescriptor);
    }
}
