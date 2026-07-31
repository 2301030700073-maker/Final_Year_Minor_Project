package androidx.activity;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.core.view.insets.ColorProtection;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;
import java.util.Iterator;
import java.util.List;
import kotlin.TuplesKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EdgeToEdgeApi35 extends EdgeToEdgeApi30 {
    @Override // androidx.activity.EdgeToEdgeApi29, androidx.activity.EdgeToEdgeApi26, androidx.activity.EdgeToEdgeBase
    public void setUp(SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, Window window, View view, boolean z, boolean z2) {
        systemBarStyle.getClass();
        systemBarStyle2.getClass();
        window.getClass();
        view.getClass();
        TuplesKt.setDecorFitsSystemWindows(window, false);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null) {
            int i = 0;
            while (true) {
                if (!(i < viewGroup.getChildCount())) {
                    break;
                }
                int i2 = i + 1;
                View childAt = viewGroup.getChildAt(i);
                if (childAt == null) {
                    throw new IndexOutOfBoundsException();
                }
                Object tag = childAt.getTag();
                if (tag instanceof List) {
                    List list = (List) tag;
                    if (list.size() == 4 && (list.get(0) instanceof ColorProtection)) {
                        Iterator it = ((Iterable) tag).iterator();
                        while (it.hasNext()) {
                            it.next();
                        }
                    }
                }
                i = i2;
            }
        }
        window.setNavigationBarContrastEnforced(true);
        HintHandler hintHandler = new HintHandler(view);
        int i3 = Build.VERSION.SDK_INT;
        UtilsKt windowInsetsControllerCompat$Impl35 = i3 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i3 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i3 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler);
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(!z);
        windowInsetsControllerCompat$Impl35.setAppearanceLightNavigationBars(!z2);
    }
}
