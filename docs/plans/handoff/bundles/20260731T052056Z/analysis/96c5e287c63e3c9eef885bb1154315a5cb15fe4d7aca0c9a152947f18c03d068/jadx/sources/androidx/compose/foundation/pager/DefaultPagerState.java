package androidx.compose.foundation.pager;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.text.BasicTextKt$$ExternalSyntheticLambda3;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultPagerState extends PagerState {
    public static final CardView.AnonymousClass1 Saver = SaverKt.listSaver(new SaversKt$$ExternalSyntheticLambda0(7), new BasicTextKt$$ExternalSyntheticLambda3(22));
    public final ParcelableSnapshotMutableState pageCountState;

    public DefaultPagerState(int i, float f, Function0 function0) {
        super(i, f);
        this.pageCountState = Updater.mutableStateOf$default(function0);
    }

    @Override // androidx.compose.foundation.pager.PagerState
    public final int getPageCount() {
        return ((Number) ((Function0) this.pageCountState.getValue()).invoke()).intValue();
    }
}
