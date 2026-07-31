package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider$Factory;
import java.util.Arrays;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import okhttp3.Handshake;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InitializerViewModelFactory implements ViewModelProvider$Factory {
    public final ViewModelInitializer[] initializers;

    public InitializerViewModelFactory(ViewModelInitializer... viewModelInitializerArr) {
        this.initializers = viewModelInitializerArr;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        ViewModelInitializer viewModelInitializer;
        Function1 function1;
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
        ViewModel viewModel = (viewModelInitializer == null || (function1 = viewModelInitializer.initializer) == null) ? null : (ViewModel) function1.invoke(mutableCreationExtras);
        if (viewModel != null) {
            return viewModel;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3(orCreateKotlinClass.getQualifiedName(), "No initializer set for given class ");
        return null;
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
    }

    @Override // androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(ClassReference classReference, MutableCreationExtras mutableCreationExtras) {
        return create(Handshake.Companion.getJavaClass(classReference), mutableCreationExtras);
    }
}
