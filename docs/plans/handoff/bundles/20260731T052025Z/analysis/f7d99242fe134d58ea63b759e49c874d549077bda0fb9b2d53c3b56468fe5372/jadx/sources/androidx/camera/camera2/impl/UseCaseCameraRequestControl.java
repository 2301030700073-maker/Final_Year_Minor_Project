package androidx.camera.camera2.impl;

import androidx.camera.core.impl.Config;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntriesList;
import kotlinx.coroutines.Deferred;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface UseCaseCameraRequestControl {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Type {
        public static final /* synthetic */ EnumEntriesList $ENTRIES;
        public static final /* synthetic */ Type[] $VALUES;
        public static final Type CAMERA2_CAMERA_CONTROL;
        public static final Type DEFAULT;
        public static final Type SESSION_CONFIG;

        static {
            Type type = new Type("SESSION_CONFIG", 0);
            SESSION_CONFIG = type;
            Type type2 = new Type("DEFAULT", 1);
            DEFAULT = type2;
            Type type3 = new Type("CAMERA2_CAMERA_CONTROL", 2);
            CAMERA2_CAMERA_CONTROL = type3;
            Type[] typeArr = {type, type2, type3};
            $VALUES = typeArr;
            $ENTRIES = new EnumEntriesList(typeArr);
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    Object awaitSurfaceSetup(SuspendLambda suspendLambda);

    Deferred cancelFocusAndMeteringAsync();

    void close();

    Deferred removeParametersAsync(List list);

    Deferred setParametersAsync(Map map, Config.OptionPriority optionPriority);

    /* renamed from: setTorchOffAsync-MtizInI */
    Deferred mo21setTorchOffAsyncMtizInI(int i);

    Deferred setTorchOnAsync();

    Deferred submitParameters(Map map, Type type, Config.OptionPriority optionPriority);

    Deferred updateCamera2ConfigAsync(Camera2ImplConfig camera2ImplConfig, Map map);

    Deferred updateRepeatingRequestAsync(LinkedHashSet linkedHashSet, boolean z);
}
