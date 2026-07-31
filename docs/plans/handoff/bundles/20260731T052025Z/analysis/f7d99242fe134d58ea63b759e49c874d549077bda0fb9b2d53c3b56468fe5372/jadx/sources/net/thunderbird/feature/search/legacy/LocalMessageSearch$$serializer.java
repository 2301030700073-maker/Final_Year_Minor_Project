package net.thunderbird.feature.search.legacy;

import java.util.HashSet;
import java.util.Set;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import okhttp3.CacheControl;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LocalMessageSearch$$serializer implements GeneratedSerializer {
    public static final LocalMessageSearch$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        LocalMessageSearch$$serializer localMessageSearch$$serializer = new LocalMessageSearch$$serializer();
        INSTANCE = localMessageSearch$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("net.thunderbird.feature.search.legacy.LocalMessageSearch", localMessageSearch$$serializer, 5);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("isManualSearch", true);
        pluginGeneratedSerialDescriptor.addElement("accountUuidSet", true);
        pluginGeneratedSerialDescriptor.addElement("conditionsRoot", true);
        pluginGeneratedSerialDescriptor.addElement("leafSet", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = LocalMessageSearch.$childSerializers;
        return new KSerializer[]{StringSerializer.INSTANCE, BooleanSerializer.INSTANCE, lazyArr[2].getValue(), CacheControl.Companion.getNullable(SearchConditionTreeNode$$serializer.INSTANCE), lazyArr[4].getValue()};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = LocalMessageSearch.$childSerializers;
        int i = 0;
        boolean z = false;
        String str = null;
        Set set = null;
        SearchConditionTreeNode searchConditionTreeNode = null;
        Set set2 = null;
        boolean z2 = true;
        while (z2) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            if (decodeElementIndex == -1) {
                z2 = false;
            } else if (decodeElementIndex == 0) {
                str = beginStructure.decodeStringElement(serialDescriptor, 0);
                i |= 1;
            } else if (decodeElementIndex == 1) {
                z = beginStructure.decodeBooleanElement(serialDescriptor, 1);
                i |= 2;
            } else if (decodeElementIndex == 2) {
                set = (Set) beginStructure.decodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), set);
                i |= 4;
            } else if (decodeElementIndex == 3) {
                searchConditionTreeNode = (SearchConditionTreeNode) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, SearchConditionTreeNode$$serializer.INSTANCE, searchConditionTreeNode);
                i |= 8;
            } else {
                if (decodeElementIndex != 4) {
                    throw new UnknownFieldException(decodeElementIndex);
                }
                set2 = (Set) beginStructure.decodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), set2);
                i |= 16;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new LocalMessageSearch(i, str, z, set, searchConditionTreeNode, set2);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(CharsKt__CharKt charsKt__CharKt, Object obj) {
        LocalMessageSearch localMessageSearch = (LocalMessageSearch) obj;
        localMessageSearch.getClass();
        Set set = localMessageSearch.leafSet;
        Set set2 = localMessageSearch.accountUuidSet;
        SerialDescriptor serialDescriptor = descriptor;
        CharsKt__CharKt beginStructure = charsKt__CharKt.beginStructure(serialDescriptor);
        Lazy[] lazyArr = LocalMessageSearch.$childSerializers;
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(localMessageSearch.id, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 0, localMessageSearch.id);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || localMessageSearch.isManualSearch) {
            boolean z = localMessageSearch.isManualSearch;
            beginStructure.encodeElement(serialDescriptor, 1);
            beginStructure.encodeBoolean(z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(set2, new HashSet())) {
            beginStructure.encodeSerializableElement(serialDescriptor, 2, (KSerializer) lazyArr[2].getValue(), set2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || localMessageSearch.conditionsRoot != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 3, SearchConditionTreeNode$$serializer.INSTANCE, localMessageSearch.conditionsRoot);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(set, new HashSet())) {
            beginStructure.encodeSerializableElement(serialDescriptor, 4, (KSerializer) lazyArr[4].getValue(), set);
        }
        beginStructure.endStructure(serialDescriptor);
    }
}
