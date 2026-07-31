package kotlin.reflect.jvm.internal;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.work.OperationKt;
import coil3.util.ContextsKt;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyGetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class KPropertyImpl extends KCallableImpl implements KProperty {
    public static final Object EXTENSION_PROPERTY_DELEGATE = new Object();
    public final ReflectProperties$LazySoftVal _descriptor;
    public final Lazy _javaField;
    public final KDeclarationContainerImpl container;
    public final String name;
    public final Object rawBoundReceiver;
    public final String signature;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Accessor extends KCallableImpl implements KFunction, KProperty.Accessor {
        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public final KDeclarationContainerImpl getContainer() {
            return getProperty().container;
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public final Caller getDefaultCaller() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public abstract PropertyAccessorDescriptorImpl getDescriptor();

        public abstract KPropertyImpl getProperty();

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public final boolean isBound() {
            return getProperty().isBound();
        }

        @Override // kotlin.reflect.KCallable
        public final boolean isSuspend() {
            getDescriptor();
            return false;
        }
    }

    public KPropertyImpl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, PropertyDescriptorImpl propertyDescriptorImpl, Object obj) {
        this.container = kDeclarationContainerImpl;
        this.name = str;
        this.signature = str2;
        this.rawBoundReceiver = obj;
        final int i = 0;
        this._javaField = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$_javaField$1
            public final /* synthetic */ KPropertyImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            /* JADX WARN: Code restructure failed: missing block: B:73:0x01b5, code lost:
            
                if (r6 == false) goto L79;
             */
            /* JADX WARN: Code restructure failed: missing block: B:89:0x01df, code lost:
            
                if (r1 != false) goto L79;
             */
            /* JADX WARN: Removed duplicated region for block: B:76:0x0206 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
            @Override // kotlin.jvm.functions.Function0
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke() {
                /*
                    Method dump skipped, instructions count: 582
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPropertyImpl$_javaField$1.invoke():java.lang.Object");
            }
        });
        final int i2 = 1;
        this._descriptor = KPropertyImplKt.lazySoft(propertyDescriptorImpl, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$_javaField$1
            public final /* synthetic */ KPropertyImpl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                /*
                    Method dump skipped, instructions count: 582
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPropertyImpl$_javaField$1.invoke():java.lang.Object");
            }
        });
    }

    public final Member computeDelegateSource() {
        if (!getDescriptor().isDelegated()) {
            return null;
        }
        ClassId classId = RuntimeTypeMapper.JAVA_LANG_VOID;
        KPropertyImplKt mapPropertySignature = RuntimeTypeMapper.mapPropertySignature(getDescriptor());
        if (mapPropertySignature instanceof JvmPropertySignature$KotlinProperty) {
            JvmPropertySignature$KotlinProperty jvmPropertySignature$KotlinProperty = (JvmPropertySignature$KotlinProperty) mapPropertySignature;
            NameResolver nameResolver = jvmPropertySignature$KotlinProperty.nameResolver;
            JvmProtoBuf.JvmPropertySignature jvmPropertySignature = jvmPropertySignature$KotlinProperty.signature;
            if ((jvmPropertySignature.bitField0_ & 16) == 16) {
                JvmProtoBuf.JvmMethodSignature jvmMethodSignature = jvmPropertySignature.delegateMethod_;
                int i = jvmMethodSignature.bitField0_;
                if ((i & 1) != 1 || (i & 2) != 2) {
                    return null;
                }
                return this.container.findMethodBySignature(nameResolver.getString(jvmMethodSignature.name_), nameResolver.getString(jvmMethodSignature.desc_));
            }
        }
        return (Field) this._javaField.getValue();
    }

    public final boolean equals(Object obj) {
        KPropertyImpl asKPropertyImpl = UtilKt.asKPropertyImpl(obj);
        return asKPropertyImpl != null && Intrinsics.areEqual(this.container, asKPropertyImpl.container) && Intrinsics.areEqual(this.name, asKPropertyImpl.name) && Intrinsics.areEqual(this.signature, asKPropertyImpl.signature) && Intrinsics.areEqual(this.rawBoundReceiver, asKPropertyImpl.rawBoundReceiver);
    }

    public final Object getBoundReceiver$1() {
        return OperationKt.coerceToExpectedReceiverType(this.rawBoundReceiver, getDescriptor());
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final Caller getCaller() {
        return getGetter$1().getCaller();
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final KDeclarationContainerImpl getContainer() {
        return this.container;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final Caller getDefaultCaller() {
        getGetter$1().getClass();
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final PropertyDescriptor getDescriptor() {
        Object invoke = this._descriptor.invoke();
        invoke.getClass();
        return (PropertyDescriptor) invoke;
    }

    public abstract Getter getGetter$1();

    @Override // kotlin.reflect.KCallable
    public final String getName() {
        return this.name;
    }

    public final int hashCode() {
        return this.signature.hashCode() + Animation.CC.m(this.container.hashCode() * 31, 31, this.name);
    }

    @Override // kotlin.reflect.jvm.internal.KCallableImpl
    public final boolean isBound() {
        return !Intrinsics.areEqual(this.rawBoundReceiver, CallableReference.NoReceiver.INSTANCE);
    }

    @Override // kotlin.reflect.KCallable
    public final boolean isSuspend() {
        return false;
    }

    public final String toString() {
        DescriptorRendererImpl descriptorRendererImpl = ReflectionObjectRenderer.renderer;
        return ReflectionObjectRenderer.renderProperty(getDescriptor());
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Getter extends Accessor implements KProperty.Accessor, KFunction {
        public static final /* synthetic */ KProperty[] $$delegatedProperties;
        public final Lazy caller$delegate;
        public final ReflectProperties$LazySoftVal descriptor$delegate;

        static {
            ReflectionFactory reflectionFactory = Reflection.factory;
            $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Getter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertyGetterDescriptor;"))};
        }

        public Getter() {
            final int i = 1;
            this.descriptor$delegate = KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Getter$caller$2
                public final /* synthetic */ KPropertyImpl.Getter this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i2 = i;
                    KPropertyImpl.Getter getter = this.this$0;
                    switch (i2) {
                        case 0:
                            return KPropertyImplKt.computeCallerForAccessor(getter, true);
                        default:
                            PropertyGetterDescriptorImpl getter2 = getter.getProperty().getDescriptor().getGetter();
                            return getter2 == null ? DescriptorFactory.createDefaultGetter(getter.getProperty().getDescriptor(), Annotations.Companion.EMPTY) : getter2;
                    }
                }
            });
            final int i2 = 0;
            this.caller$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Getter$caller$2
                public final /* synthetic */ KPropertyImpl.Getter this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i22 = i2;
                    KPropertyImpl.Getter getter = this.this$0;
                    switch (i22) {
                        case 0:
                            return KPropertyImplKt.computeCallerForAccessor(getter, true);
                        default:
                            PropertyGetterDescriptorImpl getter2 = getter.getProperty().getDescriptor().getGetter();
                            return getter2 == null ? DescriptorFactory.createDefaultGetter(getter.getProperty().getDescriptor(), Annotations.Companion.EMPTY) : getter2;
                    }
                }
            });
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Getter) && Intrinsics.areEqual(getProperty(), ((Getter) obj).getProperty());
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public final Caller getCaller() {
            return (Caller) this.caller$delegate.getValue();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public final CallableMemberDescriptor getDescriptor() {
            KProperty kProperty = $$delegatedProperties[0];
            Object invoke = this.descriptor$delegate.invoke();
            invoke.getClass();
            return (PropertyGetterDescriptorImpl) invoke;
        }

        @Override // kotlin.reflect.KCallable
        public final String getName() {
            return Modifier.CC.m(new StringBuilder("<get-"), getProperty().name, '>');
        }

        public final int hashCode() {
            return getProperty().hashCode();
        }

        public final String toString() {
            return "getter of " + getProperty();
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.jvm.internal.KCallableImpl
        public final PropertyAccessorDescriptorImpl getDescriptor() {
            KProperty kProperty = $$delegatedProperties[0];
            Object invoke = this.descriptor$delegate.invoke();
            invoke.getClass();
            return (PropertyGetterDescriptorImpl) invoke;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Setter extends Accessor implements KProperty.Accessor, KFunction {
        public static final /* synthetic */ KProperty[] $$delegatedProperties;
        public final Lazy caller$delegate;
        public final ReflectProperties$LazySoftVal descriptor$delegate;

        static {
            ReflectionFactory reflectionFactory = Reflection.factory;
            $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(Setter.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"))};
        }

        public Setter() {
            final int i = 1;
            this.descriptor$delegate = KPropertyImplKt.lazySoft(null, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Setter$caller$2
                public final /* synthetic */ KPropertyImpl.Setter this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i2 = i;
                    KPropertyImpl.Setter setter = this.this$0;
                    switch (i2) {
                        case 0:
                            return KPropertyImplKt.computeCallerForAccessor(setter, false);
                        default:
                            PropertySetterDescriptorImpl setter2 = setter.getProperty().getDescriptor().getSetter();
                            return setter2 == null ? DescriptorFactory.createDefaultSetter(setter.getProperty().getDescriptor(), Annotations.Companion.EMPTY) : setter2;
                    }
                }
            });
            final int i2 = 0;
            this.caller$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KPropertyImpl$Setter$caller$2
                public final /* synthetic */ KPropertyImpl.Setter this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i22 = i2;
                    KPropertyImpl.Setter setter = this.this$0;
                    switch (i22) {
                        case 0:
                            return KPropertyImplKt.computeCallerForAccessor(setter, false);
                        default:
                            PropertySetterDescriptorImpl setter2 = setter.getProperty().getDescriptor().getSetter();
                            return setter2 == null ? DescriptorFactory.createDefaultSetter(setter.getProperty().getDescriptor(), Annotations.Companion.EMPTY) : setter2;
                    }
                }
            });
        }

        public final boolean equals(Object obj) {
            return (obj instanceof Setter) && Intrinsics.areEqual(getProperty(), ((Setter) obj).getProperty());
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public final Caller getCaller() {
            return (Caller) this.caller$delegate.getValue();
        }

        @Override // kotlin.reflect.jvm.internal.KCallableImpl
        public final CallableMemberDescriptor getDescriptor() {
            KProperty kProperty = $$delegatedProperties[0];
            Object invoke = this.descriptor$delegate.invoke();
            invoke.getClass();
            return (PropertySetterDescriptorImpl) invoke;
        }

        @Override // kotlin.reflect.KCallable
        public final String getName() {
            return Modifier.CC.m(new StringBuilder("<set-"), getProperty().name, '>');
        }

        public final int hashCode() {
            return getProperty().hashCode();
        }

        public final String toString() {
            return "setter of " + getProperty();
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.jvm.internal.KCallableImpl
        public final PropertyAccessorDescriptorImpl getDescriptor() {
            KProperty kProperty = $$delegatedProperties[0];
            Object invoke = this.descriptor$delegate.invoke();
            invoke.getClass();
            return (PropertySetterDescriptorImpl) invoke;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public KPropertyImpl(kotlin.reflect.jvm.internal.KDeclarationContainerImpl r8, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl r9) {
        /*
            r7 = this;
            kotlin.reflect.jvm.internal.impl.name.Name r0 = r9.getName()
            java.lang.String r3 = r0.asString()
            r3.getClass()
            kotlin.reflect.jvm.internal.KPropertyImplKt r0 = kotlin.reflect.jvm.internal.RuntimeTypeMapper.mapPropertySignature(r9)
            java.lang.String r4 = r0.asString()
            kotlin.jvm.internal.CallableReference$NoReceiver r6 = kotlin.jvm.internal.CallableReference.NoReceiver.INSTANCE
            r1 = r7
            r2 = r8
            r5 = r9
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.KPropertyImpl.<init>(kotlin.reflect.jvm.internal.KDeclarationContainerImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl):void");
    }
}
