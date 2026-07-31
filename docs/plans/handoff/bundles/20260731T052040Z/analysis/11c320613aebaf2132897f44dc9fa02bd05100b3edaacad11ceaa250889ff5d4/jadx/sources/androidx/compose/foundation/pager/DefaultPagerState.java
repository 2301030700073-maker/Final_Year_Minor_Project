package androidx.compose.foundation.pager;

import androidx.cardview.widget.CardView;
import androidx.compose.material3.TabKt$$ExternalSyntheticLambda0;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda2;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class DefaultPagerState extends PagerState {
    public static final CardView.AnonymousClass1 Saver;
    public final ParcelableSnapshotMutableState pageCountState;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        SaversKt$$ExternalSyntheticLambda0 saversKt$$ExternalSyntheticLambda0 = new SaversKt$$ExternalSyntheticLambda0(3);
        SaversKt$$ExternalSyntheticLambda2 saversKt$$ExternalSyntheticLambda2 = new SaversKt$$ExternalSyntheticLambda2(2);
        TabKt$$ExternalSyntheticLambda0 tabKt$$ExternalSyntheticLambda0 = new TabKt$$ExternalSyntheticLambda0(saversKt$$ExternalSyntheticLambda0, 7, (byte) 0);
        TypeIntrinsics.beforeCheckcastToFunctionOfArity(1, saversKt$$ExternalSyntheticLambda2);
        Saver = new CardView.AnonymousClass1(13, tabKt$$ExternalSyntheticLambda0, saversKt$$ExternalSyntheticLambda2, 0 == true ? 1 : 0);
    }

    public DefaultPagerState(int i, float f, Function0 function0) {
        super(i, f);
        this.pageCountState = Updater.mutableStateOf$default(function0);
    }

    @Override // androidx.compose.foundation.pager.PagerState
    public final int getPageCount() {
        return ((Number) ((Function0) this.pageCountState.getValue()).invoke()).intValue();
    }
}
