package org.schabi.newpipe;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.sqlite.SQLite;
import io.reactivex.rxjava3.internal.operators.single.SingleCreate$Emitter;
import j$.util.function.Consumer$CC;
import java.util.ArrayList;
import java.util.function.Consumer;
import okhttp3.Headers;
import okhttp3.Request;
import org.jsoup.Jsoup;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.RouterActivity.PersistentFragment.AnonymousClass1;
import org.schabi.newpipe.database.stream.model.StreamEntity;
import org.schabi.newpipe.download.DownloadDialog;
import org.schabi.newpipe.download.LoadingDialog;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.Info;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.local.dialog.PlaylistDialog;
import org.schabi.newpipe.player.playqueue.PlayQueueItem;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class DownloaderImpl$$ExternalSyntheticLambda3 implements Consumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ DownloaderImpl$$ExternalSyntheticLambda3(Object obj, Object obj2, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void s(Object obj) {
        int i = this.$r8$classId;
        int i2 = 1;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 0:
                String str = (String) obj2;
                String str2 = (String) obj;
                str.getClass();
                str2.getClass();
                Headers.Builder builder = ((Request.Builder) obj3).headers;
                builder.getClass();
                Jsoup.headersCheckName(str);
                Jsoup.headersCheckValue(str2, str);
                Jsoup.commonAddLenient(builder, str, str2);
                break;
            case 1:
                Context context = (Context) obj3;
                PlayQueueItem playQueueItem = (PlayQueueItem) obj2;
                int serviceId = playQueueItem.getServiceId();
                String uploader = playQueueItem.getUploader();
                Intent openIntent = SQLite.getOpenIntent(context, (String) obj, serviceId, StreamingService.LinkType.CHANNEL);
                openIntent.setFlags(268435456);
                openIntent.putExtra("key_title", uploader);
                context.startActivity(openIntent);
                break;
            case 2:
                new DownloadDialog((Context) obj3, (StreamInfo) obj).show((FragmentManager) obj2, "downloadDialog");
                break;
            case 3:
                RouterActivity.FetcherService.$r8$lambda$RYbQatUeDKy7ChjKpPfYUB5qItk((RouterActivity.FetcherService) obj3, (RouterActivity.Choice) obj2, (Info) obj);
                break;
            case 4:
                String str3 = (String) obj2;
                AppCompatActivity appCompatActivity = (AppCompatActivity) obj;
                RouterActivity.handleError(appCompatActivity, new ErrorInfo((Throwable) obj3, UserAction.REQUESTED_STREAM, Modifier.CC.m("Tried to add ", str3, " to a playlist"), Integer.valueOf(((RouterActivity) appCompatActivity).currentService.serviceId), str3));
                break;
            case 5:
                Object[] objArr = {new StreamEntity((StreamInfo) obj2)};
                ArrayList arrayList = new ArrayList(1);
                Object obj4 = objArr[0];
                PlaylistDialog.createCorrespondingDialog((AppCompatActivity) obj, Owner.CC.m(obj4, arrayList, obj4, arrayList), new RouterActivity$PersistentFragment$$ExternalSyntheticLambda5((RouterActivity.PersistentFragment) obj3, i2));
                break;
            case 6:
                ((LoadingDialog) obj3).dismissInternal(false, false);
                ((RouterActivity) ((AppCompatActivity) obj)).showUnsupportedUrlDialog((String) obj2);
                break;
            case 7:
                AppCompatActivity appCompatActivity2 = (AppCompatActivity) obj;
                ((LoadingDialog) obj3).dismissInternal(false, false);
                new DownloadDialog(appCompatActivity2, (StreamInfo) obj2).show(appCompatActivity2.getSupportFragmentManager(), "downloadDialog");
                break;
            case 8:
                AppCompatActivity appCompatActivity3 = (AppCompatActivity) obj;
                appCompatActivity3.runOnUiThread(new RouterActivity$PersistentFragment$$ExternalSyntheticLambda13((RouterActivity.PersistentFragment) obj3, appCompatActivity3, (SingleCreate$Emitter) obj2));
                break;
            case 9:
                RouterActivity.PersistentFragment persistentFragment = (RouterActivity.PersistentFragment) obj3;
                Consumer consumer = (Consumer) obj2;
                AppCompatActivity appCompatActivity4 = (AppCompatActivity) obj;
                if (((LifecycleRegistry) persistentFragment.getLifecycle()).state.compareTo(Lifecycle.State.STARTED) < 0) {
                    persistentFragment.getLifecycle().addObserver(persistentFragment.new AnonymousClass1(consumer));
                    if (Build.VERSION.SDK_INT < 29 && !appCompatActivity4.isChangingConfigurations()) {
                        Intent intent = new Intent(appCompatActivity4, (Class<?>) RouterActivity.class);
                        intent.setFlags(131072);
                        persistentFragment.startActivity(intent);
                        break;
                    }
                } else {
                    appCompatActivity4.runOnUiThread(new RouterActivity$PersistentFragment$$ExternalSyntheticLambda13(persistentFragment, consumer, appCompatActivity4, i2));
                    break;
                }
                break;
            default:
                AppCompatActivity appCompatActivity5 = (AppCompatActivity) obj;
                appCompatActivity5.runOnUiThread(new RouterActivity$PersistentFragment$$ExternalSyntheticLambda13((RouterActivity.PersistentFragment.AnonymousClass1) obj3, (Consumer) obj2, appCompatActivity5, 2));
                break;
        }
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.$r8$classId;
        return Consumer$CC.$default$andThen(this, consumer);
    }
}
