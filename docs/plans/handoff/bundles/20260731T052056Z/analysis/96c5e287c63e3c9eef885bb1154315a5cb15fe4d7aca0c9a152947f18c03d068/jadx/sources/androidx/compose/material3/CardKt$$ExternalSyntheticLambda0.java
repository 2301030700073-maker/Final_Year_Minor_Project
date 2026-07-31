package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.TabsBoxKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CardKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Function2 f$5;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(ComposableLambdaImpl composableLambdaImpl, Modifier modifier, Function2 function2, Function2 function22, Function2 function23, ListItemColors listItemColors, int i, int i2) {
        this.f$5 = composableLambdaImpl;
        this.f$0 = modifier;
        this.f$1 = function2;
        this.f$2 = function22;
        this.f$3 = function23;
        this.f$4 = listItemColors;
        this.f$6 = i;
        this.f$7 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Function2 function2 = this.f$5;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$6;
        Object obj3 = this.f$4;
        Object obj4 = this.f$3;
        Object obj5 = this.f$2;
        Object obj6 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                CardKt.Card(this.f$0, (Shape) obj6, (CardColors) obj5, (CardElevation) obj4, (BorderStroke) obj3, (ComposableLambdaImpl) function2, (GapComposer) obj, updateChangedFlags, this.f$7);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                CardKt.m267ListItemHXNGIdc((ComposableLambdaImpl) function2, this.f$0, (Function2) obj6, (Function2) obj5, (Function2) obj4, (ListItemColors) obj3, (GapComposer) obj, updateChangedFlags2, this.f$7);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                TabsBoxKt.SettingsRow((String) obj6, this.f$0, (String) obj5, (Function0) obj4, (Function1) obj3, this.f$5, (GapComposer) obj, updateChangedFlags3, this.f$7);
                break;
        }
        return unit;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, BorderStroke borderStroke, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$0 = modifier;
        this.f$1 = shape;
        this.f$2 = cardColors;
        this.f$3 = cardElevation;
        this.f$4 = borderStroke;
        this.f$5 = composableLambdaImpl;
        this.f$6 = i;
        this.f$7 = i2;
    }

    public /* synthetic */ CardKt$$ExternalSyntheticLambda0(String str, Modifier modifier, String str2, Function0 function0, Function1 function1, Function2 function2, int i, int i2) {
        this.f$1 = str;
        this.f$0 = modifier;
        this.f$2 = str2;
        this.f$3 = function0;
        this.f$4 = function1;
        this.f$5 = function2;
        this.f$6 = i;
        this.f$7 = i2;
    }
}
