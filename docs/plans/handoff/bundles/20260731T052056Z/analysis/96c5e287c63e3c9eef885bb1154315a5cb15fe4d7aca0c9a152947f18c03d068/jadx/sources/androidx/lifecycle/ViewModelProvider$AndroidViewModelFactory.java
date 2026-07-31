package androidx.lifecycle;

import android.app.Application;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.transition.Transition;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ViewModelProvider$AndroidViewModelFactory extends FragmentManagerViewModel.AnonymousClass1 {
    public static final Transition.AnonymousClass1 APPLICATION_KEY = new Transition.AnonymousClass1(14, false);
    public static ViewModelProvider$AndroidViewModelFactory _instance;
    public final Application application;

    public ViewModelProvider$AndroidViewModelFactory(Application application) {
        super(2);
        this.application = application;
    }

    public final ViewModel create(Class cls, Application application) {
        if (!AndroidViewModel.class.isAssignableFrom(cls)) {
            return UtilsKt.createViewModel(cls);
        }
        try {
            ViewModel viewModel = (ViewModel) cls.getConstructor(Application.class).newInstance(application);
            viewModel.getClass();
            return viewModel;
        } catch (IllegalAccessException e) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m("Cannot create an instance of ", cls, e);
            return null;
        } catch (InstantiationException e2) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m("Cannot create an instance of ", cls, e2);
            return null;
        } catch (NoSuchMethodException e3) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m("Cannot create an instance of ", cls, e3);
            return null;
        } catch (InvocationTargetException e4) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m("Cannot create an instance of ", cls, e4);
            return null;
        }
    }

    @Override // androidx.fragment.app.FragmentManagerViewModel.AnonymousClass1, androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        Application application = this.application;
        if (application != null) {
            return create(cls, application);
        }
        Gson$$ExternalSyntheticBUOutline0.m("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
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
            return UtilsKt.createViewModel(cls);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("CreationExtras must have an application by `APPLICATION_KEY`");
        return null;
    }
}
