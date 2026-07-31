package org.wikipedia.talk;

import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.dataclient.mwapi.MwNotLoggedInException;
import org.wikipedia.events.LoggedOutInBackgroundEvent;
import org.wikipedia.settings.Prefs;
import org.wikipedia.util.log.L;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(CoroutineContext.Key key, int i) {
        super(key);
        this.$r8$classId = i;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void handleException(Throwable th, CoroutineContext coroutineContext) {
        switch (this.$r8$classId) {
            case 0:
                L.e(th);
                break;
            case 1:
                L.w(th);
                break;
            case 2:
                L.w(th);
                break;
            case 3:
                L.w(th);
                break;
            case 4:
                L.w(th);
                break;
            case 5:
                L.w(th);
                break;
            case 6:
                L.w(th);
                break;
            case 7:
                L.e(th);
                break;
            case 8:
                L.e(th);
                if (th instanceof MwNotLoggedInException) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    Jsoup.getInstance();
                    WikipediaApp.resetAfterLogOut();
                    Prefs prefs = Prefs.INSTANCE;
                    Prefs.setQueueLoggedOutInBackgroundDialog(true);
                    FlowEventBus.post(new LoggedOutInBackgroundEvent());
                    break;
                }
                break;
            case 9:
                L.e(th);
                break;
            case 10:
                th.printStackTrace();
                break;
            case 11:
                L.e(th);
                break;
            case 12:
                L.e(th);
                break;
            case IMAGE_VALUE:
                L.e(th);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                L.e(th);
                break;
            case 15:
                L.e(th);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                L.LEVEL_D.log("", th);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                L.e(th);
                break;
            case RADIO_GROUP_VALUE:
                L.e(th);
                break;
            default:
                L.e(th);
                break;
        }
    }
}
