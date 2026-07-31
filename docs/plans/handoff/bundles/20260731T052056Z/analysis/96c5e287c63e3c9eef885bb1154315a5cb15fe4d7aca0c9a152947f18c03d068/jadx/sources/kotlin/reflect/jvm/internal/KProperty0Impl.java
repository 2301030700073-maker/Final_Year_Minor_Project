package kotlin.reflect.jvm.internal;

import androidx.room.Room;
import coil3.util.ContextsKt;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty0;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.internal.KProperty0Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class KProperty0Impl extends KPropertyImpl implements KProperty0 {
    public final Lazy _getter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, null, obj);
        str.getClass();
        str2.getClass();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i = 0;
        this._getter = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$_getter$1
            public final /* synthetic */ KProperty0Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                KProperty0Impl kProperty0Impl = this.this$0;
                switch (i2) {
                    case 0:
                        return new KProperty0Impl.Getter(kProperty0Impl);
                    default:
                        Object computeDelegateSource = kProperty0Impl.computeDelegateSource();
                        try {
                            Object obj2 = KPropertyImpl.EXTENSION_PROPERTY_DELEGATE;
                            Object boundReceiver$1 = kProperty0Impl.isBound() ? kProperty0Impl.getBoundReceiver$1() : null;
                            if (boundReceiver$1 == obj2) {
                                boundReceiver$1 = null;
                            }
                            kProperty0Impl.isBound();
                            AccessibleObject accessibleObject = ((AccessibleObject) computeDelegateSource) != null ? (AccessibleObject) computeDelegateSource : null;
                            if (accessibleObject != null) {
                                accessibleObject.setAccessible(Room.isAccessible(kProperty0Impl));
                            }
                            if (computeDelegateSource == null) {
                                return null;
                            }
                            if (computeDelegateSource instanceof Field) {
                                return ((Field) computeDelegateSource).get(boundReceiver$1);
                            }
                            if (!(computeDelegateSource instanceof Method)) {
                                throw new AssertionError("delegate field/method " + computeDelegateSource + " neither field nor method");
                            }
                            int length = ((Method) computeDelegateSource).getParameterTypes().length;
                            if (length == 0) {
                                return ((Method) computeDelegateSource).invoke(null, null);
                            }
                            if (length == 1) {
                                Method method = (Method) computeDelegateSource;
                                if (boundReceiver$1 == null) {
                                    Class<?> cls = ((Method) computeDelegateSource).getParameterTypes()[0];
                                    cls.getClass();
                                    boundReceiver$1 = UtilKt.defaultPrimitiveValue(cls);
                                }
                                return method.invoke(null, boundReceiver$1);
                            }
                            if (length == 2) {
                                Method method2 = (Method) computeDelegateSource;
                                Class<?> cls2 = ((Method) computeDelegateSource).getParameterTypes()[1];
                                cls2.getClass();
                                return method2.invoke(null, boundReceiver$1, UtilKt.defaultPrimitiveValue(cls2));
                            }
                            throw new AssertionError("delegate method " + computeDelegateSource + " should take 0, 1, or 2 parameters");
                        } catch (IllegalAccessException e) {
                            throw new IllegalCallableAccessException("Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible", e);
                        }
                }
            }
        });
        final int i2 = 1;
        ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$_getter$1
            public final /* synthetic */ KProperty0Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                KProperty0Impl kProperty0Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty0Impl.Getter(kProperty0Impl);
                    default:
                        Object computeDelegateSource = kProperty0Impl.computeDelegateSource();
                        try {
                            Object obj2 = KPropertyImpl.EXTENSION_PROPERTY_DELEGATE;
                            Object boundReceiver$1 = kProperty0Impl.isBound() ? kProperty0Impl.getBoundReceiver$1() : null;
                            if (boundReceiver$1 == obj2) {
                                boundReceiver$1 = null;
                            }
                            kProperty0Impl.isBound();
                            AccessibleObject accessibleObject = ((AccessibleObject) computeDelegateSource) != null ? (AccessibleObject) computeDelegateSource : null;
                            if (accessibleObject != null) {
                                accessibleObject.setAccessible(Room.isAccessible(kProperty0Impl));
                            }
                            if (computeDelegateSource == null) {
                                return null;
                            }
                            if (computeDelegateSource instanceof Field) {
                                return ((Field) computeDelegateSource).get(boundReceiver$1);
                            }
                            if (!(computeDelegateSource instanceof Method)) {
                                throw new AssertionError("delegate field/method " + computeDelegateSource + " neither field nor method");
                            }
                            int length = ((Method) computeDelegateSource).getParameterTypes().length;
                            if (length == 0) {
                                return ((Method) computeDelegateSource).invoke(null, null);
                            }
                            if (length == 1) {
                                Method method = (Method) computeDelegateSource;
                                if (boundReceiver$1 == null) {
                                    Class<?> cls = ((Method) computeDelegateSource).getParameterTypes()[0];
                                    cls.getClass();
                                    boundReceiver$1 = UtilKt.defaultPrimitiveValue(cls);
                                }
                                return method.invoke(null, boundReceiver$1);
                            }
                            if (length == 2) {
                                Method method2 = (Method) computeDelegateSource;
                                Class<?> cls2 = ((Method) computeDelegateSource).getParameterTypes()[1];
                                cls2.getClass();
                                return method2.invoke(null, boundReceiver$1, UtilKt.defaultPrimitiveValue(cls2));
                            }
                            throw new AssertionError("delegate method " + computeDelegateSource + " should take 0, 1, or 2 parameters");
                        } catch (IllegalAccessException e) {
                            throw new IllegalCallableAccessException("Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible", e);
                        }
                }
            }
        });
    }

    @Override // kotlin.reflect.KProperty0
    public final Object get() {
        return ((Getter) this._getter.getValue()).call(new Object[0]);
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final Getter getGetter() {
        return (Getter) this._getter.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImpl
    public final KPropertyImpl.Getter getGetter$1() {
        return (Getter) this._getter.getValue();
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return get();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Getter extends KPropertyImpl.Getter implements Function0 {
        public final KProperty0Impl property;

        public Getter(KProperty0Impl kProperty0Impl) {
            this.property = kProperty0Impl;
        }

        @Override // kotlin.reflect.KProperty.Accessor
        public final KProperty getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return this.property.get();
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public final KPropertyImpl getProperty() {
            return this.property;
        }
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final KPropertyImpl.Getter getGetter() {
        return (Getter) this._getter.getValue();
    }

    public KProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptorImpl propertyDescriptorImpl) {
        super(kDeclarationContainerImpl, propertyDescriptorImpl);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i = 0;
        this._getter = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$_getter$1
            public final /* synthetic */ KProperty0Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i;
                KProperty0Impl kProperty0Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty0Impl.Getter(kProperty0Impl);
                    default:
                        Object computeDelegateSource = kProperty0Impl.computeDelegateSource();
                        try {
                            Object obj2 = KPropertyImpl.EXTENSION_PROPERTY_DELEGATE;
                            Object boundReceiver$1 = kProperty0Impl.isBound() ? kProperty0Impl.getBoundReceiver$1() : null;
                            if (boundReceiver$1 == obj2) {
                                boundReceiver$1 = null;
                            }
                            kProperty0Impl.isBound();
                            AccessibleObject accessibleObject = ((AccessibleObject) computeDelegateSource) != null ? (AccessibleObject) computeDelegateSource : null;
                            if (accessibleObject != null) {
                                accessibleObject.setAccessible(Room.isAccessible(kProperty0Impl));
                            }
                            if (computeDelegateSource == null) {
                                return null;
                            }
                            if (computeDelegateSource instanceof Field) {
                                return ((Field) computeDelegateSource).get(boundReceiver$1);
                            }
                            if (!(computeDelegateSource instanceof Method)) {
                                throw new AssertionError("delegate field/method " + computeDelegateSource + " neither field nor method");
                            }
                            int length = ((Method) computeDelegateSource).getParameterTypes().length;
                            if (length == 0) {
                                return ((Method) computeDelegateSource).invoke(null, null);
                            }
                            if (length == 1) {
                                Method method = (Method) computeDelegateSource;
                                if (boundReceiver$1 == null) {
                                    Class<?> cls = ((Method) computeDelegateSource).getParameterTypes()[0];
                                    cls.getClass();
                                    boundReceiver$1 = UtilKt.defaultPrimitiveValue(cls);
                                }
                                return method.invoke(null, boundReceiver$1);
                            }
                            if (length == 2) {
                                Method method2 = (Method) computeDelegateSource;
                                Class<?> cls2 = ((Method) computeDelegateSource).getParameterTypes()[1];
                                cls2.getClass();
                                return method2.invoke(null, boundReceiver$1, UtilKt.defaultPrimitiveValue(cls2));
                            }
                            throw new AssertionError("delegate method " + computeDelegateSource + " should take 0, 1, or 2 parameters");
                        } catch (IllegalAccessException e) {
                            throw new IllegalCallableAccessException("Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible", e);
                        }
                }
            }
        });
        final int i2 = 1;
        ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$_getter$1
            public final /* synthetic */ KProperty0Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                KProperty0Impl kProperty0Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty0Impl.Getter(kProperty0Impl);
                    default:
                        Object computeDelegateSource = kProperty0Impl.computeDelegateSource();
                        try {
                            Object obj2 = KPropertyImpl.EXTENSION_PROPERTY_DELEGATE;
                            Object boundReceiver$1 = kProperty0Impl.isBound() ? kProperty0Impl.getBoundReceiver$1() : null;
                            if (boundReceiver$1 == obj2) {
                                boundReceiver$1 = null;
                            }
                            kProperty0Impl.isBound();
                            AccessibleObject accessibleObject = ((AccessibleObject) computeDelegateSource) != null ? (AccessibleObject) computeDelegateSource : null;
                            if (accessibleObject != null) {
                                accessibleObject.setAccessible(Room.isAccessible(kProperty0Impl));
                            }
                            if (computeDelegateSource == null) {
                                return null;
                            }
                            if (computeDelegateSource instanceof Field) {
                                return ((Field) computeDelegateSource).get(boundReceiver$1);
                            }
                            if (!(computeDelegateSource instanceof Method)) {
                                throw new AssertionError("delegate field/method " + computeDelegateSource + " neither field nor method");
                            }
                            int length = ((Method) computeDelegateSource).getParameterTypes().length;
                            if (length == 0) {
                                return ((Method) computeDelegateSource).invoke(null, null);
                            }
                            if (length == 1) {
                                Method method = (Method) computeDelegateSource;
                                if (boundReceiver$1 == null) {
                                    Class<?> cls = ((Method) computeDelegateSource).getParameterTypes()[0];
                                    cls.getClass();
                                    boundReceiver$1 = UtilKt.defaultPrimitiveValue(cls);
                                }
                                return method.invoke(null, boundReceiver$1);
                            }
                            if (length == 2) {
                                Method method2 = (Method) computeDelegateSource;
                                Class<?> cls2 = ((Method) computeDelegateSource).getParameterTypes()[1];
                                cls2.getClass();
                                return method2.invoke(null, boundReceiver$1, UtilKt.defaultPrimitiveValue(cls2));
                            }
                            throw new AssertionError("delegate method " + computeDelegateSource + " should take 0, 1, or 2 parameters");
                        } catch (IllegalAccessException e) {
                            throw new IllegalCallableAccessException("Cannot obtain the delegate of a non-accessible property. Use \"isAccessible = true\" to make the property accessible", e);
                        }
                }
            }
        });
    }
}
