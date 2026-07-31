package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okio.Options;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MenuKt$$ExternalSyntheticLambda2 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Function0 f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ boolean f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ int f$9;

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(ComposableLambdaImpl composableLambdaImpl, Function0 function0, Modifier modifier, Function2 function2, Function2 function22, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, int i) {
        this.f$0 = composableLambdaImpl;
        this.f$1 = function0;
        this.f$2 = modifier;
        this.f$3 = function2;
        this.f$4 = function22;
        this.f$5 = z;
        this.f$6 = menuItemColors;
        this.f$7 = paddingValues;
        this.f$9 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        int i2 = this.f$9;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$4;
        Object obj6 = this.f$3;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.DropdownMenuItemContent((ComposableLambdaImpl) obj7, this.f$1, this.f$2, (Function2) obj6, (Function2) obj5, this.f$5, (MenuItemColors) obj4, (PaddingValues) obj3, (GapComposer) obj, updateChangedFlags);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(805306369);
                CardKt.FilledTonalButton(this.f$1, this.f$2, this.f$5, (Shape) obj6, (ButtonColors) obj5, (ButtonElevation) obj4, (PaddingValues) obj3, (ComposableLambdaImpl) obj7, (GapComposer) obj, updateChangedFlags2, this.f$9);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                Options.Companion.OnThisDayGameCardCompleted(this.f$2, this.f$5, (OnThisDayCardGameState.Completed) obj7, (String) obj6, this.f$1, (Function0) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags3);
                break;
        }
        return unit;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(Modifier modifier, boolean z, OnThisDayCardGameState.Completed completed, String str, Function0 function0, Function0 function02, Function0 function03, Function0 function04, int i) {
        this.f$2 = modifier;
        this.f$5 = z;
        this.f$0 = completed;
        this.f$3 = str;
        this.f$1 = function0;
        this.f$4 = function02;
        this.f$6 = function03;
        this.f$7 = function04;
        this.f$9 = i;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda2(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, PaddingValues paddingValues, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$1 = function0;
        this.f$2 = modifier;
        this.f$5 = z;
        this.f$3 = shape;
        this.f$4 = buttonColors;
        this.f$6 = buttonElevation;
        this.f$7 = paddingValues;
        this.f$0 = composableLambdaImpl;
        this.f$9 = i2;
    }
}
