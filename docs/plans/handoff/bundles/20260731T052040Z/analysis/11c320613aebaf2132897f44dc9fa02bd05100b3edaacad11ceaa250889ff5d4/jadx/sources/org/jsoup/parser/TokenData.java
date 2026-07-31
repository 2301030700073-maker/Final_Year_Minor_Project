package org.jsoup.parser;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.RulerTrackingMap;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.media.MediaBrowserServiceCompat;
import androidx.viewbinding.ViewBinding;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.material.navigation.NavigationView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromAction;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.lang.ref.SoftReference;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Supplier;
import kotlin.collections.CollectionsKt;
import okhttp3.Dispatcher;
import okio.Options;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;
import org.jsoup.nodes.Entities$$ExternalSyntheticThreadLocal1;
import org.koin.core.Koin;
import org.schabi.newpipe.DownloaderImpl$$ExternalSyntheticLambda0;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.AppDatabase;
import org.schabi.newpipe.database.subscription.SubscriptionEntity;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.channel.ChannelInfo;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.kiosk.KioskExtractor;
import org.schabi.newpipe.extractor.kiosk.KioskList$KioskEntry;
import org.schabi.newpipe.extractor.kiosk.KioskList$KioskExtractorFactory;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandlerFactory;
import org.schabi.newpipe.local.feed.FeedDatabaseManager;
import org.schabi.newpipe.local.feed.FeedDatabaseManager$$ExternalSyntheticLambda3;
import org.schabi.newpipe.local.subscription.SubscriptionManager;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialogViewModel;
import org.schabi.newpipe.player.mediabrowser.MediaBrowserPlaybackPreparer;
import org.schabi.newpipe.views.NewPipeEditText;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class TokenData implements ViewBinding, Function, Consumer {
    public final /* synthetic */ int $r8$classId;
    public Object builder;
    public Object value;

    public TokenData(Supplier supplier) {
        this.$r8$classId = 2;
        this.builder = supplier;
        this.value = new Entities$$ExternalSyntheticThreadLocal1(new Entities$$ExternalSyntheticLambda0(2), 1);
    }

    public static TokenData inflate(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.dialog_edit_text, (ViewGroup) null, false);
        NewPipeEditText newPipeEditText = (NewPipeEditText) Options.Companion.findChildViewById(R.id.dialogEditText, inflate);
        if (newPipeEditText != null) {
            return new TokenData((RelativeLayout) inflate, newPipeEditText, 4);
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.dialogEditText)));
        return null;
    }

    public static TokenData inflate$1(LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.single_choice_dialog_view, (ViewGroup) null, false);
        RadioGroup radioGroup = (RadioGroup) Options.Companion.findChildViewById(android.R.id.list, inflate);
        if (radioGroup != null) {
            return new TokenData((ScrollView) inflate, radioGroup, 10);
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(android.R.id.list)));
        return null;
    }

    public static TokenData ofWebClient() {
        return new TokenData(new Dispatcher("WEB", "2.20260120.01.00", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, "WATCH"), new RulerTrackingMap(-1, "DESKTOP", null, null, null, null), 12);
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        switch (this.$r8$classId) {
            case 18:
                Throwable th = (Throwable) obj;
                th.getClass();
                ((MediaBrowserServiceCompat.Result) this.builder).sendResult(null);
                Log.e("MediaBrowserImpl", "onLoadChildren error for parentId=" + ((String) this.value) + ": " + th);
                break;
            case 19:
                Throwable th2 = (Throwable) obj;
                th2.getClass();
                ((MediaBrowserServiceCompat.AnonymousClass3) this.builder).sendResult(null);
                Log.e("MediaBrowserImpl", "Search error for query=\"" + ((String) this.value) + "\": " + th2);
                break;
            default:
                Throwable th3 = (Throwable) obj;
                th3.getClass();
                Log.e(MediaBrowserPlaybackPreparer.TAG, "Failed to start playback of media ID [" + ((String) this.value) + "]", th3);
                MediaBrowserPlaybackPreparer mediaBrowserPlaybackPreparer = (MediaBrowserPlaybackPreparer) this.builder;
                DownloaderImpl$$ExternalSyntheticLambda0 downloaderImpl$$ExternalSyntheticLambda0 = mediaBrowserPlaybackPreparer.setMediaSessionError;
                ErrorInfo.Companion.getClass();
                downloaderImpl$$ExternalSyntheticLambda0.accept(ErrorInfo.Companion.getMessage(th3, null, null).getText(mediaBrowserPlaybackPreparer.context), 1);
                break;
        }
    }

    public void addKioskEntry(KioskList$KioskExtractorFactory kioskList$KioskExtractorFactory, ListLinkHandlerFactory listLinkHandlerFactory, String str) {
        HashMap hashMap = (HashMap) this.builder;
        if (hashMap.get(str) != null) {
            throw new Exception(Modifier.CC.m("Kiosk with type ", str, " already exists."));
        }
        hashMap.put(str, new KioskList$KioskEntry(kioskList$KioskExtractorFactory, listLinkHandlerFactory));
    }

    public void append(char c) {
        StringBuilder sb = (StringBuilder) this.builder;
        if (sb != null) {
            sb.append(c);
            return;
        }
        if (((String) this.value) == null) {
            this.value = String.valueOf(c);
            return;
        }
        StringBuilder borrowBuilder = StringUtil.borrowBuilder();
        this.builder = borrowBuilder;
        borrowBuilder.append((String) this.value);
        this.value = null;
        ((StringBuilder) this.builder).append(c);
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        switch (this.$r8$classId) {
            case 16:
                SubscriptionEntity subscriptionEntity = (SubscriptionEntity) obj;
                subscriptionEntity.getClass();
                return new CompletableFromAction(new WorkerKt$$ExternalSyntheticLambda2(17, subscriptionEntity, (SubscriptionManager) this.value, (ChannelInfo) this.builder), 2);
            default:
                Long l = (Long) obj;
                l.getClass();
                FeedDatabaseManager feedDatabaseManager = ((FeedGroupDialogViewModel) this.value).feedDatabaseManager;
                long longValue = l.longValue();
                List list = CollectionsKt.toList((Set) this.builder);
                feedDatabaseManager.getClass();
                return new CompletableFromAction(new FeedDatabaseManager$$ExternalSyntheticLambda3(feedDatabaseManager, longValue, list), 1).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
        }
    }

    public Object borrow() {
        Entities$$ExternalSyntheticThreadLocal1 entities$$ExternalSyntheticThreadLocal1 = (Entities$$ExternalSyntheticThreadLocal1) this.value;
        ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) entities$$ExternalSyntheticThreadLocal1.get()).get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            entities$$ExternalSyntheticThreadLocal1.set(new SoftReference(arrayDeque));
        }
        return !arrayDeque.isEmpty() ? arrayDeque.pop() : ((Supplier) this.builder).get();
    }

    public KioskExtractor getExtractorByUrl(String str) {
        HashMap hashMap = (HashMap) this.builder;
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            KioskList$KioskEntry kioskList$KioskEntry = (KioskList$KioskEntry) ((Map.Entry) it.next()).getValue();
            if (kioskList$KioskEntry.handlerFactory.onAcceptUrl(str)) {
                String id = kioskList$KioskEntry.handlerFactory.getId(str);
                KioskList$KioskEntry kioskList$KioskEntry2 = (KioskList$KioskEntry) hashMap.get(id);
                if (kioskList$KioskEntry2 != null) {
                    return kioskList$KioskEntry2.extractorFactory.createNewKiosk(kioskList$KioskEntry2.handlerFactory.fromId(id).getUrl(), id);
                }
                throw new ExtractionException(Owner.CC.m("No kiosk found with the type: ", id));
            }
        }
        throw new ExtractionException(Owner.CC.m("Could not find a kiosk that fits to the url: ", str));
    }

    @Override // androidx.viewbinding.ViewBinding
    public View getRoot() {
        switch (this.$r8$classId) {
            case 4:
                return (RelativeLayout) this.value;
            case 5:
                return (NavigationView) this.value;
            case 6:
                return (RelativeLayout) this.value;
            case 7:
                return (ConstraintLayout) this.value;
            case 8:
                return (FrameLayout) this.value;
            case 9:
                return (ConstraintLayout) this.value;
            default:
                return (ScrollView) this.value;
        }
    }

    public boolean hasData() {
        return (((StringBuilder) this.builder) == null && ((String) this.value) == null) ? false : true;
    }

    public void release(Object obj) {
        Entities$$ExternalSyntheticThreadLocal1 entities$$ExternalSyntheticThreadLocal1 = (Entities$$ExternalSyntheticThreadLocal1) this.value;
        ArrayDeque arrayDeque = (ArrayDeque) ((SoftReference) entities$$ExternalSyntheticThreadLocal1.get()).get();
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            entities$$ExternalSyntheticThreadLocal1.set(new SoftReference(arrayDeque));
        }
        if (arrayDeque.size() < 12) {
            arrayDeque.push(obj);
        }
    }

    public void reset() {
        StringBuilder sb = (StringBuilder) this.builder;
        if (sb != null) {
            String[] strArr = StringUtil.padding;
            if (sb.length() <= 8192) {
                sb.delete(0, sb.length());
                StringUtil.BuilderPool.release(sb);
            }
            this.builder = null;
        }
        this.value = null;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = (StringBuilder) this.builder;
                if (sb != null) {
                    return sb.toString();
                }
                String str = (String) this.value;
                return str != null ? str : "";
            default:
                return super.toString();
        }
    }

    public String value() {
        StringBuilder sb = (StringBuilder) this.builder;
        if (sb == null) {
            String str = (String) this.value;
            return str != null ? str : "";
        }
        this.value = sb.toString();
        StringUtil.releaseBuilder((StringBuilder) this.builder);
        this.builder = null;
        return (String) this.value;
    }

    public /* synthetic */ TokenData(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.value = obj;
        this.builder = obj2;
    }

    public /* synthetic */ TokenData(Object obj, String str, int i) {
        this.$r8$classId = i;
        this.builder = obj;
        this.value = str;
    }

    public TokenData(AppDatabase appDatabase) {
        this.$r8$classId = 15;
        this.value = appDatabase;
        this.builder = appDatabase.playlistRemoteDAO();
    }

    public /* synthetic */ TokenData(int i) {
        this.$r8$classId = i;
    }

    public TokenData(Koin koin) {
        this.$r8$classId = 3;
        this.value = koin;
        this.builder = new ArrayList();
    }

    public TokenData(Context context) {
        this.$r8$classId = 14;
        this.value = context;
    }

    public TokenData(StreamingService streamingService) {
        this.$r8$classId = 11;
        this.builder = new HashMap();
        this.value = null;
    }

    public void append(String str) {
        StringBuilder sb = (StringBuilder) this.builder;
        if (sb != null) {
            sb.append(str);
            return;
        }
        if (((String) this.value) != null) {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            this.builder = borrowBuilder;
            borrowBuilder.append((String) this.value);
            this.value = null;
            ((StringBuilder) this.builder).append(str);
            return;
        }
        this.value = str;
    }
}
