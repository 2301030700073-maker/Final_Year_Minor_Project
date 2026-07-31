package androidx.compose.foundation.layout;

import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda4;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FlowRowOverflow implements Arrangement$Vertical, Arrangement$Horizontal {
    public static final FlowRowOverflow Clip = new FlowRowOverflow(0);
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ FlowRowOverflow(int i) {
        this.$r8$classId = i;
    }

    public static final AndroidWindowInsets access$systemInsets(int i, String str) {
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        return new AndroidWindowInsets(i, str);
    }

    public static final ValueInsets access$valueInsetsIgnoringVisibility(int i, String str) {
        WeakHashMap weakHashMap = WindowInsetsHolder.viewMap;
        return new ValueInsets(new InsetsValues(0, 0, 0, 0), str);
    }

    public static WindowInsetsHolder current(Composer composer) {
        WindowInsetsHolder windowInsetsHolder;
        GapComposer gapComposer = (GapComposer) composer;
        View view = (View) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalView);
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
        boolean changedInstance = gapComposer.changedInstance(windowInsetsHolder) | gapComposer.changedInstance(view);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new Recomposer$$ExternalSyntheticLambda4(windowInsetsHolder, view, 15);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        Updater.DisposableEffect(windowInsetsHolder, (Function1) rememberedValue, gapComposer);
        return windowInsetsHolder;
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Horizontal
    public void arrange(MeasureScope measureScope, int i, int[] iArr, LayoutDirection layoutDirection, int[] iArr2) {
        int i2 = this.$r8$classId;
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        int i3 = 0;
        switch (i2) {
            case 2:
                if (layoutDirection == layoutDirection2) {
                    SpacerKt.placeCenter$foundation_layout(i, iArr, iArr2, false);
                    break;
                } else {
                    SpacerKt.placeCenter$foundation_layout(i, iArr, iArr2, true);
                    break;
                }
            case 3:
                if (layoutDirection == layoutDirection2) {
                    int i4 = 0;
                    for (int i5 : iArr) {
                        i4 += i5;
                    }
                    int i6 = i - i4;
                    int length = iArr.length;
                    int i7 = 0;
                    while (i3 < length) {
                        int i8 = iArr[i3];
                        iArr2[i7] = i6;
                        i6 += i8;
                        i3++;
                        i7++;
                    }
                    break;
                } else {
                    for (int length2 = iArr.length - 1; -1 < length2; length2--) {
                        int i9 = iArr[length2];
                        iArr2[length2] = i3;
                        i3 += i9;
                    }
                    break;
                }
            default:
                if (layoutDirection == layoutDirection2) {
                    int length3 = iArr.length;
                    int i10 = 0;
                    int i11 = 0;
                    while (i3 < length3) {
                        int i12 = iArr[i3];
                        iArr2[i10] = i11;
                        i11 += i12;
                        i3++;
                        i10++;
                    }
                    break;
                } else {
                    int length4 = iArr.length;
                    int i13 = 0;
                    while (i3 < length4) {
                        i13 += iArr[i3];
                        i3++;
                    }
                    int i14 = i - i13;
                    for (int length5 = iArr.length - 1; -1 < length5; length5--) {
                        int i15 = iArr[length5];
                        iArr2[length5] = i14;
                        i14 += i15;
                    }
                    break;
                }
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    /* renamed from: getSpacing-D9Ej5fM */
    public float mo79getSpacingD9Ej5fM() {
        switch (this.$r8$classId) {
        }
        return 0.0f;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 1:
                return "Arrangement#Bottom";
            case 2:
                return "Arrangement#Center";
            case 3:
                return "Arrangement#End";
            case 4:
                return "Arrangement#Start";
            case 5:
                return "Arrangement#Top";
            default:
                return super.toString();
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$Vertical
    public void arrange(int i, MeasureScope measureScope, int[] iArr, int[] iArr2) {
        int i2 = 0;
        switch (this.$r8$classId) {
            case 1:
                int i3 = 0;
                for (int i4 : iArr) {
                    i3 += i4;
                }
                int i5 = i - i3;
                int length = iArr.length;
                int i6 = 0;
                while (i2 < length) {
                    int i7 = iArr[i2];
                    iArr2[i6] = i5;
                    i5 += i7;
                    i2++;
                    i6++;
                }
                break;
            case 2:
                SpacerKt.placeCenter$foundation_layout(i, iArr, iArr2, false);
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
}
