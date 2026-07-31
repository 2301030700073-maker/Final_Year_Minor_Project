package kotlin.reflect.jvm.internal;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.CallableReference;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty2;
import kotlin.reflect.jvm.internal.KProperty2Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class KProperty2Impl extends KPropertyImpl implements KProperty2 {
    public final Lazy _getter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty2Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2) {
        super(kDeclarationContainerImpl, str, str2, null, CallableReference.NoReceiver.INSTANCE);
        str.getClass();
        str2.getClass();
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i = 0;
        this._getter = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$_getter$1
            public final /* synthetic */ KProperty2Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                KProperty2Impl kProperty2Impl = this.this$0;
                switch (i2) {
                    case 0:
                        return new KProperty2Impl.Getter(kProperty2Impl);
                    default:
                        return kProperty2Impl.computeDelegateSource();
                }
            }
        });
        final int i2 = 1;
        ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$_getter$1
            public final /* synthetic */ KProperty2Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                KProperty2Impl kProperty2Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty2Impl.Getter(kProperty2Impl);
                    default:
                        return kProperty2Impl.computeDelegateSource();
                }
            }
        });
    }

    @Override // kotlin.reflect.KProperty, kotlin.reflect.KProperty0
    public final Getter getGetter() {
        return (Getter) this._getter.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImpl
    public final KPropertyImpl.Getter getGetter$1() {
        return (Getter) this._getter.getValue();
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Getter) this._getter.getValue()).call(obj, obj2);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Getter extends KPropertyImpl.Getter implements Function2 {
        public final KProperty2Impl property;

        public Getter(KProperty2Impl kProperty2Impl) {
            this.property = kProperty2Impl;
        }

        @Override // kotlin.reflect.KProperty.Accessor
        public final KProperty getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((Getter) this.property._getter.getValue()).call(obj, obj2);
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

    public KProperty2Impl(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptorImpl propertyDescriptorImpl) {
        super(kDeclarationContainerImpl, propertyDescriptorImpl);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        final int i = 0;
        this._getter = ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$_getter$1
            public final /* synthetic */ KProperty2Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i;
                KProperty2Impl kProperty2Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty2Impl.Getter(kProperty2Impl);
                    default:
                        return kProperty2Impl.computeDelegateSource();
                }
            }
        });
        final int i2 = 1;
        ContextsKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$_getter$1
            public final /* synthetic */ KProperty2Impl this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                KProperty2Impl kProperty2Impl = this.this$0;
                switch (i22) {
                    case 0:
                        return new KProperty2Impl.Getter(kProperty2Impl);
                    default:
                        return kProperty2Impl.computeDelegateSource();
                }
            }
        });
    }
}
