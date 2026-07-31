package kotlin.reflect.jvm.internal;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KMutableProperty2Impl extends KProperty2Impl implements KMutableProperty {
    public final Lazy _setter;

    public KMutableProperty2Impl(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptorImpl propertyDescriptorImpl) {
        super(kDeclarationContainerImpl, propertyDescriptorImpl);
        this._setter = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LayoutNode$_foldedChildren$1(25, this));
    }

    @Override // kotlin.reflect.KMutableProperty, kotlin.reflect.KMutableProperty0
    public final KPropertyImpl.Setter getSetter() {
        return (Setter) this._setter.getValue();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Setter extends KPropertyImpl.Setter implements Function3 {
        public final KMutableProperty2Impl property;

        public Setter(KMutableProperty2Impl kMutableProperty2Impl) {
            this.property = kMutableProperty2Impl;
        }

        @Override // kotlin.reflect.KProperty.Accessor
        public final KProperty getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            ((Setter) this.property._setter.getValue()).call(obj, obj2, obj3);
            return Unit.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public final KPropertyImpl getProperty() {
            return this.property;
        }
    }
}
