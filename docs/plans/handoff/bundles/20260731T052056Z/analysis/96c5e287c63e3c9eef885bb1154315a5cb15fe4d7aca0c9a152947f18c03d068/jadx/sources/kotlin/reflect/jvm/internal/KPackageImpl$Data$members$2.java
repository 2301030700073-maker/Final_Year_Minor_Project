package kotlin.reflect.jvm.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.KPackageImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KPackageImpl$Data$members$2 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ KPackageImpl this$0;
    public final /* synthetic */ KPackageImpl.Data this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KPackageImpl$Data$members$2(KPackageImpl.Data data, KPackageImpl kPackageImpl) {
        super(0);
        this.this$1 = data;
        this.this$0 = kPackageImpl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
    
        if (r4.kind == kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader.Kind.MULTIFILE_CLASS_PART) goto L10;
     */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke() {
        /*
            r4 = this;
            int r0 = r4.$r8$classId
            kotlin.reflect.jvm.internal.KPackageImpl r1 = r4.this$0
            kotlin.reflect.jvm.internal.KPackageImpl$Data r4 = r4.this$1
            switch(r0) {
                case 0: goto L43;
                default: goto L9;
            }
        L9:
            kotlin.reflect.jvm.internal.ReflectProperties$LazySoftVal r4 = r4.kotlinClass$delegate
            kotlin.reflect.KProperty[] r0 = kotlin.reflect.jvm.internal.KPackageImpl.Data.$$delegatedProperties
            r2 = 0
            r0 = r0[r2]
            java.lang.Object r4 = r4.invoke()
            kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass r4 = (kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectKotlinClass) r4
            r0 = 0
            if (r4 == 0) goto L24
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader r4 = r4.classHeader
            java.lang.String r2 = r4.extraString
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader$Kind r4 = r4.kind
            kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader$Kind r3 = kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader.Kind.MULTIFILE_CLASS_PART
            if (r4 != r3) goto L24
            goto L25
        L24:
            r2 = r0
        L25:
            if (r2 == 0) goto L42
            int r4 = r2.length()
            if (r4 <= 0) goto L42
            java.lang.Class r4 = r1.jClass
            java.lang.ClassLoader r4 = r4.getClassLoader()
            r0 = 47
            r1 = 46
            java.lang.String r0 = r2.replace(r0, r1)
            r0.getClass()
            java.lang.Class r0 = r4.loadClass(r0)
        L42:
            return r0
        L43:
            kotlin.reflect.jvm.internal.ReflectProperties$LazySoftVal r4 = r4.scope$delegate
            kotlin.reflect.KProperty[] r0 = kotlin.reflect.jvm.internal.KPackageImpl.Data.$$delegatedProperties
            r2 = 1
            r0 = r0[r2]
            java.lang.Object r4 = r4.invoke()
            r4.getClass()
            kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope r4 = (kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope) r4
            kotlin.reflect.jvm.internal.KDeclarationContainerImpl$MemberBelonginess r0 = kotlin.reflect.jvm.internal.KDeclarationContainerImpl.MemberBelonginess.DECLARED
            java.util.List r4 = r1.getMembers(r4, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPackageImpl$Data$members$2.invoke():java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KPackageImpl$Data$members$2(KPackageImpl kPackageImpl, KPackageImpl.Data data) {
        super(0);
        this.this$0 = kPackageImpl;
        this.this$1 = data;
    }
}
