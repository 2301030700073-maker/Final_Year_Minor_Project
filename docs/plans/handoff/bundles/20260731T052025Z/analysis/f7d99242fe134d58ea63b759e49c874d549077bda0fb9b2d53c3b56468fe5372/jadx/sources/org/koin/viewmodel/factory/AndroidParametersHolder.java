package org.koin.viewmodel.factory;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.koin.core.parameter.ParametersHolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidParametersHolder extends ParametersHolder {
    public final MutableCreationExtras extras;

    public AndroidParametersHolder(Function0 function0, MutableCreationExtras mutableCreationExtras) {
        super(2, (function0 == null || (r2 = (ParametersHolder) function0.invoke()) == null || (r2 = r2._values) == null) ? new ArrayList() : new ArrayList(r2));
        ParametersHolder parametersHolder;
        List list;
        this.extras = mutableCreationExtras;
    }

    @Override // org.koin.core.parameter.ParametersHolder
    public final Object elementAt(int i, ClassReference classReference) {
        return classReference.equals(Reflection.getOrCreateKotlinClass(SavedStateHandle.class)) ? ViewModelKt.createSavedStateHandle(this.extras) : super.elementAt(i, classReference);
    }

    @Override // org.koin.core.parameter.ParametersHolder
    public final Object getOrNull(KClass kClass) {
        kClass.getClass();
        return kClass.equals(Reflection.getOrCreateKotlinClass(SavedStateHandle.class)) ? ViewModelKt.createSavedStateHandle(this.extras) : super.getOrNull(kClass);
    }
}
