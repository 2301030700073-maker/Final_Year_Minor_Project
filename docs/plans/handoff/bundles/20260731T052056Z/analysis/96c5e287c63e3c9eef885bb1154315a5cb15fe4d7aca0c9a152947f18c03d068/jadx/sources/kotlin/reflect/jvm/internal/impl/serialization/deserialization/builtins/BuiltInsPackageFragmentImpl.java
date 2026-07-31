package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import androidx.compose.ui.input.pointer.HoverIconModifierNode$findOverridingAncestorNode$1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$PackageFragment;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$QualifiedNameTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$StringTable;
import kotlin.reflect.jvm.internal.impl.metadata.builtins.BuiltInsBinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BuiltInsPackageFragmentImpl extends PackageFragmentDescriptorImpl implements PackageFragmentDescriptor {
    public DeserializedPackageMemberScope _memberScope;
    public ProtoBuf$PackageFragment _proto;
    public final DefaultSocket classDataFinder;
    public final BinaryVersion metadataVersion;
    public final FormBody.Builder nameResolver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuiltInsPackageFragmentImpl(FqName fqName, LockBasedStorageManager lockBasedStorageManager, ModuleDescriptor moduleDescriptor, ProtoBuf$PackageFragment protoBuf$PackageFragment, BuiltInsBinaryVersion builtInsBinaryVersion) {
        super(moduleDescriptor, fqName);
        fqName.getClass();
        moduleDescriptor.getClass();
        this.metadataVersion = builtInsBinaryVersion;
        ProtoBuf$StringTable protoBuf$StringTable = protoBuf$PackageFragment.strings_;
        protoBuf$StringTable.getClass();
        ProtoBuf$QualifiedNameTable protoBuf$QualifiedNameTable = protoBuf$PackageFragment.qualifiedNames_;
        protoBuf$QualifiedNameTable.getClass();
        FormBody.Builder builder = new FormBody.Builder(protoBuf$StringTable, protoBuf$QualifiedNameTable);
        this.nameResolver = builder;
        this.classDataFinder = new DefaultSocket(protoBuf$PackageFragment, builder, builtInsBinaryVersion, new HoverIconModifierNode$findOverridingAncestorNode$1(2, this));
        this._proto = protoBuf$PackageFragment;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
    public final MemberScope getMemberScope() {
        DeserializedPackageMemberScope deserializedPackageMemberScope = this._memberScope;
        if (deserializedPackageMemberScope != null) {
            return deserializedPackageMemberScope;
        }
        Intrinsics.throwUninitializedPropertyAccessException("_memberScope");
        throw null;
    }

    public final void initialize(ActivityGalleryBinding activityGalleryBinding) {
        activityGalleryBinding.getClass();
        ProtoBuf$PackageFragment protoBuf$PackageFragment = this._proto;
        if (protoBuf$PackageFragment == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Repeated call to DeserializedPackageFragmentImpl::initialize");
            return;
        }
        this._proto = null;
        ProtoBuf$Package protoBuf$Package = protoBuf$PackageFragment.package_;
        protoBuf$Package.getClass();
        this._memberScope = new DeserializedPackageMemberScope(this, protoBuf$Package, this.nameResolver, this.metadataVersion, null, activityGalleryBinding, "scope of " + this, new AndroidLeakFixes$Companion$onDecorViewReady$1(13, this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, org.wikipedia.settings.BasePreferenceLoader
    public final String toString() {
        StringBuilder sb = new StringBuilder("builtins package fragment for ");
        sb.append(this.fqName);
        sb.append(" from ");
        int i = DescriptorUtilsKt.$r8$clinit;
        ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(this);
        containingModule.getClass();
        sb.append(containingModule);
        return sb.toString();
    }
}
