package com.fsck.k9.provider;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.navigation.compose.NavHostKt$NavHost$25$1;
import app.k9mail.feature.widget.unread.UnreadWidgetRepository;
import com.fsck.k9.K9$special$$inlined$inject$default$1;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.io.Sink$CC;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UnreadWidgetProvider extends AppWidgetProvider implements KoinComponent {
    public final Lazy logger$delegate;
    public final Lazy repository$delegate;
    public final ContextScope widgetScope;

    public UnreadWidgetProvider() {
        K9$special$$inlined$inject$default$1 k9$special$$inlined$inject$default$1 = new K9$special$$inlined$inject$default$1(this, 6);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.repository$delegate = ResultKt.lazy(lazyThreadSafetyMode, k9$special$$inlined$inject$default$1);
        this.logger$delegate = ResultKt.lazy(lazyThreadSafetyMode, new K9$special$$inlined$inject$default$1(this, 7));
        SupervisorJobImpl SupervisorJob$default = JobKt.SupervisorJob$default();
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        this.widgetScope = JobKt.CoroutineScope(UuidKt.plus(SupervisorJob$default, DefaultIoScheduler.INSTANCE));
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x027b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x0213 -> B:10:0x021d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object access$updateWidgets(com.fsck.k9.provider.UnreadWidgetProvider r21, android.content.Context r22, android.appwidget.AppWidgetManager r23, int[] r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instructions count: 680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.provider.UnreadWidgetProvider.access$updateWidgets(com.fsck.k9.provider.UnreadWidgetProvider, android.content.Context, android.appwidget.AppWidgetManager, int[], kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // org.koin.core.component.KoinComponent
    public final /* bridge */ Koin getKoin() {
        return Sink$CC.$default$getKoin();
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onDeleted(Context context, int[] iArr) {
        context.getClass();
        iArr.getClass();
        for (int i : iArr) {
            SharedPreferences sharedPreferences = ((UnreadWidgetRepository) this.repository$delegate.getValue()).context.getSharedPreferences("unread_widget_configuration.xml", 0);
            sharedPreferences.getClass();
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.remove("unread_widget." + i);
            edit.remove("unread_widget." + i + ".folder_id");
            edit.apply();
        }
    }

    @Override // android.appwidget.AppWidgetProvider
    public final void onUpdate(Context context, AppWidgetManager appWidgetManager, int[] iArr) {
        context.getClass();
        appWidgetManager.getClass();
        iArr.getClass();
        JobKt.launch$default(this.widgetScope, null, null, new NavHostKt$NavHost$25$1(this, context, appWidgetManager, iArr, goAsync(), null, 14), 3);
    }
}
