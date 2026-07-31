package androidx.compose.material3;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class ListItemKt$$ExternalSyntheticLambda5 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$6;

    public /* synthetic */ ListItemKt$$ExternalSyntheticLambda5(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$3 = obj3;
        this.f$4 = obj4;
        this.f$6 = obj5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$6;
        Object obj4 = this.f$4;
        Object obj5 = this.f$3;
        Object obj6 = this.f$1;
        Object obj7 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ListItemKt.m150ListItemHXNGIdc((ComposableLambdaImpl) obj7, (Modifier) obj6, (Function2) obj5, (Function2) obj4, (ListItemColors) obj3, (Composer) obj, Updater.updateChangedFlags(7));
                break;
            default:
                ((Integer) obj2).getClass();
                ListItemKt.CollectInteractionsAsState((InteractionSource) obj7, (MutableState) obj6, (MutableState) obj5, (MutableState) obj4, (MutableState) obj3, (Composer) obj, Updater.updateChangedFlags(28081));
                break;
        }
        return unit;
    }
}
