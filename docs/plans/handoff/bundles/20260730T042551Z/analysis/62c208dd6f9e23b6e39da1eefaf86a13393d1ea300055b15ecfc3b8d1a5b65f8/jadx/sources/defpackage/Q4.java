package defpackage;

import androidx.fragment.app.Fragment;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class Q4 extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public final void onDetach() {
        super.onDetach();
        try {
            Field declaredField = Fragment.class.getDeclaredField("mChildFragmentManager");
            declaredField.setAccessible(true);
            declaredField.set(this, null);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (NoSuchFieldException e2) {
            throw new RuntimeException(e2);
        }
    }
}
