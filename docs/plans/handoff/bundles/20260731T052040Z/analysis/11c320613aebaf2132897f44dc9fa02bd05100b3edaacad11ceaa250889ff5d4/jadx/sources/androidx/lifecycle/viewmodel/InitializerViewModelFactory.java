package androidx.lifecycle.viewmodel;

import androidx.compose.ui.node.Owner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.work.OperationKt;
import java.util.Arrays;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class InitializerViewModelFactory implements ViewModelProvider$Factory {
    public final ViewModelInitializer[] initializers;

    public InitializerViewModelFactory(ViewModelInitializer... viewModelInitializerArr) {
        this.initializers = viewModelInitializerArr;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        ViewModelInitializer viewModelInitializer;
        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(cls);
        ViewModelInitializer[] viewModelInitializerArr = this.initializers;
        ViewModelInitializer[] viewModelInitializerArr2 = (ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length);
        int length = viewModelInitializerArr2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                viewModelInitializer = null;
                break;
            }
            viewModelInitializer = viewModelInitializerArr2[i];
            if (viewModelInitializer.clazz.equals(orCreateKotlinClass)) {
                break;
            }
            i++;
        }
        ViewModel viewModel = viewModelInitializer != null ? (ViewModel) viewModelInitializer.initializer.invoke(mutableCreationExtras) : null;
        if (viewModel != null) {
            return viewModel;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1((Object) Owner.CC.m("No initializer set for given class ", orCreateKotlinClass.getQualifiedName()));
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final /* synthetic */ ViewModel create(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        ViewModel create;
        create = create(OperationKt.getJavaClass(classReference), mutableCreationExtras);
        return create;
    }
}
