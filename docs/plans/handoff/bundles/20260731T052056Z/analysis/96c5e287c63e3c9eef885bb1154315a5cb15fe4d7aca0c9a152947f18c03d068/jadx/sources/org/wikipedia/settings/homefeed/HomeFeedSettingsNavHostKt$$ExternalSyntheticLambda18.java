package org.wikipedia.settings.homefeed;

import android.content.Context;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import okhttp3.Cache;
import okio.ByteString;
import org.wikipedia.Constants;
import org.wikipedia.extensions.ContextKt;
import org.wikipedia.main.MainActivity;
import org.wikipedia.navtab.NavTab;
import org.wikipedia.places.PlacesActivity;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.util.UriUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Context f$0;

    public /* synthetic */ HomeFeedSettingsNavHostKt$$ExternalSyntheticLambda18(Context context, int i) {
        this.$r8$classId = i;
        this.f$0 = context;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Context context = this.f$0;
        switch (i) {
            case 0:
                SVGAndroidRenderer instrument = ContextKt.getInstrument(context);
                if (instrument != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument, "click", null, null, "update_location", null, null, 246);
                }
                int i2 = PlacesActivity.$r8$clinit;
                context.startActivity(ByteString.Companion.newIntent(context, null, null));
                break;
            case 1:
                break;
            case 2:
                SVGAndroidRenderer instrument2 = ContextKt.getInstrument(context);
                if (instrument2 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument2, "click", null, null, "reading_history", null, null, 246);
                }
                int i3 = MainActivity.$r8$clinit;
                context.startActivity(UriUtil.newIntent(context).putExtra("goToMainTab", NavTab.SEARCH.ordinal()));
                break;
            default:
                SVGAndroidRenderer instrument3 = ContextKt.getInstrument(context);
                if (instrument3 != null) {
                    SVGAndroidRenderer.submitInteraction$default(instrument3, "click", null, null, "languages", null, null, 246);
                }
                int i4 = WikipediaLanguagesActivity.$r8$clinit;
                context.startActivity(Cache.Companion.newIntent(context, Constants.InvokeSource.SETTINGS));
                break;
        }
        return unit;
    }
}
