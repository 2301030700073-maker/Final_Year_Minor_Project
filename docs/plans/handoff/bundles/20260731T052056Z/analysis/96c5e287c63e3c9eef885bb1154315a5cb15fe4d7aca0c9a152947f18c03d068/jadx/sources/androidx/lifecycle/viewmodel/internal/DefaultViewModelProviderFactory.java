package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.UtilsKt;
import kotlin.reflect.KClass;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultViewModelProviderFactory implements ViewModelProvider$Factory {
    public static final DefaultViewModelProviderFactory INSTANCE = new DefaultViewModelProviderFactory();

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final /* synthetic */ ViewModel create(KClass kClass, MutableCreationExtras mutableCreationExtras) {
        return ViewSizeResolver$CC.$default$create(this, kClass, mutableCreationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        return UtilsKt.createViewModel(cls);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        return create(cls);
    }
}
