package org.wikipedia.watchlist;

import androidx.compose.foundation.ImageKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import okio.Options;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class WatchlistExpiryDialog$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ WatchlistExpiryDialog f$0;

    public /* synthetic */ WatchlistExpiryDialog$$ExternalSyntheticLambda0(WatchlistExpiryDialog watchlistExpiryDialog, int i) {
        this.$r8$classId = i;
        this.f$0 = watchlistExpiryDialog;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        WatchlistExpiryDialog watchlistExpiryDialog = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-1697847464, new WatchlistExpiryDialog$$ExternalSyntheticLambda0(watchlistExpiryDialog, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    Modifier m46backgroundbw27NRU = ImageKt.m46backgroundbw27NRU(Modifier.Companion.$$INSTANCE, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, ColorKt.RectangleShape);
                    List list = watchlistExpiryDialog.expiryList;
                    WatchlistExpiry watchlistExpiry = WatchlistExpiry.NEVER;
                    boolean changedInstance = gapComposer2.changedInstance(watchlistExpiryDialog);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new MainActivity$$ExternalSyntheticLambda1(29, watchlistExpiryDialog);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Options.Companion.WatchlistExpiryDialogView(m46backgroundbw27NRU, list, watchlistExpiry, (Function1) rememberedValue, gapComposer2, 384);
                    break;
                }
                break;
        }
        return unit;
    }
}
