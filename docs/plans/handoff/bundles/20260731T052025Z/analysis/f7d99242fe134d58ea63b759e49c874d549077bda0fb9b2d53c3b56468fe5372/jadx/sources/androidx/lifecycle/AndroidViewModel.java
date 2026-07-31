package androidx.lifecycle;

import android.app.Application;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AndroidViewModel extends ViewModel {
    public final Application application;

    public AndroidViewModel(Application application) {
        this.application = application;
    }
}
