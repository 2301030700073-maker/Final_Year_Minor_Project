package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.wikipedia.feed.ForYouCardKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AppBarKt$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Modifier f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ float f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;
    public final /* synthetic */ Object f$7;
    public final /* synthetic */ int f$8;
    public final /* synthetic */ int f$9;

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda1(ComposableLambdaImpl composableLambdaImpl, Modifier modifier, Function2 function2, Function3 function3, float f, WindowInsets windowInsets, TopAppBarColors topAppBarColors, PinnedScrollBehavior pinnedScrollBehavior, int i, int i2) {
        this.f$0 = composableLambdaImpl;
        this.f$1 = modifier;
        this.f$2 = function2;
        this.f$3 = function3;
        this.f$4 = f;
        this.f$5 = windowInsets;
        this.f$6 = topAppBarColors;
        this.f$7 = pinnedScrollBehavior;
        this.f$8 = i;
        this.f$9 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$8;
        Object obj3 = this.f$7;
        Object obj4 = this.f$6;
        Object obj5 = this.f$5;
        Object obj6 = this.f$3;
        Object obj7 = this.f$2;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                AppBarKt.m257TopAppBarGHTll3U((ComposableLambdaImpl) obj8, this.f$1, (Function2) obj7, (Function3) obj6, this.f$4, (WindowInsets) obj5, (TopAppBarColors) obj4, (PinnedScrollBehavior) obj3, (GapComposer) obj, updateChangedFlags, this.f$9);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(i2 | 1);
                ForYouCardKt.m907FeedFeatureTeaserModule0vH8DBg((String) obj8, (String) obj7, (String) obj6, (Painter) obj5, (List) obj4, this.f$1, this.f$4, (Function0) obj3, (GapComposer) obj, updateChangedFlags2, this.f$9);
                break;
        }
        return unit;
    }

    public /* synthetic */ AppBarKt$$ExternalSyntheticLambda1(String str, String str2, String str3, Painter painter, List list, Modifier modifier, float f, Function0 function0, int i, int i2) {
        this.f$0 = str;
        this.f$2 = str2;
        this.f$3 = str3;
        this.f$5 = painter;
        this.f$6 = list;
        this.f$1 = modifier;
        this.f$4 = f;
        this.f$7 = function0;
        this.f$8 = i;
        this.f$9 = i2;
    }
}
