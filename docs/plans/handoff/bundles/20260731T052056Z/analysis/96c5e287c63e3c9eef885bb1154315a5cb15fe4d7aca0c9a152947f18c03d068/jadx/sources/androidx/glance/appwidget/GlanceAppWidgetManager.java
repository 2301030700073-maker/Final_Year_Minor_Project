package androidx.glance.appwidget;

import android.appwidget.AppWidgetManager;
import android.content.Context;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import androidx.datastore.preferences.core.Preferences$Key;
import coil3.util.ContextsKt;
import java.util.Map;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class GlanceAppWidgetManager {
    public static DataStore dataStoreSingleton;
    public final AppWidgetManager appWidgetManager;
    public final Context context;
    public final SynchronizedLazyImpl dataStore$delegate = new SynchronizedLazyImpl(new LayoutNode$_foldedChildren$1(19, this));
    public static final Companion Companion = new Companion();
    public static final PreferenceDataStoreSingletonDelegate appManagerDataStore$delegate = ContextsKt.preferencesDataStore$default("GlanceAppWidgetManager");
    public static final Preferences$Key providersKey = new Preferences$Key("list::Providers");

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        public static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.factory.property2(new PropertyReference2Impl(CallableReference.NoReceiver.INSTANCE, Companion.class, "appManagerDataStore", "getAppManagerDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        public static Preferences$Key providerKey(String str) {
            return new Preferences$Key(Modifier.CC.m("provider:", str));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class State {
        public final Map providerNameToReceivers;
        public final Map receiverToProviderName;

        public State(Map map, Map map2) {
            this.receiverToProviderName = map;
            this.providerNameToReceivers = map2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof State)) {
                return false;
            }
            State state = (State) obj;
            return Intrinsics.areEqual(this.receiverToProviderName, state.receiverToProviderName) && Intrinsics.areEqual(this.providerNameToReceivers, state.providerNameToReceivers);
        }

        public final int hashCode() {
            return this.providerNameToReceivers.hashCode() + (this.receiverToProviderName.hashCode() * 31);
        }

        public final String toString() {
            return "State(receiverToProviderName=" + this.receiverToProviderName + ", providerNameToReceivers=" + this.providerNameToReceivers + ')';
        }
    }

    public GlanceAppWidgetManager(Context context) {
        this.context = context;
        this.appWidgetManager = AppWidgetManager.getInstance(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.Serializable getGlanceIds(java.lang.Class r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof androidx.glance.appwidget.GlanceAppWidgetManager$getGlanceIds$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.glance.appwidget.GlanceAppWidgetManager$getGlanceIds$1 r0 = (androidx.glance.appwidget.GlanceAppWidgetManager$getGlanceIds$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.appwidget.GlanceAppWidgetManager$getGlanceIds$1 r0 = new androidx.glance.appwidget.GlanceAppWidgetManager$getGlanceIds$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            java.lang.Class r7 = r0.L$1
            androidx.glance.appwidget.GlanceAppWidgetManager r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L42
        L2c:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r6.getState(r0)
            if (r8 != r1) goto L42
            return r1
        L42:
            androidx.glance.appwidget.GlanceAppWidgetManager$State r8 = (androidx.glance.appwidget.GlanceAppWidgetManager.State) r8
            java.lang.String r7 = r7.getCanonicalName()
            if (r7 == 0) goto L8e
            java.util.Map r8 = r8.providerNameToReceivers
            java.lang.Object r7 = r8.get(r7)
            java.util.List r7 = (java.util.List) r7
            if (r7 != 0) goto L57
            kotlin.collections.EmptyList r6 = kotlin.collections.EmptyList.INSTANCE
            return r6
        L57:
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.Iterator r7 = r7.iterator()
        L60:
            boolean r0 = r7.hasNext()
            if (r0 == 0) goto L8d
            java.lang.Object r0 = r7.next()
            android.content.ComponentName r0 = (android.content.ComponentName) r0
            android.appwidget.AppWidgetManager r1 = r6.appWidgetManager
            int[] r0 = r1.getAppWidgetIds(r0)
            java.util.ArrayList r1 = new java.util.ArrayList
            int r2 = r0.length
            r1.<init>(r2)
            int r2 = r0.length
            r3 = 0
        L7a:
            if (r3 >= r2) goto L89
            r4 = r0[r3]
            androidx.glance.appwidget.AppWidgetId r5 = new androidx.glance.appwidget.AppWidgetId
            r5.<init>(r4)
            r1.add(r5)
            int r3 = r3 + 1
            goto L7a
        L89:
            kotlin.collections.CollectionsKt.addAll(r8, r1)
            goto L60
        L8d:
            return r8
        L8e:
            java.lang.String r6 = "no canonical provider name"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r6)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.GlanceAppWidgetManager.getGlanceIds(java.lang.Class, kotlin.coroutines.jvm.internal.ContinuationImpl):java.io.Serializable");
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x00f1, code lost:
    
        if (r11 == r1) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getState(kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.GlanceAppWidgetManager.getState(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
