package org.wikipedia.dataclient.mwapi;

import java.util.List;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwServiceError;
import org.wikipedia.dataclient.mwapi.UserInfo;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class UserInfo$$serializer implements GeneratedSerializer {
    public static final UserInfo$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        UserInfo$$serializer userInfo$$serializer = new UserInfo$$serializer();
        INSTANCE = userInfo$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.UserInfo", userInfo$$serializer, 19);
        pluginGeneratedSerialDescriptor.addElement("blockedbyid", true);
        pluginGeneratedSerialDescriptor.addElement("blockid", true);
        pluginGeneratedSerialDescriptor.addElement("blockedby", true);
        pluginGeneratedSerialDescriptor.addElement("blockreason", true);
        pluginGeneratedSerialDescriptor.addElement("blockedtimestamp", true);
        pluginGeneratedSerialDescriptor.addElement("blockexpiry", true);
        pluginGeneratedSerialDescriptor.addElement("id", true);
        pluginGeneratedSerialDescriptor.addElement("groups", true);
        pluginGeneratedSerialDescriptor.addElement("latestcontrib", true);
        pluginGeneratedSerialDescriptor.addElement("registrationdate", true);
        pluginGeneratedSerialDescriptor.addElement("registration", true);
        pluginGeneratedSerialDescriptor.addElement("editcount", true);
        pluginGeneratedSerialDescriptor.addElement("name", true);
        pluginGeneratedSerialDescriptor.addElement("anon", true);
        pluginGeneratedSerialDescriptor.addElement("messages", true);
        pluginGeneratedSerialDescriptor.addElement("rights", true);
        pluginGeneratedSerialDescriptor.addElement("cancreate", true);
        pluginGeneratedSerialDescriptor.addElement("cancreateerror", true);
        pluginGeneratedSerialDescriptor.addElement("options", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = UserInfo.$childSerializers;
        IntSerializer intSerializer = IntSerializer.INSTANCE;
        StringSerializer stringSerializer = StringSerializer.INSTANCE;
        BooleanSerializer booleanSerializer = BooleanSerializer.INSTANCE;
        return new KSerializer[]{intSerializer, intSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, intSerializer, UnsignedKt.getNullable((KSerializer) lazyArr[7].getValue()), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), UnsignedKt.getNullable(stringSerializer), intSerializer, stringSerializer, booleanSerializer, booleanSerializer, lazyArr[15].getValue(), booleanSerializer, UnsignedKt.getNullable((KSerializer) lazyArr[17].getValue()), UnsignedKt.getNullable(UserInfo$Options$$serializer.INSTANCE)};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        String str;
        int i;
        int i2;
        int i3;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = UserInfo.$childSerializers;
        List list = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        List list2 = null;
        List list3 = null;
        int i4 = 0;
        UserInfo.Options options = null;
        int i5 = 0;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        int i6 = 0;
        boolean z = true;
        int i7 = 0;
        int i8 = 0;
        String str9 = null;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    str = str5;
                    z = false;
                    str5 = str;
                case 0:
                    i = i5;
                    str = str5;
                    i7 = beginStructure.decodeIntElement(serialDescriptor, 0);
                    i4 |= 1;
                    i5 = i;
                    str5 = str;
                case 1:
                    str = str5;
                    i4 |= 2;
                    i5 = beginStructure.decodeIntElement(serialDescriptor, 1);
                    str5 = str;
                case 2:
                    i3 = i5;
                    str5 = beginStructure.decodeStringElement(serialDescriptor, 2);
                    i4 |= 4;
                    i5 = i3;
                case 3:
                    i3 = i5;
                    str6 = beginStructure.decodeStringElement(serialDescriptor, 3);
                    i4 |= 8;
                    i5 = i3;
                case 4:
                    i3 = i5;
                    str7 = beginStructure.decodeStringElement(serialDescriptor, 4);
                    i4 |= 16;
                    i5 = i3;
                case 5:
                    i3 = i5;
                    str8 = beginStructure.decodeStringElement(serialDescriptor, 5);
                    i4 |= 32;
                    i5 = i3;
                case 6:
                    i3 = i5;
                    i6 = beginStructure.decodeIntElement(serialDescriptor, 6);
                    i4 |= 64;
                    i5 = i3;
                case 7:
                    i = i5;
                    str = str5;
                    list3 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), list3);
                    i4 |= 128;
                    i5 = i;
                    str5 = str;
                case 8:
                    i = i5;
                    str = str5;
                    str4 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str4);
                    i4 |= 256;
                    i5 = i;
                    str5 = str;
                case 9:
                    i = i5;
                    str = str5;
                    str3 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, str3);
                    i4 |= 512;
                    i5 = i;
                    str5 = str;
                case 10:
                    i = i5;
                    str = str5;
                    str2 = (String) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, str2);
                    i4 |= 1024;
                    i5 = i;
                    str5 = str;
                case 11:
                    i3 = i5;
                    i8 = beginStructure.decodeIntElement(serialDescriptor, 11);
                    i4 |= 2048;
                    i5 = i3;
                case 12:
                    i3 = i5;
                    str9 = beginStructure.decodeStringElement(serialDescriptor, 12);
                    i4 |= 4096;
                    i5 = i3;
                case IMAGE_VALUE:
                    i3 = i5;
                    z2 = beginStructure.decodeBooleanElement(serialDescriptor, 13);
                    i4 |= 8192;
                    i5 = i3;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    i3 = i5;
                    z3 = beginStructure.decodeBooleanElement(serialDescriptor, 14);
                    i4 |= 16384;
                    i5 = i3;
                case 15:
                    i = i5;
                    str = str5;
                    list = (List) beginStructure.decodeSerializableElement(serialDescriptor, 15, (KSerializer) lazyArr[15].getValue(), list);
                    i2 = 32768;
                    i4 |= i2;
                    i5 = i;
                    str5 = str;
                case LAZY_VERTICAL_GRID_VALUE:
                    i3 = i5;
                    z4 = beginStructure.decodeBooleanElement(serialDescriptor, 16);
                    i4 |= 65536;
                    i5 = i3;
                case VERTICAL_GRID_ITEM_VALUE:
                    i = i5;
                    str = str5;
                    list2 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 17, (KSerializer) lazyArr[17].getValue(), list2);
                    i2 = 131072;
                    i4 |= i2;
                    i5 = i;
                    str5 = str;
                case RADIO_GROUP_VALUE:
                    i = i5;
                    str = str5;
                    options = (UserInfo.Options) beginStructure.decodeNullableSerializableElement(serialDescriptor, 18, UserInfo$Options$$serializer.INSTANCE, options);
                    i2 = 262144;
                    i4 |= i2;
                    i5 = i;
                    str5 = str;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        beginStructure.endStructure(serialDescriptor);
        return new UserInfo(i4, i7, i5, str5, str6, str7, str8, i6, list3, str4, str3, str2, i8, str9, z2, z3, list, z4, list2, options);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.KSerializer
    public final void serialize(UuidKt uuidKt, Object obj) {
        Lazy[] lazyArr;
        UserInfo userInfo = (UserInfo) obj;
        userInfo.getClass();
        UserInfo.Options options = userInfo.options;
        List list = userInfo.canCreateError;
        boolean z = userInfo.canCreate;
        List list2 = userInfo.rights;
        boolean z2 = userInfo.messages;
        boolean z3 = userInfo.anon;
        String str = userInfo.name;
        int i = userInfo.editCount;
        String str2 = userInfo.registration;
        String str3 = userInfo.regDate;
        String str4 = userInfo.latestContrib;
        List list3 = userInfo.groups;
        int i2 = userInfo.id;
        SerialDescriptor serialDescriptor = descriptor;
        UuidKt beginStructure = uuidKt.beginStructure(serialDescriptor);
        MwServiceError.BlockInfo.write$Self(userInfo, beginStructure, serialDescriptor);
        Lazy[] lazyArr2 = UserInfo.$childSerializers;
        if (!beginStructure.shouldEncodeElementDefault(serialDescriptor) && i2 == 0) {
            lazyArr = lazyArr2;
        } else {
            lazyArr = lazyArr2;
            beginStructure.encodeIntElement(6, i2, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), list3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str4 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 8, StringSerializer.INSTANCE, str4);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str3 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 9, StringSerializer.INSTANCE, str3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || str2 != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 10, StringSerializer.INSTANCE, str2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || i != -1) {
            beginStructure.encodeIntElement(11, i, serialDescriptor);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(str, "")) {
            beginStructure.encodeStringElement(serialDescriptor, 12, str);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z3) {
            beginStructure.encodeBooleanElement(serialDescriptor, 13, z3);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z2) {
            beginStructure.encodeBooleanElement(serialDescriptor, 14, z2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || !Intrinsics.areEqual(list2, EmptyList.INSTANCE)) {
            beginStructure.encodeSerializableElement(serialDescriptor, 15, (KSerializer) lazyArr[15].getValue(), list2);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || z) {
            beginStructure.encodeBooleanElement(serialDescriptor, 16, z);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || list != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 17, (KSerializer) lazyArr[17].getValue(), list);
        }
        if (beginStructure.shouldEncodeElementDefault(serialDescriptor) || options != null) {
            beginStructure.encodeNullableSerializableElement(serialDescriptor, 18, UserInfo$Options$$serializer.INSTANCE, options);
        }
        beginStructure.endStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
