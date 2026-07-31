package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.work.OperationKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultViewModelProviderFactory implements ViewModelProvider$Factory {
    public static final DefaultViewModelProviderFactory INSTANCE = new DefaultViewModelProviderFactory();

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final /* synthetic */ ViewModel create(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        ViewModel create;
        create = create(OperationKt.getJavaClass(classReference), mutableCreationExtras);
        return create;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        return MathKt.createViewModel(cls);
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        return create(cls);
    }
}
