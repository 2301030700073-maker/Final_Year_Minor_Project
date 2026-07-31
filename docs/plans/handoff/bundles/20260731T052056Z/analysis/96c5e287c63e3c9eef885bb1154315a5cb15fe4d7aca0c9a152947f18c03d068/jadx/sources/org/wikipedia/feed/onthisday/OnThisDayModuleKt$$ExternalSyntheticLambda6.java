package org.wikipedia.feed.onthisday;

import android.os.Build;
import androidx.compose.foundation.Magnifier_androidKt;
import androidx.compose.foundation.PlatformMagnifierFactory;
import androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl;
import androidx.compose.foundation.PlatformMagnifierFactoryApi29Impl;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.IntSize;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda3;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class OnThisDayModuleKt$$ExternalSyntheticLambda6 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;
    public final /* synthetic */ Density f$1;

    public /* synthetic */ OnThisDayModuleKt$$ExternalSyntheticLambda6(MutableState mutableState, Density density) {
        this.$r8$classId = 0;
        this.f$0 = mutableState;
        this.f$1 = density;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        PlatformMagnifierFactory platformMagnifierFactory = PlatformMagnifierFactoryApi29Impl.INSTANCE;
        PlatformMagnifierFactory platformMagnifierFactory2 = PlatformMagnifierFactoryApi28Impl.INSTANCE;
        int i2 = 2;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$0;
        Density density = this.f$1;
        switch (i) {
            case 0:
                IntSize intSize = (IntSize) obj;
                mutableState.setValue(new DpSize(DpKt.m695DpSizeYgX7TsA(((int) (intSize.packedValue >> 32)) / density.getDensity(), ((int) (intSize.packedValue & 4294967295L)) / density.getDensity())));
                return unit;
            case 1:
                RoomDatabase$$ExternalSyntheticLambda3 roomDatabase$$ExternalSyntheticLambda3 = new RoomDatabase$$ExternalSyntheticLambda3(1, (Function0) obj);
                OnThisDayModuleKt$$ExternalSyntheticLambda6 onThisDayModuleKt$$ExternalSyntheticLambda6 = new OnThisDayModuleKt$$ExternalSyntheticLambda6(density, mutableState, i2);
                if (!Magnifier_androidKt.isPlatformMagnifierSupported$default()) {
                    Gson$$ExternalSyntheticBUOutline0.m("Magnifier is only supported on API level 28 and higher.");
                    return null;
                }
                if (Build.VERSION.SDK_INT == 28) {
                    platformMagnifierFactory = platformMagnifierFactory2;
                }
                return Magnifier_androidKt.m57magnifierjPUL71Q$default(roomDatabase$$ExternalSyntheticLambda3, onThisDayModuleKt$$ExternalSyntheticLambda6, platformMagnifierFactory);
            case 2:
                mutableState.setValue(new IntSize((density.mo81roundToPx0680j_4(DpSize.m711getHeightD9Ej5fM(r13.packedValue)) & 4294967295L) | (density.mo81roundToPx0680j_4(DpSize.m712getWidthD9Ej5fM(((DpSize) obj).packedValue)) << 32)));
                return unit;
            case 3:
                RoomDatabase$$ExternalSyntheticLambda3 roomDatabase$$ExternalSyntheticLambda32 = new RoomDatabase$$ExternalSyntheticLambda3(2, (Function0) obj);
                OnThisDayModuleKt$$ExternalSyntheticLambda6 onThisDayModuleKt$$ExternalSyntheticLambda62 = new OnThisDayModuleKt$$ExternalSyntheticLambda6(density, mutableState, 4);
                if (!Magnifier_androidKt.isPlatformMagnifierSupported$default()) {
                    Gson$$ExternalSyntheticBUOutline0.m("Magnifier is only supported on API level 28 and higher.");
                    return null;
                }
                if (Build.VERSION.SDK_INT == 28) {
                    platformMagnifierFactory = platformMagnifierFactory2;
                }
                return Magnifier_androidKt.m57magnifierjPUL71Q$default(roomDatabase$$ExternalSyntheticLambda32, onThisDayModuleKt$$ExternalSyntheticLambda62, platformMagnifierFactory);
            default:
                mutableState.setValue(new IntSize((density.mo81roundToPx0680j_4(DpSize.m711getHeightD9Ej5fM(r13.packedValue)) & 4294967295L) | (density.mo81roundToPx0680j_4(DpSize.m712getWidthD9Ej5fM(((DpSize) obj).packedValue)) << 32)));
                return unit;
        }
    }

    public /* synthetic */ OnThisDayModuleKt$$ExternalSyntheticLambda6(Density density, MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$1 = density;
        this.f$0 = mutableState;
    }
}
