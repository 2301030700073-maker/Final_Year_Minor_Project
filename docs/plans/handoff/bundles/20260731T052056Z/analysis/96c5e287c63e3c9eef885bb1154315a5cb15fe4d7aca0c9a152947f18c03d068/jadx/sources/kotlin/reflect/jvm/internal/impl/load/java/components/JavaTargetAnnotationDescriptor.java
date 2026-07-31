package kotlin.reflect.jvm.internal.impl.load.java.components;

import androidx.compose.ui.unit.DpKt;
import java.util.Map;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JavaTargetAnnotationDescriptor extends JavaAnnotationDescriptor {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue allValueArguments$delegate;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JavaTargetAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaTargetAnnotationDescriptor(ReflectJavaAnnotation reflectJavaAnnotation, Request.Builder builder) {
        super(builder, reflectJavaAnnotation, StandardNames.FqNames.target);
        builder.getClass();
        this.allValueArguments$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue((LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView, new AndroidLeakFixes$Companion$onDecorViewReady$1(5, this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final Map getAllValueArguments() {
        return (Map) DpKt.getValue(this.allValueArguments$delegate, $$delegatedProperties[0]);
    }
}
