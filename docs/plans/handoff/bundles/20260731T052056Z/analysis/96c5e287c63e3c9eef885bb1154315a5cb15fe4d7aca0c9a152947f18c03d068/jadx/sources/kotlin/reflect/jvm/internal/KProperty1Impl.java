package kotlin.reflect.jvm.internal;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty1;
import kotlin.reflect.jvm.internal.KProperty1Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class KProperty1Impl extends KPropertyImpl implements KProperty1 {
    public final Lazy _getter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, null, obj);
        str.getClass();
        str2.getClass();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i = 0;
        this._getter = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            public final /* synthetic */ KProperty1Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                KProperty1Impl kProperty1Impl = this.this$0;
                switch (i2) {
                    case 0:
                        return new KProperty1Impl.Getter(kProperty1Impl);
                    default:
                        return kProperty1Impl.computeDelegateSource();
                }
            }
        });
        final int i2 = 1;
        ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            public final /* synthetic */ KProperty1Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                KProperty1Impl kProperty1Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty1Impl.Getter(kProperty1Impl);
                    default:
                        return kProperty1Impl.computeDelegateSource();
                }
            }
        });
    }

    @Override // kotlin.reflect.KProperty1
    public final Object get(Object obj) {
        return ((Getter) this._getter.getValue()).call(obj);
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final Getter getGetter() {
        return (Getter) this._getter.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImpl
    public final KPropertyImpl.Getter getGetter$1() {
        return (Getter) this._getter.getValue();
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return get(obj);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Getter extends KPropertyImpl.Getter implements Function1 {
        public final KProperty1Impl property;

        public Getter(KProperty1Impl kProperty1Impl) {
            this.property = kProperty1Impl;
        }

        @Override // kotlin.reflect.KProperty.Accessor
        public final KProperty getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return this.property.get(obj);
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

    public KProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptorImpl propertyDescriptorImpl) {
        super(kDeclarationContainerImpl, propertyDescriptorImpl);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i = 0;
        this._getter = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            public final /* synthetic */ KProperty1Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i;
                KProperty1Impl kProperty1Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty1Impl.Getter(kProperty1Impl);
                    default:
                        return kProperty1Impl.computeDelegateSource();
                }
            }
        });
        final int i2 = 1;
        ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            public final /* synthetic */ KProperty1Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                KProperty1Impl kProperty1Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty1Impl.Getter(kProperty1Impl);
                    default:
                        return kProperty1Impl.computeDelegateSource();
                }
            }
        });
    }
}
