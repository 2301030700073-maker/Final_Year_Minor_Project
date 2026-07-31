package kotlin.reflect.jvm.internal;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0;
import androidx.compose.ui.unit.DpKt;
import androidx.fragment.app.FragmentStateManager;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.io.ByteArrayInputStream;
import java.lang.reflect.Type;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.reflect.jvm.internal.KClassImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaField;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaPropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope$allDescriptors$1;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlinx.coroutines.CoroutinesInternalError;
import leakcanary.AndroidLeakFixes$Companion$onEachIdle$1;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KClassImpl$Data$supertypes$2$1$1 extends Lambda implements Function0 {
    public final /* synthetic */ Object $kotlinType;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;
    public final /* synthetic */ Object this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KClassImpl$Data$supertypes$2$1$1(Object obj, Object obj2, Object obj3, int i) {
        super(0);
        this.$r8$classId = i;
        this.$kotlinType = obj;
        this.this$0 = obj2;
        this.this$1 = obj3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.this$1;
        Object obj2 = this.this$0;
        Object obj3 = this.$kotlinType;
        switch (i) {
            case 0:
                KClassImpl.Data data = (KClassImpl.Data) obj2;
                KClassImpl kClassImpl = (KClassImpl) obj;
                ClassifierDescriptor declarationDescriptor = ((KotlinType) obj3).getConstructor().getDeclarationDescriptor();
                if (!(declarationDescriptor instanceof ModuleAwareClassDescriptor)) {
                    Gson$$ExternalSyntheticBUOutline0.m$6("Supertype not a class: ", declarationDescriptor);
                    return null;
                }
                Class javaClass = UtilKt.toJavaClass((ModuleAwareClassDescriptor) declarationDescriptor);
                if (javaClass == null) {
                    throw new CoroutinesInternalError("Unsupported superclass of " + data + ": " + declarationDescriptor);
                }
                Class cls = kClassImpl.jClass;
                if (Intrinsics.areEqual(cls.getSuperclass(), javaClass)) {
                    Type genericSuperclass = cls.getGenericSuperclass();
                    genericSuperclass.getClass();
                    return genericSuperclass;
                }
                Class<?>[] interfaces = cls.getInterfaces();
                interfaces.getClass();
                int indexOf = ArraysKt___ArraysKt.indexOf(javaClass, interfaces);
                if (indexOf >= 0) {
                    Type type = cls.getGenericInterfaces()[indexOf];
                    type.getClass();
                    return type;
                }
                throw new CoroutinesInternalError("No superclass of " + data + " in Java reflection for " + declarationDescriptor);
            case 1:
                AbstractComposeView abstractComposeView = (AbstractComposeView) obj3;
                abstractComposeView.removeOnAttachStateChangeListener((FragmentStateManager.AnonymousClass1) obj2);
                DpKt.getPoolingContainerListenerHolder(abstractComposeView).listeners.remove((ViewCompositionStrategy$DisposeOnDetachedFromWindowOrReleasedFromPool$$ExternalSyntheticLambda0) obj);
                return unit;
            case 2:
                LazyJavaScope lazyJavaScope = (LazyJavaScope) obj3;
                return new LockBasedStorageManager.LockBasedLazyValue((LockBasedStorageManager) ((ActivityPageBinding) lazyJavaScope.c.url).rootView, new LazyJavaScope$allDescriptors$1(lazyJavaScope, (ReflectJavaField) obj2, (JavaPropertyDescriptor) obj));
            case 3:
                return ((AbstractParser) obj3).parseDelimitedFrom((ByteArrayInputStream) obj2, (ExtensionRegistryLite) ((ActivityGalleryBinding) ((DeserializedMemberScope) obj).c.result).infoGradient);
            default:
                if (((HandlerThread) obj3).isAlive()) {
                    Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                    if (ref$BooleanRef.element) {
                        ref$BooleanRef.element = false;
                        try {
                            ((Handler) obj).postDelayed(new AndroidLeakFixes$Companion$onEachIdle$1(this, 1), 1000L);
                        } catch (RuntimeException unused) {
                        }
                    }
                }
                return unit;
        }
    }
}
