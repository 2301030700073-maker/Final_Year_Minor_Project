package androidx.glance.appwidget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import androidx.collection.internal.Lock;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.core.DataStoreImpl;
import androidx.datastore.core.FileStorage;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import androidx.datastore.preferences.core.PreferenceDataStore;
import androidx.datastore.preferences.core.Preferences$Key;
import androidx.datastore.preferences.core.PreferencesFileSerializer;
import androidx.lifecycle.BlockRunner$maybeRun$1;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import coil3.ImageLoader$Builder$$ExternalSyntheticLambda1;
import java.util.List;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GlanceAppWidgetManager {
    public static final Companion Companion = new Companion();
    public static final PreferenceDataStoreSingletonDelegate appManagerDataStore$delegate;
    public static PreferenceDataStore dataStoreSingleton;
    public static final Preferences$Key providersKey;
    public final AppWidgetManager appWidgetManager;
    public final Context context;
    public final SynchronizedLazyImpl dataStore$delegate = new SynchronizedLazyImpl(new LayoutNode$_foldedChildren$1(18, this));

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ KProperty[] $$delegatedProperties;

        static {
            PropertyReference2Impl propertyReference2Impl = new PropertyReference2Impl(CallableReference.NO_RECEIVER, Companion.class, "appManagerDataStore", "getAppManagerDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0);
            Reflection.factory.getClass();
            $$delegatedProperties = new KProperty[]{propertyReference2Impl};
        }

        public static final PreferenceDataStore access$getAppManagerDataStore(Companion companion, Context context) {
            PreferenceDataStore preferenceDataStore;
            companion.getClass();
            PreferenceDataStoreSingletonDelegate preferenceDataStoreSingletonDelegate = GlanceAppWidgetManager.appManagerDataStore$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            preferenceDataStoreSingletonDelegate.getClass();
            context.getClass();
            kProperty.getClass();
            PreferenceDataStore preferenceDataStore2 = preferenceDataStoreSingletonDelegate.INSTANCE;
            if (preferenceDataStore2 != null) {
                return preferenceDataStore2;
            }
            synchronized (preferenceDataStoreSingletonDelegate.lock) {
                try {
                    if (preferenceDataStoreSingletonDelegate.INSTANCE == null) {
                        Context applicationContext = context.getApplicationContext();
                        Function1 function1 = preferenceDataStoreSingletonDelegate.produceMigrations;
                        applicationContext.getClass();
                        List list = (List) function1.invoke(applicationContext);
                        CoroutineScope coroutineScope = preferenceDataStoreSingletonDelegate.scope;
                        Recomposer$$ExternalSyntheticLambda6 recomposer$$ExternalSyntheticLambda6 = new Recomposer$$ExternalSyntheticLambda6(27, applicationContext, preferenceDataStoreSingletonDelegate);
                        list.getClass();
                        preferenceDataStoreSingletonDelegate.INSTANCE = new PreferenceDataStore(new PreferenceDataStore(new DataStoreImpl(new FileStorage(PreferencesFileSerializer.INSTANCE, new ImageLoader$Builder$$ExternalSyntheticLambda1(13, recomposer$$ExternalSyntheticLambda6)), IntOffsetKt.listOf(new BlockRunner$maybeRun$1(list, (Continuation) null, 6)), new Lock(), coroutineScope)));
                    }
                    preferenceDataStore = preferenceDataStoreSingletonDelegate.INSTANCE;
                    preferenceDataStore.getClass();
                } catch (Throwable th) {
                    throw th;
                }
            }
            return preferenceDataStore;
        }
    }

    static {
        RoomDatabase$$ExternalSyntheticLambda0 roomDatabase$$ExternalSyntheticLambda0 = new RoomDatabase$$ExternalSyntheticLambda0(7);
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        appManagerDataStore$delegate = new PreferenceDataStoreSingletonDelegate(roomDatabase$$ExternalSyntheticLambda0, JobKt.CoroutineScope(DefaultIoScheduler.INSTANCE.plus(JobKt.SupervisorJob$default())));
        providersKey = new Preferences$Key("list::Providers");
    }

    public GlanceAppWidgetManager(Context context) {
        this.context = context;
        this.appWidgetManager = AppWidgetManager.getInstance(context);
    }
}
