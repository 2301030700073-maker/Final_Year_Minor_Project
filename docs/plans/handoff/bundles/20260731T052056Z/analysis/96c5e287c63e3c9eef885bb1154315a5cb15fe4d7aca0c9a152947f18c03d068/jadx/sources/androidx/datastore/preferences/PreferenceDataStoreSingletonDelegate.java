package androidx.datastore.preferences;

import android.content.Context;
import androidx.collection.internal.Lock;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.datastore.core.SingleProcessDataStore;
import androidx.datastore.preferences.core.PreferenceDataStore;
import androidx.datastore.preferences.core.PreferencesSerializer;
import androidx.glance.GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;
import androidx.room.Room;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PreferenceDataStoreSingletonDelegate {
    public volatile PreferenceDataStore INSTANCE;
    public final Object lock = new Object();
    public final String name;
    public final Function1 produceMigrations;
    public final CoroutineScope scope;

    public PreferenceDataStoreSingletonDelegate(String str, Function1 function1, CoroutineScope coroutineScope) {
        this.name = str;
        this.produceMigrations = function1;
        this.scope = coroutineScope;
    }

    public final Object getValue(Object obj, KProperty kProperty) {
        PreferenceDataStore preferenceDataStore;
        Context context = (Context) obj;
        context.getClass();
        kProperty.getClass();
        PreferenceDataStore preferenceDataStore2 = this.INSTANCE;
        if (preferenceDataStore2 != null) {
            return preferenceDataStore2;
        }
        synchronized (this.lock) {
            try {
                if (this.INSTANCE == null) {
                    Context applicationContext = context.getApplicationContext();
                    Function1 function1 = this.produceMigrations;
                    applicationContext.getClass();
                    List list = (List) function1.invoke(applicationContext);
                    CoroutineScope coroutineScope = this.scope;
                    KTypeImpl$arguments$2 kTypeImpl$arguments$2 = new KTypeImpl$arguments$2(10, applicationContext, this);
                    list.getClass();
                    PreferencesSerializer preferencesSerializer = PreferencesSerializer.INSTANCE;
                    this.INSTANCE = new PreferenceDataStore(new SingleProcessDataStore(new GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1(1, kTypeImpl$arguments$2), preferencesSerializer, Room.listOf(new SimpleActor$offer$2(29, list, null)), new Lock(7), coroutineScope));
                }
                preferenceDataStore = this.INSTANCE;
                preferenceDataStore.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
        return preferenceDataStore;
    }
}
