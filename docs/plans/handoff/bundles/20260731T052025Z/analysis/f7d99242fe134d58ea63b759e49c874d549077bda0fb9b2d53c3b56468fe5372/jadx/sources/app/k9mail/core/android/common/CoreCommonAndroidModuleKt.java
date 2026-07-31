package app.k9mail.core.android.common;

import app.k9mail.core.android.common.camera.CameraKoinModuleKt;
import app.k9mail.core.android.common.contact.ContactKoinModuleKt;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import net.thunderbird.core.android.common.resources.ResourcesAndroidModuleKt;
import net.thunderbird.core.common.CoreCommonModuleKt;
import org.koin.core.module.Module;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CoreCommonAndroidModuleKt {
    public static final Module coreCommonAndroidModule;

    static {
        Module module = new Module();
        Module[] moduleArr = {ResourcesAndroidModuleKt.resourcesAndroidModule};
        ArrayList arrayList = module.includedModules;
        CollectionsKt.addAll(arrayList, moduleArr);
        CollectionsKt.addAll(arrayList, new Module[]{CoreCommonModuleKt.coreCommonModule});
        CollectionsKt.addAll(arrayList, new Module[]{ContactKoinModuleKt.contactModule});
        CollectionsKt.addAll(arrayList, new Module[]{CameraKoinModuleKt.cameraModule});
        coreCommonAndroidModule = module;
    }
}
