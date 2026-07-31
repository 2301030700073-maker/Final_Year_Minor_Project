package androidx.glance.appwidget;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ContentReceiver$Key implements CoroutineContext.Key {
    public static final /* synthetic */ ContentReceiver$Key $$INSTANCE = new ContentReceiver$Key();

    public static void getSession(int i) {
        synchronized (UnmanagedSessionReceiver.Companion) {
            if (UnmanagedSessionReceiver.activeSessions.get(Integer.valueOf(i)) != null) {
                throw new ClassCastException();
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:0|1|(2:3|(13:5|6|7|(1:(2:10|11)(2:26|27))(3:28|29|(1:31))|12|13|14|(1:16)|17|(2:20|18)|21|22|23))|38|6|7|(0)(0)|12|13|14|(0)|17|(1:18)|21|22|23) */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0030, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0077, code lost:
    
        android.util.Log.e("GlanceAppWidget", "Set of layout structures for App Widget id " + r8 + " is corrupted", r0);
        r6 = androidx.glance.appwidget.proto.LayoutProto$LayoutConfig.getDefaultInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x002d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0061, code lost:
    
        android.util.Log.e("GlanceAppWidget", "I/O error reading set of layout structures for App Widget id " + r8, r0);
        r6 = androidx.glance.appwidget.proto.LayoutProto$LayoutConfig.getDefaultInstance();
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b4 A[LOOP:0: B:18:0x00ae->B:20:0x00b4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object load$glance_appwidget_release(android.content.Context r7, int r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof androidx.glance.appwidget.LayoutConfiguration$Companion$load$1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.glance.appwidget.LayoutConfiguration$Companion$load$1 r0 = (androidx.glance.appwidget.LayoutConfiguration$Companion$load$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.appwidget.LayoutConfiguration$Companion$load$1 r0 = new androidx.glance.appwidget.LayoutConfiguration$Companion$load$1
            r0.<init>(r6, r9)
        L18:
            java.lang.Object r6 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r9 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r0.label
            java.lang.String r2 = "GlanceAppWidget"
            r3 = 1
            if (r1 == 0) goto L3a
            if (r1 != r3) goto L33
            int r8 = r0.I$0
            android.content.Context r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            goto L5c
        L2d:
            r0 = move-exception
            r6 = r0
            goto L61
        L30:
            r0 = move-exception
            r6 = r0
            goto L77
        L33:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r6)
            r6 = 0
            return r6
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.glance.state.GlanceState r6 = androidx.glance.state.GlanceState.INSTANCE     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            androidx.glance.appwidget.LayoutStateDefinition r1 = androidx.glance.appwidget.LayoutStateDefinition.INSTANCE     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            java.lang.String r5 = "appWidgetLayout-"
            r4.<init>(r5)     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            r4.append(r8)     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            java.lang.String r4 = r4.toString()     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            r0.L$0 = r7     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            r0.I$0 = r8     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            r0.label = r3     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            java.lang.Object r6 = r6.getValue(r7, r1, r4, r0)     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
            if (r6 != r9) goto L5c
            return r9
        L5c:
            androidx.glance.appwidget.proto.LayoutProto$LayoutConfig r6 = (androidx.glance.appwidget.proto.LayoutProto$LayoutConfig) r6     // Catch: java.io.IOException -> L2d androidx.datastore.core.CorruptionException -> L30
        L5e:
            r1 = r7
            r4 = r8
            goto L92
        L61:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "I/O error reading set of layout structures for App Widget id "
            r9.<init>(r0)
            r9.append(r8)
            java.lang.String r9 = r9.toString()
            android.util.Log.e(r2, r9, r6)
            androidx.glance.appwidget.proto.LayoutProto$LayoutConfig r6 = androidx.glance.appwidget.proto.LayoutProto$LayoutConfig.getDefaultInstance()
            goto L5e
        L77:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "Set of layout structures for App Widget id "
            r9.<init>(r0)
            r9.append(r8)
            java.lang.String r0 = " is corrupted"
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            android.util.Log.e(r2, r9, r6)
            androidx.glance.appwidget.proto.LayoutProto$LayoutConfig r6 = androidx.glance.appwidget.proto.LayoutProto$LayoutConfig.getDefaultInstance()
            goto L5e
        L92:
            androidx.glance.appwidget.protobuf.Internal$ProtobufList r7 = r6.getLayoutList()
            r8 = 10
            int r8 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r7, r8)
            int r8 = kotlin.collections.MapsKt__MapsKt.mapCapacity(r8)
            r9 = 16
            if (r8 >= r9) goto La5
            r8 = r9
        La5:
            java.util.LinkedHashMap r9 = new java.util.LinkedHashMap
            r9.<init>(r8)
            java.util.Iterator r7 = r7.iterator()
        Lae:
            boolean r8 = r7.hasNext()
            if (r8 == 0) goto Lcb
            java.lang.Object r8 = r7.next()
            androidx.glance.appwidget.proto.LayoutProto$LayoutDefinition r8 = (androidx.glance.appwidget.proto.LayoutProto$LayoutDefinition) r8
            androidx.glance.appwidget.proto.LayoutProto$LayoutNode r0 = r8.getLayout()
            int r8 = r8.getLayoutIndex()
            java.lang.Integer r2 = new java.lang.Integer
            r2.<init>(r8)
            r9.put(r0, r2)
            goto Lae
        Lcb:
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            r2.<init>(r9)
            androidx.glance.appwidget.LayoutConfiguration r0 = new androidx.glance.appwidget.LayoutConfiguration
            int r3 = r6.getNextIndex()
            java.util.Collection r6 = r2.values()
            java.lang.Iterable r6 = (java.lang.Iterable) r6
            java.util.Set r5 = kotlin.collections.CollectionsKt.toMutableSet(r6)
            r0.<init>(r1, r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.glance.appwidget.ContentReceiver$Key.load$glance_appwidget_release(android.content.Context, int, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
