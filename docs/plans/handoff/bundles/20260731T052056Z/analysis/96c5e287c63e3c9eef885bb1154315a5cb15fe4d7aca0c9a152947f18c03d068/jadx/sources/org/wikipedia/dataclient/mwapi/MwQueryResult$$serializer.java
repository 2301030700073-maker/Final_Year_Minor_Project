package org.wikipedia.dataclient.mwapi;

import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.UnsignedKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.TuplesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.settings.SiteInfo;
import org.wikipedia.settings.SiteInfo$$serializer;
import org.wikipedia.settings.SiteInfo$AutoCreateTempUser$$serializer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MwQueryResult$$serializer implements GeneratedSerializer {
    public static final MwQueryResult$$serializer INSTANCE;
    private static final SerialDescriptor descriptor;

    static {
        MwQueryResult$$serializer mwQueryResult$$serializer = new MwQueryResult$$serializer();
        INSTANCE = mwQueryResult$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("org.wikipedia.dataclient.mwapi.MwQueryResult", mwQueryResult$$serializer, 21);
        pluginGeneratedSerialDescriptor.addElement("userinfo", true);
        pluginGeneratedSerialDescriptor.addElement("unreadnotificationpages", true);
        pluginGeneratedSerialDescriptor.addElement("authmanagerinfo", true);
        pluginGeneratedSerialDescriptor.addElement("general", true);
        pluginGeneratedSerialDescriptor.addElement("autocreatetempuser", true);
        pluginGeneratedSerialDescriptor.addElement("recentchanges", true);
        pluginGeneratedSerialDescriptor.addElement("usercontribs", true);
        pluginGeneratedSerialDescriptor.addElement("allusers", true);
        pluginGeneratedSerialDescriptor.addElement("globaluserinfo", true);
        pluginGeneratedSerialDescriptor.addElement("redirects", true);
        pluginGeneratedSerialDescriptor.addElement("converted", true);
        pluginGeneratedSerialDescriptor.addElement("tokens", true);
        pluginGeneratedSerialDescriptor.addElement("echomarkread", true);
        pluginGeneratedSerialDescriptor.addElement("users", true);
        pluginGeneratedSerialDescriptor.addElement("pages", true);
        pluginGeneratedSerialDescriptor.addElement("echomarkseen", true);
        pluginGeneratedSerialDescriptor.addElement("notifications", true);
        pluginGeneratedSerialDescriptor.addElement("watchlist", true);
        pluginGeneratedSerialDescriptor.addElement("namespaces", true);
        pluginGeneratedSerialDescriptor.addElement("allmessages", true);
        pluginGeneratedSerialDescriptor.addElement("magicwords", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] childSerializers() {
        Lazy[] lazyArr = MwQueryResult.$childSerializers;
        UserInfo$$serializer userInfo$$serializer = UserInfo$$serializer.INSTANCE;
        MwQueryResult$MarkReadResponse$$serializer mwQueryResult$MarkReadResponse$$serializer = MwQueryResult$MarkReadResponse$$serializer.INSTANCE;
        return new KSerializer[]{UnsignedKt.getNullable(userInfo$$serializer), UnsignedKt.getNullable((KSerializer) lazyArr[1].getValue()), UnsignedKt.getNullable(MwAuthManagerInfo$$serializer.INSTANCE), UnsignedKt.getNullable(SiteInfo$$serializer.INSTANCE), UnsignedKt.getNullable(SiteInfo$AutoCreateTempUser$$serializer.INSTANCE), UnsignedKt.getNullable((KSerializer) lazyArr[5].getValue()), lazyArr[6].getValue(), UnsignedKt.getNullable((KSerializer) lazyArr[7].getValue()), UnsignedKt.getNullable(userInfo$$serializer), UnsignedKt.getNullable((KSerializer) lazyArr[9].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[10].getValue()), UnsignedKt.getNullable(MwQueryResult$Tokens$$serializer.INSTANCE), UnsignedKt.getNullable(mwQueryResult$MarkReadResponse$$serializer), UnsignedKt.getNullable((KSerializer) lazyArr[13].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[14].getValue()), UnsignedKt.getNullable(mwQueryResult$MarkReadResponse$$serializer), UnsignedKt.getNullable(MwQueryResult$NotificationList$$serializer.INSTANCE), lazyArr[17].getValue(), UnsignedKt.getNullable((KSerializer) lazyArr[18].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[19].getValue()), UnsignedKt.getNullable((KSerializer) lazyArr[20].getValue())};
    }

    @Override // kotlinx.serialization.KSerializer
    public final Object deserialize(Decoder decoder) {
        MwQueryResult.Tokens tokens;
        List list;
        UserInfo userInfo;
        UserInfo userInfo2;
        int i;
        MwQueryResult.Tokens tokens2;
        UserInfo userInfo3;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder beginStructure = decoder.beginStructure(serialDescriptor);
        Lazy[] lazyArr = MwQueryResult.$childSerializers;
        MwQueryResult.Tokens tokens3 = null;
        List list2 = null;
        List list3 = null;
        UserInfo userInfo4 = null;
        MwQueryResult.MarkReadResponse markReadResponse = null;
        List list4 = null;
        int i2 = 0;
        List list5 = null;
        List list6 = null;
        MwQueryResult.MarkReadResponse markReadResponse2 = null;
        MwQueryResult.NotificationList notificationList = null;
        List list7 = null;
        Map map = null;
        List list8 = null;
        int i3 = 1;
        boolean z = true;
        UserInfo userInfo5 = null;
        Map map2 = null;
        MwAuthManagerInfo mwAuthManagerInfo = null;
        SiteInfo siteInfo = null;
        SiteInfo.AutoCreateTempUser autoCreateTempUser = null;
        List list9 = null;
        List list10 = null;
        List list11 = null;
        while (z) {
            int decodeElementIndex = beginStructure.decodeElementIndex(serialDescriptor);
            switch (decodeElementIndex) {
                case -1:
                    tokens2 = tokens3;
                    userInfo3 = userInfo5;
                    z = false;
                    list2 = list2;
                    userInfo4 = userInfo4;
                    i3 = 1;
                    userInfo5 = userInfo3;
                    tokens3 = tokens2;
                case 0:
                    tokens2 = tokens3;
                    userInfo3 = (UserInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 0, UserInfo$$serializer.INSTANCE, userInfo5);
                    i2 |= 1;
                    list2 = list2;
                    userInfo4 = userInfo4;
                    list3 = list3;
                    i3 = 1;
                    userInfo5 = userInfo3;
                    tokens3 = tokens2;
                case 1:
                    tokens2 = tokens3;
                    UserInfo userInfo6 = userInfo4;
                    int i4 = i3;
                    map2 = (Map) beginStructure.decodeNullableSerializableElement(serialDescriptor, i4, (KSerializer) lazyArr[i3].getValue(), map2);
                    i2 |= 2;
                    mwAuthManagerInfo = mwAuthManagerInfo;
                    userInfo4 = userInfo6;
                    list3 = list3;
                    i3 = i4;
                    tokens3 = tokens2;
                case 2:
                    tokens = tokens3;
                    list = list3;
                    userInfo = userInfo4;
                    mwAuthManagerInfo = (MwAuthManagerInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 2, MwAuthManagerInfo$$serializer.INSTANCE, mwAuthManagerInfo);
                    i2 |= 4;
                    userInfo4 = userInfo;
                    tokens3 = tokens;
                    list3 = list;
                case 3:
                    tokens = tokens3;
                    list = list3;
                    userInfo = userInfo4;
                    siteInfo = (SiteInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 3, SiteInfo$$serializer.INSTANCE, siteInfo);
                    i2 |= 8;
                    userInfo4 = userInfo;
                    tokens3 = tokens;
                    list3 = list;
                case 4:
                    tokens = tokens3;
                    list = list3;
                    userInfo = userInfo4;
                    autoCreateTempUser = (SiteInfo.AutoCreateTempUser) beginStructure.decodeNullableSerializableElement(serialDescriptor, 4, SiteInfo$AutoCreateTempUser$$serializer.INSTANCE, autoCreateTempUser);
                    i2 |= 16;
                    userInfo4 = userInfo;
                    tokens3 = tokens;
                    list3 = list;
                case 5:
                    tokens = tokens3;
                    list = list3;
                    userInfo = userInfo4;
                    list9 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 5, (KSerializer) lazyArr[5].getValue(), list9);
                    i2 |= 32;
                    userInfo4 = userInfo;
                    tokens3 = tokens;
                    list3 = list;
                case 6:
                    tokens = tokens3;
                    list = list3;
                    userInfo = userInfo4;
                    list10 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 6, (KSerializer) lazyArr[6].getValue(), list10);
                    i2 |= 64;
                    userInfo4 = userInfo;
                    tokens3 = tokens;
                    list3 = list;
                case 7:
                    tokens = tokens3;
                    list = list3;
                    userInfo = userInfo4;
                    list11 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 7, (KSerializer) lazyArr[7].getValue(), list11);
                    i2 |= 128;
                    userInfo4 = userInfo;
                    tokens3 = tokens;
                    list3 = list;
                case 8:
                    tokens = tokens3;
                    list = list3;
                    userInfo4 = (UserInfo) beginStructure.decodeNullableSerializableElement(serialDescriptor, 8, UserInfo$$serializer.INSTANCE, userInfo4);
                    i2 |= 256;
                    tokens3 = tokens;
                    list3 = list;
                case 9:
                    tokens2 = tokens3;
                    list3 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 9, (KSerializer) lazyArr[9].getValue(), list3);
                    i2 |= 512;
                    userInfo4 = userInfo4;
                    tokens3 = tokens2;
                case 10:
                    list = list3;
                    userInfo2 = userInfo4;
                    list2 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 10, (KSerializer) lazyArr[10].getValue(), list2);
                    i2 |= 1024;
                    userInfo4 = userInfo2;
                    list3 = list;
                case 11:
                    list = list3;
                    userInfo2 = userInfo4;
                    tokens3 = (MwQueryResult.Tokens) beginStructure.decodeNullableSerializableElement(serialDescriptor, 11, MwQueryResult$Tokens$$serializer.INSTANCE, tokens3);
                    i2 |= 2048;
                    userInfo4 = userInfo2;
                    list3 = list;
                case 12:
                    list = list3;
                    userInfo2 = userInfo4;
                    markReadResponse = (MwQueryResult.MarkReadResponse) beginStructure.decodeNullableSerializableElement(serialDescriptor, 12, MwQueryResult$MarkReadResponse$$serializer.INSTANCE, markReadResponse);
                    i2 |= 4096;
                    userInfo4 = userInfo2;
                    list3 = list;
                case IMAGE_VALUE:
                    list = list3;
                    userInfo2 = userInfo4;
                    list5 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 13, (KSerializer) lazyArr[13].getValue(), list5);
                    i2 |= 8192;
                    userInfo4 = userInfo2;
                    list3 = list;
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                    list = list3;
                    userInfo2 = userInfo4;
                    list6 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 14, (KSerializer) lazyArr[14].getValue(), list6);
                    i2 |= 16384;
                    userInfo4 = userInfo2;
                    list3 = list;
                case 15:
                    list = list3;
                    userInfo2 = userInfo4;
                    markReadResponse2 = (MwQueryResult.MarkReadResponse) beginStructure.decodeNullableSerializableElement(serialDescriptor, 15, MwQueryResult$MarkReadResponse$$serializer.INSTANCE, markReadResponse2);
                    i = 32768;
                    i2 |= i;
                    userInfo4 = userInfo2;
                    list3 = list;
                case LAZY_VERTICAL_GRID_VALUE:
                    list = list3;
                    userInfo2 = userInfo4;
                    notificationList = (MwQueryResult.NotificationList) beginStructure.decodeNullableSerializableElement(serialDescriptor, 16, MwQueryResult$NotificationList$$serializer.INSTANCE, notificationList);
                    i = 65536;
                    i2 |= i;
                    userInfo4 = userInfo2;
                    list3 = list;
                case VERTICAL_GRID_ITEM_VALUE:
                    list = list3;
                    userInfo2 = userInfo4;
                    list7 = (List) beginStructure.decodeSerializableElement(serialDescriptor, 17, (KSerializer) lazyArr[17].getValue(), list7);
                    i = 131072;
                    i2 |= i;
                    userInfo4 = userInfo2;
                    list3 = list;
                case RADIO_GROUP_VALUE:
                    list = list3;
                    userInfo2 = userInfo4;
                    map = (Map) beginStructure.decodeNullableSerializableElement(serialDescriptor, 18, (KSerializer) lazyArr[18].getValue(), map);
                    i = 262144;
                    i2 |= i;
                    userInfo4 = userInfo2;
                    list3 = list;
                case RADIO_BUTTON_VALUE:
                    list = list3;
                    userInfo2 = userInfo4;
                    list8 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 19, (KSerializer) lazyArr[19].getValue(), list8);
                    i = 524288;
                    i2 |= i;
                    userInfo4 = userInfo2;
                    list3 = list;
                case RADIO_ROW_VALUE:
                    userInfo2 = userInfo4;
                    list = list3;
                    list4 = (List) beginStructure.decodeNullableSerializableElement(serialDescriptor, 20, (KSerializer) lazyArr[20].getValue(), list4);
                    i = 1048576;
                    i2 |= i;
                    userInfo4 = userInfo2;
                    list3 = list;
                default:
                    _UtilJvmKt$$ExternalSyntheticLambda0.m(decodeElementIndex);
                    return null;
            }
        }
        MwQueryResult.Tokens tokens4 = tokens3;
        UserInfo userInfo7 = userInfo4;
        UserInfo userInfo8 = userInfo5;
        Map map3 = map2;
        MwAuthManagerInfo mwAuthManagerInfo2 = mwAuthManagerInfo;
        beginStructure.endStructure(serialDescriptor);
        List list12 = list8;
        return new MwQueryResult(i2, userInfo8, map3, mwAuthManagerInfo2, siteInfo, autoCreateTempUser, list9, list10, list11, userInfo7, list3, list2, tokens4, markReadResponse, list5, list6, markReadResponse2, notificationList, list7, map, list12, list4);
    }

    @Override // kotlinx.serialization.KSerializer
    public final SerialDescriptor getDescriptor() {
        return descriptor;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v36 java.util.List, still in use, count: 2, list:
          (r0v36 java.util.List) from 0x01a6: INVOKE (r0v36 java.util.List), (r1v2 kotlin.collections.EmptyList) STATIC call: kotlin.jvm.internal.Intrinsics.areEqual(java.lang.Object, java.lang.Object):boolean A[MD:(java.lang.Object, java.lang.Object):boolean (m), WRAPPED] (LINE:423)
          (r0v36 java.util.List) from 0x01ac: PHI (r0v43 java.util.List) = (r0v36 java.util.List) binds: [B:74:0x01aa] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlinx.serialization.KSerializer
    public final void serialize(kotlin.uuid.UuidKt r25, java.lang.Object r26) {
        /*
            Method dump skipped, instructions count: 517
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.dataclient.mwapi.MwQueryResult$$serializer.serialize(kotlin.uuid.UuidKt, java.lang.Object):void");
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] typeParametersSerializers() {
        return TuplesKt.EMPTY_SERIALIZER_ARRAY;
    }
}
