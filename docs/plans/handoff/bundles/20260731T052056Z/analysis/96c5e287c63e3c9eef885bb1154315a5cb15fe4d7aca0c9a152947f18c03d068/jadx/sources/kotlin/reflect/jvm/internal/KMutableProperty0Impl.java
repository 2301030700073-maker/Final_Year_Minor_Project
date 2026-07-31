package kotlin.reflect.jvm.internal;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KMutableProperty0Impl extends KProperty0Impl implements KMutableProperty0 {
    public final Lazy _setter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, obj);
        str.getClass();
        str2.getClass();
        this._setter = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LayoutNode$_foldedChildren$1(23, this));
    }

    @Override // kotlin.reflect.KMutableProperty0
    public final Setter getSetter() {
        return (Setter) this._setter.getValue();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Setter extends KPropertyImpl.Setter implements Function1 {
        public final KMutableProperty0Impl property;

        public Setter(KMutableProperty0Impl kMutableProperty0Impl) {
            this.property = kMutableProperty0Impl;
        }

        @Override // kotlin.reflect.KProperty.Accessor
        public final KProperty getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ((Setter) this.property._setter.getValue()).call(obj);
            return Unit.INSTANCE;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public final KPropertyImpl getProperty() {
            return this.property;
        }
    }

    @Override // kotlin.reflect.KMutableProperty, kotlin.reflect.KMutableProperty0
    public final KPropertyImpl.Setter getSetter() {
        return (Setter) this._setter.getValue();
    }

    public KMutableProperty0Impl(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptorImpl propertyDescriptorImpl) {
        super(kDeclarationContainerImpl, propertyDescriptorImpl);
        this._setter = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LayoutNode$_foldedChildren$1(23, this));
    }
}
