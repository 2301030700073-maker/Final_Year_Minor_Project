package androidx.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticBUOutline0;
import androidx.lifecycle.LiveData;
import coil3.ComponentRegistry;
import coil3.memory.MemoryCacheService;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.schabi.newpipe.views.FocusOverlayView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {
    public static final boolean DEBUG = Log.isLoggable("MBServiceCompat", 3);
    public final ArrayMap mConnections;
    public final FocusOverlayView.AnonymousClass1 mHandler;
    public ComponentRegistry.Builder mImpl;
    public final ArrayList mPendingConnections;
    public final MemoryCacheService mServiceBinderImpl = new MemoryCacheService(this);
    public MediaSessionCompat.Token mSession;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    /* renamed from: androidx.media.MediaBrowserServiceCompat$3, reason: invalid class name */
    public final class AnonymousClass3 extends Result {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object val$receiver;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass3(Object obj, Object obj2, int i) {
            super(obj);
            this.$r8$classId = i;
            this.val$receiver = obj2;
        }

        @Override // androidx.media.MediaBrowserServiceCompat.Result
        public void detach() {
            switch (this.$r8$classId) {
                case 1:
                    ((MediaBrowserService.Result) ((MemoryCacheService) this.val$receiver).imageLoader).detach();
                    break;
                default:
                    super.detach();
                    break;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r2v5, types: [java.util.List] */
        @Override // androidx.media.MediaBrowserServiceCompat.Result
        public final void onResultSent(Object obj) {
            int i = this.$r8$classId;
            Object obj2 = this.val$receiver;
            Object obj3 = 0;
            switch (i) {
                case 0:
                    List list = (List) obj;
                    ResultReceiver resultReceiver = (ResultReceiver) obj2;
                    if (list == null) {
                        resultReceiver.send(-1, null);
                        break;
                    } else {
                        Bundle bundle = new Bundle();
                        bundle.putParcelableArray("search_results", (Parcelable[]) list.toArray(new MediaBrowserCompat.MediaItem[0]));
                        resultReceiver.send(0, bundle);
                        break;
                    }
                default:
                    List<MediaBrowserCompat.MediaItem> list2 = (List) obj;
                    if (list2 != null) {
                        obj3 = new ArrayList(list2.size());
                        for (MediaBrowserCompat.MediaItem mediaItem : list2) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            obj3.add(obtain);
                        }
                    } else if (Build.VERSION.SDK_INT < 24) {
                        obj3 = Collections.EMPTY_LIST;
                    }
                    ((MemoryCacheService) obj2).sendResult(obj3);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ConnectionRecord implements IBinder.DeathRecipient {
        public final MemoryCacheService callbacks;
        public final int pid;
        public final String pkg;
        public MediaMetadataCompat.Builder root;
        public final HashMap subscriptions = new HashMap();
        public final int uid;

        public ConnectionRecord(String str, int i, int i2, MemoryCacheService memoryCacheService) {
            this.pkg = str;
            this.pid = i;
            this.uid = i2;
            if (str == null) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("package shouldn't be null");
                throw null;
            }
            if (TextUtils.isEmpty(str)) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("packageName should be nonempty");
                throw null;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                MediaSessionManagerImplApi28$RemoteUserInfoImplApi28$$ExternalSyntheticApiModelOutline0.m(i, i2, str);
            }
            this.callbacks = memoryCacheService;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MediaBrowserServiceCompat.this.mHandler.post(new LiveData.AnonymousClass1(this, 10));
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class MediaBrowserServiceImplApi26 extends ComponentRegistry.Builder {

        /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
        public final class MediaBrowserServiceApi26 extends MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23 {
            public MediaBrowserServiceApi26(Context context) {
                super(MediaBrowserServiceImplApi26.this, context);
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
                MediaSessionCompat.ensureClassLoader(bundle);
                MediaBrowserServiceImplApi26 mediaBrowserServiceImplApi26 = MediaBrowserServiceImplApi26.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                Result result2 = new Result(mediaBrowserServiceImplApi26, str, new MemoryCacheService(result), bundle) { // from class: androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi26.1
                    public final /* synthetic */ Bundle val$options;
                    public final /* synthetic */ MemoryCacheService val$resultWrapper;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(str);
                        this.val$resultWrapper = r3;
                        this.val$options = bundle;
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.Result
                    public final void detach() {
                        ((MediaBrowserService.Result) this.val$resultWrapper.imageLoader).detach();
                    }

                    @Override // androidx.media.MediaBrowserServiceCompat.Result
                    public final void onResultSent(Object obj) {
                        List<MediaBrowserCompat.MediaItem> list = (List) obj;
                        MemoryCacheService memoryCacheService = this.val$resultWrapper;
                        if (list == null) {
                            memoryCacheService.sendResult(null);
                            return;
                        }
                        if ((this.mFlags & 1) != 0) {
                            list = MediaBrowserServiceCompat.applyOptions(list, this.val$options);
                        }
                        ArrayList arrayList = new ArrayList(list.size());
                        for (MediaBrowserCompat.MediaItem mediaItem : list) {
                            Parcel obtain = Parcel.obtain();
                            mediaItem.writeToParcel(obtain, 0);
                            arrayList.add(obtain);
                        }
                        memoryCacheService.sendResult(arrayList);
                    }
                };
                result2.mFlags = 1;
                mediaBrowserServiceCompat.onLoadChildren(str, result2);
            }
        }

        public MediaBrowserServiceImplApi26() {
            super(MediaBrowserServiceCompat.this);
        }

        @Override // coil3.ComponentRegistry.Builder
        public final void onCreate() {
            MediaBrowserServiceApi26 mediaBrowserServiceApi26 = new MediaBrowserServiceApi26(MediaBrowserServiceCompat.this);
            this.mappers = mediaBrowserServiceApi26;
            mediaBrowserServiceApi26.onCreate();
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class MediaBrowserServiceImplApi28 extends MediaBrowserServiceImplApi26 {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class Result {
        public final Object mDebug;
        public boolean mDetachCalled;
        public int mFlags;
        public boolean mSendResultCalled;

        public Result(Object obj) {
            this.mDebug = obj;
        }

        public void detach() {
            boolean z = this.mDetachCalled;
            Object obj = this.mDebug;
            if (z) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m(obj, "detach() called when detach() had already been called for: "));
            } else if (this.mSendResultCalled) {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2(Modifier.CC.m(obj, "detach() called when sendResult() had already been called for: "));
            } else {
                this.mDetachCalled = true;
            }
        }

        public final boolean isDone() {
            return this.mDetachCalled || this.mSendResultCalled;
        }

        public abstract void onResultSent(Object obj);

        public final void sendResult(Object obj) {
            if (this.mSendResultCalled) {
                LayoutNode$$ExternalSyntheticBUOutline0.m(this.mDebug, "sendResult() called when either sendResult() or sendError() had already been called for: ");
            } else {
                this.mSendResultCalled = true;
                onResultSent(obj);
            }
        }
    }

    public MediaBrowserServiceCompat() {
        new ConnectionRecord("android.media.session.MediaController", -1, -1, null);
        this.mPendingConnections = new ArrayList();
        this.mConnections = new ArrayMap(0);
        FocusOverlayView.AnonymousClass1 anonymousClass1 = new FocusOverlayView.AnonymousClass1(2);
        anonymousClass1.this$0 = this;
        this.mHandler = anonymousClass1;
    }

    public static List applyOptions(List list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i == -1 && i2 == -1) {
            return list;
        }
        int i3 = i2 * i;
        int i4 = i3 + i2;
        if (i < 0 || i2 < 1 || i3 >= list.size()) {
            return Collections.EMPTY_LIST;
        }
        if (i4 > list.size()) {
            i4 = list.size();
        }
        return list.subList(i3, i4);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return ((MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23) this.mImpl.mappers).onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.mImpl = new MediaBrowserServiceImplApi28();
        } else if (i >= 26) {
            this.mImpl = new MediaBrowserServiceImplApi26();
        } else {
            this.mImpl = new ComponentRegistry.Builder(this);
        }
        this.mImpl.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.mHandler.this$0 = null;
    }

    public abstract MediaMetadataCompat.Builder onGetRoot(String str, int i, Bundle bundle);

    public abstract void onLoadChildren(String str, Result result);

    public final void performLoadChildren(final String str, final ConnectionRecord connectionRecord, final Bundle bundle) {
        Result result = new Result(str) { // from class: androidx.media.MediaBrowserServiceCompat.1
            @Override // androidx.media.MediaBrowserServiceCompat.Result
            public final void onResultSent(Object obj) {
                List list = (List) obj;
                ArrayMap arrayMap = MediaBrowserServiceCompat.this.mConnections;
                ConnectionRecord connectionRecord2 = connectionRecord;
                MemoryCacheService memoryCacheService = connectionRecord2.callbacks;
                String str2 = connectionRecord2.pkg;
                Object obj2 = arrayMap.get(((Messenger) memoryCacheService.imageLoader).getBinder());
                String str3 = str;
                if (obj2 != connectionRecord2) {
                    if (MediaBrowserServiceCompat.DEBUG) {
                        Log.d("MBServiceCompat", "Not sending onLoadChildren result for connection that has been disconnected. pkg=" + str2 + " id=" + str3);
                        return;
                    }
                    return;
                }
                int i = this.mFlags & 1;
                Bundle bundle2 = bundle;
                if (i != 0) {
                    list = MediaBrowserServiceCompat.applyOptions(list, bundle2);
                }
                try {
                    memoryCacheService.onLoadChildren(str3, list, bundle2);
                } catch (RemoteException unused) {
                    Log.w("MBServiceCompat", "Calling onLoadChildren() failed for id=" + str3 + " package=" + str2);
                }
            }
        };
        if (bundle == null) {
            onLoadChildren(str, result);
        } else {
            result.mFlags = 1;
            onLoadChildren(str, result);
        }
        if (result.isDone()) {
            return;
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m("onLoadChildren must call detach() or sendResult() before returning for package=", connectionRecord.pkg, " id=", str);
    }

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }
}
