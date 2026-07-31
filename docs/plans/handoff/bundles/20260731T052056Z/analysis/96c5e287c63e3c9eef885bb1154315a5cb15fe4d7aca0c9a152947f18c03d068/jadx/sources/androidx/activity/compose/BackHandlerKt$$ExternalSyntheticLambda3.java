package androidx.activity.compose;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.work.Operation$State;
import coil3.util.UtilsKt;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.wikipedia.R;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.search.SearchResultsScreenKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class BackHandlerKt$$ExternalSyntheticLambda3 implements Function2 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Function0 f$1;

    public /* synthetic */ BackHandlerKt$$ExternalSyntheticLambda3(boolean z, Function0 function0) {
        this.f$0 = z;
        this.f$1 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Function0 function0 = this.f$1;
        boolean z = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                Operation$State.BackHandler(z, function0, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Painter painterResource = UnsignedKt.painterResource(z ? R.drawable.ic_arrow_back_black_24dp : R.drawable.ic_close_black_24dp, 0, gapComposer);
                    String stringResource = UtilsKt.stringResource(z ? R.string.search_back_button_content_description : R.string.table_close, gapComposer);
                    Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(Modifier.Companion.$$INSTANCE, 48.0f);
                    boolean changed = gapComposer.changed(function0);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changed || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new SearchResultsScreenKt$$ExternalSyntheticLambda1(2, function0);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    IconKt.m286Iconww6aTOc(painterResource, stringResource, OffsetKt.m132padding3ABfNKs(ImageKt.m51clickableoSLSa3U$default(15, m145size3ABfNKs, null, (Function0) rememberedValue, false), 12.0f), ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, gapComposer, 8, 0);
                    break;
                }
                break;
        }
        return unit;
    }

    public /* synthetic */ BackHandlerKt$$ExternalSyntheticLambda3(boolean z, Function0 function0, int i) {
        this.f$0 = z;
        this.f$1 = function0;
    }
}
