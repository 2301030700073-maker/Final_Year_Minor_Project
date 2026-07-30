package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: JvmViewModelProviders.kt */
/* loaded from: classes.dex */
public final class JvmViewModelProviders {
    public static final JvmViewModelProviders INSTANCE = new JvmViewModelProviders();

    private JvmViewModelProviders() {
    }

    public final ViewModel createViewModel(Class modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        try {
            Object newInstance = modelClass.getDeclaredConstructor(null).newInstance(null);
            Intrinsics.checkNotNullExpressionValue(newInstance, "{\n            modelClass…).newInstance()\n        }");
            return (ViewModel) newInstance;
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("Cannot create an instance of " + modelClass, e3);
        }
    }
}
