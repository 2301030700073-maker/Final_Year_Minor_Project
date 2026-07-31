package com.skydoves.balloon;

import android.view.View;
import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.wikipedia.watchlist.WatchlistExpiry;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Balloon$relayShowAlignBottom$$inlined$relay$1 implements Function0 {
    public final /* synthetic */ Object $anchor$inlined;
    public final /* synthetic */ Object $balloon;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    public /* synthetic */ Balloon$relayShowAlignBottom$$inlined$relay$1(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$balloon = obj2;
        this.$anchor$inlined = obj3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.$balloon;
        Object obj2 = this.this$0;
        Object obj3 = this.$anchor$inlined;
        switch (i) {
            case 0:
                if (!((Balloon) obj2).destroyed) {
                    ((Balloon) obj).showAlignBottom((View) obj3, 0);
                    break;
                }
                break;
            default:
                WatchlistExpiry watchlistExpiry = (WatchlistExpiry) obj2;
                ((MutableState) obj3).setValue(watchlistExpiry);
                ((Function1) obj).invoke(watchlistExpiry);
                break;
        }
        return unit;
    }
}
