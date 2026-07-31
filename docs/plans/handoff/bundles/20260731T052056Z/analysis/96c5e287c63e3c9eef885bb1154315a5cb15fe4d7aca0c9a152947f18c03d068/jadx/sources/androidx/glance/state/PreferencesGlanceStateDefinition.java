package androidx.glance.state;

import android.content.Context;
import androidx.collection.internal.Lock;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.datastore.core.SingleProcessDataStore;
import androidx.datastore.preferences.core.PreferenceDataStore;
import androidx.datastore.preferences.core.PreferencesSerializer;
import androidx.glance.GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;
import androidx.glance.appwidget.LayoutStateDefinition$getDataStore$2;
import androidx.room.Room;
import androidx.work.OperationKt;
import java.io.File;
import kotlin.ResultKt;
import kotlin.collections.EmptyList;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferencesGlanceStateDefinition implements GlanceStateDefinition {
    public static final PreferencesGlanceStateDefinition INSTANCE = new PreferencesGlanceStateDefinition();

    @Override // androidx.glance.state.GlanceStateDefinition
    public final Object getDataStore(Context context, String str) {
        int i = 1;
        LayoutStateDefinition$getDataStore$2 layoutStateDefinition$getDataStore$2 = new LayoutStateDefinition$getDataStore$2(i, context, str);
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        SupervisorJobImpl SupervisorJob$default = AwaitKt.SupervisorJob$default();
        defaultIoScheduler.getClass();
        ContextScope CoroutineScope = AwaitKt.CoroutineScope(OperationKt.plus(defaultIoScheduler, SupervisorJob$default));
        GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1 glanceNodeKt$GlanceNode$$inlined$ComposeNode$1 = new GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1(i, layoutStateDefinition$getDataStore$2);
        Lock lock = new Lock(7);
        return new PreferenceDataStore(new SingleProcessDataStore(glanceNodeKt$GlanceNode$$inlined$ComposeNode$1, PreferencesSerializer.INSTANCE, Room.listOf(new SimpleActor$offer$2(29, EmptyList.INSTANCE, null)), lock, CoroutineScope));
    }

    @Override // androidx.glance.state.GlanceStateDefinition
    public final File getLocation(Context context, String str) {
        return ResultKt.preferencesDataStoreFile(context, str);
    }
}
