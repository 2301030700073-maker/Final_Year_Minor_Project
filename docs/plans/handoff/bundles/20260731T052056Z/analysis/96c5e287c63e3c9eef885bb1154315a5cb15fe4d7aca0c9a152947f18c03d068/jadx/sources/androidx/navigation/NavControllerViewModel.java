package androidx.navigation;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStore;
import coil3.util.UtilsKt;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.UnsignedKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavControllerViewModel extends ViewModel {
    public final LinkedHashMap viewModelStores = new LinkedHashMap();

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        LinkedHashMap linkedHashMap = this.viewModelStores;
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            ((ViewModelStore) it.next()).clear();
        }
        linkedHashMap.clear();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("NavControllerViewModel{");
        int identityHashCode = System.identityHashCode(this);
        UtilsKt.checkRadix(16);
        sb.append(UnsignedKt.ulongToString(identityHashCode & 4294967295L, 16));
        sb.append("} ViewModelStores (");
        Iterator it = this.viewModelStores.keySet().iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
