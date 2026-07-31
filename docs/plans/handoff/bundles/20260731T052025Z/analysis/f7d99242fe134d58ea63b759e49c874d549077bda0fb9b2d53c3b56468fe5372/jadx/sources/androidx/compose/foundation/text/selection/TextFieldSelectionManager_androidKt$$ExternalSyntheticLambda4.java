package androidx.compose.foundation.text.selection;

import android.os.Build;
import androidx.compose.foundation.MagnifierElement;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Density f$0;
    public final /* synthetic */ MutableState f$1;

    public /* synthetic */ TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4(Density density, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = density;
        this.f$1 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        MutableState mutableState = this.f$1;
        Density density = this.f$0;
        switch (i) {
            case 0:
                AppBarKt$$ExternalSyntheticLambda0 appBarKt$$ExternalSyntheticLambda0 = new AppBarKt$$ExternalSyntheticLambda0(2, (Function0) obj);
                TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4 = new TextFieldSelectionManager_androidKt$$ExternalSyntheticLambda4(density, mutableState, 1);
                if (Magnifier_androidKt.isPlatformMagnifierSupported$default()) {
                    return Magnifier_androidKt.isPlatformMagnifierSupported$default() ? new MagnifierElement(appBarKt$$ExternalSyntheticLambda0, textFieldSelectionManager_androidKt$$ExternalSyntheticLambda4, Build.VERSION.SDK_INT == 28 ? PlatformMagnifierFactoryApi28Impl.INSTANCE : PlatformMagnifierFactoryApi28Impl.INSTANCE$1) : Modifier.Companion.$$INSTANCE;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Magnifier is only supported on API level 28 and higher.");
                return null;
            default:
                DpSize dpSize = (DpSize) obj;
                mutableState.setValue(new IntSize((density.mo171roundToPx0680j_4(DpSize.m748getHeightD9Ej5fM(dpSize.packedValue)) & 4294967295L) | (density.mo171roundToPx0680j_4(DpSize.m749getWidthD9Ej5fM(dpSize.packedValue)) << 32)));
                return Unit.INSTANCE;
        }
    }
}
