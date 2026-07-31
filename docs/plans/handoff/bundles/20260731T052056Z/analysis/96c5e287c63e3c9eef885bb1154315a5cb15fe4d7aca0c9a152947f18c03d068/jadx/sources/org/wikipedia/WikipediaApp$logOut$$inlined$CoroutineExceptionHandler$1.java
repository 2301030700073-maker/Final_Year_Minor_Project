package org.wikipedia;

import androidx.lifecycle.LiveData$1;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.jsoup.Jsoup;
import org.wikipedia.dataclient.okhttp.HttpStatusException;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(CoroutineContext.Key key, int i) {
        super(key);
        this.$r8$classId = i;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        int i;
        switch (this.$r8$classId) {
            case 0:
                L.e(th);
                break;
            case 1:
            case 2:
                break;
            case 3:
                L.e(th);
                if ((th instanceof HttpStatusException) && (i = ((HttpStatusException) th).code) < 500) {
                    char c = 0;
                    if (StringsKt.contains("org.wikipedia", "beta", false)) {
                        c = 1;
                    } else if (StringsKt.contains("org.wikipedia", "alpha", false)) {
                        c = 2;
                    } else if (StringsKt.contains("org.wikipedia", "dev", false)) {
                        c = 3;
                    }
                    if (c != 0 && c != 1 && i != 403) {
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        Jsoup.getInstance().getMainThreadHandler().post(new LiveData$1(26, th));
                        break;
                    }
                }
                break;
            case 4:
                L.e(th);
                break;
            case 5:
                L.e(th);
                break;
            case 6:
                L.e(th);
                break;
            case 7:
                L.e(th);
                break;
            case 8:
                L.e(th);
                break;
            case 9:
                L.e(th);
                break;
            case 10:
                L.e(th);
                break;
            case 11:
                L.e(th);
                break;
            case 12:
                break;
            case IMAGE_VALUE:
                L.e(th);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                L.e(th);
                break;
            case 15:
                L.w(th);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                L.e(th);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                L.e(th);
                break;
            case RADIO_GROUP_VALUE:
                L.e(th);
                break;
            case RADIO_BUTTON_VALUE:
                L.e(th);
                break;
            case RADIO_ROW_VALUE:
                L.e(th);
                break;
            case RADIO_COLUMN_VALUE:
                L.e(th);
                break;
            case SIZE_BOX_VALUE:
                L.e(th);
                break;
            case 23:
                L.LEVEL_W.log("Failed to fetch gallery collection.", th);
                break;
            case 24:
                L.LEVEL_E.log("Failed to fetch watch status.", th);
                break;
            case 25:
                break;
            case 26:
                L.e(th);
                break;
            case 27:
                L.e(th);
                break;
            case 28:
                L.e(th);
                break;
            default:
                L.e(th);
                break;
        }
    }

    private final void handleException$androidx$compose$ui$text$font$FontListFontFamilyTypefaceAdapter$special$$inlined$CoroutineExceptionHandler$1(Throwable th, CoroutineContext coroutineContext) {
    }

    private final void handleException$coil3$RealImageLoaderKt$CoroutineScope$$inlined$CoroutineExceptionHandler$1(Throwable th, CoroutineContext coroutineContext) {
    }

    private final void handleException$org$wikipedia$feed$personalization$PersonalizationViewModel$onTopicSelected$$inlined$CoroutineExceptionHandler$1(Throwable th, CoroutineContext coroutineContext) {
    }

    private final void handleException$org$wikipedia$random$RandomViewModel$refreshSaveState$$inlined$CoroutineExceptionHandler$1(Throwable th, CoroutineContext coroutineContext) {
    }
}
