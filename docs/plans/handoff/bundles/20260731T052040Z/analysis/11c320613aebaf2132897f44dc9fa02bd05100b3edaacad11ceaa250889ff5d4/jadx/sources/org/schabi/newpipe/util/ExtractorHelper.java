package org.schabi.newpipe.util;

import android.content.Context;
import android.os.Build;
import android.text.Html;
import android.view.View;
import android.widget.TextView;
import androidx.collection.LruCache;
import androidx.compose.ui.node.Owner;
import androidx.preference.PreferenceManager;
import androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeConcatArray;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeDefer;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeToSingle;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleDoOnEvent;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.R;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.util.text.TextLinkifier;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ExtractorHelper {
    public static final InfoCache CACHE = InfoCache.INSTANCE;

    public static Single checkCache(boolean z, int i, String str, int i2, SingleAmb singleAmb) {
        checkServiceId(i);
        SingleDoOnEvent singleDoOnEvent = new SingleDoOnEvent(singleAmb, new ExtractorHelper$$ExternalSyntheticLambda14(i, i2, str), 1);
        if (!z) {
            checkServiceId(i);
            ExtractorHelper$$ExternalSyntheticLambda0 extractorHelper$$ExternalSyntheticLambda0 = new ExtractorHelper$$ExternalSyntheticLambda0(i, i2, str);
            int i3 = 0;
            return new MaybeToSingle(new FlowableElementAtMaybe(new MaybeConcatArray(new MaybeSource[]{new MaybeDefer(extractorHelper$$ExternalSyntheticLambda0, i3), new MaybeDefer(singleDoOnEvent, 2)}, i3)));
        }
        CACHE.getClass();
        LruCache lruCache = InfoCache.LRU_CACHE;
        synchronized (lruCache) {
            lruCache.remove(InfoCache.keyOf(i, i2, str));
        }
        return singleDoOnEvent;
    }

    public static void checkServiceId(int i) {
        if (i != -1) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda1.m$1("serviceId is NO_SERVICE_ID");
    }

    public static Single getChannelInfo(int i, String str, boolean z) {
        checkServiceId(i);
        int i2 = 3;
        return checkCache(z, i, str, 2, new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda3(i, i2, str), i2));
    }

    public static Single getChannelTab(int i, ListLinkHandler listLinkHandler, boolean z) {
        checkServiceId(i);
        return checkCache(z, i, listLinkHandler.getUrl(), 3, new SingleAmb(new IdGenerator$$ExternalSyntheticLambda0(i, listLinkHandler), 3));
    }

    public static Single getPlaylistInfo(int i, String str, boolean z) {
        checkServiceId(i);
        return checkCache(z, i, str, 5, new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda3(i, 5, str), 3));
    }

    public static Single getStreamInfo(int i, String str, boolean z) {
        checkServiceId(i);
        return checkCache(z, i, str, 1, new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda3(i, 0, str), 3));
    }

    public static void showMetaInfoInTextView(List list, TextView textView, View view, CompositeDisposable compositeDisposable) {
        Context context = textView.getContext();
        if (list == null || list.isEmpty() || !PreferenceManager.getDefaultSharedPreferences(context).getBoolean(context.getString(R.string.show_meta_info_key), true)) {
            textView.setVisibility(8);
            view.setVisibility(8);
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MetaInfo metaInfo = (MetaInfo) it.next();
            if (!Utils.isNullOrEmpty(metaInfo.getTitle())) {
                sb.append("<b>");
                sb.append(metaInfo.getTitle());
                sb.append("</b> • ");
            }
            String trim = metaInfo.getContent().getContent().trim();
            if (trim.endsWith(".")) {
                trim = Owner.CC.m(1, 0, trim);
            }
            sb.append(trim);
            for (int i = 0; i < metaInfo.getUrls().size(); i++) {
                if (i == 0) {
                    sb.append(" • ");
                } else {
                    sb.append("<br/><br/>");
                }
                sb.append("<a href=\"");
                sb.append(metaInfo.getUrls().get(i));
                sb.append("\">");
                String trim2 = ((String) metaInfo.getUrlTexts().get(i)).trim();
                int i2 = 0;
                while (true) {
                    if (i2 < trim2.length()) {
                        if (Character.isLowerCase(trim2.charAt(i2))) {
                            break;
                        } else {
                            i2++;
                        }
                    } else if (!trim2.isEmpty()) {
                        trim2 = trim2.substring(0, 1).toUpperCase() + trim2.substring(1).toLowerCase();
                    }
                }
                sb.append(trim2);
                sb.append("</a>");
            }
        }
        view.setVisibility(0);
        String sb2 = sb.toString();
        TextLinkifier.changeLinkIntents(textView, Build.VERSION.SDK_INT >= 24 ? Utility.fromHtml(2, sb2) : Html.fromHtml(sb2), null, null, compositeDisposable, TextLinkifier.SET_LINK_MOVEMENT_METHOD);
    }
}
