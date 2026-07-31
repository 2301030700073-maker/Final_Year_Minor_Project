package androidx.glance.appwidget;

import android.content.Intent;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import androidx.compose.material3.ThumbNode$onAttach$1;
import coil3.network.NetworkHeaders;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.AwaitKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/glance/appwidget/GlanceRemoteViewsService;", "Landroid/widget/RemoteViewsService;", "<init>", "()V", "GlanceRemoteViewsFactory", "glance-appwidget_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GlanceRemoteViewsService extends RemoteViewsService {
    public static final NetworkHeaders.Builder InMemoryStore = new NetworkHeaders.Builder(2);

    @Override // android.widget.RemoteViewsService
    public final RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        int intExtra = intent.getIntExtra("appWidgetId", -1);
        if (intExtra == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No app widget id was present in the intent");
            return null;
        }
        int intExtra2 = intent.getIntExtra("androidx.glance.widget.extra.view_id", -1);
        if (intExtra2 == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No view id was present in the intent");
            return null;
        }
        String stringExtra = intent.getStringExtra("androidx.glance.widget.extra.size_info");
        if (stringExtra != null && stringExtra.length() != 0) {
            return new GlanceRemoteViewsFactory(this, intExtra, intExtra2, stringExtra);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("No size info was present in the intent");
        return null;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class GlanceRemoteViewsFactory implements RemoteViewsService.RemoteViewsFactory {
        public final int appWidgetId;
        public final GlanceRemoteViewsService context;
        public final String size;
        public final int viewId;

        public GlanceRemoteViewsFactory(GlanceRemoteViewsService glanceRemoteViewsService, int i, int i2, String str) {
            this.context = glanceRemoteViewsService;
            this.appWidgetId = i;
            this.viewId = i2;
            this.size = str;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final int getCount() {
            return items().ids.length;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final long getItemId(int i) {
            try {
                return items().ids[i];
            } catch (ArrayIndexOutOfBoundsException unused) {
                return -1L;
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final RemoteViews getLoadingView() {
            return null;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final RemoteViews getViewAt(int i) {
            try {
                return items().views[i];
            } catch (ArrayIndexOutOfBoundsException unused) {
                return new RemoteViews(this.context.getPackageName(), R.layout.glance_invalid_list_item);
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final int getViewTypeCount() {
            return items()._viewTypeCount;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final boolean hasStableIds() {
            return items().hasStableIds;
        }

        public final RemoteCollectionItems items() {
            RemoteCollectionItems remoteCollectionItems;
            NetworkHeaders.Builder builder = GlanceRemoteViewsService.InMemoryStore;
            int i = this.appWidgetId;
            int i2 = this.viewId;
            String str = this.size;
            NetworkHeaders.Builder builder2 = GlanceRemoteViewsService.InMemoryStore;
            synchronized (builder2) {
                remoteCollectionItems = (RemoteCollectionItems) builder2.data.get(NetworkHeaders.Builder.key(i, i2, str));
                if (remoteCollectionItems == null) {
                    remoteCollectionItems = RemoteCollectionItems.Empty;
                }
            }
            return remoteCollectionItems;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDataSetChanged() {
            AwaitKt.runBlocking(EmptyCoroutineContext.INSTANCE, new ThumbNode$onAttach$1(15, this, null));
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDestroy() {
            NetworkHeaders.Builder builder = GlanceRemoteViewsService.InMemoryStore;
            int i = this.appWidgetId;
            int i2 = this.viewId;
            String str = this.size;
            NetworkHeaders.Builder builder2 = GlanceRemoteViewsService.InMemoryStore;
            synchronized (builder2) {
                builder2.data.remove(NetworkHeaders.Builder.key(i, i2, str));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:25:0x0095, code lost:
        
            if (r13 != null) goto L38;
         */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object startSessionIfNeededAndWaitUntilReady(androidx.glance.appwidget.AppWidgetId r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
            /*
                r12 = this;
                boolean r0 = r14 instanceof androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1
                if (r0 == 0) goto L13
                r0 = r14
                androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1 r0 = (androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1 r0 = new androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1
                r0.<init>(r12, r14)
            L18:
                java.lang.Object r14 = r0.result
                kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r2 = r0.label
                kotlin.Unit r3 = kotlin.Unit.INSTANCE
                r4 = 3
                r5 = 1
                r10 = 0
                if (r2 == 0) goto L45
                if (r2 == r5) goto L3f
                r12 = 2
                if (r2 == r12) goto L37
                if (r2 != r4) goto L30
                kotlin.ResultKt.throwOnFailure(r14)
                return r3
            L30:
                java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r12)
                r12 = 0
                return r12
            L37:
                kotlin.ResultKt.throwOnFailure(r14)
                kotlinx.coroutines.Job r14 = (kotlinx.coroutines.Job) r14
                r13 = r14
                goto La1
            L3f:
                androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory r12 = r0.L$0
                kotlin.ResultKt.throwOnFailure(r14)
                goto L92
            L45:
                kotlin.ResultKt.throwOnFailure(r14)
                androidx.glance.appwidget.GlanceRemoteViewsService r14 = r12.context
                android.appwidget.AppWidgetManager r14 = android.appwidget.AppWidgetManager.getInstance(r14)
                int r2 = r12.appWidgetId
                android.appwidget.AppWidgetProviderInfo r14 = r14.getAppWidgetInfo(r2)
                if (r14 == 0) goto L78
                android.content.ComponentName r14 = r14.provider
                if (r14 == 0) goto L78
                java.lang.String r14 = r14.getClassName()
                if (r14 == 0) goto L78
                java.lang.Class r14 = java.lang.Class.forName(r14)
                java.lang.reflect.Constructor r14 = r14.getDeclaredConstructor(r10)
                java.lang.Object r14 = r14.newInstance(r10)
                r14.getClass()
                org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver r14 = (org.wikipedia.widgets.readingchallenge.ReadingChallengeWidgetReceiver) r14
                org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget r14 = new org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget
                r14.<init>()
                r9 = r14
                goto L79
            L78:
                r9 = r10
            L79:
                if (r9 == 0) goto L98
                androidx.glance.session.SessionManagerImpl r14 = androidx.glance.session.SessionManagerKt.GlanceSessionManager
                androidx.paging.FlowExtKt$simpleScan$1 r6 = new androidx.paging.FlowExtKt$simpleScan$1
                r11 = 12
                r7 = r12
                r8 = r13
                r6.<init>(r7, r8, r9, r10, r11)
                r0.L$0 = r7
                r0.label = r5
                java.lang.Object r14 = r14.runWithLock(r6, r0)
                if (r14 != r1) goto L91
                goto Lad
            L91:
                r12 = r7
            L92:
                r13 = r14
                kotlinx.coroutines.Job r13 = (kotlinx.coroutines.Job) r13
                if (r13 != 0) goto La1
                goto L99
            L98:
                r7 = r12
            L99:
                androidx.glance.appwidget.ContentReceiver$Key r13 = androidx.glance.appwidget.UnmanagedSessionReceiver.Companion
                int r12 = r12.appWidgetId
                androidx.glance.appwidget.ContentReceiver$Key.getSession(r12)
                r13 = r10
            La1:
                if (r13 == 0) goto Lae
                r0.L$0 = r10
                r0.label = r4
                java.lang.Object r12 = r13.join(r0)
                if (r12 != r1) goto Lae
            Lad:
                return r1
            Lae:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.GlanceRemoteViewsService.GlanceRemoteViewsFactory.startSessionIfNeededAndWaitUntilReady(androidx.glance.appwidget.AppWidgetId, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onCreate() {
        }
    }
}
