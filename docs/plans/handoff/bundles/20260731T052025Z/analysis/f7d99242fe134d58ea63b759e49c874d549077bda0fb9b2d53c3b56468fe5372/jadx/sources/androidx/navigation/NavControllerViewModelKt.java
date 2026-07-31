package androidx.navigation;

import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.work.Data;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NavControllerViewModelKt {
    public static final InitializerViewModelFactory FACTORY;

    static {
        Data.Builder builder = new Data.Builder(3);
        builder.addInitializer(Reflection.getOrCreateKotlinClass(NavControllerViewModel.class), new RoomDatabase$$ExternalSyntheticLambda0(11));
        FACTORY = builder.build();
    }
}
