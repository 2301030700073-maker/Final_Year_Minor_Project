package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.unit.IntSize;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CrossfadeKt$Crossfade$3$1 extends Lambda implements Function1 {
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$1;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$2;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$3;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$4;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$5;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$6;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$7;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$8;
    public static final CrossfadeKt$Crossfade$3$1 INSTANCE$9;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new CrossfadeKt$Crossfade$3$1(i, 1);
        INSTANCE$2 = new CrossfadeKt$Crossfade$3$1(i, 2);
        INSTANCE$3 = new CrossfadeKt$Crossfade$3$1(i, 3);
        INSTANCE$4 = new CrossfadeKt$Crossfade$3$1(i, 4);
        INSTANCE$5 = new CrossfadeKt$Crossfade$3$1(i, 5);
        INSTANCE = new CrossfadeKt$Crossfade$3$1(i, 0);
        INSTANCE$6 = new CrossfadeKt$Crossfade$3$1(i, 6);
        INSTANCE$7 = new CrossfadeKt$Crossfade$3$1(i, 7);
        INSTANCE$8 = new CrossfadeKt$Crossfade$3$1(i, 8);
        INSTANCE$9 = new CrossfadeKt$Crossfade$3$1(i, 9);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CrossfadeKt$Crossfade$3$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 1:
                break;
            case 3:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                break;
            case 4:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                break;
            case 5:
                long m480convertvNxB06k = Color.m480convertvNxB06k(((Color) obj).value, ColorSpaces.Oklab);
                break;
            case 6:
                long j = ((TransformOrigin) obj).packedValue;
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                break;
            case 9:
                break;
        }
        return new IntSize((((int) (((IntSize) obj).packedValue >> 32)) << 32) | (0 & 4294967295L));
    }
}
