package androidx.compose.material3;

import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement$Horizontal;
import androidx.compose.foundation.layout.Arrangement$Vertical;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.ExceptionsKt;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.donate.donationreminder.DonationReminderScreenKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ButtonKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ int f$10;
    public final /* synthetic */ int f$11;
    public final /* synthetic */ boolean f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ Function f$9;

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda3(Modifier modifier, String str, boolean z, String str2, Function1 function1, Function0 function0, Function2 function2, Function2 function22, Function1 function12, int i, int i2) {
        this.$r8$classId = 3;
        this.f$1 = modifier;
        this.f$3 = str;
        this.f$2 = z;
        this.f$4 = str2;
        this.f$5 = function1;
        this.f$0 = function0;
        this.f$6 = function2;
        this.f$7 = function22;
        this.f$9 = function12;
        this.f$10 = i;
        this.f$11 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$10;
        Function function = this.f$9;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$0;
        Object obj6 = this.f$5;
        Object obj7 = this.f$4;
        Object obj8 = this.f$3;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.Button((Function0) obj5, this.f$1, this.f$2, (Shape) obj8, (ButtonColors) obj7, (ButtonElevation) obj6, (BorderStroke) obj4, (PaddingValues) obj3, (Function3) function, (GapComposer) obj, updateChangedFlags, this.f$11);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                ExceptionsKt.LazyColumn(this.f$1, (LazyListState) obj5, (PaddingValues) obj3, (Arrangement$Vertical) obj8, (Alignment.Horizontal) obj7, (FlingBehavior) obj6, this.f$2, (AndroidEdgeEffectOverscrollEffect) obj4, (Function1) function, (GapComposer) obj, updateChangedFlags2, this.f$11);
                break;
            case 2:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                ExceptionsKt.LazyRow(this.f$1, (LazyListState) obj5, (PaddingValues) obj3, (Arrangement$Horizontal) obj8, (BiasAlignment.Vertical) obj7, (FlingBehavior) obj6, this.f$2, (AndroidEdgeEffectOverscrollEffect) obj4, (Function1) function, (GapComposer) obj, updateChangedFlags3, this.f$11);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                DonationReminderScreenKt.CustomInputDialog(this.f$1, (String) obj8, this.f$2, (String) obj7, (Function1) obj6, (Function0) obj5, (Function2) obj4, (Function2) obj3, (Function1) function, (GapComposer) obj, updateChangedFlags4, this.f$11);
                break;
        }
        return unit;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda3(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, Object obj, Object obj2, FlingBehavior flingBehavior, boolean z, AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Function1 function1, int i, int i2, int i3) {
        this.$r8$classId = i3;
        this.f$1 = modifier;
        this.f$0 = lazyListState;
        this.f$7 = paddingValues;
        this.f$3 = obj;
        this.f$4 = obj2;
        this.f$5 = flingBehavior;
        this.f$2 = z;
        this.f$6 = androidEdgeEffectOverscrollEffect;
        this.f$9 = function1;
        this.f$10 = i;
        this.f$11 = i2;
    }

    public /* synthetic */ ButtonKt$$ExternalSyntheticLambda3(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, BorderStroke borderStroke, PaddingValues paddingValues, Function3 function3, int i, int i2) {
        this.$r8$classId = 0;
        this.f$0 = function0;
        this.f$1 = modifier;
        this.f$2 = z;
        this.f$3 = shape;
        this.f$4 = buttonColors;
        this.f$5 = buttonElevation;
        this.f$6 = borderStroke;
        this.f$7 = paddingValues;
        this.f$9 = function3;
        this.f$10 = i;
        this.f$11 = i2;
    }
}
