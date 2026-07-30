package kotlin.reflect.jvm.internal;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.jvm.internal.KMutableProperty0Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;

/* compiled from: KProperty0Impl.kt */
/* loaded from: classes2.dex */
public final class KMutableProperty0Impl extends KProperty0Impl implements KMutableProperty0 {
    private final Lazy _setter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty0Impl(KDeclarationContainerImpl container, PropertyDescriptor descriptor) {
        super(container, descriptor);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        this._setter = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KMutableProperty0Impl$$Lambda$0
            private final KMutableProperty0Impl arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                KMutableProperty0Impl.Setter _setter$lambda$0;
                _setter$lambda$0 = KMutableProperty0Impl._setter$lambda$0(this.arg$0);
                return _setter$lambda$0;
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty0Impl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
        this._setter = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0(this) { // from class: kotlin.reflect.jvm.internal.KMutableProperty0Impl$$Lambda$0
            private final KMutableProperty0Impl arg$0;

            {
                this.arg$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public Object invoke() {
                KMutableProperty0Impl.Setter _setter$lambda$0;
                _setter$lambda$0 = KMutableProperty0Impl._setter$lambda$0(this.arg$0);
                return _setter$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Setter _setter$lambda$0(KMutableProperty0Impl kMutableProperty0Impl) {
        return new Setter(kMutableProperty0Impl);
    }

    @Override // kotlin.reflect.KMutableProperty0, kotlin.reflect.KMutableProperty
    public Setter getSetter() {
        return (Setter) this._setter.getValue();
    }

    public void set(Object obj) {
        getSetter().call(obj);
    }

    /* compiled from: KProperty0Impl.kt */
    public static final class Setter extends KPropertyImpl.Setter implements KMutableProperty0.Setter {
        private final KMutableProperty0Impl property;

        public Setter(KMutableProperty0Impl property) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.property = property;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public KMutableProperty0Impl getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            m2750invoke(obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke, reason: collision with other method in class */
        public void m2750invoke(Object obj) {
            getProperty().set(obj);
        }
    }
}
