package androidx.lifecycle;

import android.app.Application;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bumptech.glide.GlideBuilder$1;
import java.lang.reflect.InvocationTargetException;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewModelProvider$AndroidViewModelFactory extends FragmentManagerViewModel.AnonymousClass1 {
    public static final GlideBuilder$1 APPLICATION_KEY = new GlideBuilder$1();
    public static ViewModelProvider$AndroidViewModelFactory _instance;
    public final Application application;

    public ViewModelProvider$AndroidViewModelFactory(Application application) {
        super(2);
        this.application = application;
    }

    public final ViewModel create(Class cls, Application application) {
        if (!AndroidViewModel.class.isAssignableFrom(cls)) {
            return Utf8.SafeProcessor.createViewModel(cls);
        }
        try {
            ViewModel viewModel = (ViewModel) cls.getConstructor(Application.class).newInstance(application);
            viewModel.getClass();
            return viewModel;
        } catch (IllegalAccessException e) {
            Regex$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e);
            return null;
        } catch (InstantiationException e2) {
            Regex$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Regex$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e3);
            return null;
        } catch (InvocationTargetException e4) {
            Regex$$ExternalSyntheticBUOutline0.m("Cannot create an instance of ", cls, e4);
            return null;
        }
    }

    @Override // androidx.fragment.app.FragmentManagerViewModel.AnonymousClass1, androidx.lifecycle.ViewModelProvider$Factory
    public final ViewModel create(Class cls) {
        Application application = this.application;
        if (application != null) {
            return create(cls, application);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
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
            return Utf8.SafeProcessor.createViewModel(cls);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("CreationExtras must have an application by `APPLICATION_KEY`");
        return null;
    }
}
