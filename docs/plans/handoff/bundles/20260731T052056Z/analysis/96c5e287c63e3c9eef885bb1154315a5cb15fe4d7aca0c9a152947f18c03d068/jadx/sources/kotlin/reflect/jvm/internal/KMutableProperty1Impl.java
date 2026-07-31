package kotlin.reflect.jvm.internal;

import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyDescriptorImpl;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KMutableProperty1Impl extends KProperty1Impl implements KMutableProperty1 {
    public final Lazy _setter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, String str, String str2, Object obj) {
        super(kDeclarationContainerImpl, str, str2, obj);
        str.getClass();
        str2.getClass();
        this._setter = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LayoutNode$_foldedChildren$1(24, this));
    }

    @Override // kotlin.reflect.KMutableProperty1, kotlin.reflect.KMutableProperty, kotlin.reflect.KMutableProperty0
    public final Setter getSetter() {
        return (Setter) this._setter.getValue();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Setter extends KPropertyImpl.Setter implements Function2 {
        public final KMutableProperty1Impl property;

        public Setter(KMutableProperty1Impl kMutableProperty1Impl) {
            this.property = kMutableProperty1Impl;
        }

        @Override // kotlin.reflect.KProperty.Accessor
        public final KProperty getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            ((Setter) this.property._setter.getValue()).call(obj, obj2);
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

    public KMutableProperty1Impl(KDeclarationContainerImpl kDeclarationContainerImpl, PropertyDescriptorImpl propertyDescriptorImpl) {
        super(kDeclarationContainerImpl, propertyDescriptorImpl);
        this._setter = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new LayoutNode$_foldedChildren$1(24, this));
    }
}
