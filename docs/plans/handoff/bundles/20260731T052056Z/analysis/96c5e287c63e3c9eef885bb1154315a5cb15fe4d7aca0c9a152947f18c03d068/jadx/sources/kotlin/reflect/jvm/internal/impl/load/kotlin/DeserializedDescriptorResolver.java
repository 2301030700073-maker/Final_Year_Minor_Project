package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.IncompatibleVersionErrorData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.uuid.UuidKt;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeserializedDescriptorResolver {
    public static final JvmMetadataVersion KOTLIN_1_3_M1_METADATA_VERSION;
    public static final JvmMetadataVersion KOTLIN_1_3_RC_METADATA_VERSION;
    public static final Set KOTLIN_CLASS = UuidKt.setOf(KotlinClassHeader.Kind.CLASS);
    public static final Set KOTLIN_FILE_FACADE_OR_MULTIFILE_CLASS_PART = ArraysKt___ArraysKt.toSet(new KotlinClassHeader.Kind[]{KotlinClassHeader.Kind.FILE_FACADE, KotlinClassHeader.Kind.MULTIFILE_CLASS_PART});
    public ActivityGalleryBinding components;

    static {
        new JvmMetadataVersion(new int[]{1, 1, 2}, false);
        KOTLIN_1_3_M1_METADATA_VERSION = new JvmMetadataVersion(new int[]{1, 1, 11}, false);
        KOTLIN_1_3_RC_METADATA_VERSION = new JvmMetadataVersion(new int[]{1, 1, 13}, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver.KOTLIN_FILE_FACADE_OR_MULTIFILE_CLASS_PART.contains(r0.kind) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope createKotlinPackagePartScope(kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor r12, kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass r13) {
        /*
            r11 = this;
            java.lang.String r1 = "Could not read data from "
            r13.getClass()
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader r0 = r13.classHeader
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion r6 = r0.metadataVersion
            java.lang.String[] r2 = r0.data
            if (r2 != 0) goto Lf
            java.lang.String[] r2 = r0.incompatibleData
        Lf:
            r3 = 0
            if (r2 == 0) goto L1d
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader$Kind r4 = r0.kind
            java.util.Set r5 = kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver.KOTLIN_FILE_FACADE_OR_MULTIFILE_CLASS_PART
            boolean r4 = r5.contains(r4)
            if (r4 == 0) goto L1d
            goto L1e
        L1d:
            r2 = r3
        L1e:
            if (r2 != 0) goto L21
            goto L54
        L21:
            java.lang.String[] r0 = r0.strings
            if (r0 != 0) goto L26
            goto L54
        L26:
            kotlin.Pair r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil.readPackageDataFrom(r2, r0)     // Catch: java.lang.Throwable -> L2b kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L2d
            goto L52
        L2b:
            r0 = move-exception
            goto L3c
        L2d:
            r0 = move-exception
            java.lang.IllegalStateException r2 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2b
            java.lang.String r4 = r13.getLocation()     // Catch: java.lang.Throwable -> L2b
            java.lang.String r1 = r1.concat(r4)     // Catch: java.lang.Throwable -> L2b
            r2.<init>(r1, r0)     // Catch: java.lang.Throwable -> L2b
            throw r2     // Catch: java.lang.Throwable -> L2b
        L3c:
            org.wikipedia.databinding.ActivityGalleryBinding r1 = r11.getComponents()
            java.lang.Object r1 = r1.licenseIconBy
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags r1 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags) r1
            r1.getClass()
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion r1 = r11.getOwnMetadataVersion()
            boolean r1 = r6.isCompatible(r1)
            if (r1 != 0) goto L91
            r0 = r3
        L52:
            if (r0 != 0) goto L55
        L54:
            return r3
        L55:
            java.lang.Object r1 = r0.first
            r5 = r1
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver r5 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver) r5
            java.lang.Object r0 = r0.second
            r4 = r0
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package r4 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package) r4
            kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource r7 = new kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource
            r11.getIncompatibility(r13)
            r11.isPreReleaseInvisible(r13)
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability r0 = r11.getAbiStability(r13)
            r7.<init>(r13, r4, r5, r0)
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope r2 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope
            org.wikipedia.databinding.ActivityGalleryBinding r8 = r11.getComponents()
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            java.lang.String r13 = "scope for "
            r11.<init>(r13)
            r11.append(r7)
            java.lang.String r13 = " in "
            r11.append(r13)
            r11.append(r12)
            java.lang.String r9 = r11.toString()
            kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver$createKotlinPackagePartScope$2 r10 = kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver$createKotlinPackagePartScope$2.INSTANCE
            r3 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)
            return r2
        L91:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver.createKotlinPackagePartScope(kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass):kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope");
    }

    public final DeserializedContainerAbiStability getAbiStability(ReflectKotlinClass reflectKotlinClass) {
        ((ProtoEnumFlags) getComponents().licenseIconBy).getClass();
        int i = reflectKotlinClass.classHeader.extraInt;
        return ((i & 64) == 0 || (i & 32) != 0) ? ((i & 16) == 0 || (i & 32) != 0) ? DeserializedContainerAbiStability.STABLE : DeserializedContainerAbiStability.IR_UNSTABLE : DeserializedContainerAbiStability.FIR_UNSTABLE;
    }

    public final ActivityGalleryBinding getComponents() {
        ActivityGalleryBinding activityGalleryBinding = this.components;
        if (activityGalleryBinding != null) {
            return activityGalleryBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("components");
        throw null;
    }

    public final IncompatibleVersionErrorData getIncompatibility(ReflectKotlinClass reflectKotlinClass) {
        ((ProtoEnumFlags) getComponents().licenseIconBy).getClass();
        KotlinClassHeader kotlinClassHeader = reflectKotlinClass.classHeader;
        JvmMetadataVersion jvmMetadataVersion = kotlinClassHeader.metadataVersion;
        if (kotlinClassHeader.metadataVersion.isCompatible(getOwnMetadataVersion())) {
            return null;
        }
        JvmMetadataVersion jvmMetadataVersion2 = JvmMetadataVersion.INSTANCE;
        JvmMetadataVersion ownMetadataVersion = getOwnMetadataVersion();
        JvmMetadataVersion ownMetadataVersion2 = getOwnMetadataVersion();
        boolean z = jvmMetadataVersion.isStrictSemantics;
        ownMetadataVersion2.getClass();
        JvmMetadataVersion jvmMetadataVersion3 = z ? jvmMetadataVersion2 : JvmMetadataVersion.INSTANCE_NEXT;
        int i = jvmMetadataVersion3.major;
        int i2 = ownMetadataVersion2.major;
        return new IncompatibleVersionErrorData(jvmMetadataVersion, jvmMetadataVersion2, ownMetadataVersion, (i <= i2 && (i < i2 || jvmMetadataVersion3.minor <= ownMetadataVersion2.minor)) ? ownMetadataVersion2 : jvmMetadataVersion3, reflectKotlinClass.getLocation(), ReflectClassUtilKt.getClassId(reflectKotlinClass.klass));
    }

    public final JvmMetadataVersion getOwnMetadataVersion() {
        ((ProtoEnumFlags) getComponents().licenseIconBy).getClass();
        return JvmMetadataVersion.INSTANCE;
    }

    public final boolean isPreReleaseInvisible(ReflectKotlinClass reflectKotlinClass) {
        ((ProtoEnumFlags) getComponents().licenseIconBy).getClass();
        ((ProtoEnumFlags) getComponents().licenseIconBy).getClass();
        KotlinClassHeader kotlinClassHeader = reflectKotlinClass.classHeader;
        return (kotlinClassHeader.extraInt & 2) != 0 && kotlinClassHeader.metadataVersion.equals(KOTLIN_1_3_M1_METADATA_VERSION);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        if (kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver.KOTLIN_CLASS.contains(r1.kind) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData readClassData$descriptors_jvm(kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass r8) {
        /*
            r7 = this;
            java.lang.String r0 = "Could not read data from "
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader r1 = r8.classHeader
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion r2 = r1.metadataVersion
            java.lang.String[] r3 = r1.data
            if (r3 != 0) goto Lc
            java.lang.String[] r3 = r1.incompatibleData
        Lc:
            r4 = 0
            if (r3 == 0) goto L1a
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader$Kind r5 = r1.kind
            java.util.Set r6 = kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver.KOTLIN_CLASS
            boolean r5 = r6.contains(r5)
            if (r5 == 0) goto L1a
            goto L1b
        L1a:
            r3 = r4
        L1b:
            if (r3 != 0) goto L1e
            goto L51
        L1e:
            java.lang.String[] r1 = r1.strings
            if (r1 != 0) goto L23
            goto L51
        L23:
            kotlin.Pair r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(r3, r1)     // Catch: java.lang.Throwable -> L28 kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException -> L2a
            goto L4f
        L28:
            r0 = move-exception
            goto L39
        L2a:
            r1 = move-exception
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L28
            java.lang.String r5 = r8.getLocation()     // Catch: java.lang.Throwable -> L28
            java.lang.String r0 = r0.concat(r5)     // Catch: java.lang.Throwable -> L28
            r3.<init>(r0, r1)     // Catch: java.lang.Throwable -> L28
            throw r3     // Catch: java.lang.Throwable -> L28
        L39:
            org.wikipedia.databinding.ActivityGalleryBinding r1 = r7.getComponents()
            java.lang.Object r1 = r1.licenseIconBy
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags r1 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags) r1
            r1.getClass()
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion r1 = r7.getOwnMetadataVersion()
            boolean r1 = r2.isCompatible(r1)
            if (r1 != 0) goto L6f
            r0 = r4
        L4f:
            if (r0 != 0) goto L52
        L51:
            return r4
        L52:
            java.lang.Object r1 = r0.first
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver r1 = (kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver) r1
            java.lang.Object r0 = r0.second
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class r0 = (kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class) r0
            kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinarySourceElement r3 = new kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinarySourceElement
            r7.getIncompatibility(r8)
            r7.isPreReleaseInvisible(r8)
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability r7 = r7.getAbiStability(r8)
            r3.<init>(r8, r7)
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData r7 = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData
            r7.<init>(r1, r0, r2, r3)
            return r7
        L6f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver.readClassData$descriptors_jvm(kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass):kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData");
    }
}
