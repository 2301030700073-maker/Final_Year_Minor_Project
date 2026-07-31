package androidx.compose.foundation;

import androidx.compose.material3.CardColors;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.TabsBoxKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ImageKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Modifier f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ float f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ int f$7;
    public final /* synthetic */ int f$8;

    public /* synthetic */ ImageKt$$ExternalSyntheticLambda1(Modifier modifier, float f, CardColors cardColors, BorderStroke borderStroke, Function0 function0, Shape shape, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.f$2 = modifier;
        this.f$5 = f;
        this.f$0 = cardColors;
        this.f$1 = borderStroke;
        this.f$3 = function0;
        this.f$4 = shape;
        this.f$6 = composableLambdaImpl;
        this.f$7 = i;
        this.f$8 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$7;
        Object obj3 = this.f$6;
        Object obj4 = this.f$4;
        Object obj5 = this.f$3;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                ImageKt.Image((Painter) obj7, (String) obj6, this.f$2, (Alignment) obj5, (ContentScale) obj4, this.f$5, (BlendModeColorFilter) obj3, (GapComposer) obj, updateChangedFlags, this.f$8);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                TabsBoxKt.m902WikiCardjfnsLPA(this.f$2, this.f$5, (CardColors) obj7, (BorderStroke) obj6, (Function0) obj5, (Shape) obj4, (ComposableLambdaImpl) obj3, (GapComposer) obj, updateChangedFlags2, this.f$8);
                break;
        }
        return unit;
    }

    public /* synthetic */ ImageKt$$ExternalSyntheticLambda1(Painter painter, String str, Modifier modifier, Alignment alignment, ContentScale contentScale, float f, BlendModeColorFilter blendModeColorFilter, int i, int i2) {
        this.f$0 = painter;
        this.f$1 = str;
        this.f$2 = modifier;
        this.f$3 = alignment;
        this.f$4 = contentScale;
        this.f$5 = f;
        this.f$6 = blendModeColorFilter;
        this.f$7 = i;
        this.f$8 = i2;
    }
}
