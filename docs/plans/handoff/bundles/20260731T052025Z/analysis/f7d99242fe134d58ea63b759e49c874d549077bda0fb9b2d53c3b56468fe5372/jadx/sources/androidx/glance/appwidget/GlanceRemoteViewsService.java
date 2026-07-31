package androidx.glance.appwidget;

import android.content.Intent;
import android.widget.RemoteViews;
import android.widget.RemoteViewsService;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.work.Data;
import com.fsck.k9.R;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlanceRemoteViewsService extends RemoteViewsService {
    public static final Data.Builder InMemoryStore = new Data.Builder(2);

    @Override // android.widget.RemoteViewsService
    public final RemoteViewsService.RemoteViewsFactory onGetViewFactory(Intent intent) {
        int intExtra = intent.getIntExtra("appWidgetId", -1);
        if (intExtra == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No app widget id was present in the intent");
            return null;
        }
        int intExtra2 = intent.getIntExtra("androidx.glance.widget.extra.view_id", -1);
        if (intExtra2 == -1) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No view id was present in the intent");
            return null;
        }
        String stringExtra = intent.getStringExtra("androidx.glance.widget.extra.size_info");
        if (stringExtra != null && stringExtra.length() != 0) {
            return new GlanceRemoteViewsFactory(this, intExtra, intExtra2, stringExtra);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("No size info was present in the intent");
        return null;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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

        /* JADX WARN: Removed duplicated region for block: B:20:0x007e  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final java.lang.Object access$startSessionIfNeededAndWaitUntilReady(androidx.glance.appwidget.GlanceRemoteViewsService.GlanceRemoteViewsFactory r5, kotlin.coroutines.jvm.internal.ContinuationImpl r6) {
            /*
                boolean r0 = r6 instanceof androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory$startSessionIfNeededAndWaitUntilReady$1
                if (r0 == 0) goto L13
                r0 = r6
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
                r0.<init>(r5, r6)
            L18:
                java.lang.Object r6 = r0.result
                int r1 = r0.label
                kotlin.Unit r2 = kotlin.Unit.INSTANCE
                r3 = 3
                r4 = 0
                if (r1 == 0) goto L46
                r5 = 1
                if (r1 == r5) goto L3b
                r5 = 2
                if (r1 == r5) goto L34
                if (r1 != r3) goto L2e
                kotlin.ResultKt.throwOnFailure(r6)
                return r2
            L2e:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r5)
                return r4
            L34:
                kotlin.ResultKt.throwOnFailure(r6)
                r4 = r6
                kotlinx.coroutines.Job r4 = (kotlinx.coroutines.Job) r4
                goto L7c
            L3b:
                kotlin.ResultKt.throwOnFailure(r6)
                kotlinx.coroutines.Job r6 = (kotlinx.coroutines.Job) r6
                if (r6 != 0) goto L44
                r5 = r4
                goto L75
            L44:
                r4 = r6
                goto L7c
            L46:
                kotlin.ResultKt.throwOnFailure(r6)
                androidx.glance.appwidget.GlanceRemoteViewsService r6 = r5.context
                android.appwidget.AppWidgetManager r6 = android.appwidget.AppWidgetManager.getInstance(r6)
                int r1 = r5.appWidgetId
                android.appwidget.AppWidgetProviderInfo r6 = r6.getAppWidgetInfo(r1)
                if (r6 == 0) goto L75
                android.content.ComponentName r6 = r6.provider
                if (r6 == 0) goto L75
                java.lang.String r6 = r6.getClassName()
                if (r6 != 0) goto L62
                goto L75
            L62:
                java.lang.Class r5 = java.lang.Class.forName(r6)
                java.lang.reflect.Constructor r5 = r5.getDeclaredConstructor(r4)
                java.lang.Object r5 = r5.newInstance(r4)
                r5.getClass()
                androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0.m()
                return r4
            L75:
                okio.AsyncTimeout$Companion r6 = androidx.glance.appwidget.UnmanagedSessionReceiver.Companion
                int r5 = r5.appWidgetId
                okio.AsyncTimeout.Companion.getSession(r5)
            L7c:
                if (r4 == 0) goto L89
                r0.label = r3
                java.lang.Object r5 = r4.join(r0)
                kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r5 != r6) goto L89
                return r6
            L89:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.GlanceRemoteViewsService.GlanceRemoteViewsFactory.access$startSessionIfNeededAndWaitUntilReady(androidx.glance.appwidget.GlanceRemoteViewsService$GlanceRemoteViewsFactory, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
        public final /* bridge */ /* synthetic */ RemoteViews getLoadingView() {
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
            items().getClass();
            return false;
        }

        public final RemoteCollectionItems items() {
            RemoteCollectionItems remoteCollectionItems;
            Data.Builder builder = GlanceRemoteViewsService.InMemoryStore;
            int i = this.appWidgetId;
            int i2 = this.viewId;
            String str = this.size;
            Data.Builder builder2 = GlanceRemoteViewsService.InMemoryStore;
            synchronized (builder2) {
                remoteCollectionItems = (RemoteCollectionItems) builder2.values.get(Data.Builder.key(i, str, i2));
                if (remoteCollectionItems == null) {
                    remoteCollectionItems = RemoteCollectionItems.Empty;
                }
            }
            return remoteCollectionItems;
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDataSetChanged() {
            JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new ThumbNode$onAttach$1(this, (Continuation) null, 28));
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onDestroy() {
            Data.Builder builder = GlanceRemoteViewsService.InMemoryStore;
            int i = this.appWidgetId;
            int i2 = this.viewId;
            String str = this.size;
            Data.Builder builder2 = GlanceRemoteViewsService.InMemoryStore;
            synchronized (builder2) {
                builder2.values.remove(Data.Builder.key(i, str, i2));
            }
        }

        @Override // android.widget.RemoteViewsService.RemoteViewsFactory
        public final void onCreate() {
        }
    }
}
