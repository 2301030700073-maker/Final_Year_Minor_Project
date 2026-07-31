package coil3.compose;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import coil3.compose.internal.AsyncImageState;
import java.util.ArrayList;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.util.UiState;
import org.wikipedia.yearinreview.YearInReviewDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class AsyncImageKt$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ int f$11;
    public final /* synthetic */ int f$12;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Function1 f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ AsyncImageKt$$ExternalSyntheticLambda0(Modifier modifier, UiState uiState, Function2 function2, Function1 function1, Function2 function22, Function0 function0, Function0 function02, int i, int i2) {
        this.f$2 = modifier;
        this.f$0 = uiState;
        this.f$1 = function2;
        this.f$3 = function1;
        this.f$4 = function22;
        this.f$5 = function0;
        this.f$6 = function02;
        this.f$11 = i;
        this.f$12 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$11;
        Object obj3 = this.f$6;
        Object obj4 = this.f$5;
        Object obj5 = this.f$4;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        Object obj8 = this.f$2;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(i2 | 1);
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$12);
                AsyncImageKt.m773AsyncImage76YX9Dk((AsyncImageState) obj7, (String) obj6, (Modifier) obj8, this.f$3, (Function1) obj5, (Alignment) obj4, (ContentScale) obj3, (GapComposer) obj, updateChangedFlags, updateChangedFlags2);
                break;
            case 1:
                ((Integer) obj2).getClass();
                int updateChangedFlags3 = Updater.updateChangedFlags(i2 | 1);
                TabsBoxKt.ToggleListScreen((String) obj6, (String) obj7, (ArrayList) obj8, (Set) obj5, (Function2) obj4, this.f$3, (Function0) obj3, (GapComposer) obj, updateChangedFlags3, this.f$12);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags4 = Updater.updateChangedFlags(i2 | 1);
                YearInReviewDialog.YearInReviewScreenDeck((Modifier) obj8, (UiState) obj7, (Function2) obj6, this.f$3, (Function2) obj5, (Function0) obj4, (Function0) obj3, (GapComposer) obj, updateChangedFlags4, this.f$12);
                break;
        }
        return unit;
    }

    public /* synthetic */ AsyncImageKt$$ExternalSyntheticLambda0(AsyncImageState asyncImageState, String str, Modifier modifier, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, int i, int i2) {
        this.f$0 = asyncImageState;
        this.f$1 = str;
        this.f$2 = modifier;
        this.f$3 = function1;
        this.f$4 = function12;
        this.f$5 = alignment;
        this.f$6 = contentScale;
        this.f$11 = i;
        this.f$12 = i2;
    }

    public /* synthetic */ AsyncImageKt$$ExternalSyntheticLambda0(String str, String str2, ArrayList arrayList, Set set, Function2 function2, Function1 function1, Function0 function0, int i, int i2) {
        this.f$1 = str;
        this.f$0 = str2;
        this.f$2 = arrayList;
        this.f$4 = set;
        this.f$5 = function2;
        this.f$3 = function1;
        this.f$6 = function0;
        this.f$11 = i;
        this.f$12 = i2;
    }
}
