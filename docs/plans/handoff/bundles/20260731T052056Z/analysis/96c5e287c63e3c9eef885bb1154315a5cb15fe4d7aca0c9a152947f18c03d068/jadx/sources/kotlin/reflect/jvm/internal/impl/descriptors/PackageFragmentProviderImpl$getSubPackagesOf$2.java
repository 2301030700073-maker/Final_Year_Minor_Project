package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PackageFragmentProviderImpl$getSubPackagesOf$2 extends Lambda implements Function1 {
    public final /* synthetic */ FqName $fqName;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ PackageFragmentProviderImpl$getSubPackagesOf$2(FqName fqName, int i) {
        super(1);
        this.$r8$classId = i;
        this.$fqName = fqName;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        FqName fqName = this.$fqName;
        switch (i) {
            case 0:
                FqName fqName2 = (FqName) obj;
                fqName2.getClass();
                return Boolean.valueOf(!fqName2.isRoot() && fqName2.parent().equals(fqName));
            default:
                Annotations annotations = (Annotations) obj;
                annotations.getClass();
                return annotations.findAnnotation(fqName);
        }
    }
}
