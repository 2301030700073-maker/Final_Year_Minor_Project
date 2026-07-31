package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import coil3.util.UtilsKt;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SaveableStateRegistryImpl implements SaveableStateRegistry {
    public final Function1 canBeSaved;
    public final MutableScatterMap restored;
    public MutableScatterMap valueProviders;

    public SaveableStateRegistryImpl(Map map, Function1 function1) {
        MutableScatterMap mutableScatterMap;
        this.canBeSaved = function1;
        if (map == null || map.isEmpty()) {
            mutableScatterMap = null;
        } else {
            mutableScatterMap = new MutableScatterMap(map.size());
            for (Map.Entry entry : map.entrySet()) {
                mutableScatterMap.set(entry.getKey(), entry.getValue());
            }
        }
        this.restored = mutableScatterMap;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean canBeSaved(Object obj) {
        return ((Boolean) this.canBeSaved.invoke(obj)).booleanValue();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object consumeRestored(String str) {
        MutableScatterMap mutableScatterMap = this.restored;
        List list = mutableScatterMap != null ? (List) mutableScatterMap.remove(str) : null;
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (list.size() > 1 && mutableScatterMap != null) {
            List subList = list.subList(1, list.size());
            int findInsertIndex = mutableScatterMap.findInsertIndex(str);
            if (findInsertIndex < 0) {
                findInsertIndex = ~findInsertIndex;
            }
            Object[] objArr = mutableScatterMap.values;
            Object obj = objArr[findInsertIndex];
            mutableScatterMap.keys[findInsertIndex] = str;
            objArr[findInsertIndex] = subList;
        }
        return list.get(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009a  */
    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map performSave() {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.saveable.SaveableStateRegistryImpl.performSave():java.util.Map");
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry registerProvider(String str, Function0 function0) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!UtilsKt.isWhitespace(str.charAt(i))) {
                MutableScatterMap mutableScatterMap = this.valueProviders;
                if (mutableScatterMap == null) {
                    long[] jArr = ScatterMapKt.EmptyGroup;
                    mutableScatterMap = new MutableScatterMap();
                    this.valueProviders = mutableScatterMap;
                }
                Object obj = mutableScatterMap.get(str);
                if (obj == null) {
                    obj = new ArrayList();
                    mutableScatterMap.set(str, obj);
                }
                ((List) obj).add(function0);
                return new SVG(mutableScatterMap, str, function0, 8);
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("Registered key is empty or blank");
        return null;
    }
}
