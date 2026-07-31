package androidx.glance.appwidget;

import android.content.Context;
import androidx.collection.internal.Lock;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.datastore.core.SingleProcessDataStore;
import androidx.glance.appwidget.proto.LayoutProtoSerializer;
import androidx.glance.state.GlanceStateDefinition;
import androidx.room.Room;
import androidx.work.OperationKt;
import java.io.File;
import kotlin.ExceptionsKt;
import kotlin.collections.EmptyList;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutStateDefinition implements GlanceStateDefinition {
    public static final LayoutStateDefinition INSTANCE = new LayoutStateDefinition();

    @Override // androidx.glance.state.GlanceStateDefinition
    public final Object getDataStore(Context context, String str) {
        LayoutProtoSerializer layoutProtoSerializer = LayoutProtoSerializer.INSTANCE;
        LayoutStateDefinition$getDataStore$2 layoutStateDefinition$getDataStore$2 = new LayoutStateDefinition$getDataStore$2(0, context, str);
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        SupervisorJobImpl SupervisorJob$default = AwaitKt.SupervisorJob$default();
        defaultIoScheduler.getClass();
        ContextScope CoroutineScope = AwaitKt.CoroutineScope(OperationKt.plus(defaultIoScheduler, SupervisorJob$default));
        return new SingleProcessDataStore(layoutStateDefinition$getDataStore$2, layoutProtoSerializer, Room.listOf(new SimpleActor$offer$2(29, EmptyList.INSTANCE, null)), new Lock(7), CoroutineScope);
    }

    @Override // androidx.glance.state.GlanceStateDefinition
    public final File getLocation(Context context, String str) {
        return ExceptionsKt.dataStoreFile(context, str);
    }
}
