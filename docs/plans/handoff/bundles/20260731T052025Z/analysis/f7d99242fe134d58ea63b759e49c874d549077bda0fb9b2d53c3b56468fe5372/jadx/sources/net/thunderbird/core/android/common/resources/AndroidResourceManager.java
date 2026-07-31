package net.thunderbird.core.android.common.resources;

import android.app.Application;
import java.util.Arrays;
import net.thunderbird.core.common.resources.ResourceManager;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidResourceManager implements ResourceManager {
    public final Application context;

    public AndroidResourceManager(Application application) {
        this.context = application;
    }

    public final String stringResource(int i, Object... objArr) {
        String string = this.context.getResources().getString(i, Arrays.copyOf(objArr, objArr.length));
        string.getClass();
        return string;
    }

    public final String stringResource(int i) {
        String string = this.context.getResources().getString(i);
        string.getClass();
        return string;
    }
}
