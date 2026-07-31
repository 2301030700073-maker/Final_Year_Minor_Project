package androidx.compose.runtime.saveable;

import android.app.Activity;
import androidx.camera.camera2.adapter.SupportedSurfaceCombination;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.core.view.MenuHostHelper;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import net.thunderbird.feature.account.server.settings.ui.common.Authenticator;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class RememberSaveableKt$$ExternalSyntheticLambda2 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;

    public /* synthetic */ RememberSaveableKt$$ExternalSyntheticLambda2(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = obj5;
        this.f$5 = obj6;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        boolean z;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z2 = true;
        Object obj = this.f$5;
        Object obj2 = this.f$4;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                SaveableHolder saveableHolder = (SaveableHolder) obj6;
                Saver saver = (Saver) obj5;
                SaveableStateRegistry saveableStateRegistry = (SaveableStateRegistry) obj4;
                String str = (String) obj3;
                Object[] objArr = (Object[]) obj;
                if (saveableHolder.registry != saveableStateRegistry) {
                    saveableHolder.registry = saveableStateRegistry;
                    z = true;
                } else {
                    z = false;
                }
                if (Intrinsics.areEqual(saveableHolder.key, str)) {
                    z2 = z;
                } else {
                    saveableHolder.key = str;
                }
                saveableHolder.saver = saver;
                saveableHolder.value = obj2;
                saveableHolder.inputs = objArr;
                SaveableStateRegistry.Entry entry = saveableHolder.entry;
                if (entry != null && z2) {
                    ((MenuHostHelper) entry).unregister();
                    saveableHolder.entry = null;
                    saveableHolder.register$1();
                }
                return unit;
            case 1:
                return Boolean.valueOf(((SupportedSurfaceCombination) obj6).checkSupported((SupportedSurfaceCombination.FeatureSettings) obj5, (ArrayList) obj4, (LinkedHashMap) obj3, (List) obj2, (ArrayList) obj));
            default:
                Activity activity = (Activity) obj6;
                CoroutineScope coroutineScope = (CoroutineScope) obj5;
                MutableState mutableState = (MutableState) obj4;
                MutableState mutableState2 = (MutableState) obj3;
                Authenticator authenticator = (Authenticator) obj2;
                Function1 function1 = (Function1) obj;
                if (((Boolean) mutableState.getValue()).booleanValue()) {
                    mutableState2.setValue(Boolean.valueOf(!((Boolean) mutableState2.getValue()).booleanValue()));
                    Util.setSecure(activity, ((Boolean) mutableState2.getValue()).booleanValue());
                } else {
                    JobKt.launch$default(coroutineScope, null, null, new NavHostKt$NavHost$25$1(authenticator, function1, activity, mutableState, mutableState2, (Continuation) null), 3);
                }
                return unit;
        }
    }
}
