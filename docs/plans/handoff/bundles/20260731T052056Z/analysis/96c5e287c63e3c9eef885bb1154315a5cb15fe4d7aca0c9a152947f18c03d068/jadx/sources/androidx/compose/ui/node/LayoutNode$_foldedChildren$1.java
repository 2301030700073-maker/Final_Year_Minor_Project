package androidx.compose.ui.node;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.glance.appwidget.GlanceAppWidgetManager;
import androidx.glance.session.InteractiveFrameClock;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.talk.TalkTopicsViewModel$undoSave$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LayoutNode$_foldedChildren$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LayoutNode$_foldedChildren$1(int i, Object obj) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = obj;
    }

    private final Object invoke$androidx$glance$appwidget$GlanceAppWidgetManager$dataStore$2() {
        DataStore dataStore;
        GlanceAppWidgetManager glanceAppWidgetManager = (GlanceAppWidgetManager) this.this$0;
        synchronized (GlanceAppWidgetManager.Companion) {
            dataStore = GlanceAppWidgetManager.dataStoreSingleton;
            if (dataStore == null) {
                Context context = glanceAppWidgetManager.context;
                KProperty[] kPropertyArr = GlanceAppWidgetManager.Companion.$$delegatedProperties;
                dataStore = (DataStore) GlanceAppWidgetManager.appManagerDataStore$delegate.getValue(context, GlanceAppWidgetManager.Companion.$$delegatedProperties[0]);
                GlanceAppWidgetManager.dataStoreSingleton = dataStore;
            }
        }
        return dataStore;
    }

    private final Object invoke$androidx$glance$session$InteractiveFrameClock$frameClock$1() {
        InteractiveFrameClock interactiveFrameClock = (InteractiveFrameClock) this.this$0;
        long nanoTime = System.nanoTime();
        Ref$LongRef ref$LongRef = new Ref$LongRef();
        Ref$LongRef ref$LongRef2 = new Ref$LongRef();
        synchronized (interactiveFrameClock.lock) {
            ref$LongRef.element = nanoTime - interactiveFrameClock.lastFrame;
            ref$LongRef2.element = 1000000000 / interactiveFrameClock.currentHz;
        }
        AwaitKt.launch$default(interactiveFrameClock.scope, null, null, new TalkTopicsViewModel$undoSave$1(ref$LongRef, ref$LongRef2, interactiveFrameClock, nanoTime, (Continuation) null), 3);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02a4  */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke() {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode$_foldedChildren$1.invoke():java.lang.Object");
    }
}
