package androidx.lifecycle;

import android.app.Application;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SavedStateViewModelFactory_androidKt {
    public static final List ANDROID_VIEWMODEL_SIGNATURE = IntOffsetKt.listOf((Object[]) new Class[]{Application.class, SavedStateHandle.class});
    public static final List VIEWMODEL_SIGNATURE = IntOffsetKt.listOf(SavedStateHandle.class);

    public static final Constructor findMatchingConstructor(Class cls, List list) {
        list.getClass();
        Constructor<?>[] constructors = cls.getConstructors();
        constructors.getClass();
        for (Constructor<?> constructor : constructors) {
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            parameterTypes.getClass();
            List list2 = ArraysKt___ArraysKt.toList(parameterTypes);
            if (list.equals(list2)) {
                return constructor;
            }
            if (list.size() == list2.size() && list2.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final ViewModel newInstance(Class cls, Constructor constructor, Object... objArr) {
        try {
            return (ViewModel) constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e) {
            Regex$$ExternalSyntheticBUOutline0.m("Failed to access ", cls, e);
            return null;
        } catch (InstantiationException e2) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
        } catch (InvocationTargetException e3) {
            DBUtil$$ExternalSyntheticBUOutline0.m("An exception happened in constructor of " + cls, e3.getCause());
            return null;
        }
    }
}
