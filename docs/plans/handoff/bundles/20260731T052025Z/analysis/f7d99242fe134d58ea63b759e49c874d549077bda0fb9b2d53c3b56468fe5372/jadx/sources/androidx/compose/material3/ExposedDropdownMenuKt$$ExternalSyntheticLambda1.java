package androidx.compose.material3;

import android.graphics.Rect;
import android.view.View;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.math.MathKt;
import kotlinx.datetime.internal.format.parser.NumberConsumer;
import kotlinx.datetime.internal.format.parser.NumberConsumptionError;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import org.jsoup.helper.Validate;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ExposedDropdownMenuKt$$ExternalSyntheticLambda1 implements Function0 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ int f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ ExposedDropdownMenuKt$$ExternalSyntheticLambda1(WindowBoundsCalculator windowBoundsCalculator, int i, MutableState mutableState, ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState) {
        this.f$0 = windowBoundsCalculator;
        this.f$1 = i;
        this.f$2 = mutableState;
        this.f$3 = parcelableSnapshotMutableIntState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i;
        int i2 = this.$r8$classId;
        Object obj = this.f$3;
        int i3 = this.f$1;
        Object obj2 = this.f$2;
        Object obj3 = this.f$0;
        switch (i2) {
            case 0:
                ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState = (ParcelableSnapshotMutableIntState) obj;
                View view = ((WindowBoundsCalculator) obj3).view;
                Rect rect = new Rect();
                view.getWindowVisibleDisplayFrame(rect);
                int i4 = rect.top;
                int i5 = rect.bottom;
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((MutableState) obj2).getValue();
                androidx.compose.ui.geometry.Rect m1090Recttz77jQw = (layoutCoordinates == null || !layoutCoordinates.isAttached$1()) ? androidx.compose.ui.geometry.Rect.Zero : Util.m1090Recttz77jQw(layoutCoordinates.mo581localToWindowMKHz9U(0L), Validate.m1072toSizeozmzZPI(layoutCoordinates.mo576getSizeYbymL2g()));
                int i6 = i4 + i3;
                int i7 = i5 - i3;
                float f = m1090Recttz77jQw.top;
                if (f <= i5) {
                    float f2 = m1090Recttz77jQw.bottom;
                    if (f2 >= i4) {
                        i = MathKt.roundToInt(Math.max(f - i6, i7 - f2));
                        parcelableSnapshotMutableIntState.setIntValue(Math.max(i, 0));
                        return Unit.INSTANCE;
                    }
                }
                i = i7 - i6;
                parcelableSnapshotMutableIntState.setIntValue(Math.max(i, 0));
                return Unit.INSTANCE;
            default:
                StringBuilder m31m = CameraDevices$CC.m31m("Can not interpret the string '", (String) obj3, "' as ");
                m31m.append(((NumberConsumer) ((NumberSpanParserOperation) obj2).consumers.get(i3)).whatThisExpects);
                m31m.append(": ");
                m31m.append(((NumberConsumptionError) obj).errorMessage());
                return m31m.toString();
        }
    }

    public /* synthetic */ ExposedDropdownMenuKt$$ExternalSyntheticLambda1(String str, NumberSpanParserOperation numberSpanParserOperation, int i, NumberConsumptionError numberConsumptionError) {
        this.f$0 = str;
        this.f$2 = numberSpanParserOperation;
        this.f$1 = i;
        this.f$3 = numberConsumptionError;
    }
}
