package org.koin.viewmodel.factory;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import java.util.ArrayList;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import org.koin.core.parameter.ParametersHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidParametersHolder extends ParametersHolder {
    public final MutableCreationExtras extras;

    public AndroidParametersHolder(MutableCreationExtras mutableCreationExtras) {
        super(2, new ArrayList());
        this.extras = mutableCreationExtras;
    }

    @Override // org.koin.core.parameter.ParametersHolder
    public final Object getOrNull(ClassReference classReference) {
        classReference.getClass();
        if (!classReference.equals(Reflection.getOrCreateKotlinClass(SavedStateHandle.class))) {
            return super.getOrNull(classReference);
        }
        try {
            return ViewModelKt.createSavedStateHandle(this.extras);
        } catch (IllegalArgumentException e) {
            throw new IllegalStateException("Koin could not create a SavedStateHandle: the ViewModel's CreationExtras has no SavedStateRegistryOwner. Resolve the ViewModel via koinViewModel()/koinNavViewModel() with a proper owner (e.g. a NavBackStackEntry), and inject SavedStateHandle directly in the ViewModel constructor (not lazily/outside construction).", e);
        }
    }
}
