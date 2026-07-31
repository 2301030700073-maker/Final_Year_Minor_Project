package org.wikipedia.games;

import androidx.compose.material3.CardKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;
import org.wikipedia.feed.wikigames.WikiGame$OnThisDayGame;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda17 implements Function2 {
    public final /* synthetic */ int $r8$classId = 0;
    public final /* synthetic */ Modifier f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ boolean f$3;
    public final /* synthetic */ Function f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ int f$6;
    public final /* synthetic */ int f$7;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda17(Modifier modifier, WikiGame$OnThisDayGame wikiGame$OnThisDayGame, String str, boolean z, Function1 function1, String str2, int i, int i2) {
        this.f$0 = modifier;
        this.f$1 = wikiGame$OnThisDayGame;
        this.f$2 = str;
        this.f$3 = z;
        this.f$4 = function1;
        this.f$5 = str2;
        this.f$6 = i;
        this.f$7 = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function function = this.f$4;
        Object obj3 = this.f$5;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                int updateChangedFlags = Updater.updateChangedFlags(this.f$7 | 1);
                Jsoup.OnThisDayGameCardContent(this.f$0, (WikiGame$OnThisDayGame) obj5, (String) obj4, this.f$3, (Function1) function, (String) obj3, this.f$6, (GapComposer) obj, updateChangedFlags);
                break;
            default:
                ((Integer) obj2).getClass();
                int updateChangedFlags2 = Updater.updateChangedFlags(this.f$6 | 1);
                CardKt.IconButton((Function0) obj5, this.f$0, this.f$3, (IconButtonColors) obj4, (Shape) obj3, (Function2) function, (GapComposer) obj, updateChangedFlags2, this.f$7);
                break;
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda17(Function0 function0, Modifier modifier, boolean z, IconButtonColors iconButtonColors, Shape shape, Function2 function2, int i, int i2) {
        this.f$1 = function0;
        this.f$0 = modifier;
        this.f$3 = z;
        this.f$2 = iconButtonColors;
        this.f$5 = shape;
        this.f$4 = function2;
        this.f$6 = i;
        this.f$7 = i2;
    }
}
