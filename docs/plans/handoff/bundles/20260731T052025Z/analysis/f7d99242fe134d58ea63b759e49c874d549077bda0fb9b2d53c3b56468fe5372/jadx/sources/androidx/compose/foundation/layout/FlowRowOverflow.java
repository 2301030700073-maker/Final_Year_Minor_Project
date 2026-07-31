package androidx.compose.foundation.layout;

import android.view.View;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Density;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FlowRowOverflow implements Arrangement$Vertical {
    public static final FlowRowOverflow Clip = new FlowRowOverflow(0);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FlowRowOverflow(int i) {
        this.$r8$classId = i;
    }

    public static final AndroidWindowInsets access$systemInsets(String str, int i) {
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        return new AndroidWindowInsets(str, i);
    }

    public static final ValueInsets access$valueInsetsIgnoringVisibility(String str, int i) {
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        return new ValueInsets(new InsetsValues(0, 0, 0, 0), str);
    }

    public static WindowInsetsHolder current(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
        WindowInsetsHolder orCreateFor = getOrCreateFor(view);
        boolean changedInstance = gapComposer.changedInstance(orCreateFor) | gapComposer.changedInstance(view);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new BackHandlerKt$$ExternalSyntheticLambda2(27, orCreateFor, view);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Updater.DisposableEffect(orCreateFor, (Function1) rememberedValue, gapComposer);
        return orCreateFor;
    }

    public static WindowInsetsHolder getOrCreateFor(View view) {
        WindowInsetsHolder windowInsetsHolder;
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        synchronized (weakHashMap) {
            try {
                Object obj = weakHashMap.get(view);
                if (obj == null) {
                    obj = new WindowInsetsHolder(view);
                    weakHashMap.put(view, obj);
                }
                windowInsetsHolder = (WindowInsetsHolder) obj;
            } catch (Throwable th) {
                throw th;
            }
        }
        return windowInsetsHolder;
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    public void arrange(Density density, int i, int[] iArr, int[] iArr2) {
        int i2 = 0;
        switch (this.$r8$classId) {
            case 1:
                int i3 = 0;
                for (int i4 : iArr) {
                    i3 += i4;
                }
                int length = iArr.length;
                int i5 = i - i3;
                int i6 = 0;
                while (i2 < length) {
                    int i7 = iArr[i2];
                    iArr2[i6] = i5;
                    i5 += i7;
                    i2++;
                    i6++;
                }
                break;
            default:
                int length2 = iArr.length;
                int i8 = 0;
                int i9 = 0;
                while (i2 < length2) {
                    int i10 = iArr[i2];
                    iArr2[i8] = i9;
                    i9 += i10;
                    i2++;
                    i8++;
                }
                break;
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    /* renamed from: getSpacing-D9Ej5fM */
    public /* synthetic */ float mo200getSpacingD9Ej5fM() {
        switch (this.$r8$classId) {
        }
        return 0.0f;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return "Arrangement#Bottom";
            case 2:
                return "Arrangement#Top";
            default:
                return super.toString();
        }
    }
}
