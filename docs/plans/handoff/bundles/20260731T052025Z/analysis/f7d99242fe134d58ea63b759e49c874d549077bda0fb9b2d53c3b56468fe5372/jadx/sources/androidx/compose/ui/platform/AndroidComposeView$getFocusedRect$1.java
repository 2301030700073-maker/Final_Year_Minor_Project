package androidx.compose.ui.platform;

import android.content.Context;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidComposeView$getFocusedRect$1 extends Lambda implements Function1 {
    public static final AndroidComposeView$getFocusedRect$1 INSTANCE;
    public static final AndroidComposeView$getFocusedRect$1 INSTANCE$1;
    public static final AndroidComposeView$getFocusedRect$1 INSTANCE$2;
    public static final AndroidComposeView$getFocusedRect$1 INSTANCE$3;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new AndroidComposeView$getFocusedRect$1(i, 0);
        INSTANCE$1 = new AndroidComposeView$getFocusedRect$1(i, 1);
        INSTANCE$2 = new AndroidComposeView$getFocusedRect$1(i, 2);
        INSTANCE$3 = new AndroidComposeView$getFocusedRect$1(i, 3);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ AndroidComposeView$getFocusedRect$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                return Boolean.TRUE;
            case 1:
                SemanticsConfiguration config = ((SemanticsNode) obj).getConfig();
                return Boolean.valueOf(config.props.containsKey(SemanticsProperties.LinkTestMarker));
            case 2:
                CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidCompositionLocals_androidKt.LocalConfiguration;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) compositionLocalAccessorScope;
                persistentCompositionLocalHashMap.getClass();
                Updater.read(persistentCompositionLocalHashMap, dynamicProvidableCompositionLocal);
                return ((Context) Updater.read((PersistentCompositionLocalHashMap) compositionLocalAccessorScope, AndroidCompositionLocals_androidKt.LocalContext)).getResources();
            default:
                return Boolean.valueOf(TestTagKt.canBeSavedToBundle(obj));
        }
    }
}
