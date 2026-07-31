package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import androidx.compose.ui.unit.DpKt;
import androidx.room.Room;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.uuid.UuidKt;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmProtoBufUtil {
    public static final ExtensionRegistryLite EXTENSION_REGISTRY;

    static {
        ExtensionRegistryLite extensionRegistryLite = new ExtensionRegistryLite();
        extensionRegistryLite.add(JvmProtoBuf.constructorSignature);
        extensionRegistryLite.add(JvmProtoBuf.methodSignature);
        extensionRegistryLite.add(JvmProtoBuf.lambdaClassOriginName);
        extensionRegistryLite.add(JvmProtoBuf.propertySignature);
        extensionRegistryLite.add(JvmProtoBuf.flags);
        extensionRegistryLite.add(JvmProtoBuf.typeAnnotation);
        extensionRegistryLite.add(JvmProtoBuf.isRaw);
        extensionRegistryLite.add(JvmProtoBuf.typeParameterAnnotation);
        extensionRegistryLite.add(JvmProtoBuf.classModuleName);
        extensionRegistryLite.add(JvmProtoBuf.classLocalVariable);
        extensionRegistryLite.add(JvmProtoBuf.anonymousObjectOriginName);
        extensionRegistryLite.add(JvmProtoBuf.jvmClassFlags);
        extensionRegistryLite.add(JvmProtoBuf.packageModuleName);
        extensionRegistryLite.add(JvmProtoBuf.packageLocalVariable);
        EXTENSION_REGISTRY = extensionRegistryLite;
    }

    public static JvmMemberSignature$Method getJvmConstructorSignature(ProtoBuf$Constructor protoBuf$Constructor, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects) {
        String joinToString$default;
        nameResolver.getClass();
        dispatcher$promoteAndExecute$Effects.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.constructorSignature;
        generatedExtension.getClass();
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) UuidKt.getExtensionOrNull(protoBuf$Constructor, generatedExtension);
        String string = (jvmMethodSignature == null || (jvmMethodSignature.bitField0_ & 1) != 1) ? "<init>" : nameResolver.getString(jvmMethodSignature.name_);
        if (jvmMethodSignature == null || (jvmMethodSignature.bitField0_ & 2) != 2) {
            List<ProtoBuf$ValueParameter> list = protoBuf$Constructor.valueParameter_;
            list.getClass();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list) {
                protoBuf$ValueParameter.getClass();
                String mapTypeDefault = mapTypeDefault(DpKt.type(protoBuf$ValueParameter, dispatcher$promoteAndExecute$Effects), nameResolver);
                if (mapTypeDefault == null) {
                    return null;
                }
                arrayList.add(mapTypeDefault);
            }
            joinToString$default = CollectionsKt.joinToString$default(arrayList, "", "(", ")V", null, 56);
        } else {
            joinToString$default = nameResolver.getString(jvmMethodSignature.desc_);
        }
        return new JvmMemberSignature$Method(string, joinToString$default);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v2 java.lang.String, still in use, count: 2, list:
          (r4v2 java.lang.String) from 0x0044: IF  (r4v2 java.lang.String) == (null java.lang.String)  -> B:23:0x0046 A[HIDDEN] (LINE:69)
          (r4v2 java.lang.String) from 0x0047: PHI (r4v3 java.lang.String) = (r4v2 java.lang.String), (r4v5 java.lang.String) binds: [B:20:0x0044, B:15:0x0035] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public static kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field getJvmFieldSignature(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property r4, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r5, okhttp3.Dispatcher$promoteAndExecute$Effects r6, boolean r7) {
        /*
            r5.getClass()
            kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite$GeneratedExtension r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.propertySignature
            r0.getClass()
            java.lang.Object r0 = kotlin.uuid.UuidKt.getExtensionOrNull(r4, r0)
            kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmPropertySignature r0 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.JvmPropertySignature) r0
            r1 = 0
            if (r0 != 0) goto L12
            goto L46
        L12:
            int r2 = r0.bitField0_
            r3 = 1
            r2 = r2 & r3
            if (r2 != r3) goto L1b
            kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$JvmFieldSignature r0 = r0.field_
            goto L1c
        L1b:
            r0 = r1
        L1c:
            if (r0 != 0) goto L21
            if (r7 == 0) goto L21
            goto L46
        L21:
            if (r0 == 0) goto L2b
            int r7 = r0.bitField0_
            r7 = r7 & r3
            if (r7 != r3) goto L2b
            int r7 = r0.name_
            goto L2d
        L2b:
            int r7 = r4.name_
        L2d:
            if (r0 == 0) goto L3c
            int r2 = r0.bitField0_
            r3 = 2
            r2 = r2 & r3
            if (r2 != r3) goto L3c
            int r4 = r0.desc_
            java.lang.String r4 = r5.getString(r4)
            goto L47
        L3c:
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type r4 = androidx.compose.ui.unit.DpKt.returnType(r4, r6)
            java.lang.String r4 = mapTypeDefault(r4, r5)
            if (r4 != 0) goto L47
        L46:
            return r1
        L47:
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field r6 = new kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field
            java.lang.String r5 = r5.getString(r7)
            r6.<init>(r5, r4)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil.getJvmFieldSignature(kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver, okhttp3.Dispatcher$promoteAndExecute$Effects, boolean):kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field");
    }

    public static JvmMemberSignature$Method getJvmMethodSignature(ProtoBuf$Function protoBuf$Function, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects) {
        String concat;
        nameResolver.getClass();
        dispatcher$promoteAndExecute$Effects.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.methodSignature;
        generatedExtension.getClass();
        JvmProtoBuf.JvmMethodSignature jvmMethodSignature = (JvmProtoBuf.JvmMethodSignature) UuidKt.getExtensionOrNull(protoBuf$Function, generatedExtension);
        int i = (jvmMethodSignature == null || (jvmMethodSignature.bitField0_ & 1) != 1) ? protoBuf$Function.name_ : jvmMethodSignature.name_;
        if (jvmMethodSignature == null || (jvmMethodSignature.bitField0_ & 2) != 2) {
            int i2 = protoBuf$Function.bitField0_;
            List listOfNotNull = Room.listOfNotNull((i2 & 32) == 32 ? protoBuf$Function.receiverType_ : (i2 & 64) == 64 ? dispatcher$promoteAndExecute$Effects.get(protoBuf$Function.receiverTypeId_) : null);
            List<ProtoBuf$ValueParameter> list = protoBuf$Function.valueParameter_;
            list.getClass();
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list) {
                protoBuf$ValueParameter.getClass();
                arrayList.add(DpKt.type(protoBuf$ValueParameter, dispatcher$promoteAndExecute$Effects));
            }
            ArrayList plus = CollectionsKt.plus((Collection) listOfNotNull, (Iterable) arrayList);
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(plus, 10));
            Iterator it = plus.iterator();
            while (true) {
                if (it.hasNext()) {
                    String mapTypeDefault = mapTypeDefault((ProtoBuf$Type) it.next(), nameResolver);
                    if (mapTypeDefault == null) {
                        break;
                    }
                    arrayList2.add(mapTypeDefault);
                } else {
                    String mapTypeDefault2 = mapTypeDefault(DpKt.returnType(protoBuf$Function, dispatcher$promoteAndExecute$Effects), nameResolver);
                    if (mapTypeDefault2 != null) {
                        concat = CollectionsKt.joinToString$default(arrayList2, "", "(", ")", null, 56).concat(mapTypeDefault2);
                    }
                }
            }
            return null;
        }
        concat = nameResolver.getString(jvmMethodSignature.desc_);
        return new JvmMemberSignature$Method(nameResolver.getString(i), concat);
    }

    public static final boolean isMovedFromInterfaceCompanion(ProtoBuf$Property protoBuf$Property) {
        Flags.BooleanFlagField booleanFlagField = JvmFlags.IS_MOVED_FROM_INTERFACE_COMPANION;
        Object extension = protoBuf$Property.getExtension(JvmProtoBuf.flags);
        extension.getClass();
        return booleanFlagField.get(((Number) extension).intValue()).booleanValue();
    }

    public static String mapTypeDefault(ProtoBuf$Type protoBuf$Type, NameResolver nameResolver) {
        if (protoBuf$Type.hasClassName()) {
            return ClassMapperLite.mapClass(nameResolver.getQualifiedClassName(protoBuf$Type.className_));
        }
        return null;
    }

    public static final Pair readClassDataFrom(String[] strArr, String[] strArr2) {
        strArr2.getClass();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BitEncoding.decodeBytes(strArr));
        JvmNameResolver readNameResolver = readNameResolver(byteArrayInputStream, strArr2);
        ProtoBuf$Type.AnonymousClass1 anonymousClass1 = ProtoBuf$Class.PARSER;
        anonymousClass1.getClass();
        CodedInputStream codedInputStream = new CodedInputStream(byteArrayInputStream);
        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) anonymousClass1.parsePartialFrom(codedInputStream, EXTENSION_REGISTRY);
        try {
            codedInputStream.checkLastTagWas(0);
            AbstractParser.checkMessageInitialized(abstractMessageLite);
            return new Pair(readNameResolver, (ProtoBuf$Class) abstractMessageLite);
        } catch (InvalidProtocolBufferException e) {
            e.unfinishedMessage = abstractMessageLite;
            throw e;
        }
    }

    public static JvmNameResolver readNameResolver(ByteArrayInputStream byteArrayInputStream, String[] strArr) {
        JvmProtoBuf.StringTableTypes stringTableTypes = (JvmProtoBuf.StringTableTypes) JvmProtoBuf.StringTableTypes.PARSER.parseDelimitedFrom(byteArrayInputStream, EXTENSION_REGISTRY);
        stringTableTypes.getClass();
        return new JvmNameResolver(stringTableTypes, strArr);
    }

    public static final Pair readPackageDataFrom(String[] strArr, String[] strArr2) {
        strArr.getClass();
        strArr2.getClass();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BitEncoding.decodeBytes(strArr));
        JvmNameResolver readNameResolver = readNameResolver(byteArrayInputStream, strArr2);
        ProtoBuf$Type.AnonymousClass1 anonymousClass1 = ProtoBuf$Package.PARSER;
        anonymousClass1.getClass();
        CodedInputStream codedInputStream = new CodedInputStream(byteArrayInputStream);
        AbstractMessageLite abstractMessageLite = (AbstractMessageLite) anonymousClass1.parsePartialFrom(codedInputStream, EXTENSION_REGISTRY);
        try {
            codedInputStream.checkLastTagWas(0);
            AbstractParser.checkMessageInitialized(abstractMessageLite);
            return new Pair(readNameResolver, (ProtoBuf$Package) abstractMessageLite);
        } catch (InvalidProtocolBufferException e) {
            e.unfinishedMessage = abstractMessageLite;
            throw e;
        }
    }
}
