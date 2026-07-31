package androidx.lifecycle;

import android.app.Application;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.transition.Transition;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import kotlin.math.MathKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewModelProvider$AndroidViewModelFactory extends FragmentManagerViewModel.AnonymousClass1 {
    public static final Transition.AnonymousClass1 APPLICATION_KEY = new Transition.AnonymousClass1(16);
    public static ViewModelProvider$AndroidViewModelFactory _instance;
    public final Application application;

    public ViewModelProvider$AndroidViewModelFactory(Application application) {
        super(2);
        this.application = application;
    }

    public final ViewModel create(Class cls, Application application) {
        if (!AndroidViewModel.class.isAssignableFrom(cls)) {
            return MathKt.createViewModel(cls);
        }
        try {
            ViewModel viewModel = (ViewModel) cls.getConstructor(Application.class).newInstance(application);
            viewModel.getClass();
            return viewModel;
        } catch (IllegalAccessException e) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e);
            return null;
        } catch (InstantiationException e2) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e2);
            return null;
        } catch (NoSuchMethodException e3) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e3);
            return null;
        } catch (InvocationTargetException e4) {
            DecodeUtils$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e4);
            return null;
        }
    }

    @Override // androidx.fragment.app.FragmentManagerViewModel.AnonymousClass1, androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        Application application = this.application;
        if (application != null) {
            return create(cls, application);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
        return null;
    }

    @Override // androidx.fragment.app.FragmentManagerViewModel.AnonymousClass1, androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls, MutableCreationExtras mutableCreationExtras) {
        if (this.application != null) {
            return create(cls);
        }
        Application application = (Application) mutableCreationExtras.extras.get(APPLICATION_KEY);
        if (application != null) {
            return create(cls, application);
        }
        if (!AndroidViewModel.class.isAssignableFrom(cls)) {
            return MathKt.createViewModel(cls);
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("CreationExtras must have an application by `APPLICATION_KEY`");
        return null;
    }
}
