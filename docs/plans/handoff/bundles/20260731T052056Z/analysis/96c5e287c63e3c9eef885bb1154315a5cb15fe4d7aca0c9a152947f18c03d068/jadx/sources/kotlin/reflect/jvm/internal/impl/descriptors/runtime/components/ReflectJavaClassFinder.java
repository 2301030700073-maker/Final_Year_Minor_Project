package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.text.RegexKt;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReflectJavaClassFinder {
    public final ClassLoader classLoader;

    public /* synthetic */ ReflectJavaClassFinder(ClassLoader classLoader) {
        this.classLoader = classLoader;
    }

    public ConnectionPool findKotlinClassOrContent(ClassId classId, JvmMetadataVersion jvmMetadataVersion) {
        Class<?> cls;
        ReflectKotlinClass create;
        classId.getClass();
        jvmMetadataVersion.getClass();
        String replace = classId.getRelativeClassName().asString().replace('.', '$');
        replace.getClass();
        if (!classId.getPackageFqName().isRoot()) {
            replace = classId.getPackageFqName() + '.' + replace;
        }
        try {
            cls = Class.forName(replace, false, this.classLoader);
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls == null || (create = RegexKt.create(cls)) == null) {
            return null;
        }
        return new ConnectionPool(5, create);
    }
}
